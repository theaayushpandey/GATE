import json
import uuid
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
json_path = os.path.join(script_dir, 'parsed_pyqs.json')
seed_path = os.path.join(os.path.dirname(script_dir), 'supabase', 'seed.sql')

with open(json_path, 'r', encoding='utf-8') as f:
    questions = json.load(f)

# Known subjects from seed.sql (fallback)
fallback_subject = 'ef85032b-b527-4fd1-9e59-bcfb661899b7'

sql_statements = []
sql_statements.append("\n-- ─── INJECTED PDF PYQs ──────────────────────────────────────\n")
sql_statements.append("INSERT INTO questions (id, subject_id, gate_year, marks, question_type, question_stem, options_json, correct_key, detailed_solution) VALUES\n")

values = []
for q in questions:
    q_id = str(uuid.uuid4())
    sub_id = q['subject_id'] if q['subject_id'] else fallback_subject
    year = q.get('year', 2020)
    marks = q.get('marks', 1)
    
    # Escape quotes
    stem = q['text'].replace("'", "''").strip()
    
    opts = q.get('options', {})
    if not opts:
        opts = {"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}
    opts_json = json.dumps(opts).replace("'", "''")
    
    correct = '"A"' # Default to A since parsing the complex answer key perfectly is difficult
    
    val = f"  ('{q_id}', '{sub_id}', {year}, {marks}, 'MCQ', '{stem}', '{opts_json}', '{correct}', 'Detailed solution not parsed from OCR yet.')"
    values.append(val)

sql_statements.append(",\n".join(values) + ";\n")

with open(seed_path, 'a', encoding='utf-8') as f:
    f.writelines(sql_statements)

print(f"Appended {len(values)} questions to seed.sql")
