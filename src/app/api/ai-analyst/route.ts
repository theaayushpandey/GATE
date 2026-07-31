import { NextRequest, NextResponse } from 'next/server';
import { GoogleGenerativeAI } from '@google/generative-ai';

export async function POST(req: NextRequest) {
  const { userId, recentProgress } = await req.json();

  if (!process.env.GOOGLE_GENERATIVE_AI_API_KEY) {
    return NextResponse.json({ error: 'Gemini API key not configured' }, { status: 500 });
  }

  // Summarise progress for the prompt
  const solved   = recentProgress.length;
  const correct  = recentProgress.filter((p: any) => p.status === 'correct').length;
  const accuracy = solved > 0 ? Math.round((correct / solved) * 100) : 0;

  // Aggregate by subject
  const subjectMap: Record<string, { solved: number; correct: number }> = {};
  recentProgress.forEach((p: any) => {
    const subj = p.questions?.subjects?.name ?? 'Unknown';
    if (!subjectMap[subj]) subjectMap[subj] = { solved: 0, correct: 0 };
    subjectMap[subj].solved++;
    if (p.status === 'correct') subjectMap[subj].correct++;
  });

  // Mistake summary
  const mistakeMap: Record<string, number> = {};
  recentProgress.filter((p: any) => p.mistake_reason && p.mistake_reason !== 'none').forEach((p: any) => {
    mistakeMap[p.mistake_reason] = (mistakeMap[p.mistake_reason] ?? 0) + 1;
  });

  // Average time per question
  const avgTime = recentProgress.reduce((s: number, p: any) => s + (p.time_taken_seconds ?? 0), 0) / (solved || 1);

  const prompt = `You are an expert GATE CSE coaching AI. Analyse this student's past week of practice and generate a concise diagnostic report.

STUDENT STATS (Last 7 days):
- Total questions solved: ${solved}
- Accuracy: ${accuracy}%
- Average time per question: ${Math.round(avgTime)} seconds
- Subject breakdown: ${JSON.stringify(subjectMap, null, 2)}
- Mistake reasons: ${JSON.stringify(mistakeMap, null, 2)}

Generate a JSON response with these exact keys:
{
  "weak_subtopics": ["list of 3-5 specific sub-topics that need attention based on accuracy patterns"],
  "speed_accuracy_note": "One paragraph analysis of their speed vs accuracy tradeoff. Be specific and actionable.",
  "prescribed_buckets": ["4-5 specific practice recommendations for next week with details like: 'Practice 20 NAT questions from OS Virtual Memory (focus on LRU, OPT algorithms)'"],
  "overall_recommendation": "One encouraging but honest 2-3 sentence summary of their week and what to focus on next.",
  "generated_at": "${new Date().toISOString()}"
}

Be specific to GATE CSE. Use real topic names from the syllabus. Be encouraging but honest.`;

  try {
    const genAI = new GoogleGenerativeAI(process.env.GOOGLE_GENERATIVE_AI_API_KEY!);
    const model = genAI.getGenerativeModel({ model: 'gemini-1.5-flash' });

    const result = await model.generateContent(prompt);
    const text = result.response.text();

    // Extract JSON from response
    const jsonMatch = text.match(/\{[\s\S]*\}/);
    if (!jsonMatch) throw new Error('Invalid response format');

    const report = JSON.parse(jsonMatch[0]);
    return NextResponse.json(report);
  } catch (err) {
    console.error('Gemini error:', err);
    // Return a fallback report if Gemini fails
    return NextResponse.json({
      weak_subtopics: ['OS Virtual Memory', 'COA Pipelining', 'Graph Algorithms', 'DBMS Normalization'],
      speed_accuracy_note: `You solved ${solved} questions at ${accuracy}% accuracy with an average of ${Math.round(avgTime)}s per question. Focus on accuracy over speed — aim for 80%+ before increasing pace.`,
      prescribed_buckets: [
        'Practice 15 OS Page Replacement questions (LRU, OPT, FIFO comparisons)',
        'Redo 10 COA cache/pipeline PYQs from 2018-2023',
        'Solve all GATE 2020-2023 Graph Algorithm 2-mark questions',
        'Complete 1 full timed mock on Algorithm complexity (30 questions, 60 min)',
      ],
      overall_recommendation: `Good effort this week! With ${accuracy}% accuracy on ${solved} questions, you're building momentum. Focus this week on your weakest subjects and aim for consistency over quantity.`,
      generated_at: new Date().toISOString(),
    });
  }
}
