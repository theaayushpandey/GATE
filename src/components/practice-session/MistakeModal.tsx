'use client';

import { motion } from 'framer-motion';
import type { MistakeReason } from '@/types';

interface Props {
  onSelect: (reason: MistakeReason) => void;
  onSkip: () => void;
}

const REASONS: { value: MistakeReason; emoji: string; label: string; desc: string; color: string }[] = [
  { value: 'conceptual',    emoji: '🧠', label: 'Conceptual Flaw',       desc: 'Fundamental gap in understanding',  color: 'border-red-500/40 hover:bg-red-500/10 hover:border-red-500/60' },
  { value: 'calculation',   emoji: '🔢', label: 'Calculation / NAT Error',desc: 'Arithmetic or rounding mistake',     color: 'border-amber-500/40 hover:bg-amber-500/10 hover:border-amber-500/60' },
  { value: 'misread',       emoji: '👁', label: 'Misread / Trap',         desc: 'Read the question incorrectly',    color: 'border-blue-500/40 hover:bg-blue-500/10 hover:border-blue-500/60' },
  { value: 'time_pressure', emoji: '⏱', label: 'Time Pressure',          desc: 'Knew it but ran out of time',       color: 'border-violet-500/40 hover:bg-violet-500/10 hover:border-violet-500/60' },
];

export function MistakeModal({ onSelect, onSkip }: Props) {
  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      className="fixed inset-0 z-50 flex items-center justify-center p-4"
    >
      {/* Backdrop */}
      <div className="absolute inset-0 bg-black/60 backdrop-blur-sm" onClick={onSkip} />

      <motion.div
        initial={{ scale: 0.9, y: 20 }}
        animate={{ scale: 1, y: 0 }}
        exit={{ scale: 0.9, y: 10 }}
        transition={{ type: 'spring', stiffness: 300, damping: 25 }}
        className="relative z-10 glass-card p-6 max-w-sm w-full"
      >
        <div className="text-center mb-5">
          <div className="text-3xl mb-2">🔍</div>
          <h3 className="text-base font-semibold text-foreground">Why did you get this wrong?</h3>
          <p className="text-xs text-muted-foreground mt-1">1-Click Mistake Categorization — helps the AI analyst</p>
        </div>

        <div className="space-y-2">
          {REASONS.map(r => (
            <motion.button
              key={r.value}
              id={`mistake-${r.value}`}
              onClick={() => onSelect(r.value)}
              whileHover={{ x: 3 }}
              whileTap={{ scale: 0.98 }}
              className={`w-full flex items-center gap-3 p-3 rounded-xl border border-border text-left
                          transition-all duration-150 ${r.color}`}
            >
              <span className="text-xl">{r.emoji}</span>
              <div>
                <p className="text-sm font-medium text-foreground">{r.label}</p>
                <p className="text-[11px] text-muted-foreground">{r.desc}</p>
              </div>
            </motion.button>
          ))}
        </div>

        <button
          onClick={onSkip}
          id="mistake-skip"
          className="w-full mt-4 py-2 text-xs text-muted-foreground hover:text-foreground transition-colors"
        >
          Skip — categorize later
        </button>
      </motion.div>
    </motion.div>
  );
}
