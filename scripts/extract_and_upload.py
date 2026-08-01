"""
extract_and_upload.py
─────────────────────
1. Opens PYQs.pdf
2. Renders each page as a PNG (zoom=2 for hi-res)
3. Uploads to Supabase Storage bucket "pyq-images"
4. Matches each uploaded page to questions via the raw text and
   updates questions.image_url in the database

Requirements:
    pip install PyMuPDF pillow supabase
"""

import os, re, json, io, sys
import fitz                       # PyMuPDF
from supabase import create_client, Client

# ── Config ────────────────────────────────────────────────────────────────────
SUPABASE_URL     = "https://ihkcwxeukqavjnmnzsiv.supabase.co"
SUPABASE_KEY     = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imloa2N3eGV1a3FhdmpubW56c2l2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4NTUxNjA4NiwiZXhwIjoyMTAxMDkyMDg2fQ.9MBDIXmeOGnGuKaAUpx-wiKRP42OIAa49RvoqTilOKw"
BUCKET           = "pyq-images"
ZOOM             = 2              # 2× zoom → 144 dpi, good quality

script_dir = os.path.dirname(os.path.abspath(__file__))
PDF_PATH   = os.path.join(os.path.dirname(script_dir), "PYQs.pdf")
RAW_TXT    = os.path.join(script_dir, "raw_pdf.txt")

supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)

# ── Step 1: build page→question map from raw text ─────────────────────────────
# We re-extract text page by page from the PDF to find which page each Q is on
print("Opening PDF …")
doc = fitz.open(PDF_PATH)
total_pages = len(doc)
print(f"  {total_pages} pages found")

# Map: question_stem_prefix (first 60 chars) → page_number (0-indexed)
q_pat = re.compile(r'Q(\d+)\.\s+(.+)', re.S)

# For each page, extract text and record Q numbers
page_q_map = {}   # page_no → list of q_nums (as they appear)
for page_no in range(total_pages):
    page = doc[page_no]
    text = page.get_text("text")
    for m in q_pat.finditer(text):
        first60 = m.group(2).strip()[:60]
        page_q_map.setdefault(page_no, []).append(first60)

print(f"  Pages with questions: {len(page_q_map)}")

# ── Step 2: ensure bucket exists ───────────────────────────────────────────────
try:
    supabase.storage.create_bucket(BUCKET, options={"public": True})
    print(f"Created bucket '{BUCKET}'")
except Exception as e:
    if "already exists" in str(e).lower() or "duplicate" in str(e).lower():
        print(f"Bucket '{BUCKET}' already exists — OK")
    else:
        print(f"Bucket create note: {e}")

# ── Step 3: render & upload each relevant page ────────────────────────────────
mat = fitz.Matrix(ZOOM, ZOOM)
uploaded = {}   # page_no → public URL

pages_to_upload = sorted(page_q_map.keys())
print(f"\nUploading {len(pages_to_upload)} pages …")

for i, page_no in enumerate(pages_to_upload):
    page  = doc[page_no]
    pix   = page.get_pixmap(matrix=mat, alpha=False)
    img_bytes = pix.tobytes("png")
    
    remote_path = f"page_{page_no:04d}.png"
    
    try:
        supabase.storage.from_(BUCKET).upload(
            remote_path,
            img_bytes,
            {"content-type": "image/png", "upsert": "true"}
        )
    except Exception as e:
        if "already exists" in str(e).lower():
            pass   # already there, just get URL
        else:
            print(f"  Upload error page {page_no}: {e}")
            continue

    pub = supabase.storage.from_(BUCKET).get_public_url(remote_path)
    uploaded[page_no] = pub
    print(f"  [{i+1}/{len(pages_to_upload)}] page {page_no} → {pub[:60]}…")

print(f"\nUploaded {len(uploaded)} page images")

# ── Step 4: fetch all questions from DB and match to pages ─────────────────────
print("\nFetching questions from DB …")
resp = supabase.table("questions").select("id, question_stem").execute()
questions_db = resp.data
print(f"  {len(questions_db)} questions fetched")

# For each question, find which page it's on by matching first 50 chars of stem
updates = []
for q in questions_db:
    stem_prefix = re.sub(r'\s+', ' ', q["question_stem"].strip())[:50].lower()
    best_page   = None
    best_score  = 0
    
    for page_no, q_texts in page_q_map.items():
        for qt in q_texts:
            qt_norm = re.sub(r'\s+', ' ', qt.strip())[:50].lower()
            # Simple overlap score: common words
            sw = set(stem_prefix.split())
            qw = set(qt_norm.split())
            score = len(sw & qw)
            if score > best_score and score >= 3:
                best_score = score
                best_page  = page_no
    
    if best_page is not None and best_page in uploaded:
        updates.append({"id": q["id"], "image_url": uploaded[best_page]})

print(f"  Matched {len(updates)} questions to page images")

# ── Step 5: batch-update image_url in questions table ─────────────────────────
print("\nUpdating questions table …")
BATCH = 50
for i in range(0, len(updates), BATCH):
    batch = updates[i:i+BATCH]
    for row in batch:
        supabase.table("questions").update({"image_url": row["image_url"]}).eq("id", row["id"]).execute()
    print(f"  Updated {min(i+BATCH, len(updates))}/{len(updates)}")

print("\n✅ Done! image_url set for matched questions.")
