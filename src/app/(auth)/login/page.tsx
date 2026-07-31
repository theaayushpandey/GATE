'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { motion } from 'framer-motion';
import { createClient } from '@/lib/supabase/client';

// Floating institution logos around the central mark
const ORBITING_LOGOS = [
  { label: 'IIT Bombay',    angle: 30,   r: 160, delay: 0 },
  { label: 'IIT Delhi',     angle: 95,   r: 180, delay: 0.1 },
  { label: 'IIT Madras',    angle: 155,  r: 150, delay: 0.2 },
  { label: 'IIT Kanpur',    angle: 210,  r: 175, delay: 0.3 },
  { label: 'IISc',          angle: 265,  r: 155, delay: 0.4 },
  { label: 'TIFR',          angle: 320,  r: 170, delay: 0.5 },
];

const LOGO_ABBR = ['IIT-B','IIT-D','IIT-M','IIT-K','IISc','TIFR'];

export default function LoginPage() {
  const [loading, setLoading] = useState(false);
  const router = useRouter();
  const supabase = createClient();

  async function handleGoogleLogin() {
    setLoading(true);
    const { error } = await supabase.auth.signInWithOAuth({
      provider: 'google',
      options: { redirectTo: `${location.origin}/auth/callback` },
    });
    if (error) { console.error(error); setLoading(false); }
  }

  return (
    <div className="min-h-screen bg-white flex flex-col items-center justify-center px-4 relative overflow-hidden">

      {/* ── Orbiting institute logos ── */}
      <div className="relative w-[380px] h-[380px] flex items-center justify-center mb-2">
        {/* Orbit ring */}
        <div className="absolute inset-0 rounded-full border border-gray-100" />
        <div className="absolute inset-8 rounded-full border border-gray-100" />

        {/* Orbiting logo badges */}
        {ORBITING_LOGOS.map((logo, i) => {
          const rad = (logo.angle * Math.PI) / 180;
          const x = Math.cos(rad) * logo.r * 0.5;
          const y = Math.sin(rad) * logo.r * 0.5;
          return (
            <motion.div
              key={logo.label}
              initial={{ opacity: 0, scale: 0 }}
              animate={{ opacity: 1, scale: 1 }}
              transition={{ delay: logo.delay + 0.3, type: 'spring', stiffness: 200 }}
              style={{ position: 'absolute', left: `calc(50% + ${x}px - 22px)`, top: `calc(50% + ${y}px - 22px)` }}
            >
              <div className="w-11 h-11 rounded-full border-2 border-gray-100 bg-white shadow-md flex items-center justify-center">
                <span className="text-[9px] font-bold text-gray-500 leading-tight text-center">{LOGO_ABBR[i]}</span>
              </div>
              {/* Checkmarks on some */}
              {i % 2 === 0 && (
                <div className="absolute -top-1 -right-1 w-4 h-4 rounded-full bg-emerald-500 flex items-center justify-center">
                  <span className="text-white text-[9px] font-bold">✓</span>
                </div>
              )}
            </motion.div>
          );
        })}

        {/* Central GATE logo */}
        <motion.div
          initial={{ scale: 0, rotate: -10 }}
          animate={{ scale: 1, rotate: 0 }}
          transition={{ type: 'spring', stiffness: 200, delay: 0.1 }}
          className="relative z-10 w-20 h-20 rounded-2xl flex items-center justify-center shadow-xl"
          style={{ background: 'linear-gradient(135deg, #5B6EF5, #818cf8)' }}
        >
          <span className="text-white font-black text-xl tracking-tight">G</span>
        </motion.div>
      </div>

      {/* ── Headline ── */}
      <motion.div
        initial={{ opacity: 0, y: 16 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.5 }}
        className="text-center mb-8"
      >
        <h1 className="text-3xl font-bold text-gray-900 leading-tight mb-1">
          Welcome to the new way to
        </h1>
        <h1 className="text-3xl font-bold leading-tight">
          <span className="text-[#5B6EF5]">practice</span>{' '}
          <span className="text-gray-900">&</span>{' '}
          <span className="text-[#5B6EF5]">learn</span>
        </h1>
        <p className="text-gray-400 text-sm mt-3">
          25 years of GATE CSE PYQs · Ebbinghaus revision · AI analytics
        </p>
      </motion.div>

      {/* ── Google CTA ── */}
      <motion.button
        initial={{ opacity: 0, y: 12 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.65 }}
        onClick={handleGoogleLogin}
        disabled={loading}
        id="google-login-btn"
        className="flex items-center gap-3 px-8 py-4 rounded-2xl font-semibold text-white text-base w-full max-w-xs justify-center transition-all"
        style={{ background: loading ? '#818cf8' : '#5B6EF5' }}
        whileHover={{ scale: 1.02 }}
        whileTap={{ scale: 0.98 }}
      >
        {loading ? (
          <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
        ) : (
          <svg className="w-5 h-5" viewBox="0 0 24 24">
            <path fill="white" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
            <path fill="white" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
            <path fill="white" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
            <path fill="white" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
          </svg>
        )}
        {loading ? 'Signing in…' : 'Login With Google'}
      </motion.button>

      {/* ── Divider ── */}
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.8 }}
        className="flex items-center gap-3 w-full max-w-xs my-4"
      >
        <div className="flex-1 h-px bg-gray-200" />
        <span className="text-xs text-gray-400">or</span>
        <div className="flex-1 h-px bg-gray-200" />
      </motion.div>

      {/* ── Email link ── */}
      <motion.a
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.9 }}
        href="/signup"
        className="text-sm text-gray-500 hover:text-[#5B6EF5] transition-colors"
      >
        Sign up with email instead →
      </motion.a>

      <p className="text-xs text-gray-400 mt-8 text-center max-w-xs">
        By continuing you agree to our Terms of Service and Privacy Policy.
      </p>
    </div>
  );
}
