# GATE AIR-1 Engine

> The ultimate GATE CSE preparation platform — 25 years of PYQs, Ebbinghaus spaced repetition, Gemini AI coaching, and a TCS iON exam simulator. **Free forever.**

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 📚 **25-Year PYQ Bank** | 2000–2024 · MCQ, MSQ, NAT · KaTeX math · C code highlighting |
| 🧠 **Ebbinghaus Engine** | Auto-schedules Day 7, 21, 45, 90 revision checkpoints |
| 📊 **GATE Readiness Score** | 0–100% per subject with memory decay penalty |
| ⌨️ **Keyboard-First** | J/K navigate · 1-4 select · S submit · R review |
| 🖥 **TCS iON Simulator** | 5-state palette · Draggable calculator · NAT validator |
| 🤖 **Gemini AI Analyst** | Weekly diagnostic — weak topics, speed analysis, prescriptions |
| 🔥 **Streaks & Heatmap** | GitHub-style 365-day activity grid + daily streak tracking |
| 🃏 **Flashcards** | Anki-style decks: TOC, COA, IEEE 754, Algorithms |
| 📁 **Notebooks** | Custom question buckets: Silly Mistakes, Formula Heavy, etc. |
| 🏆 **Leaderboard** | Weekly friends ranking by accuracy + streak + questions solved |

---

## 🚀 Quick Start

### Prerequisites
- **Node.js v20+** — [Download](https://nodejs.org)
- **Supabase account** — [supabase.com](https://supabase.com) (free tier)
- **Vercel account** — [vercel.com](https://vercel.com) (free tier)

### 1. Install dependencies

```bash
npm install
```

### 2. Set up environment variables

```bash
cp .env.local.example .env.local
```

Fill in your values:
- `NEXT_PUBLIC_SUPABASE_URL` — from Supabase project settings → API
- `NEXT_PUBLIC_SUPABASE_ANON_KEY` — from Supabase project settings → API
- `SUPABASE_SERVICE_ROLE_KEY` — from Supabase project settings → API
- `GOOGLE_GENERATIVE_AI_API_KEY` — from [Google AI Studio](https://aistudio.google.com/app/apikey)
- `RESEND_API_KEY` — from [resend.com](https://resend.com) (optional for email)
- `CRON_SECRET` — any random string (e.g. `openssl rand -hex 32`)

### 3. Set up the database

In your Supabase project:
1. Go to **SQL Editor**
2. Run `supabase/migrations/0001_initial_schema.sql`
3. Run `supabase/seed.sql`

### 4. Enable Google Auth (optional)

In Supabase → Authentication → Providers → Google:
- Add your Google OAuth credentials
- Set redirect URL to `http://localhost:3000/auth/callback`

### 5. Run locally

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)

---

## 📦 Tech Stack

| Layer | Technology |
|-------|-----------|
| **Framework** | Next.js 14 (App Router) |
| **Styling** | Tailwind CSS + custom design system |
| **Animation** | Framer Motion |
| **Math** | KaTeX (react-katex) |
| **Code** | Shiki syntax highlighter |
| **Database** | Supabase PostgreSQL |
| **Auth** | Supabase Auth |
| **Realtime** | Supabase Realtime |
| **AI** | Google Gemini (`@google/genai`) |
| **Email** | Resend API |
| **Crons** | Vercel Cron Jobs |
| **Deploy** | Vercel |

---

## 🗄️ Database Schema

```
subjects → chapters → topics → questions
                                     ↓
                              user_progress
                              revision_schedules
                              bucket_items → buckets
                              user_flashcard_progress → flashcards → flashcard_decks
                              battle_participants → battle_rooms
                              friendships
                              user_profiles
                              daily_activity
```

---

## 🌐 Deploy to Vercel

```bash
npm i -g vercel
vercel --prod
```

Add all environment variables in Vercel project settings. The `vercel.json` automatically configures:
- Daily revision check cron at `00:00 UTC`
- Daily email reminder cron at `07:00 UTC`

---

## 📁 Project Structure

```
src/
├── app/
│   ├── page.tsx                    # Landing page
│   ├── (auth)/login|signup/        # Auth pages
│   ├── (dashboard)/
│   │   ├── layout.tsx              # Sidebar layout
│   │   ├── page.tsx                # Subject grid
│   │   ├── subject/[id]/           # Subject hub
│   │   ├── practice/[sessionId]/   # Active session
│   │   ├── analytics/              # GRS + charts
│   │   ├── revision/               # Ebbinghaus hub
│   │   ├── flashcards/             # Anki decks
│   │   ├── buckets/                # Notebooks
│   │   └── leaderboard/            # Rankings
│   └── api/
│       ├── ai-analyst/             # Gemini API
│       ├── cron/revision/          # Ebbinghaus cron
│       └── cron/email/             # Resend cron
├── components/                     # All UI components
├── hooks/                          # useKeyboardSession, useSessionTimer
├── lib/
│   ├── supabase/                   # Client + server
│   ├── grs/calculator.ts           # GRS algorithm
│   └── ebbinghaus/scheduler.ts     # Revision intervals
└── types/index.ts                  # All TypeScript types
```

---

## 📄 License

MIT — Free for all GATE aspirants. Build your AIR-1! 🏆
