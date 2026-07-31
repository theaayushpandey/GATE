'use client';

import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Brain, ChevronLeft, ChevronRight, RotateCcw, CheckCircle2, XCircle, Minus } from 'lucide-react';
import { InlineMath, BlockMath } from 'react-katex';
import { createClient } from '@/lib/supabase/client';
import toast from 'react-hot-toast';

interface Props { decks: any[]; progressData: any[] }

export function FlashcardStudio({ decks, progressData }: Props) {
  const [selectedDeck, setSelectedDeck] = useState<any | null>(null);
  const [cardIndex, setCardIndex] = useState(0);
  const [isFlipped, setIsFlipped] = useState(false);
  const supabase = createClient();

  const cards = selectedDeck?.flashcards ?? [];
  const currentCard = cards[cardIndex];

  async function rateDifficulty(difficulty: 'easy' | 'hard' | 'again') {
    if (!currentCard) return;
    const { data: { user } } = await supabase.auth.getUser();
    const nextReview = difficulty === 'easy'
      ? new Date(Date.now() + 7 * 86400000)   // 7 days
      : difficulty === 'hard'
      ? new Date(Date.now() + 1 * 86400000)   // 1 day
      : new Date(Date.now() + 10 * 60000);    // 10 min
    if (user) {
      await supabase.from('user_flashcard_progress').upsert({
        user_id: user.id, flashcard_id: currentCard.id,
        difficulty, next_review: nextReview.toISOString(),
        review_count: 1,
      });
    }
    const colors = { easy: 'text-emerald-400', hard: 'text-amber-400', again: 'text-red-400' };
    toast(`Rated: ${difficulty.toUpperCase()}`, { icon: difficulty === 'easy' ? '✅' : difficulty === 'hard' ? '⚠️' : '🔄' });
    setIsFlipped(false);
    setTimeout(() => {
      if (cardIndex < cards.length - 1) setCardIndex(i => i + 1);
      else { setSelectedDeck(null); setCardIndex(0); toast.success('🎉 Deck complete!'); }
    }, 300);
  }

  if (!selectedDeck) {
    return (
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {decks.map((deck: any, i: number) => {
          const count = deck.flashcards?.length ?? 0;
          const done  = progressData.filter(p => deck.flashcards?.some((f: any) => f.id === p.flashcard_id)).length;
          return (
            <motion.button
              key={deck.id}
              id={`deck-${deck.id}`}
              initial={{ opacity: 0, y: 16 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.06 }}
              onClick={() => { setSelectedDeck(deck); setCardIndex(0); setIsFlipped(false); }}
              whileHover={{ y: -3 }}
              className="glass-card p-5 text-left group hover:border-white/10 transition-all cursor-pointer"
            >
              <div className="text-3xl mb-3">
                {deck.name.includes('TOC') ? '🤖' : deck.name.includes('COA') ? '⚙️' :
                 deck.name.includes('IEEE') ? '🔢' : deck.name.includes('Discrete') ? '∿' :
                 deck.name.includes('OS') ? '💾' : '⚡'}
              </div>
              <h3 className="text-sm font-semibold text-foreground mb-1">{deck.name}</h3>
              <div className="flex items-center justify-between mt-3">
                <span className="text-xs text-muted-foreground">{count} cards</span>
                <div className="text-xs text-emerald-400">{done}/{count} reviewed</div>
              </div>
              <div className="progress-bar mt-2">
                <div className="h-full rounded-full bg-emerald-500" style={{ width: `${count > 0 ? (done/count)*100 : 0}%` }} />
              </div>
              <div className="flex items-center gap-1 mt-3 text-xs text-emerald-400 opacity-0 group-hover:opacity-100 transition-opacity">
                Study now <ChevronRight className="w-3.5 h-3.5" />
              </div>
            </motion.button>
          );
        })}
      </div>
    );
  }

  return (
    <div className="max-w-2xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <button onClick={() => { setSelectedDeck(null); setCardIndex(0); }} className="flex items-center gap-1.5 text-sm text-muted-foreground hover:text-foreground transition-colors">
          <ChevronLeft className="w-4 h-4" /> Decks
        </button>
        <div className="text-center">
          <h2 className="text-sm font-semibold">{selectedDeck.name}</h2>
          <p className="text-xs text-muted-foreground">{cardIndex + 1} / {cards.length}</p>
        </div>
        <div className="w-20" />
      </div>

      {/* Progress */}
      <div className="progress-bar mb-6">
        <div className="h-full rounded-full bg-gradient-to-r from-emerald-600 to-emerald-400 transition-all duration-500"
          style={{ width: `${((cardIndex) / cards.length) * 100}%` }} />
      </div>

      {/* Flashcard */}
      {currentCard && (
        <div className="flashcard-scene" style={{ height: 280 }}>
          <div className={`flashcard-inner ${isFlipped ? 'flipped' : ''}`} onClick={() => setIsFlipped(f => !f)}>
            {/* Front */}
            <div className="flashcard-front glass-card flex flex-col items-center justify-center p-8 cursor-pointer">
              <div className="text-[11px] text-emerald-400 font-medium uppercase tracking-wide mb-4">Question</div>
              <div className="text-center text-base leading-relaxed">
                <LatexText text={currentCard.front} />
              </div>
              {!isFlipped && (
                <div className="absolute bottom-4 text-xs text-muted-foreground">Click to reveal answer</div>
              )}
            </div>
            {/* Back */}
            <div className="flashcard-back glass-card border-emerald-500/20 bg-emerald-500/5 flex flex-col items-center justify-center p-8 cursor-pointer">
              <div className="text-[11px] text-emerald-400 font-medium uppercase tracking-wide mb-4">Answer</div>
              <div className="text-center text-sm leading-relaxed overflow-y-auto max-h-40 w-full">
                <LatexText text={currentCard.back} />
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Rating buttons */}
      <AnimatePresence>
        {isFlipped && (
          <motion.div
            initial={{ opacity: 0, y: 12 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0 }}
            className="flex gap-3 mt-6"
          >
            <button onClick={() => rateDifficulty('again')}
              id="fc-again"
              className="flex-1 flex flex-col items-center gap-1 py-3 rounded-xl bg-red-500/10 border border-red-500/20 hover:bg-red-500/20 transition-all">
              <RotateCcw className="w-4 h-4 text-red-400" />
              <span className="text-xs font-medium text-red-400">Again</span>
              <span className="text-[10px] text-muted-foreground">10 min</span>
            </button>
            <button onClick={() => rateDifficulty('hard')}
              id="fc-hard"
              className="flex-1 flex flex-col items-center gap-1 py-3 rounded-xl bg-amber-500/10 border border-amber-500/20 hover:bg-amber-500/20 transition-all">
              <Minus className="w-4 h-4 text-amber-400" />
              <span className="text-xs font-medium text-amber-400">Hard</span>
              <span className="text-[10px] text-muted-foreground">1 day</span>
            </button>
            <button onClick={() => rateDifficulty('easy')}
              id="fc-easy"
              className="flex-1 flex flex-col items-center gap-1 py-3 rounded-xl bg-emerald-500/10 border border-emerald-500/20 hover:bg-emerald-500/20 transition-all">
              <CheckCircle2 className="w-4 h-4 text-emerald-400" />
              <span className="text-xs font-medium text-emerald-400">Easy</span>
              <span className="text-[10px] text-muted-foreground">7 days</span>
            </button>
          </motion.div>
        )}
      </AnimatePresence>

      {!isFlipped && (
        <div className="flex justify-center mt-6">
          <button onClick={() => setIsFlipped(true)}
            id="reveal-answer"
            className="px-8 py-2.5 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-white text-sm font-semibold transition-all">
            Reveal Answer
          </button>
        </div>
      )}
    </div>
  );
}

function LatexText({ text }: { text: string }) {
  const parts = text.split(/(\$\$[\s\S]+?\$\$|\$[^$]+\$|\n)/g);
  return (
    <>
      {parts.map((part, i) => {
        if (part.startsWith('$$') && part.endsWith('$$')) return <div key={i} className="my-2"><BlockMath math={part.slice(2,-2)} /></div>;
        if (part.startsWith('$') && part.endsWith('$')) return <InlineMath key={i} math={part.slice(1,-1)} />;
        if (part === '\n') return <br key={i} />;
        // Bold text
        const boldParts = part.split(/(\*\*[^*]+\*\*)/g);
        return <span key={i}>{boldParts.map((bp, j) =>
          bp.startsWith('**') && bp.endsWith('**')
            ? <strong key={j}>{bp.slice(2,-2)}</strong>
            : <span key={j}>{bp}</span>
        )}</span>;
      })}
    </>
  );
}
