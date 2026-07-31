import { NextRequest, NextResponse } from 'next/server';
import { createServiceClient } from '@/lib/supabase/server';
import { isRevisionDue } from '@/lib/ebbinghaus/scheduler';

export const dynamic = 'force-dynamic';

// Protect with CRON_SECRET header (set in Vercel)
function isAuthorized(req: NextRequest): boolean {
  const secret = req.headers.get('authorization')?.replace('Bearer ', '');
  return secret === process.env.CRON_SECRET;
}

export async function GET(req: NextRequest) {
  if (!isAuthorized(req)) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const supabase = createServiceClient();

  // Fetch all due, unrevised schedules
  const today = new Date().toISOString().split('T')[0];
  const { data: dueSchedules, error } = await supabase
    .from('revision_schedules')
    .select('*, subjects(name), user_profiles(id, display_name)')
    .lte('next_revision_date', today)
    .eq('is_revised', false);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  // Group by user
  const byUser: Record<string, { schedules: any[]; profile: any }> = {};
  dueSchedules?.forEach(s => {
    if (!byUser[s.user_id]) byUser[s.user_id] = { schedules: [], profile: s.user_profiles };
    byUser[s.user_id].schedules.push(s);
  });

  const notified = Object.keys(byUser).length;
  console.log(`[Ebbinghaus Cron] ${dueSchedules?.length ?? 0} due revisions for ${notified} users`);

  // In production: trigger Resend emails here for each user
  // For now, just return the summary
  return NextResponse.json({
    processed_at: new Date().toISOString(),
    due_count: dueSchedules?.length ?? 0,
    users_affected: notified,
    status: 'ok',
  });
}
