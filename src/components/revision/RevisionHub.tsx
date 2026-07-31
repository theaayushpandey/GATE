'use client';

import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { format, differenceInDays, addDays } from 'date-fns';
import { RefreshCw, CheckCircle2, Clock, AlertTriangle, Brain, Calendar, ChevronRight, Plus } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';
import { generateRevisionSchedules, daysUntilRevision, isRevisionDue, getRevisionLabel } from '@/lib/ebbinghaus/scheduler';
import type { RevisionSchedule, Subject } from '@/types';
import toast from 'react-hot-toast';

interface Props {
  schedules: (RevisionSchedule & { subjects: Subject })[];
  subjects: Subject[];
  userId: string;
}

export function RevisionHub({ schedules, subjects, userId }: Props) {
  const [loading, setLoading] = useState<string | null>(null);
  const [markingComplete, setMarkingComplete] = useState<string | null>(null);
  const [selectedSubject, setSelectedSubject] = useState<string>('');
  const [localSchedules, setLocalSchedules] = useState(schedules);
  const supabase = createClient();

  const due      = localSchedules.filter(s => isRevisionDue(s) && !s.is_revised);
  const upcoming = localSchedules.filter(s => !isRevisionDue(s) && !s.is_revised);
  const done     = localSchedules.filter(s => s.is_revised);

  async function markSubjectComplete() {
    if (!selectedSubject) { toast.error('Select a subject first'); return; }
    setLoading('creating');
    const scheduleData = generateRevisionSchedules(userId, selectedSubject, new Date());
    const { error } = await supabase.from('revision_schedules').insert(scheduleData);
    if (error) { toast.error('Failed to create revision plan'); }
    else {
      toast.success('🧠 Ebbinghaus revision plan created! 4 checkpoints scheduled.');
      const newSchedules = scheduleData.map((s, i) => ({ ...s, id: `temp_${i}`, subjects: subjects.find(sub => sub.id === selectedSubject) as Subject }));
      setLocalSchedules(prev => [...prev, ...newSchedules as any]);
    }
    setLoading(null);
  }

  async function markRevisionDone(scheduleId: string) {
    setMarkingComplete(scheduleId);
    const { error } = await supabase.from('revision_schedules')
      .update({ is_revised: true, revised_at: new Date().toISOString() })
      .eq('id', scheduleId);
    if (!error) {
      setLocalSchedules(prev => prev.map(s => s.id === scheduleId ? { ...s, is_revised: true } : s));
      toast.success('✅ Revision marked complete!');
    }
    setMarkingComplete(null);
  }

  return (
    <div className="space-y-6 max-w-4xl">
      {/* Mark subject as complete */}
      <div className="glass-card p-6">
        <h2 className="text-base font-semibold mb-1 flex items-center gap-2">
          <Brain className="w-4 h-4 text-emerald-400" /> Mark Subject as Completed
        </h2>
        <p className="text-xs text-muted-foreground mb-4">Triggers automatic revision checkpoints at Day 7, 21, 45, and 90</p>
        <div className="flex gap-3">
          <select value={selectedSubject} onChange={e => setSelectedSubject(e.target.value)}
            className="flex-1 px-4 py-2.5 rounded-lg bg-muted border border-border text-sm
                       focus:outline-none focus:border-emerald-500 transition-all">
            <option value="">— Select a subject —</option>
            {subjects.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
          </select>
          <button onClick={markSubjectComplete} disabled={!!loading || !selectedSubject}
            id="mark-complete-btn"
            className="flex items-center gap-2 px-5 py-2.5 rounded-lg bg-emerald-500 hover:bg-emerald-400
                       text-white text-sm font-semibold transition-all disabled:opacity-50">
            {loading ? <div className="spinner w-4 h-4" /> : <><Plus className="w-4 h-4" /> Schedule Revisions</>}
          </button>
        </div>
      </div>

      {/* Due now */}
      {due.length > 0 && (
        <div>
          <h2 className="text-base font-semibold mb-3 flex items-center gap-2">
            <AlertTriangle className="w-4 h-4 text-red-400" /> Due Now ({due.length})
          </h2>
          <div className="space-y-3">
            {due.map(s => <RevisionCard key={s.id} schedule={s} onMarkDone={markRevisionDone} loading={markingComplete === s.id} />)}
          </div>
        </div>
      )}

      {/* Upcoming */}
      {upcoming.length > 0 && (
        <div>
          <h2 className="text-base font-semibold mb-3 flex items-center gap-2">
            <Calendar className="w-4 h-4 text-blue-400" /> Upcoming Revisions ({upcoming.length})
          </h2>
          <div className="space-y-3">
            {upcoming.slice(0, 8).map(s => <RevisionCard key={s.id} schedule={s} onMarkDone={markRevisionDone} loading={markingComplete === s.id} />)}
          </div>
        </div>
      )}

      {/* Completed */}
      {done.length > 0 && (
        <div>
          <h2 className="text-base font-semibold mb-3 flex items-center gap-2">
            <CheckCircle2 className="w-4 h-4 text-emerald-400" /> Completed ({done.length})
          </h2>
          <div className="space-y-2">
            {done.map(s => <RevisionCard key={s.id} schedule={s} onMarkDone={markRevisionDone} loading={false} />)}
          </div>
        </div>
      )}

      {localSchedules.length === 0 && (
        <div className="glass-card p-12 text-center">
          <div className="text-5xl mb-4">🧠</div>
          <h3 className="text-base font-semibold mb-2">No revision schedules yet</h3>
          <p className="text-sm text-muted-foreground">Complete a subject above to start your Ebbinghaus spaced-repetition journey.</p>
        </div>
      )}
    </div>
  );
}

function RevisionCard({ schedule, onMarkDone, loading }: {
  schedule: any; onMarkDone: (id: string) => void; loading: boolean;
}) {
  const daysLeft = daysUntilRevision(schedule);
  const isDue = isRevisionDue(schedule);
  const overdue = daysLeft < 0;

  return (
    <motion.div
      initial={{ opacity: 0, x: -10 }}
      animate={{ opacity: 1, x: 0 }}
      className={`glass-card p-4 flex items-center gap-4 ${
        schedule.is_revised ? 'opacity-60' :
        isDue ? 'border-red-500/30 bg-red-500/5' :
        daysLeft <= 3 ? 'border-amber-500/30 bg-amber-500/5' : ''
      }`}
    >
      <div className={`w-12 h-12 rounded-xl flex items-center justify-center text-lg flex-shrink-0 font-bold
                       ${schedule.is_revised ? 'bg-emerald-500/10' :
                         isDue ? 'bg-red-500/10' : 'bg-blue-500/10'}`}>
        {schedule.is_revised ? '✓' : schedule.interval_days === 7 ? '1W' : schedule.interval_days === 21 ? '3W' :
         schedule.interval_days === 45 ? '45' : '3M'}
      </div>
      <div className="flex-1 min-w-0">
        <p className="text-sm font-medium text-foreground truncate">
          {schedule.subjects?.name ?? 'Subject'}
        </p>
        <div className="flex items-center gap-2 mt-0.5">
          <span className="text-[11px] text-muted-foreground">{getRevisionLabel(schedule.interval_days)} checkpoint</span>
          <span className="text-[11px]">·</span>
          <span className={`text-[11px] font-medium ${
            schedule.is_revised ? 'text-emerald-400' :
            isDue ? 'text-red-400' : 'text-muted-foreground'
          }`}>
            {schedule.is_revised ? 'Completed' :
             isDue ? `${Math.abs(daysLeft)} day${Math.abs(daysLeft) !== 1 ? 's' : ''} overdue` :
             `In ${daysLeft} day${daysLeft !== 1 ? 's' : ''}`}
          </span>
        </div>
        <p className="text-[10px] text-muted-foreground mt-0.5">
          Due: {format(new Date(schedule.next_revision_date), 'dd MMM yyyy')}
        </p>
      </div>
      {!schedule.is_revised && (
        <button
          onClick={() => onMarkDone(schedule.id)}
          disabled={loading}
          id={`mark-revised-${schedule.id}`}
          className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-medium transition-all
                      ${isDue
                        ? 'bg-emerald-500 text-white hover:bg-emerald-400'
                        : 'bg-muted border border-border text-muted-foreground hover:text-foreground'}`}
        >
          {loading ? <div className="spinner w-3.5 h-3.5" /> : <><CheckCircle2 className="w-3.5 h-3.5" /> Revised</>}
        </button>
      )}
    </motion.div>
  );
}
