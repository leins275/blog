#!/usr/bin/env python3
"""Fail if any post's relative image frontmatter points at a missing file.

Astro's image() schema resolves these at build time, so a dangling `preview:
./preview.jpg` breaks the deploy with a stack trace far from the cause. This
catches it locally with the offending file named.

Archives are skipped: they carry broken Hugo-era refs and are excluded from the
Astro collections (see astro/src/content.config.ts).
"""

import re
import sys
from pathlib import Path

CONTENT = Path(__file__).resolve().parent.parent / "content"
FIELD_RE = re.compile(r"^(preview|image|cover):\s*['\"]?(\./[^'\"\s]+)['\"]?\s*$")


def main() -> int:
    broken = []
    for md in sorted(CONTENT.rglob("index.*.md")) + sorted(CONTENT.glob("posts/*.md")):
        if "archives" in md.parts:
            continue
        in_frontmatter = False
        for lineno, line in enumerate(md.read_text(encoding="utf-8").splitlines(), 1):
            if line.strip() == "---":
                if in_frontmatter:
                    break
                in_frontmatter = True
                continue
            if not in_frontmatter:
                break
            m = FIELD_RE.match(line)
            if m and not (md.parent / m.group(2)).exists():
                broken.append(f"{md}:{lineno}: {m.group(1)} -> {m.group(2)} does not exist")

    if broken:
        print("Missing images referenced from frontmatter:", file=sys.stderr)
        for b in broken:
            print(f"  {b}", file=sys.stderr)
        print(
            "\nEither commit the image next to index.*.md or drop the frontmatter field.",
            file=sys.stderr,
        )
        return 1

    print("content images ok")
    return 0


if __name__ == "__main__":
    sys.exit(main())
