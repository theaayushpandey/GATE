'use client';

import { useMemo } from 'react';
import { motion } from 'framer-motion';
import { PieChart, Pie, Cell, Tooltip, ResponsiveContainer, BarChart, Bar, XAxis, YAxis, CartesianGrid } from 'recharts';
import { ActivityGrid } from './ActivityGrid';
import { calculateGRS, GRS_BADGE_CONFIG } from '@/lib/grs/calculator';
import type { Subject, MistakeReason } from '@/types';

interface Props {
  subjects: Subject[];
  progressData: any[];
  activityData: any[];
  revisions: any[];
}

const MISTAKE_COLORS: Record<MistakeReason, string> = {
  conceptual:    '#ef4444',
  calculation:   '#f59e0b',
  misread:       '#3b82f6',
  time_pressure: '#8b5cf6',
  none:          '#6b7280',
};

export function AnalyticsDashboard({ subjects, progressData, activityData, revisions }: Props) {
  const subjectStats = useMemo(() => {
    return subjects.map(subject => {
      const sp = progressData.filter(p => p.questions?.subject_id === subject.id);
      const solved = sp.filter(p => p.status !== 'unattempted').length;
      const correct = sp.filter(p => p.status === 'correct').length;
      const accuracy = solved > 0 ? Math.round((correct / solved) * 100) : 0;
      const grs = calculateGRS({
        total_pyqs: subject.total_pyqs,
        solved_pyqs: solved,
        correct_1mark: sp.filter(p => p.status === 'correct' && p.questions?.marks === 1).length,
        total_1mark: sp.filter(p => p.questions?.marks === 1).length,
        correct_2mark: sp.filter(p => p.status === 'correct' && p.questions?.marks === 2).length,
        total_2mark: sp.filter(p => p.questions?.marks === 2).length,
        correct_nat_msq: 0, total_nat_msq: 0,
        last_practiced_at: null,
      });
      return { ...subject, solved, correct, accuracy, grs: grs.grs, badge: grs.badge };
    });
  }, [subjects, progressData]);

  const mistakeStats = useMemo(() => {
    const counts: Record<string, number> = {};
    progressData.filter(p => p.mistake_reason && p.mistake_reason !== 'none').forEach(p => {
      counts[p.mistake_reason] = (counts[p.mistake_reason] ?? 0) + 1;
    });
    return Object.entries(counts).map(([name, value]) => ({ name, value, color: MISTAKE_COLORS[name as MistakeReason] ?? '#6b7280' }));
  }, [progressData]);

  const totalSolved = progressData.filter(p => p.status !== 'unattempted').length;
  const totalCorrect = progressData.filter(p => p.status === 'correct').length;
  const globalAccuracy = totalSolved > 0 ? Math.round((totalCorrect / totalSolved) * 100) : 0;

  return (
    <div className="space-y-6">
      {/* Overview cards */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
        {[
          { label: 'Questions Solved', value: totalSolved, color: 'text-emerald-400' },
          { label: 'Global Accuracy',  value: `${globalAccuracy}%`, color: globalAccuracy >= 70 ? 'text-emerald-400' : 'text-amber-400' },
          { label: 'Subjects Tracked', value: subjectStats.filter(s => s.solved > 0).length, color: 'text-blue-400' },
          { label: 'Revisions Due',    value: revisions.filter(r => !r.is_revised && new Date(r.next_revision_date) <= new Date()).length, color: 'text-red-400' },
        ].map((item, i) => (
          <motion.div key={item.label} initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.07 }}
            className="glass-card p-4">
            <p className="text-xs text-muted-foreground mb-1">{item.label}</p>
            <p className={`text-2xl font-bold ${item.color}`}>{item.value}</p>
          </motion.div>
        ))}
      </div>

      {/* Activity heatmap */}
      <div className="glass-card p-6">
        <h2 className="text-base font-semibold mb-4">Daily Activity — Last 365 Days</h2>
        <ActivityGrid data={activityData} />
      </div>

      {/* Subject GRS table + Mistake pie */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Subject GRS table */}
        <div className="glass-card p-5">
          <h2 className="text-base font-semibold mb-4">Subject Readiness (GRS)</h2>
          <div className="space-y-3">
            {subjectStats.sort((a, b) => b.grs - a.grs).map(s => {
              const badgeCfg = GRS_BADGE_CONFIG[s.badge];
              return (
                <div key={s.id} className="flex items-center gap-3">
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center justify-between mb-1">
                      <span className="text-xs font-medium text-foreground truncate">{s.short_name ?? s.name}</span>
                      <span className={`text-xs font-bold ${badgeCfg.color}`}>{s.grs}%</span>
                    </div>
                    <div className="progress-bar">
                      <motion.div className="h-full rounded-full" style={{ background: s.color_hex }}
                        initial={{ width: 0 }} animate={{ width: `${s.grs}%` }} transition={{ duration: 0.6, delay: 0.1 }} />
                    </div>
                    <div className="flex items-center justify-between mt-0.5">
                      <span className="text-[10px] text-muted-foreground">{s.solved} / {s.total_pyqs} done</span>
                      <span className={`text-[10px] ${badgeCfg.color}`}>{badgeCfg.emoji} {badgeCfg.label}</span>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* Mistake pie chart */}
        <div className="glass-card p-5">
          <h2 className="text-base font-semibold mb-4">Mistake Analysis</h2>
          {mistakeStats.length > 0 ? (
            <>
              <ResponsiveContainer width="100%" height={200}>
                <PieChart>
                  <Pie data={mistakeStats} cx="50%" cy="50%" innerRadius={55} outerRadius={85}
                    dataKey="value" paddingAngle={3}>
                    {mistakeStats.map((entry, i) => <Cell key={i} fill={entry.color} />)}
                  </Pie>
                  <Tooltip
                    contentStyle={{ background: 'hsl(222 47% 9%)', border: '1px solid hsl(217 19% 16%)', borderRadius: '8px' }}
                    labelStyle={{ color: 'hsl(213 31% 91%)' }}
                  />
                </PieChart>
              </ResponsiveContainer>
              <div className="flex flex-wrap gap-3 justify-center mt-3">
                {mistakeStats.map(m => (
                  <div key={m.name} className="flex items-center gap-1.5 text-xs">
                    <div className="w-2.5 h-2.5 rounded-full" style={{ background: m.color }} />
                    <span className="text-muted-foreground capitalize">{m.name.replace('_', ' ')} ({m.value})</span>
                  </div>
                ))}
              </div>
            </>
          ) : (
            <div className="flex items-center justify-center h-48 text-muted-foreground text-sm">
              No mistakes logged yet. Start practicing!
            </div>
          )}
        </div>
      </div>

      {/* Accuracy bar chart by subject */}
      <div className="glass-card p-5">
        <h2 className="text-base font-semibold mb-4">Accuracy by Subject</h2>
        <ResponsiveContainer width="100%" height={220}>
          <BarChart data={subjectStats.filter(s => s.solved > 0)} margin={{ top: 5, right: 10, left: -20, bottom: 5 }}>
            <CartesianGrid strokeDasharray="3 3" stroke="hsl(217 19% 16%)" />
            <XAxis dataKey="short_name" tick={{ fontSize: 11, fill: 'hsl(215 20% 55%)' }} />
            <YAxis domain={[0, 100]} tick={{ fontSize: 11, fill: 'hsl(215 20% 55%)' }} />
            <Tooltip
              contentStyle={{ background: 'hsl(222 47% 9%)', border: '1px solid hsl(217 19% 16%)', borderRadius: '8px' }}
              formatter={(v: number) => [`${v}%`, 'Accuracy']}
            />
            <Bar dataKey="accuracy" radius={[4, 4, 0, 0]}>
              {subjectStats.filter(s => s.solved > 0).map((s, i) => (
                <Cell key={i} fill={s.color_hex} fillOpacity={0.8} />
              ))}
            </Bar>
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
