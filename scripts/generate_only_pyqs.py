import os
import re
import json
import uuid

script_dir = os.path.dirname(os.path.abspath(__file__))
raw_txt_path = os.path.join(script_dir, 'raw_pdf.txt')
out_path = os.path.join(os.path.dirname(script_dir), 'supabase', 'new_pyqs_only.sql')

with open(raw_txt_path, 'r', encoding='utf-8') as f:
    text = f.read()

# Known subjects to IDs
subject_map = {
    'operating system': 'ef85032b-b527-4fd1-9e59-bcfb661899b7',
    'computer network': 'bde844c3-78ee-48bf-a033-254618acea82',
    'database management system': 'b09dadc8-c1f3-4907-b1b4-c1243464a76d',
    'dbms': 'b09dadc8-c1f3-4907-b1b4-c1243464a76d',
    'computer organization and architecture': '78df9cae-d196-43d2-9812-95c96d79bb3d',
    'cso': '78df9cae-d196-43d2-9812-95c96d79bb3d',
    'discrete mathematics': 'fbc320d1-98a9-4976-80ad-55dc409d707e',
    'compiler': '34d0b075-1e3d-4999-ba4b-490c6f1f92db',
    'toc': '84ec0471-4e55-4c5f-8e90-6ff65877a945',
    'ada': '54802f83-d684-47b3-98f3-551195d34d45',
    'digital': '6d3d5627-affe-4c91-bd0d-c5249470b220'
}

lines = text.split('\n')
answer_keys = {}

in_answer_section = False
key_header_pattern = re.compile(r'(.*?)\s+PYQs?\s+Answer\s+key', re.IGNORECASE)
ans_line_pattern = re.compile(r'(\d+)\.\s*([A-Za-z0-9.\-]+)')

def clean_topic(name):
    if not name: return "GENERAL"
    return re.sub(r'[^A-Z0-9]', '', name.upper())

for line in lines:
    line_clean = line.strip()
    if not line_clean:
        continue
    
    if 'PYQ Questions Booklet' in line_clean or 'PYQ Questions' in line_clean:
        in_answer_section = False
        continue

    m_header = key_header_pattern.search(line_clean)
    if m_header:
        in_answer_section = True
        sub_str = m_header.group(1).strip().lower()
        
        current_ans_subject = None
        for sub, sid in subject_map.items():
            if sub in sub_str or sub_str in sub:
                current_ans_subject = sid
                break
        
        if not current_ans_subject:
            for sub, sid in subject_map.items():
                if sub in line_clean.lower():
                    current_ans_subject = sid
                    break

        if current_ans_subject:
            if current_ans_subject not in answer_keys:
                answer_keys[current_ans_subject] = {}
            current_ans_topic = "GENERAL"
            if current_ans_topic not in answer_keys[current_ans_subject]:
                answer_keys[current_ans_subject][current_ans_topic] = {}
        continue
        
    if in_answer_section and current_ans_subject:
        answers_found = list(ans_line_pattern.finditer(line_clean))
        if answers_found:
            for m in answers_found:
                q_num = int(m.group(1))
                ans_val = m.group(2).upper()
                answer_keys[current_ans_subject][current_ans_topic][q_num] = ans_val
        else:
            if len(line_clean) > 3 and not line_clean.isdigit():
                if "GATE" not in line_clean and "Marks" not in line_clean:
                    current_ans_topic = clean_topic(line_clean)
                    if current_ans_topic not in answer_keys[current_ans_subject]:
                        answer_keys[current_ans_subject][current_ans_topic] = {}

questions = []
current_subject = None
current_topic = None
current_q = None

q_pattern = re.compile(r'^Q(\d+)\.\s*(.*)')
opt_pattern = re.compile(r'^\(([a-d])\)\s*(.*)', re.IGNORECASE)
marks_pattern = re.compile(r'\[Marks:\s*(\d*)\s*\]\[GATE:\s*(\d{4})\]')
topic_pattern = re.compile(r'^[A-Z\s&+\-]{5,}$')

in_answer_section_pass2 = False

for line in lines:
    line_clean = line.strip()
    if not line_clean:
        continue
        
    if key_header_pattern.search(line_clean):
        in_answer_section_pass2 = True
        
    if in_answer_section_pass2:
        if "PYQ Questions Booklet" in line_clean:
            in_answer_section_pass2 = False
        continue

    lower_line = line_clean.lower()
    if 'booklet' in lower_line:
        for sub, sid in subject_map.items():
            if sub in lower_line:
                current_subject = sid
                current_topic = "GENERAL"
                break
        continue

    if topic_pattern.match(line_clean) and "Q1" not in line_clean and not "GATE" in line_clean:
        current_topic = clean_topic(line_clean)
        continue

    m_q = q_pattern.match(line_clean)
    if m_q:
        if current_q:
            questions.append(current_q)
        
        q_num = int(m_q.group(1))
        
        current_q = {
            'subject_id': current_subject,
            'topic': current_topic,
            'q_num': q_num,
            'text': m_q.group(2) + '\n',
            'options': {},
            'marks': 1,
            'year': 2020,
            'correct_key': None
        }
        
        if current_subject and current_subject in answer_keys:
            topic_dict = answer_keys[current_subject]
            if current_topic in topic_dict and q_num in topic_dict[current_topic]:
                current_q['correct_key'] = topic_dict[current_topic][q_num]
            else:
                for t, ans_dict in topic_dict.items():
                    if q_num in ans_dict:
                        current_q['correct_key'] = ans_dict[q_num]
                        break
        continue
    
    if current_q:
        m_opt = opt_pattern.match(line_clean)
        if m_opt:
            opt_letter = m_opt.group(1).upper()
            current_q['options'][opt_letter] = m_opt.group(2)
        else:
            m_marks = marks_pattern.search(line_clean)
            if m_marks:
                marks_val = m_marks.group(1)
                if marks_val:
                    current_q['marks'] = int(marks_val)
                current_q['year'] = int(m_marks.group(2))
                line_clean = marks_pattern.sub('', line_clean)
            
            inline_opts = list(re.finditer(r'\(([a-d])\)\s*([^()]+)', line_clean, re.IGNORECASE))
            if inline_opts:
                for opt in inline_opts:
                    opt_letter = opt.group(1).upper()
                    current_q['options'][opt_letter] = opt.group(2).strip()
            else:
                current_q['text'] += line_clean + '\n'

if current_q:
    questions.append(current_q)

fallback_subject = 'ef85032b-b527-4fd1-9e59-bcfb661899b7'

sql_statements = []
sql_statements.append("INSERT INTO questions (id, subject_id, gate_year, marks, question_type, question_stem, options_json, correct_key, detailed_solution) VALUES\n")

values = []
for q in questions:
    q_id = str(uuid.uuid4())
    sub_id = q['subject_id'] if q['subject_id'] else fallback_subject
    
    # Clamp year to valid GATE range
    year = q.get('year', 2020)
    if not isinstance(year, int) or year < 1990 or year > 2025:
        year = 2020
    
    # Clamp marks to only 1 or 2 (DB constraint)
    marks = q.get('marks', 1)
    if marks not in (1, 2):
        marks = 1
    
    stem = q['text'].replace("'", "''").strip()
    if not stem:
        stem = "Question text missing"
        
    opts = q.get('options', {})
    if not opts:
        opts = {"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}
    opts_json = json.dumps(opts).replace("'", "''")
    
    correct = q['correct_key']
    if correct:
        correct = f'"{correct}"'
    else:
        correct = '"A"'
    
    val = f"  ('{q_id}', '{sub_id}', {year}, {marks}, 'MCQ', '{stem}', '{opts_json}', '{correct}', 'Detailed solution not parsed from OCR yet.')"
    values.append(val)

sql_statements.append(",\n".join(values) + "\nON CONFLICT (id) DO NOTHING;\n")

with open(out_path, 'w', encoding='utf-8') as f:
    f.writelines(sql_statements)

print(f"Generated {out_path} with {len(values)} questions.")

