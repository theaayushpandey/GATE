import type { SubjectGRS, GRSBadge } from '@/types';

interface GRSInputs {
  total_pyqs: number;
  solved_pyqs: number;
  correct_1mark: number;
  total_1mark: number;
  correct_2mark: number;
  total_2mark: number;
  correct_nat_msq: number;
  total_nat_msq: number;
  last_practiced_at: Date | null;
}

/**
 * GATE Readiness Score (GRS) Algorithm
 *
 * GRS = (pyq_completion × 0.35)
 *     + (accuracy_2mark  × 0.25)
 *     + (accuracy_1mark  × 0.15)
 *     + (nat_msq_score   × 0.15)
 *     - (memory_decay    × 0.10)
 *
 * Memory decay: -2 pts/day beyond 30-day inactivity, capped at -20 pts (10 days grace).
 */
export function calculateGRS(inputs: GRSInputs): SubjectGRS & { subject_id: string; subject_name: string } {
  const {
    total_pyqs, solved_pyqs,
    correct_1mark, total_1mark,
    correct_2mark, total_2mark,
    correct_nat_msq, total_nat_msq,
    last_practiced_at,
  } = inputs;

  const pyq_completion = total_pyqs > 0 ? (solved_pyqs / total_pyqs) * 100 : 0;
  const accuracy_1mark = total_1mark > 0 ? (correct_1mark / total_1mark) * 100 : 0;
  const accuracy_2mark = total_2mark > 0 ? (correct_2mark / total_2mark) * 100 : 0;
  const nat_msq_score = total_nat_msq > 0 ? (correct_nat_msq / total_nat_msq) * 100 : 0;

  // Memory decay penalty
  let memory_decay_penalty = 0;
  if (last_practiced_at) {
    const daysSince = Math.floor((Date.now() - last_practiced_at.getTime()) / 86400000);
    if (daysSince > 30) {
      memory_decay_penalty = Math.min((daysSince - 30) * 2, 20);
    }
  } else if (solved_pyqs > 0) {
    // Practiced before but date unknown — apply max penalty
    memory_decay_penalty = 20;
  }

  const raw = (
    pyq_completion   * 0.35 +
    accuracy_2mark   * 0.25 +
    accuracy_1mark   * 0.15 +
    nat_msq_score    * 0.15 -
    memory_decay_penalty * 0.10 * 10 // scale penalty to pts
  );

  const grs = Math.max(0, Math.min(100, Math.round(raw)));
  const badge = getBadge(grs, memory_decay_penalty);

  return {
    subject_id: '',
    subject_name: '',
    grs,
    badge,
    pyq_completion: Math.round(pyq_completion),
    accuracy_1mark: Math.round(accuracy_1mark),
    accuracy_2mark: Math.round(accuracy_2mark),
    nat_msq_score: Math.round(nat_msq_score),
    memory_decay_penalty: Math.round(memory_decay_penalty),
  };
}

function getBadge(grs: number, decay: number): GRSBadge {
  if (decay >= 10) return 'decaying';
  if (grs >= 90)   return 'air1_ready';
  if (grs >= 75)   return 'strong';
  if (grs >= 50)   return 'building';
  return 'decaying';
}

export const GRS_BADGE_CONFIG: Record<GRSBadge, { label: string; color: string; bg: string; emoji: string }> = {
  air1_ready: { label: 'AIR-1 Ready',     color: 'text-emerald-400', bg: 'bg-emerald-500/10 border-emerald-500/30', emoji: '🏆' },
  strong:     { label: 'Strong',           color: 'text-blue-400',    bg: 'bg-blue-500/10 border-blue-500/30',       emoji: '💪' },
  building:   { label: 'Building',         color: 'text-amber-400',   bg: 'bg-amber-500/10 border-amber-500/30',     emoji: '📈' },
  decaying:   { label: 'Revise Now!',      color: 'text-red-400',     bg: 'bg-red-500/10 border-red-500/30',         emoji: '⚠️' },
};
