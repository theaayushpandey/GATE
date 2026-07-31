'use client';

import { useEffect, useRef } from 'react';
import { useCallback } from 'react';

export type SessionKey =
  | 'next'        // J
  | 'prev'        // K
  | 'opt_a'       // 1
  | 'opt_b'       // 2
  | 'opt_c'       // 3
  | 'opt_d'       // 4
  | 'submit'      // S
  | 'review'      // R
  | 'calculator'  // C
  | 'solution'    // Space
  | 'escape';     // Esc

type ShortcutMap = Partial<Record<SessionKey, () => void>>;

/**
 * Keyboard shortcut hook for practice sessions.
 * Binds J/K navigation, 1-4 MCQ selection, S/R/C session controls.
 */
export function useKeyboardSession(shortcuts: ShortcutMap, active = true) {
  const shortcutsRef = useRef(shortcuts);
  shortcutsRef.current = shortcuts;

  const handler = useCallback((e: KeyboardEvent) => {
    if (!active) return;

    // Ignore when user is typing in an input/textarea
    const target = e.target as HTMLElement;
    if (target.tagName === 'INPUT' || target.tagName === 'TEXTAREA' || target.isContentEditable) return;

    const map: Record<string, SessionKey> = {
      'j': 'next', 'J': 'next',
      'k': 'prev', 'K': 'prev',
      '1': 'opt_a',
      '2': 'opt_b',
      '3': 'opt_c',
      '4': 'opt_d',
      's': 'submit', 'S': 'submit',
      'r': 'review', 'R': 'review',
      'c': 'calculator', 'C': 'calculator',
      ' ': 'solution',
      'Escape': 'escape',
    };

    const action = map[e.key];
    if (action && shortcutsRef.current[action]) {
      e.preventDefault();
      shortcutsRef.current[action]!();
    }
  }, [active]);

  useEffect(() => {
    window.addEventListener('keydown', handler);
    return () => window.removeEventListener('keydown', handler);
  }, [handler]);
}

// Shortcut labels for UI display
export const SHORTCUT_LABELS: Record<SessionKey, string> = {
  next: 'J',
  prev: 'K',
  opt_a: '1',
  opt_b: '2',
  opt_c: '3',
  opt_d: '4',
  submit: 'S',
  review: 'R',
  calculator: 'C',
  solution: 'Space',
  escape: 'Esc',
};
