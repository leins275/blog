import { getCollection, type CollectionEntry } from 'astro:content';

export type Lang = 'en' | 'ru';
type PostCollectionName = 'postsEn' | 'postsRu';

export type PostEntry = CollectionEntry<PostCollectionName>;

export const cleanSlug = (entry: { id: string; data: { slug?: string } }) =>
  entry.data.slug ?? entry.id.replace(/\/index\.(en|ru)$/, '').split('/').pop()!;

export const postUrl = (entry: PostEntry, lang: Lang) =>
  lang === 'en' ? `/posts/${cleanSlug(entry)}/` : `/ru/posts/${cleanSlug(entry)}/`;

export async function listPosts(lang: Lang): Promise<PostEntry[]> {
  const collection = lang === 'en' ? 'postsEn' : 'postsRu';
  const all = await getCollection(collection, ({ data }) => !data.draft);
  return all.sort((a, b) => b.data.date.getTime() - a.data.date.getTime());
}

export function groupByYear(posts: PostEntry[]): Record<number, PostEntry[]> {
  const byYear: Record<number, PostEntry[]> = {};
  for (const p of posts) {
    const y = p.data.date.getFullYear();
    (byYear[y] ??= []).push(p);
  }
  return byYear;
}

export function formatDate(date: Date, lang: Lang): string {
  return new Intl.DateTimeFormat(lang === 'ru' ? 'ru-RU' : 'en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
  }).format(date);
}
