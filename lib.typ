#import "@preview/hydra:0.6.2": *

#let has-h1() = {
  let current-page = here().page()
  let has-heading = query(heading.where(level: 1)).any(it => it.location().page() == current-page)
  return has-heading
}

#let codeblock(body) = {
  box()[
    #body
  ]
}

#let zero-indent(body) = {
  set par(first-line-indent: 0em)
  body
}

#let tab() = {
  text("  ")
}

#let question(name, body) = [
  === #name
  #v(0.5em)
  #body
  #v(0.5em)
]

#let solution(body) = [
  #set par(first-line-indent: 0em)
  _解_
  #v(0.5em)
  #body
  #par()[#text()[#h(0.0em)]]
  #v(-0.5em)
]

#let proof(body) = {
  [
    #linebreak()
    #block[#body #h(1fr) #sym.square]
    #linebreak()
  ]
}

#let exercises(asts, body) = {
  set par(first-line-indent: 0em)
  set enum(numbering: it => {
    if it in asts {
      sym.ast.basic + str(it) + "."
    } else {
      str(it) + "."
    }
  })

  v(2em)
  align(center)[
    #text(size: 16pt, weight: "medium", font: "Noto Sans CJK SC")[
      习题
    ]
  ]
  par()[#text()[#h(0.0em)]]
  body
}
