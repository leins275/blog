#!/usr/bin/env python3
"""Inject `preview: ./preview.jpg` into post frontmatter when a sibling preview.jpg
exists and the field is missing. Idempotent. Operates on the content/ tree only.

Why: Astro's `image()` schema helper only resolves a per-post cover image when its
relative path lives in frontmatter. The tg-smm bot historically dropped preview.jpg
alongside index.ru.md without recording it in YAML; this fills the gap.
"""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1] / "content" / "posts"
PREVIEW_NAME = "preview.jpg"
PREVIEW_LINE = "preview: ./preview.jpg"


def split_frontmatter(text: str) -> tuple[str, str, str] | None:
    if not text.startswith("---"):
        return None
    end = text.find("\n---", 3)
    if end == -1:
        return None
    head = text[: text.find("\n") + 1]  # first "---\n"
    fm = text[len(head) : end + 1]
    rest = text[end + 1 :]
    if not rest.startswith("\n---"):
        return None
    return head, fm, rest


def has_preview(fm: str) -> bool:
    for line in fm.splitlines():
        stripped = line.lstrip()
        if stripped.startswith("#"):
            continue
        if stripped.startswith("preview:"):
            return True
        if stripped.startswith("preview "):
            return True
    return False


def inject(path: Path) -> bool:
    text = path.read_text(encoding="utf-8")
    parts = split_frontmatter(text)
    if parts is None:
        return False
    head, fm, rest = parts
    if has_preview(fm):
        return False
    # Single-line flow YAML (`---\n{key: val, ...}\n---`) is harder to splice safely;
    # skip and warn so the maintainer can fix by hand.
    if fm.strip().startswith("{"):
        print(f"[skip] flow-style frontmatter, edit by hand: {path}", file=sys.stderr)
        return False
    new_fm = fm.rstrip("\n") + "\n" + PREVIEW_LINE + "\n"
    path.write_text(head + new_fm + rest, encoding="utf-8")
    return True


def main() -> int:
    if not ROOT.exists():
        print(f"content posts root not found: {ROOT}", file=sys.stderr)
        return 1

    touched = 0
    scanned = 0
    for md in ROOT.rglob("index.*.md"):
        if md.name not in ("index.en.md", "index.ru.md"):
            continue
        scanned += 1
        if not (md.parent / PREVIEW_NAME).exists():
            continue
        if inject(md):
            touched += 1
            print(f"[+] {md.relative_to(ROOT.parent.parent)}")

    print(f"\nscanned: {scanned}, updated: {touched}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
