'use client';

import { useState, useEffect, useRef, useCallback } from 'react';

interface TimerOptions {
  mode: 'up' | 'down';
  initialSeconds?: number; // for countdown
  onExpire?: () => void;
}

export function useSessionTimer({ mode, initialSeconds = 0, onExpire }: TimerOptions) {
  const [seconds, setSeconds] = useState(mode === 'down' ? initialSeconds : 0);
  const [isRunning, setIsRunning] = useState(true);
  const intervalRef = useRef<NodeJS.Timeout | null>(null);
  const onExpireRef = useRef(onExpire);
  onExpireRef.current = onExpire;

  useEffect(() => {
    if (!isRunning) return;
    intervalRef.current = setInterval(() => {
      setSeconds(s => {
        if (mode === 'down') {
          if (s <= 1) {
            clearInterval(intervalRef.current!);
            onExpireRef.current?.();
            return 0;
          }
          return s - 1;
        }
        return s + 1;
      });
    }, 1000);
    return () => clearInterval(intervalRef.current!);
  }, [isRunning, mode]);

  const pause = useCallback(() => setIsRunning(false), []);
  const resume = useCallback(() => setIsRunning(true), []);
  const reset = useCallback(() => setSeconds(mode === 'down' ? initialSeconds : 0), [mode, initialSeconds]);

  const formatted = (() => {
    const h = Math.floor(seconds / 3600);
    const m = Math.floor((seconds % 3600) / 60);
    const s = seconds % 60;
    if (h > 0) return `${h}:${String(m).padStart(2,'0')}:${String(s).padStart(2,'0')}`;
    return `${String(m).padStart(2,'0')}:${String(s).padStart(2,'0')}`;
  })();

  const isWarning = mode === 'down' && seconds <= 300 && seconds > 60;
  const isDanger  = mode === 'down' && seconds <= 60;

  return { seconds, formatted, isRunning, isWarning, isDanger, pause, resume, reset };
}
