import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import remarkReadingTime from 'remark-reading-time';
import rehypeExternalLinks from 'rehype-external-links';

export default defineConfig({
  site: 'https://leins275.xyz',
  trailingSlash: 'always',
  build: { format: 'directory' },
  i18n: {
    locales: ['en', 'ru'],
    defaultLocale: 'en',
    routing: { prefixDefaultLocale: false },
  },
  markdown: {
    shikiConfig: { theme: 'github-dark', wrap: true },
    remarkPlugins: [remarkReadingTime],
    rehypePlugins: [
      [rehypeExternalLinks, { target: '_blank', rel: ['noopener', 'nofollow'] }],
    ],
  },
  integrations: [
    sitemap({
      i18n: { defaultLocale: 'en', locales: { en: 'en-US', ru: 'ru-RU' } },
    }),
  ],
});
