#import "@preview/hydra:0.6.2": *
#import "@preview/numbly:0.1.0": numbly

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

#let definition(name, body) = [
  #set heading(numbering: numbly(
    "{1}",
    "{1}.{2}",
    "定义 {1}.{2}.{3}.",
  ))
  === #name
  #v(0.5em)
  #body
  #par()[#text()[#h(0.0em)]]
  #v(-1em)
]

#let example(name, body) = [
  #set heading(numbering: numbly(
    "{1}",
    "{1}.{2}",
    "例 {1}.{2}.{3}.",
  ))
  === #name
  #v(0.5em)
  #body
  #par()[#text()[#h(0.0em)]]
  #v(-1em)
]

#let theorem(name, body) = [
  #set heading(numbering: numbly(
    "{1}",
    "{1}.{2}",
    "定理 {1}.{2}.{3}.",
  ))
  === #name
  #v(0.5em)
  #body
  #par()[#text()[#h(0.0em)]]
  #v(-1em)
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
    #text(size: 16pt, weight: "medium", font: "Noto Sans SC")[
      习题
    ]
  ]
  par()[#text()[#h(0.0em)]]
  body
}
