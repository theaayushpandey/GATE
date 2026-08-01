import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { SubjectList } from '@/components/subject-grid/SubjectList';

export const metadata: Metadata = { title: 'GATE CSE — Subjects' };
export const dynamic = 'force-dynamic';

export default async function DashboardPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();

  const [{ data: subjects }, { data: questionCounts }, { data: progressData }] = await Promise.all([
    supabase.from('subjects').select('*').order('display_order'),

    // Count real questions per subject from the DB
    supabase.from('questions').select('subject_id').then(({ data }) => ({
      data: data ?? [],
    })),

    user
      ? supabase
          .from('user_progress')
          .select('question_id, status, questions(subject_id, marks, question_type), solved_at')
          .eq('user_id', user.id)
      : { data: [] },
  ]);

  // Build a map: subject_id -> count
  const countMap: Record<string, number> = {};
  for (const q of (questionCounts ?? [])) {
    const sid = (q as any).subject_id;
    countMap[sid] = (countMap[sid] ?? 0) + 1;
  }

  // Override total_pyqs with real counts from DB
  const subjectsWithRealCounts = (subjects ?? []).map((s: any) => ({
    ...s,
    total_pyqs: countMap[s.id] ?? s.total_pyqs,
  }));

  return (
    <SubjectList subjects={subjectsWithRealCounts} progressData={progressData ?? []} />
  );
}
