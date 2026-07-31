'use client';

import { useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { motion, AnimatePresence } from 'framer-motion';
import {
  ChevronLeft, ChevronRight, ChevronDown, Play,
  Shuffle, BookOpen, Clock, Star, Filter, X
} from 'lucide-react';
import Link from 'next/link';
import type { Subject } from '@/types';
import { createClient } from '@/lib/supabase/client';
import toast from 'react-hot-toast';

interface Props {
  subject: Subject;
  chapters: any[];
  progressMap: Map<string, string>;
}

export function SubjectHub({ subject, chapters, progressMap }: Props) {
  const router = useRouter();
  const [selectedView, setSelectedView] = useState<'overview' | 'all' | 'topic'>('overview');
  const [expandedChapter, setExpandedChapter] = useState<string | null>(chapters[0]?.id ?? null);
  const [loading, setLoading] = useState(false);
  const supabase = createClient();

  const totalQs = chapters.reduce((s: number, c: any) =>
    s + (c.topics?.reduce((ts: number, t: any) => ts + (t.questions?.length ?? 0), 0) ?? 0), 0);

  const solvedQs = chapters.reduce((s: number, c: any) =>
    s + (c.topics?.reduce((ts: number, t: any) =>
      ts + (t.questions?.filter((q: any) => progressMap.has(q.id) && progressMap.get(q.id) !== 'unattempted').length ?? 0), 0) ?? 0), 0);

  async function startSession(topicId?: string, randomCount = 20) {
    setLoading(true);
    try {
      let query = supabase.from('questions').select('id').eq('subject_id', subject.id);
      if (topicId) query = query.eq('topic_id', topicId);

      const { data: questions } = await query;
      if (!questions?.length) { toast.error('No questions found'); setLoading(false); return; }

      const ids = topicId
        ? questions.map(q => q.id)
        : questions.sort(() => Math.random() - 0.5).slice(0, randomCount).map(q => q.id);

      const sessionId = `session_${Date.now()}`;
      localStorage.setItem(sessionId, JSON.stringify({
        id: sessionId, subject_id: subject.id, subject_name: subject.name,
        mode: topicId ? 'topic' : 'random', question_ids: ids,
        is_timed: false, created_at: new Date().toISOString(),
      }));
      router.push(`/dashboard/practice/${sessionId}`);
    } catch { toast.error('Failed to start session'); setLoading(false); }
  }

  return (
    <div className="flex h-full min-h-screen" style={{ background: 'var(--bg)' }}>

      {/* ── Left panel (MARKS-style nav) ── */}
      <div className="w-72 flex-shrink-0 border-r p-4 overflow-y-auto"
        style={{ borderColor: 'var(--border)', background: 'var(--bg-secondary)' }}>

        {/* Back */}
        <Link href="/dashboard" className="flex items-center gap-1.5 text-sm mb-5 hover:opacity-80 transition-opacity"
          style={{ color: 'var(--text-secondary)' }}>
          <ChevronLeft className="w-4 h-4" /> All Subjects
        </Link>

        {/* Subject title */}
        <div className="flex items-center gap-3 mb-6">
          <div className="w-10 h-10 rounded-xl flex items-center justify-center"
            style={{ background: `${subject.color_hex}20`, border: `1.5px solid ${subject.color_hex}40` }}>
            <span className="text-lg">{getSubjectEmoji(subject.name)}</span>
          </div>
          <div>
            <h2 className="text-sm font-bold leading-tight" style={{ color: 'var(--text-primary)' }}>{subject.name}</h2>
            <p className="text-xs mt-0.5" style={{ color: 'var(--text-secondary)' }}>{totalQs} PYQs · {subject.weightage_percentage}% weightage</p>
          </div>
        </div>

        {/* Nav items */}
        <nav className="space-y-1">
          {[
            { key: 'overview', label: 'Overview',        icon: BookOpen },
            { key: 'all',      label: 'All PYQs',        icon: BookOpen },
            { key: 'topic',    label: 'Topic-wise PYQs', icon: Filter },
          ].map(item => (
            <button key={item.key} onClick={() => setSelectedView(item.key as any)}
              className="chapter-row w-full"
              style={selectedView === item.key ? {
                background: 'var(--primary-light)',
                borderColor: 'var(--primary)',
              } : {}}
            >
              <item.icon className="w-4 h-4 flex-shrink-0" style={{ color: selectedView === item.key ? '#5B6EF5' : 'var(--text-secondary)' }} />
              <span className="text-sm font-medium flex-1 text-left" style={{ color: selectedView === item.key ? '#5B6EF5' : 'var(--text-primary)' }}>
                {item.label}
              </span>
              {selectedView === item.key && <ChevronRight className="w-4 h-4" style={{ color: '#5B6EF5' }} />}
            </button>
          ))}
        </nav>

        {/* Quick stats */}
        <div className="mt-6 p-4 rounded-xl" style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
          <p className="text-xs font-semibold mb-3" style={{ color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.06em' }}>
            Your Progress
          </p>
          <div className="space-y-2">
            {[
              { label: 'PYQ Solved',  value: `${solvedQs}/${totalQs}`, color: 'var(--text-primary)' },
              { label: 'Accuracy',    value: '—',                       color: '#22c55e' },
            ].map(s => (
              <div key={s.label} className="flex justify-between items-center">
                <span className="text-xs" style={{ color: 'var(--text-secondary)' }}>{s.label}</span>
                <span className="text-xs font-bold" style={{ color: s.color }}>{s.value}</span>
              </div>
            ))}
          </div>
          <div className="progress-bar mt-3">
            <div className="h-full rounded-full transition-all"
              style={{ width: `${totalQs > 0 ? (solvedQs / totalQs) * 100 : 0}%`, background: '#5B6EF5' }} />
          </div>
        </div>
      </div>

      {/* ── Right panel (content) ── */}
      <div className="flex-1 overflow-y-auto p-6">
        <AnimatePresence mode="wait">
          {selectedView === 'overview' && (
            <motion.div key="overview" initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}>
              <div className="mb-6">
                <h1 className="text-xl font-bold mb-1" style={{ color: 'var(--text-primary)' }}>Overview</h1>
                <p className="text-sm" style={{ color: 'var(--text-secondary)' }}>2000–2024 · {chapters.length} chapters</p>
              </div>

              {/* CTA cards — MARKS style */}
              <div className="grid grid-cols-2 gap-4 mb-6">
                <button onClick={() => startSession()} disabled={loading}
                  id="start-all-pyqs"
                  className="p-5 rounded-xl text-left transition-all hover:opacity-90 disabled:opacity-50 group"
                  style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
                  <div className="flex items-start justify-between mb-4">
                    <BookOpen className="w-6 h-6" style={{ color: '#5B6EF5' }} />
                    <ChevronRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition-opacity" style={{ color: 'var(--text-secondary)' }} />
                  </div>
                  <p className="text-sm font-bold mb-0.5" style={{ color: 'var(--text-primary)' }}>All Previous Year Qs →</p>
                  <p className="text-xs" style={{ color: 'var(--text-secondary)' }}>{totalQs} PYQs</p>
                </button>
                <button onClick={() => setSelectedView('topic')}
                  className="p-5 rounded-xl text-left transition-all hover:opacity-90 group"
                  style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
                  <div className="flex items-start justify-between mb-4">
                    <Filter className="w-6 h-6" style={{ color: '#8b5cf6' }} />
                    <ChevronRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition-opacity" style={{ color: 'var(--text-secondary)' }} />
                  </div>
                  <p className="text-sm font-bold mb-0.5" style={{ color: 'var(--text-primary)' }}>Topic-Wise PYQs →</p>
                  <p className="text-xs" style={{ color: 'var(--text-secondary)' }}>{chapters.length} chapters</p>
                </button>
              </div>

              {/* Difficulty buckets */}
              <div className="mb-6">
                <p className="text-sm font-semibold mb-3" style={{ color: 'var(--text-primary)' }}>Difficulty Wise Qs Buckets</p>
                <div className="grid grid-cols-3 gap-3">
                  {[
                    { label: 'Beginner Qs',  sub: 'Easy 1-mark MCQs',      emoji: '☀️', color: '#22c55e' },
                    { label: 'Rank Booster', sub: 'Moderate 2-mark',        emoji: '🎯', color: '#5B6EF5' },
                    { label: 'Advanced',     sub: 'Tough NAT & MSQ',        emoji: '⚡', color: '#ef4444' },
                  ].map((b, i) => (
                    <button key={b.label} onClick={() => startSession()}
                      className="bucket-card text-left p-4">
                      <span className="text-2xl block mb-2">{b.emoji}</span>
                      <p className="text-xs font-bold mb-0.5" style={{ color: 'var(--text-primary)' }}>{b.label}</p>
                      <p className="text-xs" style={{ color: 'var(--text-secondary)' }}>{b.sub}</p>
                    </button>
                  ))}
                </div>
              </div>

              {/* Must-do buckets */}
              <div className="grid grid-cols-2 gap-3">
                {[
                  { label: 'Must Do Qs of last 5 Years', sub: 'GATE 2019–2024', emoji: '⭐', border: '#f59e0b' },
                  { label: 'Top Numerical (NAT)',         sub: 'High-value NAT',  emoji: '🔢', border: '#5B6EF5' },
                ].map(b => (
                  <button key={b.label} onClick={() => startSession()}
                    className="bucket-card text-left p-4"
                    style={{ borderColor: `${b.border}40` }}>
                    <span className="text-xl block mb-2">{b.emoji}</span>
                    <p className="text-xs font-bold mb-0.5" style={{ color: 'var(--text-primary)' }}>{b.label}</p>
                    <p className="text-xs" style={{ color: 'var(--text-secondary)' }}>{b.sub}</p>
                  </button>
                ))}
              </div>
            </motion.div>
          )}

          {selectedView === 'topic' && (
            <motion.div key="topic" initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}>
              <div className="mb-5">
                <h1 className="text-xl font-bold mb-1" style={{ color: 'var(--text-primary)' }}>Topic-wise PYQs</h1>
                <p className="text-sm" style={{ color: 'var(--text-secondary)' }}>Chapter-wise collection</p>
              </div>

              <div className="space-y-2">
                {chapters.map((chapter: any) => {
                  const chapterQs = chapter.topics?.flatMap((t: any) => t.questions ?? []) ?? [];
                  const done = chapterQs.filter((q: any) => progressMap.has(q.id) && progressMap.get(q.id) !== 'unattempted').length;
                  const isOpen = expandedChapter === chapter.id;
                  return (
                    <div key={chapter.id} className="rounded-xl overflow-hidden"
                      style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
                      <button onClick={() => setExpandedChapter(isOpen ? null : chapter.id)}
                        className="w-full flex items-center gap-3 p-4 hover:opacity-90 transition-opacity text-left">
                        <ChevronDown className="w-4 h-4 flex-shrink-0 transition-transform"
                          style={{ color: 'var(--text-secondary)', transform: isOpen ? 'rotate(0deg)' : 'rotate(-90deg)' }} />
                        <div className="flex-1">
                          <p className="text-sm font-semibold" style={{ color: 'var(--text-primary)' }}>{chapter.name}</p>
                        </div>
                        <div className="flex items-center gap-4 text-xs" style={{ color: 'var(--text-secondary)' }}>
                          <span>{done}/{chapterQs.length} done</span>
                          <div className="w-16 progress-bar">
                            <div className="h-full rounded-full"
                              style={{ width: `${chapterQs.length > 0 ? (done / chapterQs.length) * 100 : 0}%`, background: '#5B6EF5' }} />
                          </div>
                        </div>
                      </button>

                      <AnimatePresence>
                        {isOpen && (
                          <motion.div initial={{ height: 0 }} animate={{ height: 'auto' }} exit={{ height: 0 }}
                            className="overflow-hidden" style={{ borderTop: '1px solid var(--border)' }}>
                            {chapter.topics?.map((topic: any, ti: number) => {
                              const tQs = topic.questions ?? [];
                              const tDone = tQs.filter((q: any) => progressMap.has(q.id)).length;
                              const years = [...new Set(tQs.map((q: any) => q.gate_year))].sort().reverse().slice(0, 4);
                              return (
                                <div key={topic.id} className="flex items-center gap-3 px-5 py-3 hover:opacity-90 transition-opacity"
                                  style={{ borderTop: ti > 0 ? '1px solid var(--border)' : 'none' }}>
                                  <div className="flex-1 min-w-0">
                                    <p className="text-sm truncate" style={{ color: 'var(--text-primary)' }}>{topic.name}</p>
                                    <div className="flex items-center gap-2 mt-1">
                                      {years.map(y => (
                                        <span key={String(y)} className="text-[10px] px-1.5 py-0.5 rounded font-mono"
                                          style={{ background: 'var(--bg)', color: 'var(--text-muted)', border: '1px solid var(--border)' }}>
                                          {y}
                                        </span>
                                      ))}
                                      <span className="text-[10px]" style={{ color: 'var(--text-muted)' }}>{tQs.length} Qs</span>
                                    </div>
                                  </div>
                                  <button onClick={() => startSession(topic.id)} disabled={loading || tQs.length === 0}
                                    id={`practice-topic-${topic.id}`}
                                    className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-semibold transition-all disabled:opacity-40"
                                    style={{ background: 'var(--primary-light)', color: '#5B6EF5', border: '1px solid rgba(91,110,245,0.3)' }}>
                                    {loading ? <div className="spinner" /> : <><Play className="w-3 h-3" /> Practice</>}
                                  </button>
                                </div>
                              );
                            })}
                          </motion.div>
                        )}
                      </AnimatePresence>
                    </div>
                  );
                })}
              </div>
            </motion.div>
          )}

          {selectedView === 'all' && (
            <motion.div key="all" initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}>
              <div className="flex items-center justify-between mb-5">
                <div>
                  <h1 className="text-xl font-bold mb-1" style={{ color: 'var(--text-primary)' }}>All PYQs</h1>
                  <p className="text-sm" style={{ color: 'var(--text-secondary)' }}>{totalQs} questions</p>
                </div>
                <button onClick={() => startSession()} disabled={loading}
                  className="btn btn-primary" id="start-all-session">
                  {loading ? <div className="spinner" /> : <><Play className="w-4 h-4" /> Start Practice</>}
                </button>
              </div>
              <div className="p-8 rounded-xl text-center" style={{ background: 'var(--card)', border: '1px solid var(--border)' }}>
                <p className="text-sm" style={{ color: 'var(--text-secondary)' }}>
                  Click <strong style={{ color: 'var(--text-primary)' }}>Start Practice</strong> to begin all {totalQs} PYQs in chronological order.
                </p>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
}

function getSubjectEmoji(name: string): string {
  const map: Record<string, string> = {
    'Engineering Mathematics': '∫',
    'Discrete Mathematics': '∿',
    'Digital Logic': '⚡',
    'Computer Organization': '⚙️',
    'Programming': '💻',
    'Algorithms': '🔍',
    'Theory of Computation': '🤖',
    'Compiler Design': '🔨',
    'Operating Systems': '💾',
    'DBMS': '🗄️',
    'Computer Networks': '🌐',
  };
  for (const key of Object.keys(map)) {
    if (name.includes(key.split(' ')[0])) return map[key];
  }
  return '📚';
}
