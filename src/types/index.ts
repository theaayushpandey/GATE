// ─── Supabase Tables ──────────────────────────────────────────────────────────
export interface Subject {
  id: string;
  name: string;
  short_name: string;
  display_order: number;
  total_pyqs: number;
  weightage_percentage: number;
  icon_name: string;        // maps to lucide icon name
  color_hex: string;        // e.g. "#10b981"
  description?: string;
}

export interface Chapter {
  id: string;
  subject_id: string;
  name: string;
  display_order: number;
  topics?: Topic[];
}

export interface Topic {
  id: string;
  chapter_id: string;
  name: string;
  display_order: number;
  questions?: Question[];
}

export type QuestionType = 'MCQ' | 'MSQ' | 'NAT';

export interface Question {
  id: string;
  subject_id: string;
  chapter_id: string;
  topic_id: string;
  gate_year: number;
  marks: 1 | 2;
  question_type: QuestionType;
  question_stem: string;
  options_json: Record<string, string> | null;
  correct_key: string | string[] | [number, number];
  detailed_solution: string;
  is_controversial: boolean;
  controversy_note?: string;
}

export type QuestionStatus = 'correct' | 'incorrect' | 'flagged' | 'unattempted';
export type MistakeReason = 'conceptual' | 'calculation' | 'misread' | 'time_pressure' | 'none';
export type PaletteState = 'not_visited' | 'not_answered' | 'answered' | 'review' | 'answered_review';

export interface UserProgress {
  id: string;
  user_id: string;
  question_id: string;
  status: QuestionStatus;
  user_answer: string | string[] | number | null;
  time_taken_seconds: number;
  mistake_reason: MistakeReason;
  solved_at: string;
}

export interface RevisionSchedule {
  id: string;
  user_id: string;
  subject_id: string;
  completed_date: string;
  next_revision_date: string;
  interval_days: 7 | 21 | 45 | 90;
  readiness_score: number;
  is_revised: boolean;
  revised_at?: string;
  subject?: Subject;
}

export interface Bucket {
  id: string;
  user_id: string;
  name: string;
  color_hex: string;
  item_count?: number;
}

export interface BucketItem {
  bucket_id: string;
  question_id: string;
  question?: Question;
}

export interface Friendship {
  id: string;
  user_id_1: string;
  user_id_2: string;
  status: 'pending' | 'accepted';
}

export interface UserProfile {
  id: string;
  display_name: string;
  avatar_url?: string;
  current_streak: number;
  max_streak: number;
  last_active?: string;
}

// ─── Practice Session ─────────────────────────────────────────────────────────
export interface SessionQuestion extends Question {
  palette_state: PaletteState;
  user_answer: string | string[] | number | null;
  time_taken_seconds: number;
  is_submitted: boolean;
  status?: QuestionStatus;
}

export interface PracticeSession {
  id: string;
  subject_id: string;
  subject_name: string;
  mode: 'topic' | 'random';
  questions: SessionQuestion[];
  current_index: number;
  start_time: Date;
  is_timed: boolean;
  duration_seconds?: number;
  is_complete: boolean;
}

// ─── GRS (GATE Readiness Score) ───────────────────────────────────────────────
export type GRSBadge = 'air1_ready' | 'strong' | 'building' | 'decaying';

export interface SubjectGRS {
  subject_id: string;
  subject_name: string;
  grs: number;
  badge: GRSBadge;
  pyq_completion: number;
  accuracy_1mark: number;
  accuracy_2mark: number;
  nat_msq_score: number;
  memory_decay_penalty: number;
  last_practiced_at?: string;
}

// ─── Flashcards ───────────────────────────────────────────────────────────────
export type FlashcardDifficulty = 'easy' | 'hard' | 'again';

export interface Flashcard {
  id: string;
  deck_id: string;
  front: string;
  back: string;
  next_review?: string;
  difficulty?: FlashcardDifficulty;
}

export interface FlashcardDeck {
  id: string;
  name: string;
  description?: string;
  is_builtin: boolean;
  flashcards?: Flashcard[];
}

export interface UserFlashcardProgress {
  id: string;
  user_id: string;
  flashcard_id: string;
  difficulty: FlashcardDifficulty;
  next_review: string;
  review_count: number;
}

// ─── Analytics ────────────────────────────────────────────────────────────────
export interface DailyActivity {
  activity_date: string;
  questions_solved: number;
  correct_count: number;
  time_spent_seconds: number;
}

export interface MistakeStat {
  reason: MistakeReason;
  count: number;
}

export interface AIDiagnostic {
  weak_subtopics: string[];
  speed_accuracy_note: string;
  prescribed_buckets: string[];
  overall_recommendation: string;
  generated_at: string;
}

// ─── Leaderboard ──────────────────────────────────────────────────────────────
export interface LeaderboardEntry {
  user_id: string;
  display_name: string;
  avatar_url?: string;
  accuracy: number;
  questions_solved: number;
  streak_days: number;
  rank: number;
}
