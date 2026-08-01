import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { LeaderboardView } from '@/components/leaderboard/LeaderboardView';

export const metadata: Metadata = { title: 'Leaderboard' };
export const dynamic = 'force-dynamic';

export default async function LeaderboardPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return null;

  // Fetch user's own profile
  const { data: profile } = await supabase
    .from('user_profiles')
    .select('*')
    .eq('id', user.id)
    .single();

  // Fetch friends
  const { data: friendships } = await supabase
    .from('friendships')
    .select('*, user_id_1, user_id_2')
    .or(`user_id_1.eq.${user.id},user_id_2.eq.${user.id}`)
    .eq('status', 'accepted');

  // Weekly leaderboard — top 20 by questions solved this week
  const weekAgo = new Date(Date.now() - 7 * 86400000).toISOString();
  const { data: weeklyActivity } = await supabase
    .from('user_profiles')
    .select('id, display_name, avatar_url, current_streak')
    .limit(20);

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold">Leaderboard</h1>
        <p className="text-muted-foreground text-sm mt-1">Weekly rankings — Accuracy · Questions Solved · Streak</p>
      </div>
      <LeaderboardView
        currentUserId={user.id}
        profile={profile}
        friendships={friendships ?? []}
        weeklyUsers={weeklyActivity ?? []}
      />
    </div>
  );
}
