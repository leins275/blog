// tg-smm post bodies often repeat the title as the first paragraph (the bot
// writes the post-as-sent-on-Telegram verbatim, which usually opens with the
// title). On the post page that produces a duplicate heading-then-tiny-line
// sequence and breaks the drop-cap layout. Strip it when it matches.
//
// Compares case-insensitively and ignores trailing punctuation / whitespace
// to absorb minor variations.
const normalize = (s) =>
  s.toLocaleLowerCase().replace(/[\s.,!?;:"'«»…—\-–]+$/u, '').trim();

const paragraphText = (node) => {
  if (node.type !== 'paragraph' || !Array.isArray(node.children)) return null;
  let out = '';
  for (const c of node.children) {
    if (c.type === 'text') out += c.value;
    else if (Array.isArray(c.children)) for (const cc of c.children) if (cc.type === 'text') out += cc.value;
    else return null; // unexpected node — bail out, don't touch
  }
  return out;
};

export default function remarkStripDuplicateTitle() {
  return (tree, file) => {
    const title = file?.data?.astro?.frontmatter?.title;
    if (!title || !Array.isArray(tree.children) || !tree.children.length) return;
    const first = tree.children[0];
    const text = paragraphText(first);
    if (text && normalize(text) === normalize(title)) {
      tree.children.shift();
    }
  };
}
