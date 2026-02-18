#import "@preview/zh-kit:0.1.0": *
#import "@preview/numbly:0.1.0": numbly
#import "lib.typ": *

#set page(
  paper: "iso-b5",
  margin: (top: 3cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
)

#include "cover.typ"
#pagebreak()

#set text(
  font: (
    "STIX Two Text",
    "Noto Serif CJK SC"
  ),
  size: 11pt,
  weight: "regular",
  lang: "zh",
)

#set par(justify: true, first-line-indent: 2em, leading: 1em)

#show math.equation: set text(font: ("STIX Two Math", "STIX Two Text", "Noto Serif CJK SC"), size: 11pt, weight: "regular")
#show emph: text.with(font: ("STIX Two Math", "STIX Two Text", "LXGW WenKai"), size: 11pt, weight: "regular", fill: luma(30), baseline: -0.02em)

#show heading.where(level: 1): it => {
  set text(font: "Noto Sans SC", 1.5em, weight: "regular")
  align(center)[#it]
  par()[#text()[#h(0.0em)]]
  if it.level == 1 { v(4em) }
}

#set figure(numbering: it => {
  str(counter(heading.where(level: 1)).get().first()) + "." + str(it)
})
#show figure.caption.where(body: []): it => [
  #it.supplement
  #context it.counter.display()
]

#let han-or-punct = "[- \p{sc=Hani}。．，、：；！‼？⁇⸺——dots⋯⋯～–—·・‧/／「」『』“”‘’（）《》〈〉【】〖〗〔〕［］｛｝＿﹏●•]"
#show regex(han-or-punct + " " + han-or-punct): it => {
  let (a, _, b) = it.text.clusters()
  a + b
}

#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  align: center + horizon,
)


#outline(title: "目录", depth: 2)
#pagebreak()

#let page-number-style = "i"
#set page(
  footer: context {
    if has-h1() {
      h(1fr)
      counter(page).display(page-number-style)
      h(1fr)
    }
  },
  header: context if not has-h1() {
    if calc.even(counter(page).get().first()) {
      counter(page).display(page-number-style)
      h(1fr)
      emph(hydra(1))
      h(1fr)
    } else {
      h(1fr)
      emph(hydra(1))
      h(1fr)
      counter(page).display(page-number-style)
    }
  },
)

#include "preface.typ"
#pagebreak()


#counter(page).update(1)

#let page-number-style = "1"
#set page(
  footer: context if has-h1() {
    if calc.even(counter(page).get().first()) {
      h(1fr)
      counter(page).display(page-number-style)
      h(1fr)
    }
  },
  header: context if not has-h1() {
    if calc.even(counter(page).get().first()) {
      counter(page).display(page-number-style)
      h(1fr)
      emph(hydra(1))
      h(1fr)
    } else {
      h(1fr)
      emph(hydra(2))
      h(1fr)
      counter(page).display(page-number-style)
    }
  },
)

#show box: it => {
  v(0.3em)
  it
  v(-1em)
  linebreak()
}

#include "introduction.typ"
#pagebreak()

#counter(heading).update(0)

#set heading(numbering: numbly(
  "{1}",
  "{1}.{2}",
  "{1}.{2}.{3}.",
))

#show heading.where(level: 1): it => {
  align(center)[
    #set text(font: "Noto Sans SC")
    #text(weight: "bold", 1.5em)[#counter(heading).display()] \
    #text(weight: "regular", 1.5em)[#it.body]
  ]
  par()[#text()[#h(0.0em)]]
  v(9em)
  let kinds = query(figure).map(fig => fig.kind).dedup()
  for kind in kinds {
    counter(figure.where(kind: kind)).update(0)
  }
}

#show heading.where(level: 2): it => {
  par()[#text()[#h(0.0em)]]
  align(center)[
    #set text(size: 12pt)
    #it
  ]
  par()[#text()[#h(0.0em)]]
}

#show heading.where(level: 3): it => {
  [
    #set par(first-line-indent: 0em)
    #par()[#text()[#h(0.0em)]]
    #counter(heading).display()
    #text(weight: "medium")[#it.body]

  ]
}

#set strong(delta: 200)
#set-v-calc-style(padding: 0.5em)

#include "Chapter1/chapter1.typ"
