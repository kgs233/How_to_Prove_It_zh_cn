#import "@preview/hydra:0.6.2": *

#let has-h1() = {
  let current-page = here().page()
  let has-heading = query(heading.where(level: 1)).any(it => it.location().page() == current-page)
  return has-heading
}

#let textbox(body) = {
  box[
    #v(0.8em)
    #body
    #v(0.8em)
  ]
}

#let codeblock(body) = {
  textbox[
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
  align(center, heading(level: 3, numbering: none)[
    #text(size: 16pt, font: "Noto Serif CJK SC")[
      习题
    ]
  ])
  par()[#text()[#h(0.0em)]]
  body
}
