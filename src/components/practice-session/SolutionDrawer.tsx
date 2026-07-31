'use client';

import { motion } from 'framer-motion';
import { CheckCircle2, XCircle, ChevronDown } from 'lucide-react';
import { QuestionRenderer } from './QuestionRenderer';

interface Props {
  solution: string;
  isCorrect: boolean;
}

export function SolutionDrawer({ solution, isCorrect }: Props) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20, height: 0 }}
      animate={{ opacity: 1, y: 0, height: 'auto' }}
      exit={{ opacity: 0, y: 10, height: 0 }}
      transition={{ duration: 0.3, ease: 'easeOut' }}
      className="overflow-hidden mt-6"
    >
      <div className={`rounded-2xl border p-6 ${
        isCorrect
          ? 'border-emerald-500/30 bg-emerald-500/5'
          : 'border-red-500/30 bg-red-500/5'
      }`}>
        {/* Header */}
        <div className="flex items-center gap-3 mb-5">
          {isCorrect
            ? <CheckCircle2 className="w-5 h-5 text-emerald-400 flex-shrink-0" />
            : <XCircle className="w-5 h-5 text-red-400 flex-shrink-0" />
          }
          <div>
            <h4 className={`text-sm font-semibold ${isCorrect ? 'text-emerald-400' : 'text-red-400'}`}>
              {isCorrect ? '✓ Correct Answer!' : '✗ Incorrect — Study the Solution'}
            </h4>
            <p className="text-xs text-muted-foreground">Step-by-step explanation</p>
          </div>
        </div>

        {/* Divider */}
        <div className="h-px bg-border mb-5" />

        {/* Solution content */}
        <div className="text-sm">
          <QuestionRenderer stem={solution} />
        </div>
      </div>
    </motion.div>
  );
}
