import os
import re

script_dir = os.path.dirname(os.path.abspath(__file__))
seed_path = os.path.join(os.path.dirname(script_dir), 'supabase', 'seed.sql')

with open(seed_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Find all blocks that end with a semicolon after values
# and replace the semicolon with ON CONFLICT (id) DO NOTHING;
# But we have to be careful with the questions insert since it's huge.
# It's safer to just replace all `);\n` at the end of inserts with `)\nON CONFLICT (id) DO NOTHING;\n`
# Wait, some tables might not have 'id' as the conflict target, but our schema:
# subjects (id), chapters (id), topics (id), questions (id), flashcard_decks (id), flashcards (id)
# All of them have `id` as the primary key!

fixed_content = content.replace("11);\n", "11)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("4);\n", "4)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("5);\n", "5)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("6);\n", "6)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("7);\n", "7)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("8);\n", "8)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("9);\n", "9)\nON CONFLICT (id) DO NOTHING;\n")
fixed_content = fixed_content.replace("10);\n", "10)\nON CONFLICT (id) DO NOTHING;\n")

# For questions and flashcards, they end with `);` or something similar.
# Let's use regex to safely append ON CONFLICT (id) DO NOTHING to all INSERT statements
# An insert block is: INSERT INTO table (...) VALUES ... ;

def replacer(match):
    # match.group(0) is the whole insert statement up to the semicolon
    stmt = match.group(0)
    # Remove the trailing semicolon and add the conflict clause
    return stmt[:-1] + "\nON CONFLICT (id) DO NOTHING;"

# Match INSERT INTO ... VALUES ... ;
# Use dotall to match across newlines
pattern = re.compile(r'INSERT INTO [a-zA-Z_]+\s*\([^)]+\)\s*VALUES.*?;', re.DOTALL)

# Let's just do a safer approach, line by line or manual replace for the specific blocks.
import sys

# Just reload the file and do a regex replace
with open(seed_path, 'r', encoding='utf-8') as f:
    text = f.read()

new_text = pattern.sub(replacer, text)

with open(seed_path, 'w', encoding='utf-8') as f:
    f.write(new_text)

print("Updated seed.sql with ON CONFLICT DO NOTHING")
