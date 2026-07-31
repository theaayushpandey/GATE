'use client';

import { motion } from 'framer-motion';
import { InlineMath, BlockMath } from 'react-katex';
import type { SessionQuestion } from '@/types';

interface Props {
  question: SessionQuestion;
  onAnswerChange: (answer: any) => void;
  disabled: boolean;
}

const OPTION_KEYS = ['A', 'B', 'C', 'D'] as const;

export function AnswerPanel({ question, onAnswerChange, disabled }: Props) {
  const { question_type, options_json, user_answer, is_submitted, correct_key } = question;

  if (question_type === 'MCQ') {
    return (
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 mt-6">
        {OPTION_KEYS.filter(k => options_json?.[k]).map(key => {
          const isSelected = user_answer === key;
          const isCorrect  = is_submitted && key === correct_key;
          const isWrong    = is_submitted && isSelected && key !== correct_key;

          return (
            <motion.button
              key={key}
              id={`option-${key}`}
              onClick={() => !disabled && onAnswerChange(key)}
              whileHover={!disabled && !is_submitted ? { scale: 1.01 } : {}}
              whileTap={!disabled ? { scale: 0.99 } : {}}
              disabled={disabled && !is_submitted}
              className={`option-card
                ${isCorrect  ? 'correct'   : ''}
                ${isWrong    ? 'incorrect' : ''}
                ${isSelected && !is_submitted ? 'selected' : ''}
              `}
            >
              <div className="option-key">{key}</div>
              <div className="text-sm leading-relaxed flex-1">
                <OptionText text={options_json?.[key] ?? ''} />
              </div>
              {isCorrect && <span style={{ color: '#22c55e', fontSize: 18, flexShrink: 0 }}>✓</span>}
              {isWrong   && <span style={{ color: '#ef4444', fontSize: 18, flexShrink: 0 }}>✗</span>}
            </motion.button>
          );
        })}
      </div>
    );
  }

  if (question_type === 'MSQ') {
    const selected = (user_answer as string[]) ?? [];
    const correctKeys = correct_key as string[];
    const toggle = (key: string) => {
      if (disabled) return;
      const next = selected.includes(key) ? selected.filter(k => k !== key) : [...selected, key];
      onAnswerChange(next);
    };
    return (
      <div>
        <p className="text-xs mb-3 flex items-center gap-1.5" style={{ color: 'var(--text-secondary)' }}>
          <span className="inline-block w-3.5 h-3.5 rounded border" style={{ borderColor: 'var(--border)' }} />
          Select ALL correct options (MSQ — no negative marking)
        </p>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 mt-2">
          {OPTION_KEYS.filter(k => options_json?.[k]).map(key => {
            const isSel     = selected.includes(key);
            const isCorrect = is_submitted && correctKeys?.includes(key);
            const isWrong   = is_submitted && isSel && !correctKeys?.includes(key);
            return (
              <motion.button key={key} onClick={() => toggle(key)}
                whileHover={!disabled ? { scale: 1.01 } : {}}
                className={`option-card ${isCorrect ? 'correct' : isWrong ? 'incorrect' : isSel ? 'selected' : ''}`}
              >
                <div className="w-5 h-5 rounded flex items-center justify-center border-2 transition-all flex-shrink-0"
                  style={{ borderColor: isSel ? '#5B6EF5' : 'var(--border)', background: isSel ? '#5B6EF5' : 'transparent' }}>
                  {isSel && <span className="text-white text-xs font-bold">✓</span>}
                </div>
                <div className="option-key">{key}</div>
                <div className="text-sm flex-1"><OptionText text={options_json?.[key] ?? ''} /></div>
                {isCorrect && <span style={{ color: '#22c55e' }}>✓</span>}
                {isWrong   && <span style={{ color: '#ef4444' }}>✗</span>}
              </motion.button>
            );
          })}
        </div>
      </div>
    );
  }

  // NAT
  const [min, max] = Array.isArray(correct_key) ? correct_key as [number, number] : [null, null];
  const numAnswer = user_answer as number | null;
  const inRange = is_submitted && numAnswer !== null && min !== null && numAnswer >= min && numAnswer <= max!;

  return (
    <div className="mt-6 max-w-sm">
      <p className="text-xs mb-2" style={{ color: 'var(--text-secondary)' }}>
        📝 Numerical Answer Type — enter your answer (max 2 decimal places)
      </p>
      <input
        type="number" step="0.01"
        id="nat-input"
        value={numAnswer ?? ''}
        onChange={e => {
          const v = parseFloat(e.target.value);
          if (!isNaN(v)) onAnswerChange(v);
        }}
        disabled={disabled}
        placeholder="Type your answer here…"
        className="nat-input"
        style={is_submitted ? { borderColor: inRange ? '#22c55e' : '#ef4444' } : {}}
      />
      {is_submitted && min !== null && (
        <p className="text-xs mt-2 font-medium" style={{ color: inRange ? '#22c55e' : '#ef4444' }}>
          {inRange ? `✓ Correct! Accepted: [${min}, ${max}]` : `✗ Accepted range: [${min}, ${max}]`}
        </p>
      )}
    </div>
  );
}

function OptionText({ text }: { text: string }) {
  const parts = text.split(/(\$[^$]+\$)/g);
  return (
    <>
      {parts.map((part, i) =>
        part.startsWith('$') && part.endsWith('$')
          ? <InlineMath key={i} math={part.slice(1, -1)} />
          : <span key={i}>{part}</span>
      )}
    </>
  );
}
