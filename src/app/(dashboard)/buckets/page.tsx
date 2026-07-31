import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { BucketsManager } from '@/components/buckets/BucketsManager';

export const metadata: Metadata = { title: 'Notebooks' };
export const dynamic = 'force-dynamic';

export default async function BucketsPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return null;

  const [{ data: buckets }, { data: subjects }] = await Promise.all([
    supabase.from('buckets')
      .select('*, bucket_items(question_id, questions(id, question_stem, marks, question_type, gate_year, subject_id, subjects(name, color_hex)))')
      .eq('user_id', user.id)
      .order('created_at'),
    supabase.from('subjects').select('id, name, color_hex').order('display_order'),
  ]);

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold">Notebooks</h1>
        <p className="text-muted-foreground text-sm mt-1">Custom question buckets — Silly Mistakes, Formula Heavy, Revise Before Exam…</p>
      </div>
      <BucketsManager buckets={buckets ?? []} subjects={subjects ?? []} userId={user.id} />
    </div>
  );
}
