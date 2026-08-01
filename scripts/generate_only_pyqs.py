import re
import json
import uuid

# ── Subject name keywords to match against subjects.name in DB ──────────────
# We'll use SQL subqueries so UUIDs don't need to be hardcoded
SUBJECT_NAME_LIKE = {
    'os':   'Operating Systems',
    'cn':   'Computer Networks',
    'dbms': 'Database Management',
    'coa':  'Computer Organization',
    'toc':  'Theory of Computation',
    'cd':   'Compiler Design',
    'algo': 'Algorithms',
    'pds':  'Programming',
    'dl':   'Digital Logic',
    'dm':   'Discrete Mathematics',
    'em':   'Engineering Mathematics',
}

# ── How to detect a subject section from a line ─────────────────────────────
def detect_subject(line: str) -> str | None:
    l = line.strip().lower()
    if re.match(r'^operating system', l):           return 'os'
    if re.match(r'^computer network', l):           return 'cn'
    if re.match(r'^database management|^dbms', l):  return 'dbms'
    if re.match(r'^computer organization', l):      return 'coa'
    if re.match(r'^theory of computation|^toc', l): return 'toc'
    if re.match(r'^compiler design', l):            return 'cd'
    if re.match(r'^algorithm', l):                  return 'algo'
    if re.match(r'^programming', l):                return 'pds'
    if re.match(r'^digital logic', l):              return 'dl'
    if re.match(r'^discrete math', l):              return 'dm'
    if re.match(r'^engineering math', l):           return 'em'
    return None

import os
script_dir = os.path.dirname(os.path.abspath(__file__))
raw_path   = os.path.join(script_dir, 'raw_pdf.txt')
out_path   = os.path.join(os.path.dirname(script_dir), 'supabase', 'new_pyqs_only.sql')

with open(raw_path, encoding='utf-8') as f:
    raw_lines = f.readlines()

# ── First pass: find where each subject section starts ─────────────────────
# A subject header appears as a standalone short line, not inside a question
section_starts = []   # list of (line_index, subject_key)
for i, line in enumerate(raw_lines):
    s = detect_subject(line)
    if s:
        # Make sure this isn't mid-sentence (keep only short header lines)
        stripped = line.strip()
        if len(stripped) < 60:
            section_starts.append((i, s))

# Remove duplicate consecutive same-subject entries (answer-key sections repeat the name)
deduped = []
prev_subj = None
for idx, subj in section_starts:
    if subj != prev_subj:
        deduped.append((idx, subj))
        prev_subj = subj

print("Section boundaries detected:")
for idx, subj in deduped:
    print(f"  line {idx+1}: {subj}")

# ── Build a lookup: for any line number → subject key ──────────────────────
def get_subject_at(line_no: int) -> str:
    current = 'os'   # default
    for idx, subj in deduped:
        if idx <= line_no:
            current = subj
        else:
            break
    return current

# ── Patterns ────────────────────────────────────────────────────────────────
Q_PAT    = re.compile(r'^Q(\d+)\.\s+(.*)')
OPT_PAT  = re.compile(r'^\(([a-d])\)\s+(.*)', re.I)
META_PAT = re.compile(r'\[Marks:\s*(\d*)\s*\]\[GATE:\s*(\d{4})\]', re.I)

# ── Second pass: parse questions ────────────────────────────────────────────
questions = []
current_q = None
in_answer_section = False

for i, raw_line in enumerate(raw_lines):
    line = raw_line.rstrip('\n').rstrip('\r')
    stripped = line.strip()

    # Skip empty lines
    if not stripped:
        continue

    # Detect answer-key blocks (e.g. "Operating System\nPROCESS & THREAD...\n1. C 2. D ...")
    # Answer key sections follow the pattern "N. X" repeated across a line
    if re.match(r'^\d+\.\s+[A-Z0-9.]+(\s+\d+\.\s+[A-Z0-9.]+)+', stripped):
        in_answer_section = True
        continue
    if re.match(r'^(PROCESS|THREAD|SYNCHRON|DEADLOCK|MEMORY|FILE|CACHE|PIPELINE|INSTRUCTION|ARITHMETIC|NETWORK|TRANSPORT|APPLICATION|LINK|PHYSICAL|ER MODEL|RELATIONAL|SQL|TRANSACTION|AUTOMATA|GRAMMAR|TURING|PARSING|CODE GEN|SORTING|GRAPH|GREEDY|DYNAMIC|DIVIDE|PROPOSITIONAL|SET|RELATION|COMBINAT|PROBABILITY|LINEAR|CALCULUS|DIFFERENTIAL|C PROG|RECURSION|POINTER)', stripped, re.I):
        in_answer_section = False
        continue
    # Reset answer section when we hit a new question
    if Q_PAT.match(stripped):
        in_answer_section = False

    if in_answer_section:
        continue

    # Detect new question
    m_q = Q_PAT.match(stripped)
    if m_q:
        if current_q:
            questions.append(current_q)
        subj_key = get_subject_at(i)
        current_q = {
            'subj_key':   subj_key,
            'q_num':      int(m_q.group(1)),
            'text':       m_q.group(2) + '\n',
            'options':    {},
            'marks':      1,
            'year':       2020,
        }
        continue

    if current_q is None:
        continue

    # Detect option
    m_opt = OPT_PAT.match(stripped)
    if m_opt:
        current_q['options'][m_opt.group(1).upper()] = m_opt.group(2).strip()
        continue

    # Detect marks/year metadata
    m_meta = META_PAT.search(stripped)
    if m_meta:
        marks_str = m_meta.group(1)
        year_str  = m_meta.group(2)
        if marks_str.isdigit():
            m_val = int(marks_str)
            current_q['marks'] = m_val if m_val in (1, 2) else 1
        try:
            yr = int(year_str)
            if 2000 <= yr <= 2025:
                current_q['year'] = yr
        except:
            pass
        # Also scrape inline options from the same line (e.g. "(a) X  (b) Y  (c) Z  (d) W")
        rest = META_PAT.sub('', stripped).strip()
        for m in re.finditer(r'\(([a-d])\)\s*([^()]+)', rest, re.I):
            current_q['options'][m.group(1).upper()] = m.group(2).strip()
        continue

    # Append to question text
    current_q['text'] += stripped + '\n'

if current_q:
    questions.append(current_q)

# ── Summary by subject ────────────────────────────────────────────────────
from collections import Counter
by_subj = Counter(q['subj_key'] for q in questions)
print("\nQuestions per subject:")
for k, v in sorted(by_subj.items()):
    print(f"  {k:6s}: {v}")
print(f"  TOTAL: {len(questions)}")

# ── Generate SQL ──────────────────────────────────────────────────────────
def esc(s: str) -> str:
    return s.replace("'", "''")

values = []
for q in questions:
    qid      = str(uuid.uuid4())
    subj_key = q['subj_key']
    subj_name = SUBJECT_NAME_LIKE[subj_key]
    year     = q['year']
    marks    = q['marks']
    stem     = esc(q['text'].strip()) or 'Question text missing'
    opts     = q['options'] if q['options'] else {"A":"Option A","B":"Option B","C":"Option C","D":"Option D"}
    opts_j   = esc(json.dumps(opts))
    correct  = '"A"'   # answer keys not parsed in this pass

    # Use subquery to get subject_id by name — no hardcoded UUIDs
    sub_select = f"(SELECT id FROM subjects WHERE name ILIKE '%{subj_name}%' LIMIT 1)"

    values.append(
        f"  ('{qid}', {sub_select}, {year}, {marks}, 'MCQ', '{stem}', '{opts_j}', '{correct}', 'Detailed solution pending.')"
    )

sql = "-- Delete old misassigned questions, keep any the user has already answered\n"
sql += "DELETE FROM questions WHERE id NOT IN (SELECT question_id FROM user_progress);\n\n"
sql += "INSERT INTO questions (id, subject_id, gate_year, marks, question_type, question_stem, options_json, correct_key, detailed_solution) VALUES\n"
sql += ",\n".join(values)
sql += "\nON CONFLICT (id) DO NOTHING;\n"

with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)

print(f"\nWrote {out_path}  ({len(values)} questions)")

