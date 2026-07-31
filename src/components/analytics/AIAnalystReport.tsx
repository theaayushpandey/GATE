'use client';

import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Brain, Sparkles, RefreshCw, AlertTriangle, TrendingUp, BookOpen, Clock, Zap } from 'lucide-react';
import toast from 'react-hot-toast';

interface Props { userId: string; recentProgress: any[] }

export function AIAnalystReport({ userId, recentProgress }: Props) {
  const [report, setReport] = useState<any | null>(null);
  const [loading, setLoading] = useState(false);

  async function generateReport() {
    if (!recentProgress.length) {
      toast.error('Solve at least 10 questions this week to generate an AI report.');
      return;
    }
    setLoading(true);
    try {
      const res = await fetch('/api/ai-analyst', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ userId, recentProgress }),
      });
      if (!res.ok) throw new Error('API error');
      const data = await res.json();
      setReport(data);
      toast.success('AI analysis complete!');
    } catch {
      toast.error('Failed to generate report. Check your Gemini API key.');
    }
    setLoading(false);
  }

  const solvedThisWeek = recentProgress.length;
  const correctThisWeek = recentProgress.filter(p => p.status === 'correct').length;
  const weeklyAccuracy  = solvedThisWeek > 0 ? Math.round((correctThisWeek / solvedThisWeek) * 100) : 0;

  return (
    <div className="max-w-3xl space-y-6">
      {/* Weekly snapshot */}
      <div className="grid grid-cols-3 gap-3">
        {[
          { label: 'Solved This Week', value: solvedThisWeek, icon: BookOpen, color: 'text-blue-400' },
          { label: 'Weekly Accuracy',  value: `${weeklyAccuracy}%`, icon: TrendingUp, color: weeklyAccuracy >= 70 ? 'text-emerald-400' : 'text-amber-400' },
          { label: 'Time Invested',    value: `${Math.round(recentProgress.reduce((s, p) => s + (p.time_taken_seconds ?? 0), 0) / 60)} min`, icon: Clock, color: 'text-violet-400' },
        ].map((s, i) => (
          <motion.div key={s.label} initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.07 }}
            className="glass-card p-4">
            <div className="flex items-center gap-2 mb-1">
              <s.icon className={`w-3.5 h-3.5 ${s.color}`} />
              <span className="text-[11px] text-muted-foreground">{s.label}</span>
            </div>
            <p className={`text-2xl font-bold ${s.color}`}>{s.value}</p>
          </motion.div>
        ))}
      </div>

      {/* Generate button */}
      {!report && (
        <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} className="glass-card p-8 text-center">
          <div className="w-16 h-16 rounded-2xl bg-violet-500/10 border border-violet-500/20 flex items-center justify-center mx-auto mb-4">
            <Brain className="w-8 h-8 text-violet-400" />
          </div>
          <h2 className="text-lg font-semibold mb-2">Generate Your Weekly AI Diagnostic</h2>
          <p className="text-sm text-muted-foreground mb-6 max-w-sm mx-auto">
            Gemini analyses your solving patterns, mistake categories, speed vs. accuracy, and prescribes your next week's focus areas.
          </p>
          <button onClick={generateReport} disabled={loading} id="generate-ai-report"
            className="flex items-center gap-2 px-6 py-3 rounded-xl bg-gradient-to-r from-violet-600 to-purple-600
                       hover:from-violet-500 hover:to-purple-500 text-white font-semibold mx-auto
                       transition-all shadow-[0_0_24px_rgba(139,92,246,0.3)] disabled:opacity-60">
            {loading
              ? <><div className="spinner w-4 h-4" /> Analysing with Gemini…</>
              : <><Sparkles className="w-4 h-4" /> Generate AI Report</>}
          </button>
          {solvedThisWeek < 10 && (
            <p className="text-xs text-amber-400 mt-3 flex items-center justify-center gap-1">
              <AlertTriangle className="w-3.5 h-3.5" /> Solve at least 10 questions this week for best results ({solvedThisWeek}/10)
            </p>
          )}
        </motion.div>
      )}

      {/* Report display */}
      <AnimatePresence>
        {report && (
          <motion.div
            initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}
            className="space-y-4"
          >
            {/* Header */}
            <div className="glass-card p-5 border-violet-500/20 bg-violet-500/5">
              <div className="flex items-center justify-between mb-3">
                <div className="flex items-center gap-2">
                  <Sparkles className="w-4 h-4 text-violet-400" />
                  <span className="text-sm font-semibold text-violet-400">Gemini AI Diagnostic</span>
                </div>
                <button onClick={generateReport} disabled={loading}
                  className="p-1.5 rounded-lg hover:bg-secondary transition-colors text-muted-foreground">
                  <RefreshCw className={`w-3.5 h-3.5 ${loading ? 'animate-spin' : ''}`} />
                </button>
              </div>
              <p className="text-sm text-foreground leading-relaxed">{report.overall_recommendation}</p>
            </div>

            {/* Weak subtopics */}
            {report.weak_subtopics?.length > 0 && (
              <div className="glass-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <AlertTriangle className="w-4 h-4 text-red-400" /> Weak Sub-Topics
                </h3>
                <div className="flex flex-wrap gap-2">
                  {report.weak_subtopics.map((topic: string, i: number) => (
                    <span key={i} className="px-3 py-1.5 rounded-lg bg-red-500/10 border border-red-500/20 text-red-400 text-xs font-medium">
                      {topic}
                    </span>
                  ))}
                </div>
              </div>
            )}

            {/* Speed vs accuracy */}
            <div className="glass-card p-5">
              <h3 className="text-sm font-semibold mb-2 flex items-center gap-2">
                <Zap className="w-4 h-4 text-amber-400" /> Speed vs. Accuracy Analysis
              </h3>
              <p className="text-sm text-muted-foreground leading-relaxed">{report.speed_accuracy_note}</p>
            </div>

            {/* Prescribed buckets */}
            {report.prescribed_buckets?.length > 0 && (
              <div className="glass-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <TrendingUp className="w-4 h-4 text-emerald-400" /> Prescribed Practice for Next Week
                </h3>
                <div className="space-y-2">
                  {report.prescribed_buckets.map((item: string, i: number) => (
                    <div key={i} className="flex items-start gap-2 text-sm">
                      <span className="text-emerald-400 mt-0.5">→</span>
                      <span className="text-foreground">{item}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            <p className="text-[11px] text-muted-foreground text-center">
              Generated: {new Date(report.generated_at).toLocaleString()}
            </p>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
