'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { motion } from 'framer-motion';
import { Zap, Mail, Lock, User, ArrowRight, Eye, EyeOff, BookOpen } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';
import toast from 'react-hot-toast';

export default function SignupPage() {
  const router = useRouter();
  const supabase = createClient();
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [gateYear, setGateYear] = useState('2025');
  const [showPass, setShowPass] = useState(false);
  const [loading, setLoading] = useState(false);

  async function handleSignup(e: React.FormEvent) {
    e.preventDefault();
    if (password.length < 8) { toast.error('Password must be at least 8 characters'); return; }
    setLoading(true);
    const { error } = await supabase.auth.signUp({
      email,
      password,
      options: { data: { full_name: name, gate_year: parseInt(gateYear) } },
    });
    if (error) {
      toast.error(error.message);
    } else {
      toast.success('Account created! Check your email to confirm.');
      router.push('/login');
    }
    setLoading(false);
  }

  return (
    <div className="min-h-screen flex items-center justify-center relative overflow-hidden py-8">
      <div className="absolute inset-0 bg-background" />
      <div className="absolute top-1/4 right-1/4 w-[400px] h-[400px] rounded-full bg-emerald-500/5 blur-[80px] pointer-events-none" />
      <div className="absolute bottom-1/4 left-1/4 w-[300px] h-[300px] rounded-full bg-amber-500/5 blur-[80px] pointer-events-none" />

      <motion.div
        initial={{ opacity: 0, y: 24 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="relative z-10 w-full max-w-md px-4"
      >
        <div className="text-center mb-8">
          <motion.div
            initial={{ scale: 0.8, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            transition={{ delay: 0.1, type: 'spring', stiffness: 200 }}
            className="inline-flex items-center gap-2 mb-4"
          >
            <div className="w-10 h-10 rounded-xl bg-emerald-500 flex items-center justify-center shadow-[0_0_20px_rgba(16,185,129,0.4)]">
              <Zap className="w-5 h-5 text-white" fill="white" />
            </div>
            <span className="text-xl font-bold text-gradient">GATE AIR-1</span>
          </motion.div>
          <h1 className="text-2xl font-bold text-foreground">Start your AIR-1 journey</h1>
          <p className="text-sm text-muted-foreground mt-1">Free forever. No credit card needed.</p>
        </div>

        <div className="glass-card p-8">
          <form onSubmit={handleSignup} className="space-y-4">
            <div>
              <label className="block text-sm font-medium mb-1.5" htmlFor="signup-name">Full name</label>
              <div className="relative">
                <User className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
                <input id="signup-name" type="text" value={name} onChange={e => setName(e.target.value)}
                  placeholder="Your name" required
                  className="w-full pl-10 pr-4 py-2.5 rounded-lg bg-muted border border-border text-sm
                             text-foreground placeholder-muted-foreground
                             focus:outline-none focus:border-emerald-500 focus:ring-1 focus:ring-emerald-500/30 transition-all"
                />
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium mb-1.5" htmlFor="signup-email">Email address</label>
              <div className="relative">
                <Mail className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
                <input id="signup-email" type="email" value={email} onChange={e => setEmail(e.target.value)}
                  placeholder="you@example.com" required
                  className="w-full pl-10 pr-4 py-2.5 rounded-lg bg-muted border border-border text-sm
                             text-foreground placeholder-muted-foreground
                             focus:outline-none focus:border-emerald-500 focus:ring-1 focus:ring-emerald-500/30 transition-all"
                />
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium mb-1.5" htmlFor="signup-password">Password</label>
              <div className="relative">
                <Lock className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
                <input id="signup-password" type={showPass ? 'text' : 'password'} value={password}
                  onChange={e => setPassword(e.target.value)} placeholder="Min 8 characters" required
                  className="w-full pl-10 pr-10 py-2.5 rounded-lg bg-muted border border-border text-sm
                             text-foreground placeholder-muted-foreground
                             focus:outline-none focus:border-emerald-500 focus:ring-1 focus:ring-emerald-500/30 transition-all"
                />
                <button type="button" onClick={() => setShowPass(!showPass)}
                  className="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground">
                  {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
                </button>
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium mb-1.5" htmlFor="signup-gate-year">
                <BookOpen className="inline w-3.5 h-3.5 mr-1 text-muted-foreground" />
                GATE target year
              </label>
              <select id="signup-gate-year" value={gateYear} onChange={e => setGateYear(e.target.value)}
                className="w-full px-4 py-2.5 rounded-lg bg-muted border border-border text-sm text-foreground
                           focus:outline-none focus:border-emerald-500 focus:ring-1 focus:ring-emerald-500/30 transition-all">
                {[2025, 2026, 2027].map(y => <option key={y} value={y}>{y}</option>)}
              </select>
            </div>

            <button id="signup-submit" type="submit" disabled={loading}
              className="w-full py-2.5 px-4 rounded-lg bg-emerald-500 hover:bg-emerald-400
                         text-white text-sm font-semibold flex items-center justify-center gap-2
                         transition-all duration-200 disabled:opacity-50 mt-2
                         shadow-[0_0_20px_rgba(16,185,129,0.25)] hover:shadow-[0_0_30px_rgba(16,185,129,0.4)]"
            >
              {loading ? <div className="spinner w-4 h-4" /> : <> Create account <ArrowRight className="w-4 h-4" /> </>}
            </button>
          </form>

          <p className="text-center text-sm text-muted-foreground mt-6">
            Already have an account?{' '}
            <Link href="/login" className="text-emerald-400 hover:text-emerald-300 font-medium">Sign in</Link>
          </p>
        </div>
      </motion.div>
    </div>
  );
}
