import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import remarkReadingTime from 'remark-reading-time';
import rehypeExternalLinks from 'rehype-external-links';
import remarkStripDuplicateTitle from './src/remark/strip-duplicate-title.mjs';

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
    remarkPlugins: [remarkStripDuplicateTitle, remarkReadingTime],
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
