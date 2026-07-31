'use client';

import { useState, useRef } from 'react';
import Draggable from 'react-draggable';
import { motion } from 'framer-motion';
import { X, GripHorizontal } from 'lucide-react';

interface Props { onClose: () => void }

const BUTTONS = [
  ['MC', 'MR', 'M+', 'M-'],
  ['C',  'CE', '%',  '÷'],
  ['7',  '8',  '9',  '×'],
  ['4',  '5',  '6',  '−'],
  ['1',  '2',  '3',  '+'],
  ['0',  '.',  '±',  '='],
  ['√',  'x²', '1/x','log'],
  ['sin','cos','tan', 'π'],
];

export function Calculator({ onClose }: Props) {
  const [display, setDisplay] = useState('0');
  const [memory, setMemory] = useState(0);
  const [expression, setExpression] = useState('');
  const nodeRef = useRef<HTMLDivElement>(null);

  function handleButton(btn: string) {
    setDisplay(prev => {
      if (btn === 'C')   { setExpression(''); return '0'; }
      if (btn === 'CE')  return '0';
      if (btn === '=') {
        try {
          const expr = expression + prev;
          // Safe eval replacement
          const result = evalExpression(expr);
          setExpression('');
          return String(result);
        } catch { return 'Error'; }
      }
      if (btn === '÷' || btn === '×' || btn === '−' || btn === '+') {
        setExpression(prev + opSymbol(btn));
        return '0';
      }
      if (btn === 'MC') { setMemory(0); return prev; }
      if (btn === 'MR') return String(memory);
      if (btn === 'M+') { setMemory(m => m + parseFloat(prev)); return prev; }
      if (btn === 'M-') { setMemory(m => m - parseFloat(prev)); return prev; }
      if (btn === '√')  return String(Math.sqrt(parseFloat(prev)));
      if (btn === 'x²') return String(Math.pow(parseFloat(prev), 2));
      if (btn === '1/x')return String(1 / parseFloat(prev));
      if (btn === 'log') return String(Math.log10(parseFloat(prev)));
      if (btn === 'sin') return String(Math.sin(parseFloat(prev) * Math.PI / 180));
      if (btn === 'cos') return String(Math.cos(parseFloat(prev) * Math.PI / 180));
      if (btn === 'tan') return String(Math.tan(parseFloat(prev) * Math.PI / 180));
      if (btn === 'π')   return String(Math.PI.toFixed(8));
      if (btn === '±')   return String(-parseFloat(prev));
      if (btn === '%')   return String(parseFloat(prev) / 100);
      if (btn === '.')   return prev.includes('.') ? prev : prev + '.';
      if (prev === '0' || prev === 'Error') return btn;
      return prev + btn;
    });
  }

  function opSymbol(op: string): string {
    return { '÷': '/', '×': '*', '−': '-', '+': '+' }[op] ?? op;
  }

  function evalExpression(expr: string): number {
    // Safe arithmetic: only allow digits, operators, dots
    if (!/^[\d+\-*/.() ]+$/.test(expr)) throw new Error('Invalid');
    return Function(`"use strict"; return (${expr})`)() as number;
  }

  const isOpBtn = (b: string) => ['÷','×','−','+','='].includes(b);
  const isFnBtn = (b: string) => ['√','x²','1/x','log','sin','cos','tan','π','%','±'].includes(b);
  const isMemBtn = (b: string) => ['MC','MR','M+','M-'].includes(b);
  const isClearBtn = (b: string) => b === 'C' || b === 'CE';

  return (
    <Draggable nodeRef={nodeRef} handle=".drag-handle" bounds="parent">
      <div ref={nodeRef} className="calculator-panel w-72" id="virtual-calculator">
        {/* Title bar */}
        <div className="drag-handle flex items-center justify-between px-4 py-3 border-b border-border cursor-grab active:cursor-grabbing">
          <div className="flex items-center gap-2">
            <GripHorizontal className="w-4 h-4 text-muted-foreground" />
            <span className="text-xs font-semibold text-muted-foreground">TCS iON Calculator</span>
          </div>
          <button onClick={onClose} className="p-1 rounded hover:bg-secondary transition-colors">
            <X className="w-3.5 h-3.5 text-muted-foreground" />
          </button>
        </div>

        {/* Display */}
        <div className="px-4 py-3 border-b border-border">
          <div className="text-right">
            {expression && <p className="text-xs text-muted-foreground font-mono">{expression}</p>}
            <p className="text-2xl font-bold font-mono text-foreground truncate" id="calc-display">{display}</p>
          </div>
          {memory !== 0 && (
            <p className="text-[10px] text-emerald-400 text-right">M: {memory}</p>
          )}
        </div>

        {/* Button grid */}
        <div className="p-3 grid grid-cols-4 gap-1.5">
          {BUTTONS.flat().map((btn, i) => (
            <motion.button
              key={`${btn}-${i}`}
              id={`calc-btn-${btn.replace(/[^a-z0-9]/gi, '')}`}
              onClick={() => handleButton(btn)}
              whileTap={{ scale: 0.92 }}
              className={`py-2.5 rounded-lg text-sm font-medium transition-colors
                ${btn === '='
                  ? 'bg-emerald-500 text-white hover:bg-emerald-400 col-span-1'
                  : isOpBtn(btn)
                  ? 'bg-amber-500/20 text-amber-400 hover:bg-amber-500/30 border border-amber-500/20'
                  : isMemBtn(btn)
                  ? 'bg-violet-500/15 text-violet-400 hover:bg-violet-500/25 text-xs'
                  : isClearBtn(btn)
                  ? 'bg-red-500/15 text-red-400 hover:bg-red-500/25'
                  : isFnBtn(btn)
                  ? 'bg-blue-500/10 text-blue-400 hover:bg-blue-500/20 text-xs'
                  : 'bg-muted text-foreground hover:bg-secondary'}`}
            >
              {btn}
            </motion.button>
          ))}
        </div>
      </div>
    </Draggable>
  );
}
