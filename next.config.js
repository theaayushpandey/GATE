/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      { protocol: 'https', hostname: '*.supabase.co' },
    ],
  },
  // Allow client components to use 'use client' directive properly
  transpilePackages: ['react-katex'],
};

module.exports = nextConfig;
