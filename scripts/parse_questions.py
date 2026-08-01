import os
import re
import json

script_dir = os.path.dirname(os.path.abspath(__file__))
raw_txt_path = os.path.join(script_dir, 'raw_pdf.txt')
out_json_path = os.path.join(script_dir, 'parsed_pyqs.json')

with open(raw_txt_path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

questions = []
current_subject = None
current_topic = None
current_q = None

# Known subjects from seed.sql
subject_map = {
    'operating system': 'ef85032b-b527-4fd1-9e59-bcfb661899b7',
    'computer network': 'bde844c3-78ee-48bf-a033-254618acea82',
    'database management system': 'b09dadc8-c1f3-4907-b1b4-c1243464a76d',
    'computer organization and architecture': '78df9cae-d196-43d2-9812-95c96d79bb3d',
    'discrete mathematics': 'fbc320d1-98a9-4976-80ad-55dc409d707e',
    'compiler': '34d0b075-1e3d-4999-ba4b-490c6f1f92db',
    'toc': '84ec0471-4e55-4c5f-8e90-6ff65877a945',
    'ada': '54802f83-d684-47b3-98f3-551195d34d45',
    'digital': '6d3d5627-affe-4c91-bd0d-c5249470b220'
}

q_pattern = re.compile(r'^Q(\d+)\.\s*(.*)')
opt_pattern = re.compile(r'^\(([a-d])\)\s*(.*)', re.IGNORECASE)
marks_pattern = re.compile(r'\[Marks:\s*(\d*)\s*\]\[GATE:\s*(\d{4})\]')

for line in lines:
    line_clean = line.strip()
    if not line_clean:
        continue
    
    # Try to detect subject
    lower_line = line_clean.lower()
    for sub, sid in subject_map.items():
        if sub in lower_line and 'booklet' in lower_line:
            current_subject = sid
            current_topic = None
            break

    # If it's a new question
    m_q = q_pattern.match(line_clean)
    if m_q:
        if current_q:
            questions.append(current_q)
        
        current_q = {
            'subject_id': current_subject,
            'q_num': m_q.group(1),
            'text': m_q.group(2) + '\n',
            'options': {},
            'marks': 1,
            'year': 2020
        }
        continue
    
    if current_q:
        # Check for options
        m_opt = opt_pattern.match(line_clean)
        if m_opt:
            opt_letter = m_opt.group(1).upper()
            current_q['options'][opt_letter] = m_opt.group(2)
        else:
            # Check for marks
            m_marks = marks_pattern.search(line_clean)
            if m_marks:
                marks_val = m_marks.group(1)
                if marks_val:
                    current_q['marks'] = int(marks_val)
                current_q['year'] = int(m_marks.group(2))
                # Remove marks text from question stem if it's there
                line_clean = marks_pattern.sub('', line_clean)
            
            # If it's not an option and not marks, it's either continuation of question or an option inline
            # Some options are inline: (a) foo (b) bar
            inline_opts = list(re.finditer(r'\(([a-d])\)\s*([^()]+)', line_clean, re.IGNORECASE))
            if inline_opts:
                for opt in inline_opts:
                    opt_letter = opt.group(1).upper()
                    current_q['options'][opt_letter] = opt.group(2).strip()
            else:
                current_q['text'] += line_clean + '\n'

if current_q:
    questions.append(current_q)

with open(out_json_path, 'w', encoding='utf-8') as f:
    json.dump(questions, f, indent=2)

print(f"Extracted {len(questions)} questions")
