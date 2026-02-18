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
  === #if name == [] { body } else { name }
  #if name != [] [
    #v(0.5em)
    #body
    #par()[#text()[#h(0.0em)]]
    #v(-1em)
  ]
]

#let example(name, label-name: none, body) = [
  #set heading(numbering: numbly(
    "{1}",
    "{1}.{2}",
    "例 {1}.{2}.{3}.",
  ))

  #if name == [] {
    show heading: it => {
      par(first-line-indent: 0em, justify: false)[
        #counter(heading).display(it.numbering)
        #h(2pt)
        #text(weight: "regular")[#body]
      ]
    }
    v(0.5em)
    [=== #"" #if label-name != none { label(label-name) }]
    par()[#text()[#h(0.0em)]]
    v(-1em)
  } else {
    [=== #name #if label-name != none { label(label-name) }]
    v(0.5em)
    body
    par()[#text()[#h(0.0em)]]
    v(-1em)
  }
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

#let v-calc-style = state("v-calc-style", (stroke: 0.5pt, padding: 0.2em))
#let set-v-calc-style(stroke: none, padding: none) = {
  context {
    v-calc-style.update(
      (
        stroke: if stroke != none { stroke } else { v-calc-style.get().stroke },
        padding: if padding != none { padding } else { v-calc-style.get().padding },
      ),
    )
  }
}
#let v-calc(top-parts, bottom-part, stroke: none, padding: none) = {
  context {
    let top-rows = top-parts.map(it => [#it])
    let bottom-row = [#bottom-part]
    let all-rows = top-rows + (bottom-row,)

    let widths = all-rows.map(row => measure(row).width)
    let max-w = calc.max(..widths)

    let current-style = v-calc-style.get()
    let current-stroke = if stroke != none { stroke } else { current-style.stroke }
    let current-padding = if padding != none { padding } else { current-style.padding }

    block({
      set align(left)
      stack(
        dir: ttb,
        spacing: 0.4em,
        ..top-rows.slice(0, -1),

        box(
          width: max-w,
          inset: (bottom: 0.5em),
          outset: (left: current-padding, right: current-padding),
          stroke: (bottom: current-stroke),
          top-rows.last(),
        ),
        v(-0.4em),
        bottom-row,
      )
    })
  }
}
