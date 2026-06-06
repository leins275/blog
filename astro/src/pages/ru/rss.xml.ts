import rss from '@astrojs/rss';
import type { APIContext } from 'astro';
import { listPosts, postUrl } from '../../lib/posts';

export async function GET(context: APIContext) {
  const posts = await listPosts('ru');
  return rss({
    title: 'leins275 — Записи',
    description: 'Заметки об инженерии, фокусе и искусстве делать меньше, но лучше.',
    site: context.site!,
    items: posts.map((p) => ({
      title: p.data.title,
      description: p.data.description ?? '',
      pubDate: p.data.date,
      link: postUrl(p, 'ru'),
      categories: p.data.tags,
    })),
    customData: `<language>ru-RU</language>`,
  });
}
