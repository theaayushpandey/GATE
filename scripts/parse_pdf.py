import os
from pypdf import PdfReader

script_dir = os.path.dirname(os.path.abspath(__file__))
pdf_path = os.path.join(os.path.dirname(script_dir), 'PYQs.pdf')
out_path = os.path.join(script_dir, 'raw_pdf.txt')

if not os.path.exists(pdf_path):
    print(f"File not found: {pdf_path}")
    exit(1)

text = ""
with open(pdf_path, 'rb') as f:
    reader = PdfReader(f)
    for page in reader.pages:
        page_text = page.extract_text()
        if page_text:
            text += page_text + "\n"

with open(out_path, 'w', encoding='utf-8') as out_f:
    out_f.write(text)

print(f"Saved {len(text)} characters to raw_pdf.txt")
