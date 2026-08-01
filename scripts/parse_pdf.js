const fs = require('fs');
const pdf = require('pdf-parse');
const path = require('path');

const pdfPath = path.join(__dirname, '../PYQs.pdf');
const outPath = path.join(__dirname, 'raw_pdf.txt');

async function extract() {
  if (!fs.existsSync(pdfPath)) {
    console.error('File not found:', pdfPath);
    return;
  }
  
  const dataBuffer = fs.readFileSync(pdfPath);
  console.log('Extracting text from PDF...');
  
  try {
    const data = await pdf(dataBuffer);
    fs.writeFileSync(outPath, data.text);
    console.log(`Saved ${data.text.length} bytes to raw_pdf.txt`);
  } catch (err) {
    console.error('Error parsing PDF:', err);
  }
}

extract();
