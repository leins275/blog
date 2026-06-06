// Shared layout for the CV PDFs. ATS-friendly single column on A4,
// sans-serif, ~10.5pt with a subtle slate accent for header / section
// structure.
//   H1 = name (20pt bold, slate)
//   H2 = section (12pt bold, slate, thin gray rule)
//   H3 = company (11pt bold)
//   H4 = project (10.5pt semibold)

#let accent = rgb("#1f3a5f")
#let muted = luma(40%)
#let rule-gray = luma(70%)

#let cv-doc(
  lang: "en",
  title: none,
  body,
) = {
  set document(
    title: if title != none { title } else if lang == "ru" { "Резюме — Никита Лансков" } else { "CV — Nikita Lanskov" },
    author: "Nikita Lanskov",
  )

  let page-label = if lang == "ru" { "стр." } else { "page" }
  let of-label = if lang == "ru" { "из" } else { "of" }

  set page(
    paper: "a4",
    margin: (x: 0.7in, y: 0.6in),
    footer: context [
      #set text(size: 8.5pt, fill: luma(50%))
      #h(1fr)
      Nikita Lanskov · #page-label #counter(page).display() #of-label #counter(page).final().first()
    ],
  )
  set text(
    font: ("Inter", "Liberation Sans", "DejaVu Sans"),
    size: 10.5pt,
    lang: lang,
    hyphenate: false,
  )
  set par(
    leading: 0.5em,
    justify: false,
  )
  set list(
    indent: 0.7em,
    body-indent: 0.4em,
    tight: true,
    spacing: 0.4em,
    marker: text(fill: muted)[--],
  )

  show heading.where(level: 1): it => block(below: 2pt)[
    #text(size: 20pt, weight: "bold", fill: accent, tracking: 0.3pt)[#it.body]
  ]
  show heading.where(level: 2): it => block(
    above: 14pt,
    below: 4pt,
    width: 100%,
    stroke: (bottom: 0.4pt + rule-gray),
    inset: (bottom: 2pt),
  )[
    #text(size: 12pt, weight: "bold", fill: accent)[#it.body]
  ]
  show heading.where(level: 3): it => block(above: 8pt, below: 2pt)[
    #text(size: 11pt, weight: "bold")[#it.body]
  ]
  show heading.where(level: 4): it => block(above: 6pt, below: 1pt)[
    #text(size: 10.5pt, weight: "semibold")[#it.body]
  ]

  // Italic blurbs (tagline + role descriptions) in muted gray so bullets pop.
  show emph: it => text(fill: muted)[#it.body]

  // Links: visible on screen as dark-gray underlined text. Print-friendly,
  // ATS-readable (underline/colour are visual; text layer is intact).
  show link: l => text(fill: luma(30%))[#underline(stroke: 0.4pt + luma(30%), offset: 1.5pt)[#l]]

  body
}
