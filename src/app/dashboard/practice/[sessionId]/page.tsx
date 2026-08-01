'use client';

import { useEffect, useState, useCallback, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { motion, AnimatePresence } from 'framer-motion';
import { ChevronLeft, ChevronRight, Calculator, Flag, CheckSquare, X, BookOpen, Clock, Award } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';
import { useKeyboardSession } from '@/hooks/useKeyboardSession';
import { useSessionTimer } from '@/hooks/useSessionTimer';
import { QuestionRenderer } from '@/components/practice-session/QuestionRenderer';
import { AnswerPanel } from '@/components/practice-session/AnswerPanel';
import { ExamPalette } from '@/components/practice-session/ExamPalette';
import { SolutionDrawer } from '@/components/practice-session/SolutionDrawer';
import { MistakeModal } from '@/components/practice-session/MistakeModal';
import { Calculator as CalcPanel } from '@/components/practice-session/Calculator';
import { KeyboardShortcutBar } from '@/components/shared/KeyboardShortcutBar';
import type { Question, PaletteState, SessionQuestion, MistakeReason } from '@/types';
import toast from 'react-hot-toast';

interface SessionData {
  id: string;
  subject_id: string;
  subject_name: string;
  mode: 'topic' | 'random';
  question_ids: string[];
  is_timed: boolean;
  duration_seconds?: number;
}

export default function PracticeSessionPage({ params }: { params: { sessionId: string } }) {
  const router = useRouter();
  const supabase = createClient();

  const [session, setSession] = useState<SessionData | null>(null);
  const [questions, setQuestions] = useState<SessionQuestion[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [showSolution, setShowSolution] = useState(false);
  const [showMistake, setShowMistake] = useState(false);
  const [showCalc, setShowCalc] = useState(false);
  const [isComplete, setIsComplete] = useState(false);
  const [loading, setLoading] = useState(true);
  const [savingId, setSavingId] = useState<string | null>(null);

  const timer = useSessionTimer({
    mode: session?.is_timed ? 'down' : 'up',
    initialSeconds: session?.duration_seconds ?? 0,
    onExpire: () => { toast('⏰ Time up!'); handleFinish(); },
  });

  // Load session + questions
  useEffect(() => {
    const raw = localStorage.getItem(params.sessionId);
    if (!raw) { router.push('/dashboard'); return; }
    const s: SessionData = JSON.parse(raw);
    setSession(s);

    // Fetch questions
    supabase.from('questions')
      .select('*')
      .in('id', s.question_ids)
      .then(({ data }) => {
        if (!data) { setLoading(false); return; }
        // Sort by original order
        const ordered = s.question_ids.map(id => data.find((q: any) => q.id === id)).filter(Boolean) as Question[];
        setQuestions(ordered.map(q => ({
          ...q,
          palette_state: 'not_visited' as PaletteState,
          user_answer: null,
          time_taken_seconds: 0,
          is_submitted: false,
        })));
        setLoading(false);
      });
  }, [params.sessionId]);

  const currentQuestion = questions[currentIndex];

  // Mark current as "not answered" when visited
  useEffect(() => {
    if (!currentQuestion) return;
    setQuestions(prev => prev.map((q, i) =>
      i === currentIndex && q.palette_state === 'not_visited'
        ? { ...q, palette_state: 'not_answered' }
        : q
    ));
  }, [currentIndex, currentQuestion]);

  const goNext = useCallback(() => {
    if (currentIndex < questions.length - 1) setCurrentIndex(i => i + 1);
    setShowSolution(false);
  }, [currentIndex, questions.length]);

  const goPrev = useCallback(() => {
    if (currentIndex > 0) setCurrentIndex(i => i - 1);
    setShowSolution(false);
  }, [currentIndex]);

  const setAnswer = useCallback((answer: any) => {
    setQuestions(prev => prev.map((q, i) =>
      i === currentIndex ? { ...q, user_answer: answer } : q
    ));
  }, [currentIndex]);

  const submitAnswer = useCallback(async () => {
    if (!currentQuestion || currentQuestion.is_submitted) return;
    const q = currentQuestion;
    const answer = q.user_answer;
    if (answer === null || answer === '' || (Array.isArray(answer) && answer.length === 0)) {
      toast.error('Select an answer first'); return;
    }

    // Evaluate correctness
    let isCorrect = false;
    if (q.question_type === 'MCQ') {
      isCorrect = answer === q.correct_key;
    } else if (q.question_type === 'MSQ') {
      const correct = Array.isArray(q.correct_key) ? q.correct_key.sort() : [];
      isCorrect = Array.isArray(answer) && [...answer].sort().join() === correct.join();
    } else if (q.question_type === 'NAT') {
      const [min, max] = Array.isArray(q.correct_key) ? q.correct_key : [0, 0];
      isCorrect = typeof answer === 'number' && answer >= Number(min) && answer <= Number(max);
    }

    const status = isCorrect ? 'correct' : 'incorrect';
    const paletteState: PaletteState = isCorrect ? 'answered' : 'answered';

    setQuestions(prev => prev.map((sq, i) =>
      i === currentIndex ? { ...sq, status, palette_state: paletteState, is_submitted: true } : sq
    ));

    setShowSolution(true);
    if (!isCorrect) setShowMistake(true);

    // Save to Supabase
    setSavingId(q.id);
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (user) {
        await supabase.from('user_progress').upsert({
          user_id: user.id,
          question_id: q.id,
          status,
          user_answer: answer,
          time_taken_seconds: timer.seconds,
          solved_at: new Date().toISOString(),
        });
      }
    } finally { setSavingId(null); }
  }, [currentQuestion, currentIndex, timer.seconds]);

  const markReview = useCallback(() => {
    setQuestions(prev => prev.map((q, i) => {
      if (i !== currentIndex) return q;
      const next: PaletteState = q.palette_state === 'answered' ? 'answered_review' : 'review';
      return { ...q, palette_state: next };
    }));
    toast('📌 Marked for review');
  }, [currentIndex]);

  const saveMistakeReason = useCallback(async (reason: MistakeReason) => {
    if (!currentQuestion) return;
    const { data: { user } } = await supabase.auth.getUser();
    if (user) {
      await supabase.from('user_progress')
        .update({ mistake_reason: reason })
        .eq('user_id', user.id).eq('question_id', currentQuestion.id);
    }
    setShowMistake(false);
    toast.success('Mistake logged');
  }, [currentQuestion]);

  function handleFinish() {
    setIsComplete(true);
    localStorage.removeItem(params.sessionId);
  }

  // Keyboard shortcuts
  useKeyboardSession({
    next: goNext,
    prev: goPrev,
    opt_a: () => setAnswer('A'),
    opt_b: () => setAnswer('B'),
    opt_c: () => setAnswer('C'),
    opt_d: () => setAnswer('D'),
    submit: submitAnswer,
    review: markReview,
    calculator: () => setShowCalc(s => !s),
    solution: () => currentQuestion?.is_submitted && setShowSolution(s => !s),
    escape: () => setShowSolution(false),
  }, !showMistake);

  if (loading) {
    return (
      <div className="flex items-center justify-center h-full">
        <div className="text-center space-y-3">
          <div className="spinner w-8 h-8 mx-auto" />
          <p className="text-muted-foreground text-sm">Loading questions…</p>
        </div>
      </div>
    );
  }

  if (isComplete || !questions.length) {
    return <SessionComplete questions={questions} subjectName={session?.subject_name ?? ''} router={router} />;
  }

  const correct = questions.filter(q => q.is_submitted && q.palette_state === 'answered').length;
  const solved  = questions.filter(q => q.is_submitted).length;

  return (
    <div className="h-full flex flex-col overflow-hidden">
      {/* Top bar */}
      <div className="flex-shrink-0 flex items-center justify-between px-4 py-3 border-b border-border bg-card">
        <div className="flex items-center gap-3">
          <button onClick={() => router.back()} className="p-1.5 rounded-lg hover:bg-secondary transition-colors">
            <ChevronLeft className="w-4 h-4" />
          </button>
          <div>
            <p className="text-xs text-muted-foreground">{session?.subject_name}</p>
            <p className="text-sm font-medium">Q{currentIndex + 1} / {questions.length}</p>
          </div>
        </div>
        <div className="flex items-center gap-4">
          <span className={`session-timer ${timer.isWarning ? 'warning' : timer.isDanger ? 'danger' : 'text-muted-foreground'}`}>
            <Clock className="inline w-3.5 h-3.5 mr-1" />{timer.formatted}
          </span>
          <span className="text-xs text-muted-foreground">{correct}/{solved} correct</span>
          <button
            onClick={() => setShowCalc(s => !s)}
            id="toggle-calculator"
            className={`p-1.5 rounded-lg transition-colors ${showCalc ? 'bg-emerald-500/20 text-emerald-400' : 'hover:bg-secondary text-muted-foreground'}`}
          >
            <Calculator className="w-4 h-4" />
          </button>
          <button
            onClick={handleFinish}
            id="finish-session"
            className="px-3 py-1.5 rounded-lg bg-red-500/10 border border-red-500/20 text-red-400 text-xs font-medium hover:bg-red-500/20 transition-all"
          >
            Finish
          </button>
        </div>
      </div>

      {/* Main two-column layout */}
      <div className="flex-1 flex overflow-hidden">
        {/* Question area — 70% */}
        <div className="flex-1 overflow-y-auto p-4 lg:p-6">
          <AnimatePresence mode="wait">
            <motion.div
              key={currentIndex}
              initial={{ opacity: 0, x: 10 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -10 }}
              transition={{ duration: 0.2 }}
            >
              {currentQuestion && (
                <>
                  {/* Question meta */}
                  <div className="flex items-center gap-2 mb-4 flex-wrap">
                    <span className="text-xs px-2 py-1 rounded-full bg-muted text-muted-foreground font-mono">GATE {currentQuestion.gate_year}</span>
                    <span className={`text-xs px-2 py-1 rounded-full font-medium ${
                      currentQuestion.marks === 2 ? 'bg-amber-500/15 text-amber-400' : 'bg-blue-500/15 text-blue-400'}`}>
                      {currentQuestion.marks}M
                    </span>
                    <span className="text-xs px-2 py-1 rounded-full bg-muted text-muted-foreground">{currentQuestion.question_type}</span>
                    {currentQuestion.is_controversial && (
                      <span className="text-xs px-2 py-1 rounded-full bg-red-500/10 text-red-400 flex items-center gap-1">
                        ⚠ Disputed
                      </span>
                    )}
                  </div>

                  <QuestionRenderer stem={currentQuestion.question_stem} imageUrl={(currentQuestion as any).image_url} />
                  <AnswerPanel
                    question={currentQuestion}
                    onAnswerChange={setAnswer}
                    disabled={currentQuestion.is_submitted}
                  />

                  {/* Action buttons */}
                  <div className="flex items-center gap-3 mt-6 flex-wrap">
                    {!currentQuestion.is_submitted ? (
                      <button
                        onClick={submitAnswer}
                        id="submit-answer"
                        disabled={!!savingId}
                        className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-emerald-500 hover:bg-emerald-400
                                   text-white text-sm font-semibold transition-all
                                   shadow-[0_0_16px_rgba(16,185,129,0.3)] disabled:opacity-50"
                      >
                        {savingId ? <div className="spinner w-4 h-4" /> : <><CheckSquare className="w-4 h-4" /> Submit <span className="kbd ml-1">S</span></>}
                      </button>
                    ) : (
                      <button
                        onClick={() => setShowSolution(s => !s)}
                        id="toggle-solution"
                        className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-blue-500/20 border border-blue-500/30
                                   text-blue-400 text-sm font-semibold transition-all hover:bg-blue-500/30"
                      >
                        <BookOpen className="w-4 h-4" /> {showSolution ? 'Hide' : 'View'} Solution
                        <span className="kbd ml-1">Space</span>
                      </button>
                    )}
                    <button onClick={markReview} id="mark-review"
                      className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-500/10 border border-violet-500/20
                                 text-violet-400 text-sm transition-all hover:bg-violet-500/20">
                      <Flag className="w-4 h-4" /> Review <span className="kbd ml-1">R</span>
                    </button>
                  </div>

                  {/* Solution drawer */}
                  <AnimatePresence>
                    {showSolution && currentQuestion.is_submitted && (
                      <SolutionDrawer solution={currentQuestion.detailed_solution} isCorrect={currentQuestion.palette_state === 'answered'} />
                    )}
                  </AnimatePresence>
                </>
              )}
            </motion.div>
          </AnimatePresence>
        </div>

        {/* Exam palette sidebar — 30% */}
        <div className="hidden lg:flex flex-col w-72 flex-shrink-0 border-l border-border bg-card overflow-y-auto">
          <ExamPalette
            questions={questions}
            currentIndex={currentIndex}
            onJump={i => { setCurrentIndex(i); setShowSolution(false); }}
          />
          <div className="mt-auto p-4 border-t border-border">
            <div className="flex items-center justify-between mb-3">
              <button onClick={goPrev} disabled={currentIndex === 0}
                id="prev-question"
                className="flex items-center gap-1.5 px-3 py-2 rounded-lg border border-border text-sm
                           hover:bg-secondary transition-all disabled:opacity-40">
                <ChevronLeft className="w-4 h-4" /> Prev <span className="kbd">K</span>
              </button>
              <button onClick={goNext} disabled={currentIndex === questions.length - 1}
                id="next-question"
                className="flex items-center gap-1.5 px-3 py-2 rounded-lg border border-border text-sm
                           hover:bg-secondary transition-all disabled:opacity-40">
                Next <span className="kbd">J</span> <ChevronRight className="w-4 h-4" />
              </button>
            </div>
            <button onClick={handleFinish} id="finish-session-sidebar"
              className="w-full py-2 rounded-lg bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 text-sm font-medium hover:bg-emerald-500/20 transition-all">
              Finish Session
            </button>
          </div>
        </div>
      </div>

      {/* Bottom nav for mobile */}
      <div className="lg:hidden flex-shrink-0 flex items-center justify-between px-4 py-3 border-t border-border bg-card">
        <button onClick={goPrev} disabled={currentIndex === 0} className="p-2 rounded-lg border border-border disabled:opacity-40"><ChevronLeft className="w-5 h-5" /></button>
        <span className="text-sm text-muted-foreground">Q{currentIndex+1}/{questions.length}</span>
        <button onClick={goNext} disabled={currentIndex === questions.length-1} className="p-2 rounded-lg border border-border disabled:opacity-40"><ChevronRight className="w-5 h-5" /></button>
      </div>

      {/* Keyboard shortcut bar */}
      <KeyboardShortcutBar />

      {/* Modals */}
      <AnimatePresence>
        {showMistake && (
          <MistakeModal onSelect={saveMistakeReason} onSkip={() => setShowMistake(false)} />
        )}
      </AnimatePresence>

      {/* Calculator */}
      {showCalc && <CalcPanel onClose={() => setShowCalc(false)} />}
    </div>
  );
}

function SessionComplete({ questions, subjectName, router }: { questions: SessionQuestion[]; subjectName: string; router: any }) {
  const correct   = questions.filter(q => q.palette_state === 'answered' && q.is_submitted).length;
  const incorrect = questions.filter(q => q.palette_state !== 'answered' && q.is_submitted).length;
  const skipped   = questions.filter(q => !q.is_submitted).length;
  const accuracy  = questions.filter(q => q.is_submitted).length > 0
    ? Math.round((correct / questions.filter(q => q.is_submitted).length) * 100) : 0;

  return (
    <div className="flex items-center justify-center h-full p-6">
      <motion.div
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        className="glass-card p-8 max-w-md w-full text-center"
      >
        <div className="text-5xl mb-4">{accuracy >= 80 ? '🏆' : accuracy >= 60 ? '💪' : '📚'}</div>
        <h2 className="text-2xl font-bold mb-1">Session Complete!</h2>
        <p className="text-muted-foreground text-sm mb-6">{subjectName}</p>
        <div className="grid grid-cols-3 gap-4 mb-6">
          {[
            { label: 'Correct', value: correct, color: 'text-emerald-400' },
            { label: 'Wrong', value: incorrect, color: 'text-red-400' },
            { label: 'Skipped', value: skipped, color: 'text-muted-foreground' },
          ].map(s => (
            <div key={s.label} className="bg-muted rounded-xl p-3">
              <p className={`text-2xl font-bold ${s.color}`}>{s.value}</p>
              <p className="text-xs text-muted-foreground mt-1">{s.label}</p>
            </div>
          ))}
        </div>
        <div className="text-4xl font-bold text-gradient mb-2">{accuracy}%</div>
        <p className="text-sm text-muted-foreground mb-6">Accuracy</p>
        <div className="flex gap-3">
          <button onClick={() => router.push('/dashboard')}
            className="flex-1 py-2.5 rounded-xl border border-border text-sm hover:bg-secondary transition-all">
            Back to Subjects
          </button>
          <button onClick={() => router.push('/dashboard/analytics')}
            className="flex-1 py-2.5 rounded-xl bg-emerald-500 text-white text-sm font-semibold hover:bg-emerald-400 transition-all">
            View Analytics
          </button>
        </div>
      </motion.div>
    </div>
  );
}
