'use client';

import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import {
  LayoutGrid, FlaskConical, Trophy, BookOpen,
  User, BookMarked, Puzzle, Sun, LogOut, Zap
} from 'lucide-react';
import { createClient } from '@/lib/supabase/client';

const NAV = [
  { href: '/dashboard',              icon: LayoutGrid, label: 'Home',        id: 'nav-home' },
  { href: '/dashboard/revision',     icon: FlaskConical, label: 'Tests',     id: 'nav-tests' },
  { href: '/dashboard/flashcards',   icon: BookOpen,   label: 'Flashcards',  id: 'nav-flashcards' },
  { href: '/dashboard/buckets',      icon: BookMarked, label: 'Notebooks',   id: 'nav-notebooks' },
  { href: '/dashboard/analytics',    icon: User,       label: 'Analytics',   id: 'nav-analytics' },
  { href: '/dashboard/leaderboard',  icon: Trophy,     label: 'Leaderboard', id: 'nav-leaderboard' },
];

export default function DashboardLayout({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const router = useRouter();
  const supabase = createClient();
  const [tooltip, setTooltip] = useState<string | null>(null);

  async function signOut() {
    await supabase.auth.signOut();
    router.push('/login');
  }

  function isActive(href: string) {
    if (href === '/dashboard') return pathname === '/dashboard';
    return pathname.startsWith(href);
  }

  return (
    <div className="flex h-screen overflow-hidden" style={{ background: 'var(--bg)' }}>

      {/* ── Icon Sidebar (MARKS-style 64px) ─── */}
      <aside className="sidebar">
        {/* Logo */}
        <div className="mb-6 flex items-center justify-center">
          <div className="w-10 h-10 rounded-xl flex items-center justify-center"
            style={{ background: 'linear-gradient(135deg, #5B6EF5, #818cf8)' }}>
            <Zap className="w-5 h-5 text-white" fill="white" />
          </div>
        </div>

        {/* Nav icons */}
        <nav className="flex flex-col items-center gap-1 flex-1">
          {NAV.map(item => {
            const active = isActive(item.href);
            return (
              <Link key={item.href} href={item.href} id={item.id}
                onMouseEnter={() => setTooltip(item.label)}
                onMouseLeave={() => setTooltip(null)}
                className={`nav-icon relative ${active ? 'active' : ''}`}
              >
                <item.icon className="w-5 h-5" />
                {/* Tooltip */}
                <AnimatePresence>
                  {tooltip === item.label && (
                    <motion.div
                      initial={{ opacity: 0, x: -4 }}
                      animate={{ opacity: 1, x: 0 }}
                      exit={{ opacity: 0 }}
                      transition={{ duration: 0.12 }}
                      className="absolute left-full ml-3 px-2.5 py-1.5 rounded-lg text-xs font-medium whitespace-nowrap pointer-events-none z-50"
                      style={{ background: 'var(--card)', border: '1px solid var(--border)', color: 'var(--text-primary)' }}
                    >
                      {item.label}
                    </motion.div>
                  )}
                </AnimatePresence>
              </Link>
            );
          })}
        </nav>

        {/* Bottom */}
        <div className="flex flex-col items-center gap-1 pb-2">
          <button
            onClick={signOut}
            id="signout-btn"
            onMouseEnter={() => setTooltip('Sign out')}
            onMouseLeave={() => setTooltip(null)}
            className="nav-icon relative"
          >
            <LogOut className="w-5 h-5" />
            <AnimatePresence>
              {tooltip === 'Sign out' && (
                <motion.div
                  initial={{ opacity: 0, x: -4 }}
                  animate={{ opacity: 1, x: 0 }}
                  exit={{ opacity: 0 }}
                  className="absolute left-full ml-3 px-2.5 py-1.5 rounded-lg text-xs font-medium whitespace-nowrap pointer-events-none z-50"
                  style={{ background: 'var(--card)', border: '1px solid var(--border)', color: 'var(--text-primary)' }}
                >
                  Sign out
                </motion.div>
              )}
            </AnimatePresence>
          </button>
        </div>
      </aside>

      {/* ── Main content ─── */}
      <main className="flex-1 overflow-y-auto" style={{ marginLeft: '64px' }}>
        {children}
      </main>
    </div>
  );
}
