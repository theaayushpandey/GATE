import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { RevisionHub } from '@/components/revision/RevisionHub';

export const metadata: Metadata = { title: 'Revision Engine' };
export const dynamic = 'force-dynamic';

export default async function RevisionPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return null;

  const [{ data: schedules }, { data: subjects }] = await Promise.all([
    supabase.from('revision_schedules')
      .select('*, subjects(name, color_hex, short_name)')
      .eq('user_id', user.id)
      .order('next_revision_date'),
    supabase.from('subjects').select('*').order('display_order'),
  ]);

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold">Ebbinghaus Revision Engine</h1>
        <p className="text-muted-foreground text-sm mt-1">Automated memory decay tracking & spaced repetition checkpoints</p>
      </div>
      <RevisionHub schedules={schedules ?? []} subjects={subjects ?? []} userId={user.id} />
    </div>
  );
}
