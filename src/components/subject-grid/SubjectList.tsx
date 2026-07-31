'use client';

import { useMemo } from 'react';
import { motion } from 'framer-motion';
import Link from 'next/link';
import { ChevronRight, TrendingUp, TrendingDown, Minus } from 'lucide-react';
import type { Subject } from '@/types';
import { calculateGRS } from '@/lib/grs/calculator';

interface Props {
  subjects: Subject[];
  progressData: any[];
}

// MARKS-style chapter list — one subject = one row
export function SubjectList({ subjects, progressData }: Props) {
  const subjectStats = useMemo(() => {
    return subjects.map(subject => {
      const sp = progressData.filter((p: any) => p.questions?.subject_id === subject.id);
      const solved  = sp.filter((p: any) => p.status !== 'unattempted').length;
      const correct = sp.filter((p: any) => p.status === 'correct').length;
      const accuracy = solved > 0 ? Math.round((correct / solved) * 100) : 0;
      const grs = calculateGRS({
        total_pyqs: subject.total_pyqs,
        solved_pyqs: solved,
        correct_1mark:  sp.filter((p: any) => p.status === 'correct' && p.questions?.marks === 1).length,
        total_1mark:    sp.filter((p: any) => p.questions?.marks === 1).length,
        correct_2mark:  sp.filter((p: any) => p.status === 'correct' && p.questions?.marks === 2).length,
        total_2mark:    sp.filter((p: any) => p.questions?.marks === 2).length,
        correct_nat_msq: 0, total_nat_msq: 0,
        last_practiced_at: null,
      });
      return { ...subject, solved, correct, accuracy, grs: grs.grs, badge: grs.badge, completion: grs.pyq_completion };
    });
  }, [subjects, progressData]);

  const totalSolved  = progressData.filter(p => (p as any).status !== 'unattempted').length;
  const totalCorrect = progressData.filter(p => (p as any).status === 'correct').length;
  const totalPYQs    = subjects.reduce((s, sub) => s + sub.total_pyqs, 0);
  const globalAcc    = totalSolved > 0 ? Math.round((totalCorrect / totalSolved) * 100) : 0;

  return (
    <div className="min-h-full p-6 lg:p-8 max-w-4xl">

      {/* Page header — MARKS style */}
      <div className="mb-6">
        <div className="flex items-center gap-2 mb-1">
          <span className="text-xs font-semibold px-2 py-0.5 rounded-full"
            style={{ background: 'rgba(91,110,245,0.15)', color: '#5B6EF5', border: '1px solid rgba(91,110,245,0.25)' }}>
            GATE CSE
          </span>
        </div>
        <h1 className="text-2xl font-bold mb-1" style={{ color: 'var(--text-primary)' }}>
          All Subjects
        </h1>
        <p className="text-sm" style={{ color: 'var(--text-secondary)' }}>
          {subjects.length} subjects · {totalPYQs.toLocaleString()} PYQs · 2000–2024
        </p>
      </div>

      {/* Progress summary bar */}
      <div className="flex items-center gap-6 mb-6 p-4 rounded-xl" style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
        <div className="text-center">
          <p className="text-xl font-bold" style={{ color: 'var(--text-primary)' }}>{totalSolved}/{totalPYQs}</p>
          <p className="text-xs mt-0.5" style={{ color: 'var(--text-secondary)' }}>PYQ Solved</p>
        </div>
        <div className="w-px h-8" style={{ background: 'var(--border)' }} />
        <div className="text-center">
          <p className="text-xl font-bold" style={{ color: '#22c55e' }}>{totalCorrect}/{totalPYQs}</p>
          <p className="text-xs mt-0.5" style={{ color: 'var(--text-secondary)' }}>Correct Qs</p>
        </div>
        <div className="w-px h-8" style={{ background: 'var(--border)' }} />
        <div className="text-center">
          <p className="text-xl font-bold" style={{ color: globalAcc >= 70 ? '#22c55e' : globalAcc >= 50 ? '#f59e0b' : '#ef4444' }}>
            {globalAcc}%
          </p>
          <p className="text-xs mt-0.5" style={{ color: 'var(--text-secondary)' }}>Accuracy</p>
        </div>
        <div className="flex-1 ml-2">
          <div className="progress-bar">
            <div className="h-full rounded-full transition-all duration-700"
              style={{ width: `${totalPYQs > 0 ? (totalSolved / totalPYQs) * 100 : 0}%`, background: '#5B6EF5' }} />
          </div>
          <p className="text-xs mt-1" style={{ color: 'var(--text-muted)' }}>
            {totalPYQs > 0 ? Math.round((totalSolved / totalPYQs) * 100) : 0}% overall completion
          </p>
        </div>
      </div>

      {/* Subject rows — MARKS chapter list style */}
      <div className="space-y-2">
        {subjectStats.map((subject, i) => {
          const trendIcon = subject.accuracy >= 75 ? TrendingUp : subject.accuracy >= 40 ? Minus : TrendingDown;
          const trendColor = subject.accuracy >= 75 ? '#22c55e' : subject.accuracy >= 40 ? '#f59e0b' : '#ef4444';
          return (
            <motion.div
              key={subject.id}
              initial={{ opacity: 0, y: 8 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.04, duration: 0.25 }}
            >
              <Link href={`/dashboard/subject/${subject.id}`} id={`subject-row-${subject.id}`}
                className="chapter-row group"
              >
                {/* Color indicator */}
                <div className="w-1 h-10 rounded-full flex-shrink-0"
                  style={{ background: subject.color_hex }} />

                {/* Subject name */}
                <div className="flex-1 min-w-0">
                  <p className="text-sm font-semibold truncate" style={{ color: 'var(--text-primary)' }}>
                    {subject.name}
                  </p>
                  <p className="text-xs mt-0.5" style={{ color: 'var(--text-secondary)' }}>
                    {subject.total_pyqs} questions
                  </p>
                </div>

                {/* Stats */}
                <div className="hidden sm:flex items-center gap-6 text-xs" style={{ color: 'var(--text-secondary)' }}>
                  <div className="text-center">
                    <p className="font-semibold" style={{ color: 'var(--text-primary)' }}>{subject.solved}/{subject.total_pyqs}</p>
                    <p>Solved</p>
                  </div>
                  <div className="text-center">
                    <p className="font-semibold" style={{ color: trendColor }}>{subject.accuracy}%</p>
                    <p>Accuracy</p>
                  </div>
                  <div className="text-center">
                    <p className="font-semibold" style={{ color: '#5B6EF5' }}>{subject.grs}</p>
                    <p>GRS</p>
                  </div>
                </div>

                {/* Progress bar (compact) */}
                <div className="hidden md:block w-24">
                  <div className="progress-bar">
                    <div className="h-full rounded-full transition-all"
                      style={{ width: `${subject.completion}%`, background: subject.color_hex }} />
                  </div>
                  <p className="text-[10px] mt-1 text-right" style={{ color: 'var(--text-muted)' }}>{subject.completion}%</p>
                </div>

                <ChevronRight className="w-4 h-4 flex-shrink-0 opacity-40 group-hover:opacity-100 transition-opacity"
                  style={{ color: 'var(--text-secondary)' }} />
              </Link>
            </motion.div>
          );
        })}
      </div>
    </div>
  );
}
