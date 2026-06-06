import rss from '@astrojs/rss';
import type { APIContext } from 'astro';
import { listPosts, postUrl } from '../lib/posts';

export async function GET(context: APIContext) {
  const posts = await listPosts('en');
  return rss({
    title: 'leins275 — Writing',
    description: 'Notes on engineering, focus, and the craft of doing fewer things well.',
    site: context.site!,
    items: posts.map((p) => ({
      title: p.data.title,
      description: p.data.description ?? '',
      pubDate: p.data.date,
      link: postUrl(p, 'en'),
      categories: p.data.tags,
    })),
    customData: `<language>en-US</language>`,
  });
}
