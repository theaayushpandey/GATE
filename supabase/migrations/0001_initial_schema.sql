-- ============================================================
-- GATE AIR-1 Engine — Supabase Migration 0001
-- Full schema with RLS + indexes
-- ============================================================

-- Extensions
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ─── 1. Subjects, Chapters, Topics ───────────────────────────
CREATE TABLE IF NOT EXISTS subjects (
  id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name                 TEXT NOT NULL,
  short_name           TEXT,
  total_pyqs           INT DEFAULT 0,
  weightage_percentage FLOAT,
  icon_name            TEXT,
  color_hex            TEXT,
  display_order        INT DEFAULT 0,
  created_at           TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS chapters (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  subject_id  UUID REFERENCES subjects(id) ON DELETE CASCADE,
  name        TEXT NOT NULL,
  display_order INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS topics (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  chapter_id  UUID REFERENCES chapters(id) ON DELETE CASCADE,
  name        TEXT NOT NULL,
  display_order INT DEFAULT 0
);

-- ─── 2. 25-Year Question Bank ─────────────────────────────────
CREATE TABLE IF NOT EXISTS questions (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  subject_id        UUID REFERENCES subjects(id),
  chapter_id        UUID REFERENCES chapters(id),
  topic_id          UUID REFERENCES topics(id),
  gate_year         INT NOT NULL CHECK (gate_year BETWEEN 2000 AND 2030),
  marks             INT NOT NULL CHECK (marks IN (1, 2)),
  question_type     TEXT NOT NULL CHECK (question_type IN ('MCQ', 'MSQ', 'NAT')),
  question_stem     TEXT NOT NULL,
  options_json      JSONB,
  correct_key       JSONB NOT NULL,
  detailed_solution TEXT NOT NULL,
  is_controversial  BOOLEAN DEFAULT false,
  controversy_note  TEXT,
  image_url         TEXT,
  created_at        TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_questions_subject    ON questions(subject_id);
CREATE INDEX IF NOT EXISTS idx_questions_chapter    ON questions(chapter_id);
CREATE INDEX IF NOT EXISTS idx_questions_year       ON questions(gate_year);
CREATE INDEX IF NOT EXISTS idx_questions_type       ON questions(question_type);
CREATE INDEX IF NOT EXISTS idx_questions_marks      ON questions(marks);

-- ─── 3. User Progress ─────────────────────────────────────────
CREATE TABLE IF NOT EXISTS user_progress (
  id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id              UUID NOT NULL,
  question_id          UUID REFERENCES questions(id) ON DELETE CASCADE,
  status               TEXT CHECK (status IN ('correct', 'incorrect', 'flagged', 'unattempted')),
  user_answer          JSONB,
  time_taken_seconds   INT,
  mistake_reason       TEXT CHECK (mistake_reason IN ('conceptual', 'calculation', 'misread', 'time_pressure', 'none')),
  solved_at            TIMESTAMPTZ DEFAULT now(),
  UNIQUE (user_id, question_id)
);

CREATE INDEX IF NOT EXISTS idx_progress_user      ON user_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_progress_question  ON user_progress(question_id);
CREATE INDEX IF NOT EXISTS idx_progress_solved_at ON user_progress(solved_at);
CREATE INDEX IF NOT EXISTS idx_progress_status    ON user_progress(status);

-- ─── 4. Ebbinghaus Revision Schedules ────────────────────────
CREATE TABLE IF NOT EXISTS revision_schedules (
  id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id             UUID NOT NULL,
  subject_id          UUID REFERENCES subjects(id) ON DELETE CASCADE,
  completed_date      DATE NOT NULL,
  next_revision_date  DATE NOT NULL,
  interval_days       INT NOT NULL CHECK (interval_days IN (7, 21, 45, 90)),
  readiness_score     INT DEFAULT 0,
  is_revised          BOOLEAN DEFAULT false,
  revised_at          TIMESTAMPTZ,
  created_at          TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_revision_user     ON revision_schedules(user_id);
CREATE INDEX IF NOT EXISTS idx_revision_due_date ON revision_schedules(next_revision_date);

-- ─── 5. Custom Buckets ────────────────────────────────────────
CREATE TABLE IF NOT EXISTS buckets (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID NOT NULL,
  name       TEXT NOT NULL,
  description TEXT,
  color_hex  TEXT DEFAULT '#10b981',
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS bucket_items (
  bucket_id   UUID REFERENCES buckets(id) ON DELETE CASCADE,
  question_id UUID REFERENCES questions(id) ON DELETE CASCADE,
  added_at    TIMESTAMPTZ DEFAULT now(),
  PRIMARY KEY (bucket_id, question_id)
);

CREATE INDEX IF NOT EXISTS idx_buckets_user ON buckets(user_id);

-- ─── 6. Flashcards ───────────────────────────────────────────
CREATE TABLE IF NOT EXISTS flashcard_decks (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name        TEXT NOT NULL,
  subject_id  UUID REFERENCES subjects(id),
  is_builtin  BOOLEAN DEFAULT false
);

CREATE TABLE IF NOT EXISTS flashcards (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deck_id     UUID REFERENCES flashcard_decks(id) ON DELETE CASCADE,
  front       TEXT NOT NULL,
  back        TEXT NOT NULL,
  created_at  TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS user_flashcard_progress (
  user_id        UUID NOT NULL,
  flashcard_id   UUID REFERENCES flashcards(id) ON DELETE CASCADE,
  difficulty     TEXT CHECK (difficulty IN ('easy', 'hard', 'again')),
  next_review    TIMESTAMPTZ,
  review_count   INT DEFAULT 0,
  PRIMARY KEY (user_id, flashcard_id)
);

-- ─── 7. Friendships & Social ──────────────────────────────────
CREATE TABLE IF NOT EXISTS friendships (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id_1   UUID NOT NULL,
  user_id_2   UUID NOT NULL,
  status      TEXT CHECK (status IN ('pending', 'accepted')),
  created_at  TIMESTAMPTZ DEFAULT now(),
  UNIQUE (user_id_1, user_id_2)
);

-- ─── 8. Battle Rooms (P2P) ────────────────────────────────────
CREATE TABLE IF NOT EXISTS battle_rooms (
  id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  host_id      UUID NOT NULL,
  room_code    TEXT UNIQUE NOT NULL,
  subject_id   UUID REFERENCES subjects(id),
  question_ids UUID[] NOT NULL,
  status       TEXT DEFAULT 'waiting' CHECK (status IN ('waiting', 'active', 'finished')),
  created_at   TIMESTAMPTZ DEFAULT now(),
  started_at   TIMESTAMPTZ,
  finished_at  TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS battle_participants (
  room_id    UUID REFERENCES battle_rooms(id) ON DELETE CASCADE,
  user_id    UUID NOT NULL,
  score      INT DEFAULT 0,
  answers    JSONB DEFAULT '{}',
  finished   BOOLEAN DEFAULT false,
  joined_at  TIMESTAMPTZ DEFAULT now(),
  PRIMARY KEY (room_id, user_id)
);

-- ─── 9. User Profiles ─────────────────────────────────────────
CREATE TABLE IF NOT EXISTS user_profiles (
  id             UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  display_name   TEXT,
  avatar_url     TEXT,
  gate_year      INT,
  current_streak INT DEFAULT 0,
  max_streak     INT DEFAULT 0,
  last_active    DATE,
  created_at     TIMESTAMPTZ DEFAULT now()
);

-- ─── 10. Daily Activity ───────────────────────────────────────
CREATE TABLE IF NOT EXISTS daily_activity (
  user_id       UUID NOT NULL,
  activity_date DATE NOT NULL,
  questions_solved INT DEFAULT 0,
  correct_count    INT DEFAULT 0,
  time_spent_min   INT DEFAULT 0,
  PRIMARY KEY (user_id, activity_date)
);

-- ─── Row Level Security ───────────────────────────────────────
ALTER TABLE user_progress        ENABLE ROW LEVEL SECURITY;
ALTER TABLE revision_schedules   ENABLE ROW LEVEL SECURITY;
ALTER TABLE buckets              ENABLE ROW LEVEL SECURITY;
ALTER TABLE bucket_items         ENABLE ROW LEVEL SECURITY;
ALTER TABLE friendships          ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_flashcard_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE battle_rooms         ENABLE ROW LEVEL SECURITY;
ALTER TABLE battle_participants  ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_profiles        ENABLE ROW LEVEL SECURITY;
ALTER TABLE daily_activity       ENABLE ROW LEVEL SECURITY;

-- Public read for question bank and subjects
CREATE POLICY "Public read questions"  ON questions       FOR SELECT USING (true);
CREATE POLICY "Public read subjects"   ON subjects        FOR SELECT USING (true);
CREATE POLICY "Public read chapters"   ON chapters        FOR SELECT USING (true);
CREATE POLICY "Public read topics"     ON topics          FOR SELECT USING (true);
CREATE POLICY "Public read decks"      ON flashcard_decks FOR SELECT USING (true);
CREATE POLICY "Public read flashcards" ON flashcards      FOR SELECT USING (true);

-- User-scoped policies
CREATE POLICY "User own progress"     ON user_progress        FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "User own revisions"    ON revision_schedules   FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "User own buckets"      ON buckets              FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "User own fc progress"  ON user_flashcard_progress FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "User own activity"     ON daily_activity       FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "User own profile"      ON user_profiles        FOR ALL USING (auth.uid() = id);

-- Bucket items: user must own the bucket
CREATE POLICY "User bucket items" ON bucket_items FOR ALL
  USING (bucket_id IN (SELECT id FROM buckets WHERE user_id = auth.uid()));

-- Friendships: user is party to the friendship
CREATE POLICY "User friendships" ON friendships FOR ALL
  USING (auth.uid() = user_id_1 OR auth.uid() = user_id_2);

-- Battle rooms: host or participant
CREATE POLICY "Battle rooms select" ON battle_rooms FOR SELECT USING (true);
CREATE POLICY "Battle host insert"  ON battle_rooms FOR INSERT WITH CHECK (auth.uid() = host_id);

CREATE POLICY "Battle participants select" ON battle_participants FOR SELECT USING (true);
CREATE POLICY "Battle participant insert"  ON battle_participants FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Battle participant update"  ON battle_participants FOR UPDATE USING (auth.uid() = user_id);

-- ─── Trigger: auto-create profile on signup ───────────────────
CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
  INSERT INTO user_profiles (id, display_name, avatar_url)
  VALUES (NEW.id, NEW.raw_user_meta_data->>'full_name', NEW.raw_user_meta_data->>'avatar_url')
  ON CONFLICT (id) DO NOTHING;
  RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION handle_new_user();
