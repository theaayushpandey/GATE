import { NextRequest, NextResponse } from 'next/server';
import { createServiceClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

function isAuthorized(req: NextRequest): boolean {
  const secret = req.headers.get('authorization')?.replace('Bearer ', '');
  return secret === process.env.CRON_SECRET;
}

export async function GET(req: NextRequest) {
  if (!isAuthorized(req)) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  if (!process.env.RESEND_API_KEY) {
    return NextResponse.json({ error: 'Resend not configured', status: 'skipped' });
  }

  const supabase = createServiceClient();

  // Find users with active streaks who haven't practiced today
  const today = new Date().toISOString().split('T')[0];
  const { data: inactiveUsers } = await supabase
    .from('user_profiles')
    .select('id, display_name, current_streak, max_streak')
    .gt('current_streak', 0)
    .neq('last_active', today);

  // Find users with decaying subjects (>30 days without revision)
  const thirtyDaysAgo = new Date(Date.now() - 30 * 86400000).toISOString();
  const { data: decaySchedules } = await supabase
    .from('revision_schedules')
    .select('user_id, subjects(name)')
    .lt('next_revision_date', thirtyDaysAgo)
    .eq('is_revised', false);

  let emailsSent = 0;
  const { Resend } = await import('resend');
  const resend = new Resend(process.env.RESEND_API_KEY);

  for (const user of (inactiveUsers ?? [])) {
    try {
      const { data: authUser } = await supabase.auth.admin.getUserById(user.id);
      if (!authUser?.user?.email) continue;

      await resend.emails.send({
        from: process.env.RESEND_FROM_EMAIL ?? 'noreply@gate-air1.com',
        to: authUser.user.email,
        subject: `🔥 Don't break your ${user.current_streak}-day streak! GATE today`,
        html: `
          <div style="font-family:Inter,sans-serif;max-width:520px;margin:0 auto;background:#0d1117;color:#e6edf3;padding:32px;border-radius:12px">
            <h1 style="color:#10b981;font-size:22px;margin-bottom:8px">Hey ${user.display_name ?? 'GATE Aspirant'} 👋</h1>
            <p style="color:#8b949e;margin-bottom:24px">You have a <strong style="color:#f59e0b">${user.current_streak}-day streak</strong> going — don't break it today!</p>
            <div style="background:#161b22;border:1px solid #30363d;border-radius:8px;padding:16px;margin-bottom:24px">
              <p style="margin:0;font-size:14px">📌 <strong>Today's Prescription:</strong> Solve 10 PYQs from your weakest subject</p>
            </div>
            <a href="${process.env.NEXT_PUBLIC_APP_URL}/dashboard" style="display:inline-block;background:#10b981;color:white;padding:12px 24px;border-radius:8px;text-decoration:none;font-weight:600">
              Continue Practicing →
            </a>
            <p style="color:#6e7681;font-size:12px;margin-top:24px">GATE AIR-1 Engine · Unsubscribe anytime in settings</p>
          </div>
        `,
      });
      emailsSent++;
    } catch (e) { console.error('Email failed for user', user.id, e); }
  }

  return NextResponse.json({
    processed_at: new Date().toISOString(),
    emails_sent: emailsSent,
    streak_users: inactiveUsers?.length ?? 0,
    status: 'ok',
  });
}
