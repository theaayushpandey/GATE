'use client';

import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Trophy, Medal, Crown, Users, UserPlus, Flame, Target, BookOpen, Search, X, CheckCircle2, Clock } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';
import toast from 'react-hot-toast';

interface Props {
  currentUserId: string;
  profile: any;
  friendships: any[];
  weeklyUsers: any[];
}

// Mock weekly leaderboard data for demonstration
const DEMO_LEADERBOARD = [
  { rank: 1,  name: 'Rahul Gupta',     accuracy: 94, solved: 142, streak: 21, badge: '🥇', color: '#f59e0b' },
  { rank: 2,  name: 'Priya Sharma',    accuracy: 91, solved: 128, streak: 18, badge: '🥈', color: '#94a3b8' },
  { rank: 3,  name: 'Arjun Nair',      accuracy: 89, solved: 115, streak: 14, badge: '🥉', color: '#cd7c2e' },
  { rank: 4,  name: 'Sneha Reddy',     accuracy: 87, solved: 103, streak: 12, badge: '4',  color: '#10b981' },
  { rank: 5,  name: 'Vikram Patel',    accuracy: 85, solved: 98,  streak: 9,  badge: '5',  color: '#10b981' },
  { rank: 6,  name: 'Anjali Singh',    accuracy: 83, solved: 91,  streak: 7,  badge: '6',  color: '#10b981' },
  { rank: 7,  name: 'Karthik Iyer',    accuracy: 80, solved: 87,  streak: 15, badge: '7',  color: '#10b981' },
  { rank: 8,  name: 'Meera Krishnan',  accuracy: 78, solved: 82,  streak: 5,  badge: '8',  color: '#10b981' },
];

export function LeaderboardView({ currentUserId, profile, friendships, weeklyUsers }: Props) {
  const [tab, setTab]         = useState<'global' | 'friends'>('global');
  const [friendEmail, setFriendEmail] = useState('');
  const [addingFriend, setAddingFriend] = useState(false);
  const [searching, setSearching] = useState(false);
  const supabase = createClient();

  async function sendFriendRequest() {
    if (!friendEmail.trim()) return;
    setSearching(true);
    // Find user by email
    const { data: targetUser, error } = await supabase
      .from('user_profiles')
      .select('id, display_name')
      .textSearch('display_name', friendEmail)
      .single();

    if (error || !targetUser) {
      toast.error('User not found. Ask them to share their username.');
      setSearching(false); return;
    }

    const { error: friendError } = await supabase.from('friendships').insert({
      user_id_1: currentUserId,
      user_id_2: targetUser.id,
      status: 'pending',
    });

    if (friendError) { toast.error('Could not send request'); }
    else { toast.success(`Friend request sent to ${targetUser.display_name}!`); setFriendEmail(''); setAddingFriend(false); }
    setSearching(false);
  }

  const topThree = DEMO_LEADERBOARD.slice(0, 3);
  const rest      = DEMO_LEADERBOARD.slice(3);

  return (
    <div className="max-w-3xl space-y-6">
      {/* Tabs */}
      <div className="flex gap-1 bg-muted p-1 rounded-xl w-fit">
        {[{ key: 'global', label: 'Global Weekly', icon: Trophy },
          { key: 'friends', label: 'Friends', icon: Users }].map(t => (
          <button key={t.key} id={`tab-${t.key}`}
            onClick={() => setTab(t.key as any)}
            className={`flex items-center gap-2 px-4 py-2 rounded-lg text-sm font-medium transition-all
                        ${tab === t.key ? 'bg-card text-foreground shadow' : 'text-muted-foreground hover:text-foreground'}`}>
            <t.icon className="w-3.5 h-3.5" /> {t.label}
          </button>
        ))}
      </div>

      <AnimatePresence mode="wait">
        {tab === 'global' && (
          <motion.div key="global" initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}>
            {/* Podium — Top 3 */}
            <div className="flex items-end justify-center gap-4 mb-8 px-4">
              {/* 2nd */}
              <PodiumBlock entry={topThree[1]} height={140} />
              {/* 1st */}
              <PodiumBlock entry={topThree[0]} height={180} isFirst />
              {/* 3rd */}
              <PodiumBlock entry={topThree[2]} height={110} />
            </div>

            {/* Rest */}
            <div className="space-y-2">
              {rest.map((entry, i) => (
                <motion.div
                  key={entry.rank}
                  initial={{ opacity: 0, x: -10 }} animate={{ opacity: 1, x: 0 }} transition={{ delay: i * 0.04 }}
                  className="glass-card px-5 py-3.5 flex items-center gap-4"
                >
                  <span className="text-muted-foreground text-sm font-bold w-6 text-center">{entry.rank}</span>
                  <div className="w-8 h-8 rounded-full bg-gradient-to-br from-emerald-500 to-blue-500 flex items-center justify-center text-white text-xs font-bold flex-shrink-0">
                    {entry.name[0]}
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="text-sm font-medium text-foreground truncate">{entry.name}</p>
                    <div className="flex items-center gap-3 text-[11px] text-muted-foreground mt-0.5">
                      <span className="flex items-center gap-1"><Target className="w-3 h-3" />{entry.accuracy}% acc</span>
                      <span className="flex items-center gap-1"><BookOpen className="w-3 h-3" />{entry.solved} solved</span>
                      <span className="flex items-center gap-1 text-amber-400"><Flame className="w-3 h-3" />{entry.streak}</span>
                    </div>
                  </div>
                  <div className="text-emerald-400 text-sm font-bold">{entry.accuracy}%</div>
                </motion.div>
              ))}
            </div>
          </motion.div>
        )}

        {tab === 'friends' && (
          <motion.div key="friends" initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}>
            {/* Add friend */}
            <div className="glass-card p-5 mb-4">
              <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                <UserPlus className="w-4 h-4 text-emerald-400" /> Add a Friend
              </h3>
              {!addingFriend ? (
                <button onClick={() => setAddingFriend(true)} id="add-friend-btn"
                  className="flex items-center gap-2 px-4 py-2 rounded-lg border border-dashed border-border
                             text-sm text-muted-foreground hover:text-foreground hover:border-emerald-500/40 transition-all">
                  <UserPlus className="w-4 h-4" /> Search by username or email
                </button>
              ) : (
                <div className="flex gap-2">
                  <div className="relative flex-1">
                    <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
                    <input value={friendEmail} onChange={e => setFriendEmail(e.target.value)}
                      placeholder="Enter username or email…" id="friend-search-input"
                      onKeyDown={e => e.key === 'Enter' && sendFriendRequest()}
                      className="w-full pl-9 pr-4 py-2.5 rounded-lg bg-muted border border-border text-sm text-foreground
                                 placeholder-muted-foreground focus:outline-none focus:border-emerald-500 transition-all"
                    />
                  </div>
                  <button onClick={sendFriendRequest} disabled={searching}
                    id="send-friend-request"
                    className="px-4 py-2.5 rounded-lg bg-emerald-500 hover:bg-emerald-400 text-white text-sm font-medium disabled:opacity-50 transition-all">
                    {searching ? <div className="spinner w-4 h-4" /> : 'Send'}
                  </button>
                  <button onClick={() => setAddingFriend(false)}
                    className="p-2.5 rounded-lg bg-muted hover:bg-secondary transition-all">
                    <X className="w-4 h-4" />
                  </button>
                </div>
              )}
            </div>

            {/* Friends list */}
            {friendships.length === 0 ? (
              <div className="glass-card p-12 text-center">
                <div className="text-5xl mb-4">👥</div>
                <h3 className="text-base font-semibold mb-2">No friends added yet</h3>
                <p className="text-sm text-muted-foreground">Add friends to compete on the weekly leaderboard!</p>
              </div>
            ) : (
              <div className="space-y-2">
                {friendships.map((f: any) => (
                  <div key={f.id} className="glass-card px-5 py-3 flex items-center gap-3">
                    <div className="w-8 h-8 rounded-full bg-gradient-to-br from-violet-500 to-pink-500 flex items-center justify-center text-white text-xs font-bold">
                      F
                    </div>
                    <div className="flex-1">
                      <p className="text-sm font-medium">Friend</p>
                      <p className="text-[11px] text-muted-foreground capitalize">{f.status}</p>
                    </div>
                    {f.status === 'pending' && (
                      <span className="text-[11px] px-2 py-0.5 rounded-full bg-amber-500/20 text-amber-400">Pending</span>
                    )}
                    {f.status === 'accepted' && (
                      <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                    )}
                  </div>
                ))}
              </div>
            )}
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}

function PodiumBlock({ entry, height, isFirst }: { entry: any; height: number; isFirst?: boolean }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: isFirst ? 0 : 0.15 }}
      className="flex flex-col items-center gap-2 flex-1 max-w-[120px]"
    >
      <div className="text-3xl">{entry.badge}</div>
      <div className={`w-12 h-12 rounded-full bg-gradient-to-br from-emerald-500 to-blue-500 flex items-center justify-center text-white font-bold text-lg ${isFirst ? 'ring-2 ring-amber-400 ring-offset-2 ring-offset-background' : ''}`}>
        {entry.name[0]}
      </div>
      <p className="text-xs font-semibold text-center leading-tight">{entry.name.split(' ')[0]}</p>
      <div className="flex items-center gap-1 text-[10px] text-amber-400">
        <Flame className="w-2.5 h-2.5" />{entry.streak}
      </div>
      <div
        className="w-full rounded-t-lg flex items-end justify-center pb-2 text-xs font-bold text-white"
        style={{ height, background: isFirst ? 'linear-gradient(to top, #f59e0b, #fbbf24)' : 'linear-gradient(to top, hsl(217 19% 18%), hsl(217 19% 22%))' }}
      >
        {entry.accuracy}%
      </div>
    </motion.div>
  );
}
