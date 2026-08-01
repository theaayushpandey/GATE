import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { SubjectHub } from '@/components/subject-hub/SubjectHub';

export const dynamic = 'force-dynamic';

interface Props { params: { id: string } }

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const supabase = createClient();
  const { data: subject } = await supabase.from('subjects').select('name').eq('id', params.id).single();
  return { title: subject?.name ?? 'Subject' };
}

export default async function SubjectPage({ params }: Props) {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();

  const [{ data: subject }, { data: chapters }] = await Promise.all([
    supabase.from('subjects').select('*').eq('id', params.id).single(),
    supabase.from('chapters')
      .select('*, topics(*, questions(id, marks, question_type, gate_year))')
      .eq('subject_id', params.id)
      .order('display_order'),
  ]);

  if (!subject) notFound();

  // Fetch user progress for this subject
  const { data: progressData } = user ? await supabase
    .from('user_progress')
    .select('question_id, status')
    .eq('user_id', user.id) : { data: [] };

  const progressMap = new Map((progressData ?? []).map((p: any) => [p.question_id, p.status]));

  return (
    <div className="min-h-full p-6 lg:p-8">
      <SubjectHub subject={subject} chapters={chapters ?? []} progressMap={progressMap} />
    </div>
  );
}
