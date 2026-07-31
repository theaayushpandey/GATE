'use client';

import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Folder, Plus, Trash2, BookOpen, X, FolderOpen, ChevronDown, ChevronRight, Tag } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';
import { InlineMath } from 'react-katex';
import toast from 'react-hot-toast';

const BUCKET_PRESETS = [
  { name: 'Silly Mistakes',       color: '#ef4444', emoji: '🤦' },
  { name: 'Formula Heavy',        color: '#f59e0b', emoji: '📐' },
  { name: 'Revise Before Exam',   color: '#10b981', emoji: '📅' },
  { name: 'Conceptual Gaps',      color: '#8b5cf6', emoji: '🧠' },
  { name: 'NAT Tricky',           color: '#3b82f6', emoji: '🔢' },
  { name: 'Important PYQs',       color: '#ec4899', emoji: '⭐' },
];

interface Props { buckets: any[]; subjects: any[]; userId: string }

export function BucketsManager({ buckets: initialBuckets, subjects, userId }: Props) {
  const [buckets, setBuckets] = useState(initialBuckets);
  const [creating, setCreating] = useState(false);
  const [newName, setNewName] = useState('');
  const [newColor, setNewColor] = useState('#10b981');
  const [expandedBucket, setExpandedBucket] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const supabase = createClient();

  async function createBucket(name: string, color: string) {
    if (!name.trim()) return;
    setLoading(true);
    const { data, error } = await supabase.from('buckets')
      .insert({ user_id: userId, name: name.trim(), color_hex: color })
      .select().single();
    if (error) { toast.error('Failed to create notebook'); }
    else { setBuckets(prev => [...prev, { ...data, bucket_items: [] }]); toast.success(`📁 "${name}" created`); }
    setCreating(false); setNewName(''); setLoading(false);
  }

  async function deleteBucket(bucketId: string, name: string) {
    if (!confirm(`Delete notebook "${name}"? Questions won't be deleted.`)) return;
    const { error } = await supabase.from('buckets').delete().eq('id', bucketId);
    if (!error) { setBuckets(prev => prev.filter(b => b.id !== bucketId)); toast.success('Notebook deleted'); }
  }

  async function removeFromBucket(bucketId: string, questionId: string) {
    await supabase.from('bucket_items').delete().eq('bucket_id', bucketId).eq('question_id', questionId);
    setBuckets(prev => prev.map(b =>
      b.id === bucketId ? { ...b, bucket_items: b.bucket_items.filter((i: any) => i.question_id !== questionId) } : b
    ));
    toast.success('Removed from notebook');
  }

  return (
    <div className="max-w-4xl space-y-4">
      {/* Create new bucket */}
      <AnimatePresence>
        {!creating ? (
          <motion.button
            key="create-btn"
            id="create-bucket-btn"
            onClick={() => setCreating(true)}
            initial={{ opacity: 0 }} animate={{ opacity: 1 }}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl border border-dashed border-border
                       text-sm text-muted-foreground hover:text-foreground hover:border-emerald-500/40
                       transition-all w-full justify-center"
          >
            <Plus className="w-4 h-4" /> Create New Notebook
          </motion.button>
        ) : (
          <motion.div
            key="create-form"
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0 }}
            className="glass-card p-5"
          >
            <h3 className="text-sm font-semibold mb-4">New Notebook</h3>
            {/* Presets */}
            <div className="flex flex-wrap gap-2 mb-4">
              {BUCKET_PRESETS.map(p => (
                <button key={p.name} onClick={() => { setNewName(p.name); setNewColor(p.color); }}
                  className="flex items-center gap-1.5 px-2.5 py-1 rounded-lg bg-muted border border-border text-xs hover:bg-secondary transition-all">
                  {p.emoji} {p.name}
                </button>
              ))}
            </div>
            <div className="flex gap-3">
              <input value={newName} onChange={e => setNewName(e.target.value)}
                placeholder="Notebook name…" id="bucket-name-input"
                className="flex-1 px-4 py-2.5 rounded-lg bg-muted border border-border text-sm
                           focus:outline-none focus:border-emerald-500 text-foreground placeholder-muted-foreground"
                onKeyDown={e => e.key === 'Enter' && createBucket(newName, newColor)}
              />
              <input type="color" value={newColor} onChange={e => setNewColor(e.target.value)}
                className="w-12 h-10 rounded-lg border border-border bg-muted cursor-pointer p-1" />
              <button onClick={() => createBucket(newName, newColor)} disabled={loading || !newName.trim()}
                id="save-bucket-btn"
                className="px-4 py-2.5 rounded-lg bg-emerald-500 hover:bg-emerald-400 text-white text-sm font-medium disabled:opacity-50 transition-all">
                {loading ? <div className="spinner w-4 h-4" /> : 'Save'}
              </button>
              <button onClick={() => { setCreating(false); setNewName(''); }}
                className="p-2.5 rounded-lg bg-muted hover:bg-secondary transition-all">
                <X className="w-4 h-4" />
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Bucket list */}
      {buckets.length === 0 && !creating && (
        <div className="glass-card p-12 text-center">
          <div className="text-5xl mb-4">📁</div>
          <h3 className="text-base font-semibold mb-2">No notebooks yet</h3>
          <p className="text-sm text-muted-foreground">Create a notebook to organize questions — Silly Mistakes, Formula Heavy, etc.</p>
        </div>
      )}

      <div className="space-y-3">
        {buckets.map((bucket: any, i: number) => {
          const itemCount = bucket.bucket_items?.length ?? 0;
          const isExpanded = expandedBucket === bucket.id;
          return (
            <motion.div
              key={bucket.id}
              initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.04 }}
              className="glass-card overflow-hidden"
              style={{ borderColor: `${bucket.color_hex}25` }}
            >
              {/* Header */}
              <div className="flex items-center gap-3 p-4">
                <button onClick={() => setExpandedBucket(isExpanded ? null : bucket.id)}
                  className="flex items-center gap-3 flex-1 text-left">
                  <div className="w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0"
                    style={{ background: `${bucket.color_hex}20`, border: `1px solid ${bucket.color_hex}40` }}>
                    {isExpanded ? <FolderOpen className="w-4 h-4" style={{ color: bucket.color_hex }} />
                                : <Folder     className="w-4 h-4" style={{ color: bucket.color_hex }} />}
                  </div>
                  <div>
                    <p className="text-sm font-semibold text-foreground">{bucket.name}</p>
                    <p className="text-[11px] text-muted-foreground">{itemCount} question{itemCount !== 1 ? 's' : ''}</p>
                  </div>
                  <div className="ml-auto mr-3">
                    {isExpanded
                      ? <ChevronDown className="w-4 h-4 text-muted-foreground" />
                      : <ChevronRight className="w-4 h-4 text-muted-foreground" />}
                  </div>
                </button>
                <button onClick={() => deleteBucket(bucket.id, bucket.name)}
                  id={`delete-bucket-${bucket.id}`}
                  className="p-1.5 rounded-lg text-muted-foreground hover:text-red-400 hover:bg-red-500/10 transition-all">
                  <Trash2 className="w-3.5 h-3.5" />
                </button>
              </div>

              {/* Questions */}
              <AnimatePresence>
                {isExpanded && (
                  <motion.div
                    initial={{ height: 0 }} animate={{ height: 'auto' }} exit={{ height: 0 }}
                    className="overflow-hidden border-t border-border"
                  >
                    {bucket.bucket_items?.length === 0 ? (
                      <div className="px-6 py-8 text-center text-sm text-muted-foreground">
                        No questions yet. Mark questions to save them here during practice.
                      </div>
                    ) : (
                      <div className="divide-y divide-border">
                        {bucket.bucket_items.map((item: any) => {
                          const q = item.questions;
                          if (!q) return null;
                          const stemPreview = q.question_stem.replace(/\$[^$]+\$/g, '[math]').replace(/```[\s\S]*?```/g, '[code]').slice(0, 100);
                          return (
                            <div key={item.question_id} className="flex items-start gap-3 px-6 py-3 hover:bg-white/[0.02] transition-colors">
                              <div className="flex-1 min-w-0">
                                <div className="flex items-center gap-2 mb-1 flex-wrap">
                                  <span className="text-[10px] px-1.5 py-0.5 rounded bg-muted text-muted-foreground font-mono">
                                    GATE {q.gate_year}
                                  </span>
                                  <span className={`text-[10px] px-1.5 py-0.5 rounded font-medium ${
                                    q.marks === 2 ? 'bg-amber-500/15 text-amber-400' : 'bg-blue-500/15 text-blue-400'}`}>
                                    {q.marks}M
                                  </span>
                                  <span className="text-[10px] text-muted-foreground">{q.subjects?.name}</span>
                                </div>
                                <p className="text-xs text-muted-foreground line-clamp-2">{stemPreview}…</p>
                              </div>
                              <button onClick={() => removeFromBucket(bucket.id, item.question_id)}
                                className="p-1.5 text-muted-foreground hover:text-red-400 transition-colors flex-shrink-0">
                                <X className="w-3.5 h-3.5" />
                              </button>
                            </div>
                          );
                        })}
                      </div>
                    )}
                  </motion.div>
                )}
              </AnimatePresence>
            </motion.div>
          );
        })}
      </div>
    </div>
  );
}
