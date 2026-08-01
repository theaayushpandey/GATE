import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { AIAnalystReport } from '@/components/analytics/AIAnalystReport';

export const metadata: Metadata = { title: 'AI Analyst' };
export const dynamic = 'force-dynamic';

export default async function AIAnalystPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return null;

  const weekAgo = new Date(Date.now() - 7 * 86400000).toISOString();
  const { data: recentProgress } = await supabase
    .from('user_progress')
    .select('*, questions(subject_id, marks, question_type, subjects(name))')
    .eq('user_id', user.id)
    .gte('solved_at', weekAgo)
    .order('solved_at', { ascending: false });

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold flex items-center gap-2">
          <span className="text-gradient">AI Performance Analyst</span>
          <span className="text-xs px-2 py-1 rounded-full bg-violet-500/20 text-violet-400 border border-violet-500/30 font-normal">Powered by Gemini</span>
        </h1>
        <p className="text-muted-foreground text-sm mt-1">Weekly diagnostic — weak subtopics, speed vs. accuracy, prescribed practice</p>
      </div>
      <AIAnalystReport userId={user.id} recentProgress={recentProgress ?? []} />
    </div>
  );
}
