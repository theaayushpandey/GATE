import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { SubjectList } from '@/components/subject-grid/SubjectList';

export const metadata: Metadata = { title: 'GATE CSE — Subjects' };
export const dynamic = 'force-dynamic';

export default async function DashboardPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();

  const { data: subjects } = await supabase
    .from('subjects')
    .select('*')
    .order('display_order');

  const { data: progressData } = user ? await supabase
    .from('user_progress')
    .select('question_id, status, questions(subject_id, marks, question_type), solved_at')
    .eq('user_id', user.id) : { data: [] };

  return (
    <SubjectList subjects={subjects ?? []} progressData={progressData ?? []} />
  );
}
