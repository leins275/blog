---
name: cv-builder
description: Build a tailored typst CV from a source markdown CV. Aggressively consolidates a long working history into a few role-level entries, extracts a grouped skills block, and emits a single typst file per language. Tailors selection and emphasis to a job posting when one is provided.
---

# cv-builder

Build one typst CV file from a source markdown CV. The skill's job is to be **creatively selective** with the source — not to mechanically transcribe every project. For bullet rewriting itself, delegate to the [resume-bullet-writer](../resume-bullet-writer/SKILL.md) skill.

## Inputs

- **Source markdown CV** (required) — path provided by the user.
- **Language** (required) — `en` or `ru`. One invocation = one language. Run twice for bilingual.
- **Output path** (required) — typst file to write, e.g. `cv/cv.en.typ`.
- **Template** (required) — path to the shared typst template (e.g. `cv/template.typ`). Read it before emitting output so the heading and styling conventions match.
- **Position requirements** (optional) — job posting or role description. When present, switches the skill into **Tailored mode**.

If any required input is missing, ask for it before starting.

## Modes

The skill has two modes, both producing the same overall shape — role-level entries with achievement bullets, no per-project subheadings. The difference is in *selection*.

### Overview mode (default — no position description)

Consolidate aggressively. The source may have 10+ projects; the output should usually have **3–5 role entries total**, regardless of how many projects the source contains.

Rules of thumb:
- One entry per long employment chapter, not per project. For the current user that means roughly: `EPAM Systems` and `its.xyz` — two entries that span ~10 years between them.
- Inside each entry, achievements appear as bullets. Each bullet should pack one strong win — scale, outcome, named client/project where it adds credibility.
- Compress older or less-flagship work into a single **"Earlier:"** bullet at the end of the entry (e.g. *"Earlier: molecular ontology search (Merck) cutting search across 20M+ molecules from days to minutes; VR molecular viewers for Novartis."*).
- Each role gets a short **italic tagline** below the heading summarizing what the role *was* in one line.

This is the default. It is what the user wants for their generic CV.

### Tailored mode (position description provided)

Same structural shape as Overview mode, but selection and emphasis are governed by the posting:
- Keep only the projects/achievements that speak to the posting's stack, domain, or seniority signals. Drop or compress the rest into "Earlier:".
- Reorder bullets within each role so the most relevant wins come first.
- Reorder the skills block so the requested stack appears first; promote the matching category.
- Rewrite the profile/summary paragraph to lead with the axes the role emphasizes.
- When handing bullets to resume-bullet-writer, pass the position description so wording aligns with the role's vocabulary.

Never invent matching experience the source doesn't contain. If the source genuinely has nothing to match a major requirement, flag it.

### Exploded mode (opt-in only)

The user may explicitly ask for the older project-per-subheading format with `*Stack:*` lines (the shape currently in `cv/cv.en.typ`). Only emit this shape when explicitly requested. Default to Overview/Tailored.

## Output format (typst)

Follow whatever `template.typ` defines. For the existing `cv-doc` template the conventions are:

```typst
#import "template.typ": *
#show: cv-doc.with(lang: "{lang}")

= {Full name}

{One-line title} · {Location} · {availability note}

#link("mailto:...")[...] · #link("...")[...] · ...

== Profile
{2–4 sentence summary paragraph}

== Core competencies
{High-level themes — dot-separated single line, e.g. "Engineering Leadership · Cloud (AWS) · DevOps · ..."}

== Skills
*{Category}* --- comma-separated, well-known tools
*{Category}* --- ...

== Experience

=== {Company} --- {Role} · {Start} -- {End}
_{One-line role tagline}_

- {Achievement bullet — scale + outcome + named project/client}
- {Achievement bullet}
- Earlier: {one-line compression of older / smaller projects in this role}.

=== {Next company} --- ...
```

Typst conventions:
- Headings: `=` (name), `==` (section), `===` (role entry). **No `====` project subheadings** in Overview/Tailored modes.
- Use `---` for em-dash separators in headings; `*bold*` for inline emphasis; `_italic_` for the role tagline.
- ATS-friendly: plain text, no tables, no images, no decorative unicode.

## Aggregation rules

The source markdown is the ground truth for *facts*. The skill's job is to compress and structure it.

- **Working-history consistency.** A claim like "8 years of experience" must be supported by ≥ 8 years of dated entries. If short, narrow the claim to what the dates support and flag the discrepancy.
- **Role-level consolidation.** One entry per employment chapter, not per project. If the user worked at one company across multiple distinct roles (e.g. junior → senior → lead), it may be one entry with a hyphenated date range or two entries — pick whichever tells the clearer story.
- **Project → bullet.** Inside an entry, every named project becomes (at most) one bullet, framed as an achievement. Tiny projects collapse into the trailing "Earlier:" bullet.
- **Overlapping projects.** When projects share a client and overlap in time, merge them into a single bullet. Combine stacks (deduped) in the skills block; the bullet itself names only the headline outcome.
- **Chronology.** Roles are newest first. Within a role, bullets are ordered by impact, not by date.
- **Bullet count per role.** Aim for 3–5 bullets per role. If you have more, you have not consolidated enough.

## Skills block

Two layers, both flat (no nesting):

1. **Core competencies** (optional, only useful for senior/leadership profiles): a single dot-separated line of high-level themes — e.g. *"Engineering Leadership · Cloud (AWS) · DevOps · Solution Architecture"*. Skip this section for IC-track CVs.
2. **Skills**: **4–7 grouped categories** (e.g. *Languages*, *Backend & Web*, *Cloud*, *IaC & Orchestration*, *CI/CD & Tooling*, *Data*, *Domains*). Categories may include non-technical ones like *Leadership & Delivery* or domain bands like *Life Sciences*, *Fintech*. In Tailored mode, the most relevant category goes first.

How to populate:
1. Walk every project's stack and prose; collect every named tool, language, framework, protocol.
2. Add a skill **without explanation** if it is the unmistakable companion of something already on the list (e.g. React → JavaScript, CSS; Django → Python; Terraform → HCL). Don't invent skills that aren't clearly implied.
3. Every listed skill must be traceable to at least one project. If not, drop it.

## Per-bullet requirements

Each achievement bullet must convey:
- **Outcome** — what shipped, what improved, what scaled.
- **Scale or magnitude** — user count, dollar amount, % delta, team size, duration. At least one number per bullet.
- **Client or project anchor** when it adds credibility (well-known brand, regulated industry, recognizable product).

Per-project metadata like a `*Stack:*` line is **not** part of Overview/Tailored output — stacks live in the skills block. Reintroduce per-project stack lines only in Exploded mode.

If the source lacks the outcome, scale, or client for a project you intend to feature, **don't fabricate**. List the gaps and ask the user to fill them before writing.

## Bullets — delegate

Do not rewrite bullets inside this skill. After selecting which projects/achievements to feature, hand them to the **resume-bullet-writer** skill, which applies X-Y-Z / STAR, power verbs, and quantification. Paste its output back into the typst file. In Tailored mode, pass the position description to that skill as additional context.

## Workflow

1. Read the template file and the source markdown.
2. If a position description was provided, read it.
3. Decide on mode: Overview (no position) or Tailored (position).
4. Plan the role-level entries: which employment chapters become entries, which projects survive as bullets, which get folded into "Earlier:". Sanity-check working-history consistency. If gaps exist (missing scale/outcome/client on a project you want to feature), list them and ask the user before continuing.
5. Build the grouped skills block (and optionally a core-competencies line).
6. Draft the typst file (profile → core competencies → skills → experience), with raw selected bullets at this stage.
7. Invoke resume-bullet-writer on the bullets, passing the position description if any.
8. Replace bullets in the typst file with the rewrites.
9. Report: how many source projects were folded, what was compressed into "Earlier:", what was reordered for tailoring, and any gaps the user still needs to fill.
