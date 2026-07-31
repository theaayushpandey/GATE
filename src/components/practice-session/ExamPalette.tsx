'use client';

import { motion } from 'framer-motion';
import type { SessionQuestion, PaletteState } from '@/types';
import { Flag } from 'lucide-react';

interface Props {
  questions: SessionQuestion[];
  currentIndex: number;
  onJump: (index: number) => void;
}

const LEGEND: { state: PaletteState; label: string; tileClass: string }[] = [
  { state: 'not_visited',      label: 'Not Visited',          tileClass: 'not-visited' },
  { state: 'not_answered',     label: 'Not Answered',         tileClass: 'not-answered' },
  { state: 'answered',         label: 'Answered',             tileClass: 'answered' },
  { state: 'review',           label: 'Marked for Review',   tileClass: 'review' },
  { state: 'answered_review',  label: 'Answered + Review',   tileClass: 'answered-review' },
];

function tileClass(state: PaletteState, isCurrent: boolean): string {
  const map: Record<PaletteState, string> = {
    not_visited:     'not-visited',
    not_answered:    'not-answered',
    answered:        'answered',
    review:          'review',
    answered_review: 'answered-review',
  };
  return `palette-tile ${map[state]} ${isCurrent ? 'ring-2 ring-white ring-offset-1 ring-offset-card scale-110' : ''}`;
}

export function ExamPalette({ questions, currentIndex, onJump }: Props) {
  const stats = {
    answered:  questions.filter(q => q.palette_state === 'answered').length,
    review:    questions.filter(q => q.palette_state === 'review' || q.palette_state === 'answered_review').length,
    notDone:   questions.filter(q => q.palette_state === 'not_answered' || q.palette_state === 'not_visited').length,
  };

  return (
    <div className="flex flex-col h-full">
      {/* Header */}
      <div className="px-4 pt-4 pb-3 border-b border-border">
        <h3 className="text-sm font-semibold mb-3">Question Palette</h3>
        {/* Stats */}
        <div className="grid grid-cols-3 gap-2 text-[11px]">
          <div className="text-center">
            <p className="text-emerald-400 font-bold text-base">{stats.answered}</p>
            <p className="text-muted-foreground">Done</p>
          </div>
          <div className="text-center">
            <p className="text-violet-400 font-bold text-base">{stats.review}</p>
            <p className="text-muted-foreground">Review</p>
          </div>
          <div className="text-center">
            <p className="text-red-400 font-bold text-base">{stats.notDone}</p>
            <p className="text-muted-foreground">Pending</p>
          </div>
        </div>
      </div>

      {/* Question grid */}
      <div className="flex-1 overflow-y-auto p-4">
        <div className="flex flex-wrap gap-2">
          {questions.map((q, i) => (
            <motion.button
              key={q.id}
              id={`palette-tile-${i + 1}`}
              onClick={() => onJump(i)}
              whileHover={{ scale: 1.1 }}
              whileTap={{ scale: 0.95 }}
              className={tileClass(q.palette_state, i === currentIndex)}
              title={`Q${i + 1} — ${q.palette_state.replace('_', ' ')}`}
            >
              {i + 1}
            </motion.button>
          ))}
        </div>
      </div>

      {/* Legend */}
      <div className="px-4 pb-4 border-t border-border pt-3 space-y-1.5">
        {LEGEND.map(item => (
          <div key={item.state} className="flex items-center gap-2 text-[10px] text-muted-foreground">
            <div className={`palette-tile ${item.tileClass} w-4 h-4 text-[8px] rounded-sm`} />
            <span>{item.label}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
