'use client';

import { motion } from 'framer-motion';
import { Calculator, GitBranch, Cpu, Server, Code2, Zap, Infinity, Wrench, Layers, Database, Network, TrendingUp, Award, Clock, BookOpen } from 'lucide-react';
import Link from 'next/link';
import type { Subject, SubjectGRS } from '@/types';
import { GRS_BADGE_CONFIG } from '@/lib/grs/calculator';

// Static subject icon map
const ICON_MAP: Record<string, React.ComponentType<{ className?: string }>> = {
  Calculator, GitBranch, Cpu, Server, Code2, Zap, Infinity, Wrench, Layers, Database, Network,
};

interface SubjectCardProps {
  subject: Subject;
  grs?: SubjectGRS;
  index: number;
}

export function SubjectCard({ subject, grs, index }: SubjectCardProps) {
  const Icon = ICON_MAP[subject.icon_name ?? 'BookOpen'] ?? BookOpen;
  const score = grs?.grs ?? 0;
  const badge = grs?.badge ?? 'building';
  const badgeConfig = GRS_BADGE_CONFIG[badge];
  const completion = grs?.pyq_completion ?? 0;
  const isAir1 = badge === 'air1_ready';

  // SVG arc for GRS gauge
  const radius = 22;
  const circ = 2 * Math.PI * radius;
  const arc = (score / 100) * circ;
  const scoreColor = score >= 90 ? '#10b981' : score >= 75 ? '#3b82f6' : score >= 50 ? '#f59e0b' : '#ef4444';

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.35, delay: index * 0.05 }}
      whileHover={{ y: -4, transition: { duration: 0.2 } }}
    >
      <Link href={`/dashboard/subject/${subject.id}`} id={`subject-card-${subject.id}`}>
        <div className={`subject-card group ${isAir1 ? 'air1-ready' : ''}`}>
          {/* Shimmer overlay on hover */}
          <div className="absolute inset-0 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none">
            <div className="absolute inset-0 shimmer-bg rounded-xl" />
          </div>

          {/* Header row */}
          <div className="flex items-start justify-between mb-4 relative z-10">
            <div className="flex items-center gap-3">
              <div
                className="w-10 h-10 rounded-xl flex items-center justify-center flex-shrink-0"
                style={{ background: `${subject.color_hex}20`, border: `1px solid ${subject.color_hex}40` }}
              >
                <Icon className="w-5 h-5" style={{ color: subject.color_hex }} />
              </div>
              <div>
                <h3 className="text-sm font-semibold text-foreground leading-tight line-clamp-2">
                  {subject.name}
                </h3>
                <span className="text-[11px] text-muted-foreground">{subject.short_name}</span>
              </div>
            </div>

            {/* GRS Gauge */}
            <div className="flex-shrink-0 relative">
              <svg width="56" height="56" viewBox="0 0 56 56">
                {/* Background ring */}
                <circle cx="28" cy="28" r={radius}
                  fill="none" stroke="hsl(217 19% 16%)" strokeWidth="4"
                  strokeDasharray={circ} strokeDashoffset="0"
                  strokeLinecap="round"
                  transform="rotate(-90 28 28)"
                />
                {/* Progress ring */}
                <motion.circle
                  cx="28" cy="28" r={radius}
                  fill="none" stroke={scoreColor} strokeWidth="4"
                  strokeLinecap="round"
                  strokeDasharray={circ}
                  initial={{ strokeDashoffset: circ }}
                  animate={{ strokeDashoffset: circ - arc }}
                  transition={{ duration: 1, delay: index * 0.05 + 0.3, ease: 'easeOut' }}
                  transform="rotate(-90 28 28)"
                />
                {/* Score text */}
                <text x="28" y="28" dominantBaseline="central" textAnchor="middle"
                  className="font-bold" style={{ fill: scoreColor, fontSize: '12px', fontFamily: 'Inter, sans-serif', fontWeight: 700 }}>
                  {score}
                </text>
              </svg>
            </div>
          </div>

          {/* Badge */}
          <div className="relative z-10 mb-3">
            <span className={`inline-flex items-center gap-1 text-[10px] font-semibold px-2 py-0.5 rounded-full border ${badgeConfig.bg} ${badgeConfig.color}`}>
              {badgeConfig.emoji} {badgeConfig.label}
            </span>
          </div>

          {/* Stats row */}
          <div className="flex items-center gap-3 text-[11px] text-muted-foreground mb-3 relative z-10">
            <span className="flex items-center gap-1">
              <BookOpen className="w-3 h-3" />
              {subject.total_pyqs} PYQs
            </span>
            <span className="flex items-center gap-1">
              <TrendingUp className="w-3 h-3" />
              {subject.weightage_percentage}%
            </span>
            <span className="flex items-center gap-1">
              <Award className="w-3 h-3" />
              2000–2024
            </span>
          </div>

          {/* Progress bar */}
          <div className="relative z-10">
            <div className="flex items-center justify-between text-[10px] text-muted-foreground mb-1">
              <span>Completion</span>
              <span className="font-medium" style={{ color: subject.color_hex }}>{completion}%</span>
            </div>
            <div className="progress-bar">
              <motion.div
                className="h-full rounded-full"
                style={{ background: `linear-gradient(90deg, ${subject.color_hex}99, ${subject.color_hex})` }}
                initial={{ width: 0 }}
                animate={{ width: `${completion}%` }}
                transition={{ duration: 0.8, delay: index * 0.05 + 0.2, ease: 'easeOut' }}
              />
            </div>
          </div>
        </div>
      </Link>
    </motion.div>
  );
}
