import Link from 'next/link';
import type { Metadata } from 'next';
import { Zap, ArrowRight, CheckCircle2, Brain, BarChart2, RefreshCw, Trophy, Keyboard, Calculator } from 'lucide-react';

export const metadata: Metadata = {
  title: 'GATE AIR-1 Engine — The Ultimate GATE CSE Preparation Platform',
  description: 'Master GATE CSE with 25 years of PYQs, Ebbinghaus spaced repetition, gamified learning, AI analytics, and a TCS iON exam simulator. Free forever.',
};

const FEATURES = [
  { icon: Brain,       title: '25-Year Native PYQ Bank',         desc: 'All 2000–2024 PYQs with KaTeX math, C code, and step-by-step solutions — zero external redirects.', color: '#10b981' },
  { icon: RefreshCw,   title: 'Ebbinghaus Revision Engine',       desc: 'Automated Day 7, 21, 45, 90 revision checkpoints with memory decay score penalties.', color: '#8b5cf6' },
  { icon: BarChart2,   title: 'GATE Readiness Score (GRS)',        desc: 'Real-time 0–100% score per subject combining accuracy, completion, and memory decay.', color: '#3b82f6' },
  { icon: Trophy,      title: 'Gamification & Leaderboard',       desc: 'Daily streaks, GitHub-style activity heatmap, and weekly friend competition.', color: '#f59e0b' },
  { icon: Keyboard,    title: 'Keyboard-First UX',                desc: 'J/K navigate, 1–4 select answers, S submit, R review — exam speed from day one.', color: '#ec4899' },
  { icon: Calculator,  title: 'TCS iON Exam Simulator',           desc: 'Official 5-state exam palette, draggable scientific calculator, NAT precision validator.', color: '#14b8a6' },
];

const SUBJECTS = [
  'Engineering Mathematics', 'Discrete Mathematics', 'Digital Logic',
  'Computer Organization', 'Programming & DS', 'Algorithms',
  'Theory of Computation', 'Compiler Design', 'Operating Systems',
  'DBMS', 'Computer Networks',
];

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-background overflow-x-hidden">
      {/* ── Nav ───────────────────────────────────────────── */}
      <nav className="fixed top-0 left-0 right-0 z-50 flex items-center justify-between px-6 py-4 border-b border-border/50 bg-background/80 backdrop-blur-xl">
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 rounded-xl bg-emerald-500 flex items-center justify-center shadow-[0_0_16px_rgba(16,185,129,0.4)]">
            <Zap className="w-4 h-4 text-white" fill="white" />
          </div>
          <span className="font-bold text-sm text-gradient">GATE AIR-1 Engine</span>
        </div>
        <div className="flex items-center gap-3">
          <Link href="/login" className="text-sm text-muted-foreground hover:text-foreground transition-colors">Sign in</Link>
          <Link href="/signup"
            className="flex items-center gap-1.5 px-4 py-2 rounded-lg bg-emerald-500 hover:bg-emerald-400 text-white text-sm font-medium transition-all shadow-[0_0_12px_rgba(16,185,129,0.25)]">
            Get Started Free <ArrowRight className="w-3.5 h-3.5" />
          </Link>
        </div>
      </nav>

      {/* ── Hero ──────────────────────────────────────────── */}
      <section className="relative pt-32 pb-24 px-4 text-center overflow-hidden">
        {/* Background effects */}
        <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[800px] h-[500px] rounded-full bg-emerald-500/6 blur-[120px] pointer-events-none" />
        <div className="absolute top-1/2 left-1/4 w-[300px] h-[300px] rounded-full bg-violet-500/5 blur-[80px] pointer-events-none" />
        <div className="absolute top-1/3 right-1/4 w-[200px] h-[200px] rounded-full bg-amber-500/5 blur-[80px] pointer-events-none" />

        <div className="relative max-w-4xl mx-auto">
          {/* Badge */}
          <div className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full border border-emerald-500/30 bg-emerald-500/10 text-emerald-400 text-xs font-medium mb-6">
            <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
            Built for GATE CSE 2025 & Beyond
          </div>

          <h1 className="text-5xl lg:text-7xl font-black tracking-tight mb-6 leading-tight">
            The Engine That<br />
            <span className="text-gradient">Builds AIR-1s</span>
          </h1>

          <p className="text-lg lg:text-xl text-muted-foreground max-w-2xl mx-auto mb-10 leading-relaxed">
            25 years of GATE CSE PYQs. Ebbinghaus spaced repetition. Gemini AI coaching.
            <br className="hidden sm:block" />
            <strong className="text-foreground">Zero distractions. Zero cost. Zero compromise.</strong>
          </p>

          <div className="flex flex-col sm:flex-row items-center justify-center gap-3">
            <Link href="/signup" id="hero-cta"
              className="flex items-center gap-2 px-8 py-4 rounded-2xl bg-emerald-500 hover:bg-emerald-400 text-white text-base font-bold
                         transition-all shadow-[0_0_40px_rgba(16,185,129,0.35)] hover:shadow-[0_0_60px_rgba(16,185,129,0.5)]">
              Start Free — No Card Needed <ArrowRight className="w-5 h-5" />
            </Link>
            <Link href="/dashboard"
              className="flex items-center gap-2 px-8 py-4 rounded-2xl border border-border hover:border-emerald-500/30 text-foreground text-base font-medium transition-all hover:bg-secondary">
              View Demo
            </Link>
          </div>

          <p className="text-xs text-muted-foreground mt-4">
            Deployed on Vercel · Powered by Supabase · 100% open source
          </p>
        </div>
      </section>

      {/* ── Subject chips ─────────────────────────────────── */}
      <section className="py-8 overflow-hidden">
        <div className="flex gap-3 animate-[shimmer_20s_linear_infinite] whitespace-nowrap">
          {[...SUBJECTS, ...SUBJECTS].map((s, i) => (
            <span key={i} className="inline-flex items-center gap-2 px-4 py-2 rounded-full border border-border bg-card text-sm text-muted-foreground flex-shrink-0">
              <span className="w-1.5 h-1.5 rounded-full bg-emerald-400" />{s}
            </span>
          ))}
        </div>
      </section>

      {/* ── Stats bar ─────────────────────────────────────── */}
      <section className="py-12 px-4">
        <div className="max-w-4xl mx-auto grid grid-cols-2 lg:grid-cols-4 gap-4">
          {[
            { value: '25+', label: 'Years of PYQs', sub: '2000–2024' },
            { value: '700+', label: 'Questions',    sub: 'All 11 subjects' },
            { value: '4',    label: 'Revision Checks', sub: 'Per completed subject' },
            { value: '0₹',   label: 'Cost',         sub: 'Forever free' },
          ].map((s, i) => (
            <div key={i} className="glass-card p-5 text-center">
              <p className="text-3xl font-black text-gradient mb-1">{s.value}</p>
              <p className="text-sm font-semibold text-foreground">{s.label}</p>
              <p className="text-xs text-muted-foreground">{s.sub}</p>
            </div>
          ))}
        </div>
      </section>

      {/* ── Features ──────────────────────────────────────── */}
      <section className="py-16 px-4">
        <div className="max-w-5xl mx-auto">
          <div className="text-center mb-12">
            <h2 className="text-3xl lg:text-4xl font-bold mb-3">Everything you need to crack GATE</h2>
            <p className="text-muted-foreground">Built by aspirants, for aspirants — no filler, no fluff.</p>
          </div>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {FEATURES.map((f, i) => (
              <div key={i} className="glass-card p-6 hover:border-white/10 transition-all">
                <div className="w-10 h-10 rounded-xl flex items-center justify-center mb-4"
                  style={{ background: `${f.color}15`, border: `1px solid ${f.color}30` }}>
                  <f.icon className="w-5 h-5" style={{ color: f.color }} />
                </div>
                <h3 className="font-semibold text-foreground mb-2 text-sm">{f.title}</h3>
                <p className="text-xs text-muted-foreground leading-relaxed">{f.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── CTA Banner ────────────────────────────────────── */}
      <section className="py-20 px-4">
        <div className="max-w-2xl mx-auto text-center glass-card p-12 relative overflow-hidden">
          <div className="absolute inset-0 bg-gradient-to-br from-emerald-500/5 to-violet-500/5" />
          <div className="relative z-10">
            <div className="text-5xl mb-4">🏆</div>
            <h2 className="text-3xl font-bold mb-3">Your AIR-1 journey starts today</h2>
            <p className="text-muted-foreground mb-8 text-sm">Join thousands of GATE aspirants building top ranks — for free.</p>
            <Link href="/signup" id="bottom-cta"
              className="inline-flex items-center gap-2 px-8 py-4 rounded-2xl bg-emerald-500 hover:bg-emerald-400 text-white font-bold
                         transition-all shadow-[0_0_40px_rgba(16,185,129,0.3)]">
              Create Free Account <ArrowRight className="w-5 h-5" />
            </Link>
          </div>
        </div>
      </section>

      {/* ── Footer ────────────────────────────────────────── */}
      <footer className="border-t border-border py-8 px-4 text-center text-xs text-muted-foreground">
        <div className="flex items-center justify-center gap-2 mb-2">
          <div className="w-6 h-6 rounded-lg bg-emerald-500 flex items-center justify-center">
            <Zap className="w-3 h-3 text-white" fill="white" />
          </div>
          <span className="font-semibold text-foreground">GATE AIR-1 Engine</span>
        </div>
        <p>Built with Next.js · Supabase · Google Gemini · Deployed on Vercel</p>
        <p className="mt-1">© {new Date().getFullYear()} — Free forever for GATE aspirants</p>
      </footer>
    </div>
  );
}
