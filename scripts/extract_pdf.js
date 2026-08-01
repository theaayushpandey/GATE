const fs = require('fs');
const path = require('path');

const transcriptPath = 'C:\\Users\\theaa\\.gemini\\antigravity-ide\\brain\\30f236a5-b51e-4dd7-861c-b06314e1c019\\.system_generated\\logs\\transcript_full.jsonl';
const outPath = path.join(__dirname, 'raw_pdf.txt');

function extract() {
  const content = fs.readFileSync(transcriptPath, 'utf8');
  
  // Find all occurrences
  let lastValidContent = '';
  let currentIndex = 0;
  
  while (true) {
    const startIndex = content.indexOf('==Start of PDF==', currentIndex);
    if (startIndex === -1) break;
    
    const endIndex = content.indexOf('==End of PDF==', startIndex);
    if (endIndex === -1) break;
    
    const extracted = content.substring(startIndex, endIndex + '==End of PDF=='.length);
    // If it's long, it's the real PDF
    if (extracted.length > 1000) {
       // Clean up JSON escaping if it's inside a JSON string
       let cleanText = extracted;
       try {
           // It might be escaped like \n, \", etc.
           // We can try to extract the exact string from the JSON line it belongs to
           const lineStart = content.lastIndexOf('\n', startIndex);
           const lineEnd = content.indexOf('\n', endIndex);
           const line = content.substring(lineStart + 1, lineEnd > -1 ? lineEnd : content.length);
           const parsed = JSON.parse(line);
           
           // Recursively search object for the string
           function findPdf(obj) {
               if (typeof obj === 'string') {
                   if (obj.includes('==Start of PDF==') && obj.length > 1000) return obj;
               } else if (typeof obj === 'object' && obj !== null) {
                   for (let key in obj) {
                       const res = findPdf(obj[key]);
                       if (res) return res;
                   }
               }
               return null;
           }
           
           const found = findPdf(parsed);
           if (found) {
               cleanText = found;
           }
       } catch(e) {}
       
       lastValidContent = cleanText;
    }
    
    currentIndex = endIndex + 1;
  }

  if (lastValidContent) {
    fs.writeFileSync(outPath, lastValidContent);
    console.log(`Saved ${lastValidContent.length} bytes to raw_pdf.txt`);
  } else {
    console.log('Could not find large PDF block in transcript.');
  }
}

extract();
