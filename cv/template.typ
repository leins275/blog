// Shared layout for the CV PDFs. ATS-friendly single column on A4,
// sans-serif, ~10.5pt. Mirrors the visual scale of the old cv-print.css:
//   H1 = name (18pt bold)
//   H2 = section (12pt bold, underlined)
//   H3 = company (11pt bold)
//   H4 = project (10.5pt semibold)

#let cv-doc(
  lang: "en",
  title: none,
  body,
) = {
  set document(
    title: if title != none { title } else if lang == "ru" { "Резюме — Никита Лансков" } else { "CV — Nikita Lanskov" },
    author: "Nikita Lanskov",
  )
  set page(
    paper: "a4",
    margin: (x: 0.7in, y: 0.6in),
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
  set list(indent: 0.7em, body-indent: 0.4em, tight: true, spacing: 0.4em)

  show heading.where(level: 1): it => block(below: 4pt)[
    #text(size: 18pt, weight: "bold")[#it.body]
  ]
  show heading.where(level: 2): it => block(
    above: 10pt,
    below: 4pt,
    width: 100%,
    stroke: (bottom: 0.5pt + black),
    inset: (bottom: 1pt),
  )[
    #text(size: 12pt, weight: "bold")[#it.body]
  ]
  show heading.where(level: 3): it => block(above: 8pt, below: 2pt)[
    #text(size: 11pt, weight: "bold")[#it.body]
  ]
  show heading.where(level: 4): it => block(above: 6pt, below: 1pt)[
    #text(size: 10.5pt, weight: "semibold")[#it.body]
  ]

  // Black links, no underline (ATS-friendly).
  show link: l => text(fill: black)[#l]

  body
}
