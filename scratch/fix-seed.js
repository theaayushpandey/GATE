const fs = require('fs');
const crypto = require('crypto');
const path = require('path');

const seedPath = path.join(__dirname, '../supabase/seed.sql');
let sql = fs.readFileSync(seedPath, 'utf8');

const idMap = new Map();

sql = sql.replace(/'([sctq]|fd|fc)\d{2,3}'/g, (match) => {
  if (!idMap.has(match)) {
    idMap.set(match, crypto.randomUUID());
  }
  return "'" + idMap.get(match) + "'";
});

fs.writeFileSync(seedPath, sql);
console.log('Fixed UUIDs in seed.sql!');
