'use client';

import { SHORTCUT_LABELS } from '@/hooks/useKeyboardSession';

const SHORTCUTS = [
  { key: 'J', label: 'Next' },
  { key: 'K', label: 'Prev' },
  { key: '1-4', label: 'Select option' },
  { key: 'S', label: 'Submit' },
  { key: 'R', label: 'Review' },
  { key: 'C', label: 'Calculator' },
  { key: 'Space', label: 'Solution' },
  { key: 'Esc', label: 'Close' },
];

export function KeyboardShortcutBar() {
  return (
    <div className="hidden lg:flex items-center justify-center gap-4 px-4 py-2 border-t border-border bg-card/80 flex-shrink-0">
      {SHORTCUTS.map(s => (
        <div key={s.key} className="flex items-center gap-1.5">
          <kbd className="kbd">{s.key}</kbd>
          <span className="text-[11px] text-muted-foreground">{s.label}</span>
        </div>
      ))}
    </div>
  );
}
