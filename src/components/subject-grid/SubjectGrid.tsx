'use client';

import { useMemo } from 'react';
import { SubjectCard } from './SubjectCard';
import { calculateGRS } from '@/lib/grs/calculator';
import type { Subject, SubjectGRS } from '@/types';

interface SubjectGridProps {
  subjects: Subject[];
  progressData: any[];
}

export function SubjectGrid({ subjects, progressData }: SubjectGridProps) {
  const grsMap = useMemo<Map<string, SubjectGRS>>(() => {
    const map = new Map<string, SubjectGRS>();
    subjects.forEach(subject => {
      const subjectProgress = progressData.filter((p: any) => p.questions?.subject_id === subject.id);
      const solved    = subjectProgress.filter((p: any) => p.status !== 'unattempted').length;
      const correct   = subjectProgress.filter((p: any) => p.status === 'correct').length;
      const c1mark    = subjectProgress.filter((p: any) => p.status === 'correct' && p.questions?.marks === 1).length;
      const t1mark    = subjectProgress.filter((p: any) => p.questions?.marks === 1).length;
      const c2mark    = subjectProgress.filter((p: any) => p.status === 'correct' && p.questions?.marks === 2).length;
      const t2mark    = subjectProgress.filter((p: any) => p.questions?.marks === 2).length;
      const cNatMsq   = subjectProgress.filter((p: any) => p.status === 'correct' && ['NAT','MSQ'].includes(p.questions?.question_type)).length;
      const tNatMsq   = subjectProgress.filter((p: any) => ['NAT','MSQ'].includes(p.questions?.question_type)).length;
      const lastSolved = subjectProgress.reduce((latest: Date | null, p: any) => {
        if (!p.solved_at) return latest;
        const d = new Date(p.solved_at);
        return !latest || d > latest ? d : latest;
      }, null);

      const result = calculateGRS({
        total_pyqs: subject.total_pyqs,
        solved_pyqs: solved,
        correct_1mark: c1mark,   total_1mark: t1mark,
        correct_2mark: c2mark,   total_2mark: t2mark,
        correct_nat_msq: cNatMsq, total_nat_msq: tNatMsq,
        last_practiced_at: lastSolved,
      });

      map.set(subject.id, {
        ...result,
        subject_id: subject.id,
        subject_name: subject.name,
      });
    });
    return map;
  }, [subjects, progressData]);

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
      {subjects.map((subject, i) => (
        <SubjectCard
          key={subject.id}
          subject={subject}
          grs={grsMap.get(subject.id)}
          index={i}
        />
      ))}
    </div>
  );
}
