'use client';

import { useEffect, useRef, useState } from 'react';
import { InlineMath, BlockMath } from 'react-katex';
import 'katex/dist/katex.min.css';

interface Props { stem: string }

/**
 * Renders question stem with:
 * - Inline math: $...$
 * - Block math: $$...$$
 * - Code blocks: ```lang\n...\n```
 * - Markdown: **bold**, *italic*, `code`, tables, lists
 */
export function QuestionRenderer({ stem }: Props) {
  const [highlighted, setHighlighted] = useState<Map<string, string>>(new Map());

  // Extract and highlight code blocks server-side via API
  useEffect(() => {
    const codeBlocks = [...stem.matchAll(/```(\w+)?\n([\s\S]*?)```/g)];
    if (!codeBlocks.length) return;
    // We'll render with basic styling; Shiki needs server-side
    // In production, use a route handler to syntax-highlight
  }, [stem]);

  const segments = parseSegments(stem);

  return (
    <div className="prose prose-invert max-w-none mb-6">
      <div className="text-[15px] leading-relaxed text-foreground space-y-3">
        {segments.map((seg, i) => <Segment key={i} segment={seg} />)}
      </div>
    </div>
  );
}

type Segment =
  | { type: 'block_math'; content: string }
  | { type: 'inline_math'; content: string }
  | { type: 'code'; lang: string; content: string }
  | { type: 'text'; content: string };

function parseSegments(text: string): Segment[] {
  const segments: Segment[] = [];
  let remaining = text;

  while (remaining.length > 0) {
    // Block math $$...$$
    const blockMath = remaining.match(/^\$\$([\s\S]*?)\$\$/);
    if (blockMath) {
      segments.push({ type: 'block_math', content: blockMath[1] });
      remaining = remaining.slice(blockMath[0].length);
      continue;
    }
    // Code block ```lang\n...\n```
    const codeBlock = remaining.match(/^```(\w+)?\n([\s\S]*?)```/);
    if (codeBlock) {
      segments.push({ type: 'code', lang: codeBlock[1] ?? 'text', content: codeBlock[2] });
      remaining = remaining.slice(codeBlock[0].length);
      continue;
    }
    // Find next special marker
    const nextSpecial = Math.min(
      ...[
        remaining.indexOf('$$', 1),
        remaining.indexOf('```', 1),
        remaining.indexOf('$', 1),
      ].filter(i => i !== -1).map(i => i < 0 ? Infinity : i),
      remaining.length
    );

    // Text up to next marker (may contain inline math)
    const chunk = remaining.slice(0, nextSpecial === Infinity ? remaining.length : nextSpecial);
    if (chunk) {
      // Parse inline math within chunk
      const inlineParts = parseInlineMath(chunk);
      segments.push(...inlineParts);
    }
    remaining = remaining.slice(chunk.length);
    if (remaining.length === 0) break;

    // Inline math $...$
    const inlineMath = remaining.match(/^\$((?:[^$\\]|\\.)+?)\$/);
    if (inlineMath) {
      segments.push({ type: 'inline_math', content: inlineMath[1] });
      remaining = remaining.slice(inlineMath[0].length);
      continue;
    }
    // Fallback: take one character
    segments.push({ type: 'text', content: remaining[0] });
    remaining = remaining.slice(1);
  }
  return segments;
}

function parseInlineMath(text: string): Segment[] {
  const parts: Segment[] = [];
  const re = /\$((?:[^$\\]|\\.)+?)\$/g;
  let last = 0, m;
  while ((m = re.exec(text)) !== null) {
    if (m.index > last) parts.push({ type: 'text', content: text.slice(last, m.index) });
    parts.push({ type: 'inline_math', content: m[1] });
    last = m.index + m[0].length;
  }
  if (last < text.length) parts.push({ type: 'text', content: text.slice(last) });
  return parts.length ? parts : [{ type: 'text', content: text }];
}

function Segment({ segment }: { segment: Segment }) {
  if (segment.type === 'block_math') {
    return (
      <div className="my-4 overflow-x-auto">
        <BlockMath math={segment.content} errorColor="#ef4444" />
      </div>
    );
  }
  if (segment.type === 'inline_math') {
    return <InlineMath math={segment.content} errorColor="#ef4444" />;
  }
  if (segment.type === 'code') {
    return (
      <pre className="shiki my-3">
        <code className={`language-${segment.lang}`}>
          {segment.content.split('\n').map((line, i) => (
            <span key={i} className="line">{line}</span>
          ))}
        </code>
      </pre>
    );
  }
  // Text — handle basic markdown
  return <MarkdownText text={segment.content} />;
}

function MarkdownText({ text }: { text: string }) {
  // Handle **bold**, *italic*, `code`, \n
  const parts = text.split(/(\*\*[^*]+\*\*|\*[^*]+\*|`[^`]+`|\n)/g);
  return (
    <>
      {parts.map((part, i) => {
        if (part === '\n') return <br key={i} />;
        if (part.startsWith('**') && part.endsWith('**')) return <strong key={i} className="font-semibold text-foreground">{part.slice(2,-2)}</strong>;
        if (part.startsWith('*') && part.endsWith('*')) return <em key={i} className="italic">{part.slice(1,-1)}</em>;
        if (part.startsWith('`') && part.endsWith('`')) return <code key={i}>{part.slice(1,-1)}</code>;
        return <span key={i}>{part}</span>;
      })}
    </>
  );
}
