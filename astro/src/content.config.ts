import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const postSchema = ({ image }: { image: () => z.ZodType }) =>
  z
    .object({
      title: z.string(),
      date: z.coerce.date(),
      draft: z.boolean().default(false),
      tags: z.array(z.string()).default([]),
      categories: z.array(z.string()).default([]),
      description: z.string().optional(),
      slug: z.string().optional(),
      authors: z.array(z.string()).default([]),
      preview: image().optional(),
    })
    .passthrough();

// Archives (`archives/**`) carry broken image refs and inconsistent layouts from
// the Hugo era; included only after each is cleaned up. New work lives directly
// under content/posts/{year}/.
const POST_PATTERNS = ['**/index.en.md', '!archives/**'];
const POST_PATTERNS_RU = ['**/index.ru.md', '!archives/**'];

const postsEn = defineCollection({
  loader: glob({ pattern: POST_PATTERNS, base: '../content/posts' }),
  schema: postSchema,
});

const postsRu = defineCollection({
  loader: glob({ pattern: POST_PATTERNS_RU, base: '../content/posts' }),
  schema: postSchema,
});

const aboutSchema = ({ image }: { image: () => z.ZodType }) =>
  z
    .object({
      title: z.string().optional(),
      date: z.coerce.date().optional(),
      slug: z.string().optional(),
      preview: image().optional(),
    })
    .passthrough();

const aboutEn = defineCollection({
  loader: glob({ pattern: 'index.en.md', base: '../content/about' }),
  schema: aboutSchema,
});
const aboutRu = defineCollection({
  loader: glob({ pattern: 'index.ru.md', base: '../content/about' }),
  schema: aboutSchema,
});

const portfolioSchema = z
  .object({
    title: z.string(),
    weight: z.number().default(0),
    date: z.coerce.date().optional(),
    items: z
      .array(
        z.object({ title: z.string(), image: z.string().optional(), link: z.string().optional() }),
      )
      .optional(),
    videos: z
      .array(z.object({ title: z.string(), youtube: z.string() }))
      .optional(),
  })
  .passthrough();

const portfolioEn = defineCollection({
  loader: glob({ pattern: '*/index.en.md', base: '../content/portfolio' }),
  schema: portfolioSchema,
});
const portfolioRu = defineCollection({
  loader: glob({ pattern: '*/index.ru.md', base: '../content/portfolio' }),
  schema: portfolioSchema,
});

export const collections = {
  postsEn,
  postsRu,
  aboutEn,
  aboutRu,
  portfolioEn,
  portfolioRu,
};
