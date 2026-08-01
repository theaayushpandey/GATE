'use client';

import { useState } from 'react';
import { motion } from 'framer-motion';
import { createClient } from '@/lib/supabase/client';

export default function SignupPage() {
  const [loading, setLoading] = useState(false);
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
    <div className="min-h-screen bg-white flex flex-col items-center justify-center px-4">
      <motion.div
        initial={{ opacity: 0, y: 24 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="text-center w-full max-w-xs"
      >
        {/* Logo */}
        <motion.div
          initial={{ scale: 0.8 }} animate={{ scale: 1 }}
          transition={{ type: 'spring', stiffness: 200, delay: 0.1 }}
          className="w-20 h-20 rounded-2xl flex items-center justify-center shadow-xl mx-auto mb-6"
          style={{ background: 'linear-gradient(135deg, #5B6EF5, #818cf8)' }}
        >
          <span className="text-white font-black text-2xl tracking-tight">G</span>
        </motion.div>

        <h1 className="text-3xl font-bold text-gray-900 mb-1">Get started</h1>
        <p className="text-gray-400 text-sm mb-8">
          25 years of GATE CSE PYQs · AI analytics · Spaced repetition
        </p>

        <motion.button
          initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.3 }}
          onClick={handleGoogleLogin}
          disabled={loading}
          id="google-signup-btn"
          className="flex items-center gap-3 px-8 py-4 rounded-2xl font-semibold text-white text-base w-full justify-center transition-all"
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
          {loading ? 'Signing in…' : 'Continue with Google'}
        </motion.button>

        <p className="text-xs text-gray-400 mt-6">
          Already have an account? Just click the button above — Google handles both sign up and sign in automatically.
        </p>
        <p className="text-xs text-gray-300 mt-4">
          By continuing you agree to our Terms of Service and Privacy Policy.
        </p>
      </motion.div>
    </div>
  );
}
