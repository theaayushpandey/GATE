import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { FlashcardStudio } from '@/components/flashcards/FlashcardStudio';

export const metadata: Metadata = { title: 'Flashcards' };
export const dynamic = 'force-dynamic';

export default async function FlashcardsPage() {
  const supabase = createClient();
  const { data: { user } } = await supabase.auth.getUser();

  const [{ data: decks }, { data: progressData }] = await Promise.all([
    supabase.from('flashcard_decks').select('*, flashcards(*)').order('is_builtin', { ascending: false }),
    user ? supabase.from('user_flashcard_progress').select('*').eq('user_id', user.id) : Promise.resolve({ data: [] }),
  ]);

  return (
    <div className="p-6 lg:p-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold">Anki-Style Flashcards</h1>
        <p className="text-muted-foreground text-sm mt-1">Active recall decks for TOC, COA, IEEE 754, Algorithms & more</p>
      </div>
      <FlashcardStudio decks={decks ?? []} progressData={progressData ?? []} />
    </div>
  );
}
