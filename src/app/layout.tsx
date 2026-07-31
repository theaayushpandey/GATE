import type { Metadata } from 'next';
import { Inter, JetBrains_Mono } from 'next/font/google';
import './globals.css';
import { Toaster } from 'react-hot-toast';

const inter = Inter({
  subsets: ['latin'],
  variable: '--font-inter',
  display: 'swap',
});

const jetbrains = JetBrains_Mono({
  subsets: ['latin'],
  variable: '--font-jetbrains',
  display: 'swap',
});

export const metadata: Metadata = {
  title: { default: 'GATE AIR-1 Engine', template: '%s | GATE AIR-1 Engine' },
  description: 'The ultimate GATE CSE preparation platform — 25 years of PYQs, Ebbinghaus revision engine, gamified learning, and AI-powered analytics.',
  keywords: ['GATE CSE', 'GATE preparation', 'PYQ', 'Previous Year Questions', 'IIT', 'GATE 2025'],
  authors: [{ name: 'GATE AIR-1 Engine' }],
  openGraph: {
    title: 'GATE AIR-1 Engine',
    description: 'Ace GATE CSE with 25 years of PYQs, spaced repetition, and AI analytics.',
    type: 'website',
  },
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={`${inter.variable} ${jetbrains.variable} antialiased`}>
        {children}
        <Toaster
          position="bottom-right"
          toastOptions={{
            style: {
              background: '#1e1e28',
              color: '#EDEDF0',
              border: '1px solid #2a2a38',
              borderRadius: '12px',
              fontSize: '14px',
              fontFamily: 'Inter, sans-serif',
            },
            success: { iconTheme: { primary: '#22c55e', secondary: '#fff' } },
            error:   { iconTheme: { primary: '#ef4444', secondary: '#fff' } },
          }}
        />
      </body>
    </html>
  );
}
