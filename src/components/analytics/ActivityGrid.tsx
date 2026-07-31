'use client';

import { useMemo } from 'react';
import { format, subDays, eachDayOfInterval, parseISO } from 'date-fns';

interface DayData { activity_date: string; questions_solved: number }
interface Props { data: DayData[] }

const DAYS_OF_WEEK = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

export function ActivityGrid({ data }: Props) {
  const { grid, maxCount, months } = useMemo(() => {
    const today = new Date();
    const start = subDays(today, 364);
    const days  = eachDayOfInterval({ start, end: today });

    const countMap = new Map<string, number>();
    data.forEach(d => countMap.set(d.activity_date, d.questions_solved));

    const max = Math.max(...data.map(d => d.questions_solved), 1);

    // Build weeks (columns)
    const weeks: { date: string; count: number; dayOfWeek: number }[][] = [];
    let currentWeek: any[] = [];

    // Pad start to Sunday
    const startDow = start.getDay();
    for (let i = 0; i < startDow; i++) currentWeek.push(null);

    days.forEach(day => {
      const dateStr = format(day, 'yyyy-MM-dd');
      currentWeek.push({ date: dateStr, count: countMap.get(dateStr) ?? 0, dayOfWeek: day.getDay() });
      if (currentWeek.length === 7) { weeks.push(currentWeek); currentWeek = []; }
    });
    if (currentWeek.length) weeks.push(currentWeek);

    // Month labels
    const monthLabels: { label: string; weekIndex: number }[] = [];
    let lastMonth = -1;
    weeks.forEach((week, i) => {
      const firstReal = week.find(d => d !== null);
      if (firstReal) {
        const m = parseISO(firstReal.date).getMonth();
        if (m !== lastMonth) { monthLabels.push({ label: format(parseISO(firstReal.date), 'MMM'), weekIndex: i }); lastMonth = m; }
      }
    });

    return { grid: weeks, maxCount: max, months: monthLabels };
  }, [data]);

  function level(count: number): string {
    if (count === 0) return 'level-0';
    const pct = count / maxCount;
    if (pct < 0.25) return 'level-1';
    if (pct < 0.5)  return 'level-2';
    if (pct < 0.75) return 'level-3';
    return 'level-4';
  }

  const totalThisYear = data.reduce((s, d) => s + d.questions_solved, 0);
  const activeDays = data.filter(d => d.questions_solved > 0).length;

  return (
    <div>
      <div className="flex items-center gap-4 text-xs text-muted-foreground mb-3">
        <span><strong className="text-foreground">{totalThisYear.toLocaleString()}</strong> questions solved</span>
        <span><strong className="text-foreground">{activeDays}</strong> active days</span>
      </div>

      <div className="overflow-x-auto no-scrollbar">
        <div className="inline-block">
          {/* Month labels */}
          <div className="flex gap-1 mb-1 pl-8">
            {grid.map((_, i) => {
              const monthLabel = months.find(m => m.weekIndex === i);
              return (
                <div key={i} className="w-3 text-[9px] text-muted-foreground">
                  {monthLabel?.label ?? ''}
                </div>
              );
            })}
          </div>

          <div className="flex gap-1">
            {/* Day labels */}
            <div className="flex flex-col gap-1 pr-1">
              {DAYS_OF_WEEK.map((d, i) => (
                <div key={d} className={`h-3 text-[9px] text-muted-foreground flex items-center ${i % 2 === 0 ? '' : 'opacity-0'}`}>
                  {d[0]}
                </div>
              ))}
            </div>

            {/* Heat cells */}
            {grid.map((week, wi) => (
              <div key={wi} className="flex flex-col gap-1">
                {week.map((day, di) => (
                  <div
                    key={di}
                    className={`heat-cell ${day ? level(day.count) : 'level-0 opacity-0'}`}
                    title={day ? `${day.date}: ${day.count} questions` : ''}
                  />
                ))}
              </div>
            ))}
          </div>

          {/* Legend */}
          <div className="flex items-center gap-1 mt-2 justify-end">
            <span className="text-[10px] text-muted-foreground mr-1">Less</span>
            {['level-0','level-1','level-2','level-3','level-4'].map(l => (
              <div key={l} className={`heat-cell ${l}`} />
            ))}
            <span className="text-[10px] text-muted-foreground ml-1">More</span>
          </div>
        </div>
      </div>
    </div>
  );
}
