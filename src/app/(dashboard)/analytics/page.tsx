import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { AnalyticsDashboard } from '@/components/analytics/AnalyticsDashboard';

export const metadata: Metadata = { title: 'Analytics' };
export const dynamic = 'force-dynamic';

export default async function AnalyticsPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return null;

  const [
    { data: subjects },
    { data: progressData },
    { data: activityData },
    { data: revisions },
  ] = await Promise.all([
    supabase.from('subjects').select('*').order('display_order'),
    supabase.from('user_progress')
      .select('*, questions(subject_id, marks, question_type, chapter_id)')
      .eq('user_id', user.id),
    supabase.from('daily_activity')
      .select('*')
      .eq('user_id', user.id)
      .order('activity_date', { ascending: false })
      .limit(365),
    supabase.from('revision_schedules')
      .select('*, subjects(name, color_hex)')
      .eq('user_id', user.id)
      .order('next_revision_date'),
  ]);

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold">Analytics</h1>
        <p className="text-muted-foreground text-sm mt-1">Your GATE preparation intelligence dashboard</p>
      </div>
      <AnalyticsDashboard
        subjects={subjects ?? []}
        progressData={progressData ?? []}
        activityData={activityData ?? []}
        revisions={revisions ?? []}
      />
    </div>
  );
}
