const fs = require('fs');
const path = require('path');

const seedPath = path.join(__dirname, '../supabase/seed.sql');
let sql = fs.readFileSync(seedPath, 'utf8');

// Find all single-quoted strings that look like JSON objects (options_json)
// and replace single backslashes with double backslashes for valid JSON parsing
sql = sql.replace(/'\{"A":.*\}'/g, (match) => {
  // Replace \ with \\
  return match.replace(/\\(?!\\)/g, '\\\\');
});

fs.writeFileSync(seedPath, sql);
console.log('Fixed JSON escapes in seed.sql!');
