'use client';

import { useMemo } from 'react';
import { motion } from 'framer-motion';
import { BookOpen, CheckCircle2, Target, Zap } from 'lucide-react';
import type { Subject } from '@/types';

interface GlobalStatsProps {
  subjects: Subject[];
  progressData: any[];
}

export function GlobalStats({ subjects, progressData }: GlobalStatsProps) {
  const stats = useMemo(() => {
    const totalPYQs = subjects.reduce((s, sub) => s + (sub.total_pyqs ?? 0), 0);
    const solved    = progressData.filter(p => p.status === 'correct' || p.status === 'incorrect').length;
    const correct   = progressData.filter(p => p.status === 'correct').length;
    const accuracy  = solved > 0 ? Math.round((correct / solved) * 100) : 0;
    const subjectsDone = 0; // Would come from revision_schedules
    return { totalPYQs, solved, accuracy, subjectsDone };
  }, [subjects, progressData]);

  const items = [
    { icon: BookOpen, label: 'Total PYQs', value: stats.totalPYQs.toLocaleString(), color: 'text-blue-400', bg: 'bg-blue-500/10' },
    { icon: CheckCircle2, label: 'Solved',     value: stats.solved.toLocaleString(),    color: 'text-emerald-400', bg: 'bg-emerald-500/10' },
    { icon: Target,       label: 'Accuracy',   value: `${stats.accuracy}%`,            color: 'text-amber-400',   bg: 'bg-amber-500/10' },
    { icon: Zap,          label: 'Subjects Completed', value: `${stats.subjectsDone}/11`, color: 'text-violet-400', bg: 'bg-violet-500/10' },
  ];

  return (
    <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 mb-8">
      {items.map((item, i) => (
        <motion.div
          key={item.label}
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: i * 0.07 }}
          className="glass-card p-4 flex items-center gap-3"
        >
          <div className={`w-9 h-9 rounded-lg ${item.bg} flex items-center justify-center flex-shrink-0`}>
            <item.icon className={`w-4 h-4 ${item.color}`} />
          </div>
          <div>
            <p className="text-[11px] text-muted-foreground leading-none mb-1">{item.label}</p>
            <p className={`text-xl font-bold ${item.color}`}>{item.value}</p>
          </div>
        </motion.div>
      ))}
    </div>
  );
}
