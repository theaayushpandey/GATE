import type { RevisionSchedule } from '@/types';
import { addDays, format, isPast, differenceInDays } from 'date-fns';

export const EBBINGHAUS_INTERVALS: (7 | 21 | 45 | 90)[] = [7, 21, 45, 90];

/**
 * Generate 4 revision schedule entries for a completed subject.
 */
export function generateRevisionSchedules(
  userId: string,
  subjectId: string,
  completedDate: Date
): Omit<RevisionSchedule, 'id'>[] {
  return EBBINGHAUS_INTERVALS.map((interval) => ({
    user_id: userId,
    subject_id: subjectId,
    completed_date: format(completedDate, 'yyyy-MM-dd'),
    next_revision_date: format(addDays(completedDate, interval), 'yyyy-MM-dd'),
    interval_days: interval,
    readiness_score: 0,
    is_revised: false,
  }));
}

/**
 * Determine if a revision checkpoint is due today or overdue.
 */
export function isRevisionDue(schedule: RevisionSchedule): boolean {
  const dueDate = new Date(schedule.next_revision_date);
  return !schedule.is_revised && isPast(dueDate);
}

/**
 * Days until next revision (negative = overdue).
 */
export function daysUntilRevision(schedule: RevisionSchedule): number {
  const dueDate = new Date(schedule.next_revision_date);
  return differenceInDays(dueDate, new Date());
}

/**
 * Check if subject is in Memory Decay Zone (>30 days without revision).
 */
export function isInDecayZone(lastRevisedAt: Date | null): boolean {
  if (!lastRevisedAt) return false;
  return differenceInDays(new Date(), lastRevisedAt) > 30;
}

/**
 * Build a 15-question quiz for a revision checkpoint.
 * Priority: 40% past incorrect + 30% flagged + 30% high-weightage.
 */
export function buildRevisionQuizWeights(): { incorrect: number; flagged: number; high_weight: number } {
  return { incorrect: 6, flagged: 4, high_weight: 5 };
}

export function getRevisionLabel(intervalDays: number): string {
  const map: Record<number, string> = { 7: '1 Week', 21: '3 Weeks', 45: '45 Days', 90: '3 Months' };
  return map[intervalDays] ?? `${intervalDays} Days`;
}
