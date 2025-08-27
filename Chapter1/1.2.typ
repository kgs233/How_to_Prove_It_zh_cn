#import "../lib.typ": *

== 真值表
我们在第 1.1 节看到，如果一个论证的前提不可能全部为真而结论却为假的话，这个论证就是有效的。因此，为了理解诸如“与”、“或”和“非”等词是如何影响论证的有效性的，我们必须看看它们是如何影响包含它们的陈述的真假性。

当我们判断一个陈述的真假时，我们会给它指定一个标签 _真（true）_ 或 _假（false）_，这个标签被称为它的 _真值（truth value）_。很容易看出 “与” 在包含它的陈述中是如何影响真值的。一个形如 $P and Q$ 的陈述只有在 $P$ 和 $Q$ 都为真时才是真的；如果 $P$ 或 $Q$ 其中有一个为假，那么 $P and Q$ 也是假。因为我们假定 $P$ 和 $Q$ 都表示非真即假的陈述，所以我们可以用@table2 中的表来概括所有可能性。这个表被称为公式 $P and Q$ 的真值表。真值表中的每一行表示陈述 $P$ 和 $Q$ 的一种可能的真值组合。虽然这四种可能性可以以任意顺序出现在表中，但最好是系统地列出它们，以确保没有遗漏任何可能性。

#figure(
  table(
    align: center,
    columns: 3,
    table.header([$P$], [$Q$], [$P and Q$]),
    [F], [F], [F],
    [F], [T], [F],
    [T], [F], [F],
    [T], [T], [T],
  ),
  caption: [],
)<table2>

$not P$ 的真值表也很容易构造，因为要使 $not P$ 为真，$P$ 必须为假。这个表见@table3 。

#figure(
  table(
    align: center,
    columns: 2,
    table.header([$P$], [$not P$]),
    [F], [T],
    [T], [F],
  ),
  caption: [],
)<table3>
#par()[]
关于 $P or Q$ 的真值表要稍微复杂一些。前三行显然应该如@table4 所示填写，但对最后一行可能会有疑问。当 $P$ 和 $Q$ 都为真时，$P or Q$ 应该是真还是假？换句话说，$P or Q$ 是表示“$P$ 或 $Q$，或两者都真”，还是表示“$P$ 或 $Q$，但不能同时为真”？

对“或”的第一种解释被称为 _相容或（Inclusive OR）_（因为它包含了两个陈述都为真的可能性），
#align(center)[
  #grid(
    columns: 2,
    column-gutter: 3em,
    [#figure(
      table(
        columns: 3,
        table.header([$P$], [$Q$], [$P or Q$]),
        [F], [F], [F],
        [F], [T], [T],
        [T], [F], [T],
        [T], [T], [?],
      ),
      caption: [],
    )<table4>],
    [#figure(
      table(
        align: center,
        columns: 3,
        table.header([$P$], [$Q$], [$P or Q$]),
        [F], [F], [F],
        [F], [T], [T],
        [T], [F], [T],
        [T], [T], [T],
      ),
      caption: [],
    )<table5>],
  )
]
第二种解释被称为_排斥或（Exclusive OR）_#footnote[排斥或的另外一个更加常见的名字叫做异或（XOR），符号为 $xor$]。在数学中，$or$ 总是表示包含或，除非另有特别说明，所以我们将 $or$ 理解为包含或。因此，我们如 @table5 所示完成 $P or Q$ 的真值表。关于排斥或的更多内容，参见练习 3。

使用这些真值表中总结的规则，我们现在可以为更复杂的公式推导真值表。我们只需逐步计算公式各个组成部分的真值——从单个字母开始，逐步构造出更复杂公式的真值。

#question([为公式 $not (P or Q)$ 制作真值表。])[]
#solution[
  #align(center)[
    #table(
      columns: (2.5em, 2em, 3em, 5em, 6em),
      table.header([$P$], [$Q$], [$not Q$], [$P or not Q$], [$not (P or not Q)$]),
      [F], [F], [T], [T], [F],
      [F], [T], [F], [F], [T],
      [T], [F], [T], [T], [F],
      [T], [T], [F], [T], [F],
    )
  ]
]

该表的前两列列出了 $P$ 和 $Q$ 的四种可能的真值组合。第三列给出了公式 $not Q$ 的真值，它是通过简单地对第二列中 $Q$ 的真值取反得到的。第四列对应公式 $P or not Q$，它是根据图 4 中总结的 $or$ 的真值规则，把第一列的 $P$ 和第三列的 $not Q$ 的真值结合起来得到的。按照该规则，$P or not Q$ 只有在 $P$ 和 $not Q$ 都为假的情况下才为假。查看第一列和第三列，我们看到这种情况只出现在表的第二行，所以第四列在第二行是 $F$ ，其余各行都是 $T$ 。最后，第五列列出了公式 $not (P or not Q)$ 的真值，它是通过对第四列中的真值取反得到的。（请注意，这些列必须按顺序计算，因为每一列都被用来计算下一列。）

#question([为公式 $not (P and Q) or not R$ 制作真值表。])[]
#solution[
  #align(center)[
    #table(
      columns: (2em, 2em, 2em, 4em, 5.2em, 3em, 7.8em),
      align: center,
      table.header([$P$], [$Q$], [$R$], [$P and Q$], [$not (P and Q)$], [$not R$], [$not (P and Q) or not R$]),
      [F], [F], [F], [F], [T], [T], [T],
      [F], [F], [T], [F], [T], [F], [T],
      [F], [T], [F], [F], [T], [T], [T],
      [F], [T], [T], [F], [T], [F], [T],
      [T], [F], [F], [F], [T], [T], [T],
      [T], [F], [T], [F], [T], [F], [T],
      [T], [T], [F], [T], [F], [T], [T],
      [T], [T], [T], [T], [F], [F], [F],
    )
  ]
  #h(2em)请注意，因为这个公式包含三个字母，所以需要八行来列出这些字母所有可能的真值组合。（如果一个公式包含 $n$ 个不同的字母，它的真值表将有多少行呢？）
]

这里有一种更简洁地制作真值表的方法。与其使用单独的列来列出公式各个组成部分的真值，不如直接把这些真值写在原公式中相应的连接词符号下面。@table6 展示了这种方法，使用的公式来自例 1.2.1。

#v(1em)
#align(center)[
  #figure(
    caption: [],
    grid(
      columns: 2,
      column-gutter: 5em,
      row-gutter: 1em,
      [
        #align(center)[步骤一]
        #v(-1em)
        #table(
          columns: (2em, 2em, 6em),
          table.header([$P$], [$Q$], [$not (P or not Q)$]),
          [F], [F], [#h(0.8em)*F*#h(2em)*F*],
          [F], [T], [#h(0.8em)*F*#h(2em)*T*],
          [T], [F], [#h(0.8em)*T*#h(2em)*F*],
          [T], [T], [#h(0.8em)*T*#h(2em)*T*],
        )
      ],
      [
        #align(center)[步骤二]
        #v(-1em)
        #table(
          columns: (2em, 2em, 6em),
          table.header([$P$], [$Q$], [$not (P or not Q)$]),
          [F], [F], [#h(0.8em)F#h(1.4em)*T* F],
          [F], [T], [#h(0.8em)F#h(1.4em)*F* T],
          [T], [F], [#h(0.8em)T#h(1.4em)*T* F],
          [T], [T], [#h(0.8em)T#h(1.4em)*F* T],
        )
      ],

      [
        #align(center)[步骤三]
        #v(-1em)
        #table(
          columns: (2em, 2em, 6em),
          table.header([$P$], [$Q$], [$not (P or not Q)$]),
          [F], [F], [#h(0.7em)F#h(0.4em)*T*#h(0.4em)T#h(0.2em)F],
          [F], [T], [#h(0.7em)F#h(0.4em)*F*#h(0.4em)F#h(0.2em)T],
          [T], [F], [#h(0.7em)T#h(0.4em)*T*#h(0.4em)T#h(0.2em)F],
          [T], [T], [#h(0.7em)T#h(0.4em)*T*#h(0.4em)F#h(0.2em)T],
        )
      ],
      [
        #align(center)[步骤四]
        #v(-1em)
        #table(
          columns: (2em, 2em, 6em),
          table.header([$P$], [$Q$], [$not (P or not Q)$]),
          [F], [F], [#h(-0.3em)*F*#h(0.3em)F#h(0.5em)T#h(0.4em)T#h(0.2em)F],
          [F], [T], [#h(-0.3em)*T*#h(0.3em)F#h(0.5em)F#h(0.4em)F#h(0.2em)T],
          [T], [F], [#h(-0.3em)*F*#h(0.3em)T#h(0.5em)T#h(0.4em)T#h(0.2em)F],
          [T], [T], [#h(-0.3em)*F*#h(0.3em)T#h(0.5em)T#h(0.4em)F#h(0.2em)T],
        )
      ],
    ),
  )<table6>
]

在第一步中，我们把 $P$ 和 $Q$ 的真值写在它们在公式中出现的位置下面。第二步，把 $not Q$ 的真值加在 $not Q$ 的 $not$ 符号下。第三步，我们把 $P$ 和 $not Q$ 的真值结合起来，得到 $P or not Q$ 的真值，并把它们写在 $or$ 符号下面。最后一步，把这些真值取反，写在最前面的 $not$ 符号下面。最后一步所得到的真值就是整个公式的真值，因此我们把这些真值所在的符号（在本例中是第一个 $not$ 符号）称为公式的 _主要连接词（main connective）_。请注意，这里在主要连接词下列出的真值与我们在例 1.2.1 中得到的真值是一致的。

既然我们已经知道如何为复杂公式制作真值表，现在就可以回到论证有效性的分析。再来考虑我们最初的一个演绎论证示例：

#box[
  明天要么下雨，要么下雪。 \
  天气太暖和，不会下雪。 \
  因此，明天会下雨。
]

正如我们所见，如果令 $P$ 表示陈述“明天会下雨”，令 $Q$ 表示陈述“明天会下雪”，那么我们可以把这个论证符号化地表示如下：

#box[
  $P or Q$ \
  $underline(not#h(0.1em)Q#h(1em))$ \
  $therefore P$ #h(4em) （符号 #sym.therefore 代表所以）
]

现在我们可以看到如何使用真值表来验证这个论证的有效性。@table7 展示了该论证的两个前提和结论的真值表。回想一下，我们决定如果前提不可能全部为真而结论却为假的话，就称该论证为有效。

#align(center)[
  #figure(
    [
      #v(0.5em)
      #align(left)[#h(5em)前提#h(6em)结论]
      #v(-1em)
      #table(
        columns: (2em, 2em, 4em, 3em, 6em),
        table.header([$P$], [$Q$], [$P or Q$], [$not Q$], [$P$]),
        [F], [F], [F], [T], [F],
        [F], [T], [T], [F], [F],
        [T], [F], [T], [T], [T],
        [T], [T], [T], [F], [T],
      )
    ],
    caption: [],
  )<table7>
]

查看@table7，我们发现表中唯一一行两个前提都为真的行是第三行，而在这一行中结论也为真。因此，真值表证实了如果前提都为真，结论也必须为真，所以这个论证是有效的。

#question([判断下列论证是否有效。])[
  + 要么约翰不愚蠢且懒惰，要么他很愚蠢。 \
    约翰很愚蠢。 \
    因此，约翰不懒惰。 \
  + 管家和厨师不可能都无辜。 \
    要么管家在说谎，要么厨师是无辜的。 \
    因此，管家要么在说谎，要么有罪。 \
]
#solution[
  + 如同例 1.1.3，我们令 $S$ 表示陈述“约翰很笨”，令 $L$ 表示陈述“约翰很懒”。那么该论证的形式为： \
    #box[
      #h(2em)$(not S and L) or S$ \
      #h(2em)$underline(S#h(4.8em))$ \
      #h(2em)$therefore not L$
    ]
    #h(1em)现在我们为两个前提和结论制作真值表。（你应该推导出该表第三列的中间步骤，以确认其正确性。）
    #align(center)[
      #v(0.5em)
      #align(left)[#h(12.5em)前提#h(6.7em)结论]
      #v(-1em)
      #table(
        columns: (2em, 2em, 7em, 2em, 5em),
        table.header([S], [L], [$(not S and L) or S$], [S], [$not L$]),
        [F], [T], [F], [F], [T],
        [F], [T], [T], [F], [F],
        [T], [F], [T], [T], [T],
        [T], [T], [T], [T], [F],
      )
    ]
    在该表的第三行和第四行中，两个前提都为真。结论在第三行也为真，但在第四行为假。因此，存在前提都为真而结论为假的情况，所以该论证是无效的。
    实际上，这张表正好说明了为什么该论证无效。问题出现在表的第四行，在这一行中 $S$ 和 $L$ 都为真——也就是说，约翰既笨又懒。因此，如果约翰既笨又懒，那么两个前提都为真，但结论为假，所以从前提为真的假设推导出结论必须为真是错误的。

  + 令 $B$ 表示陈述“管家是无辜的”，$C$ 表示陈述“厨师是无辜的”，$L$ 表示陈述“管家在说谎”。那么该论证的形式为：
    #box[
      #h(2em)$not (B and C)$ \
      #h(2em)$underline(L or C#h(2.4em))$ \
      #h(2em)$therefore not L or not B$
    ]
    #h(1em)下面是前提和结论的真值表：
    #align(center)[
      #v(0.5em)
      #align(left)[#h(12.5em)前提#h(8.5em)结论]
      #v(-1em)
      #table(
        columns: (2em, 2em, 2em, 6em, 5em, 5em),
        table.header([B], [C], [L], [$not (B and C)$], [$L or C$], [$L or not B$]),
        [F], [F], [F], [T], [F], [T],
        [F], [F], [T], [T], [T], [T],
        [F], [T], [F], [T], [T], [T],
        [F], [T], [T], [T], [T], [T],
        [T], [F], [F], [T], [F], [F],
        [T], [F], [T], [T], [T], [T],
        [T], [T], [F], [F], [T], [F],
        [T], [T], [T], [F], [T], [T],
      )
    ]
    前提在表的第二、第三、第四和第六行中都为真，并且在这些情况下结论也都为真。因此，该论证是有效的。
]

如果你原以为例 1.2.3 中的第一个论证是有效的，那很可能是因为第一个前提让你感到困惑。这个前提相当复杂，我们用公式 $(not S and L) or S$ 来符号化表示。根据我们的真值表，这个公式在 $S$ 和 $L$ 都为假时为假，其余情况都为真。但请注意，这正好与更简单的公式 $L or S$ 的真值表相同！因此，我们说公式 $(not S and L) or S$ 与 $L or S$ 是等价的。等价公式无论其中的字母表示什么陈述，也无论这些陈述的真值如何，始终具有相同的真值。
前提公式的等价性说明了为什么该论证是无效的。将公式 $L or S$ 翻译回中文，我们看到第一个前提可以更简单地表述为“约翰要么很懒惰，要么很愚蠢（或两者都有）”。但根据这个前提和第二个前提（约翰很愚蠢），显然不能推出他不懒惰，因为他可能既愚蠢又懒惰。公式 $(not S and L) or S$ 与更简单的公式 $L or S$ 可以帮助你理解这一点。

#question([下面哪些公式是等价的？])[
  #align(center)[
    $not (P and Q),#h(3em)not P and not Q,#h(3em)not P or not Q.$
  ]
]
#solution[
  下面是这三个陈述的真值表。（你也应该自己核对一遍！）
  #align(center)[
    #table(
      columns: (2em, 2em, 6em, 5.6em, 6em),
      table.header([P], [Q], [$not (P and Q)$], [$not P and not Q$], [$not P or not Q$]),
      [F], [F], [T], [T], [T],
      [F], [T], [T], [F], [T],
      [T], [F], [T], [F], [T],
      [T], [T], [F], [F], [F],
    )
  ]
  #h(2em)该表的第三列和第五列是相同的，但它们与第四列不同。因此，公式 $not (P and Q)$ 和 $not P or not Q$ 是等价的，但它们都不等价于公式 $not P and not Q$。如果你考虑这些符号的含义，这应该是可以理解的。例如，假设 $P$ 表示陈述“洋基队昨晚获胜”，$Q$ 表示“红袜队昨晚获胜”。那么 $not (P and Q)$ 意思是“洋基队和红袜队昨晚不可能都获胜”，而 $not P or not Q$ 意思是“洋基队或红袜队昨晚至少有一队没赢”；这些陈述显然传达了相同的信息。另一方面，$not P and not Q$ 的意思是“洋基队和红袜队昨晚都没赢”，这是一个完全不同的陈述。
]

你可以自己验证，通过制作一个真值表来确认例 1.2.4 中的公式 $not P and not Q$ 与公式 $not (P or Q)$ 是_等价（equivalent）_的。（要理解这个等价性是合理的，请注意陈述“洋基队和红袜队昨晚都没赢”与“洋基队和红袜队昨晚都没获胜”表达的是同一意思。）这个等价性以及例 1.2.4 中发现的等价性被称为 _德·摩根定律（De Morgan’s laws）_。

在分析演绎论证及其中出现的陈述时，熟悉一些经常出现的等价公式会很有帮助。你可以通过制作真值表来验证下面列表中的等价公式，并像我们在例 1.2.4 中那样，把公式翻译成英文，以检查它们是否合理。

#v(2em)
- *德·摩根定律*
$
  not (P and Q) "等价于" not P or not Q. \
  not (P or Q) "等价于" not P and not Q.
$

- *交换律*
$
  P and Q "等价于" Q and P. \
  P or Q "等价于" Q or P.
$

- *结合律*
$
  P and (Q and R) "等价于" (P and Q) and R. \
  P or (Q or R) "等价于" (P or Q) or R.
$

- *幂等律*
$
  P and P "等价于" P. \
  P or P "等价于" P.
$

- *分配律*
$
  P and (Q or R) "等价于" (P and Q) or (P and R). \
  P or (Q and R) "等价于" (P or Q) and (P or R).
$

- *吸收律*
$
  P or (P and Q) "等价于" P. \
  P and (P or Q) "等价于" P.
$

#pagebreak()
- *双重否定律*
$
  not not P "等价于" P.
$

注意，由于结合律的存在，我们可以在形如 $P and Q and R$ 和 $P or Q or R$ 的公式中省略括号，而不必担心结果公式会产生歧义，因为填入括号的两种可能方式都会得到等价的公式。
列表中的许多等价公式应该会让你想起代数中涉及 $+$、$dot$ 和 $-$ 的类似规则。与代数一样，这些规则可以应用于更复杂的公式，并且可以组合起来推导出更复杂的等价关系。
在这些等价公式中，任何字母都可以被更复杂的公式替换，结果等价仍然成立。例如，通过在双重否定律中用公式 $Q or not R$ 替换 $P$，你可以看到 $not not (Q or not R)$ 等价于 $Q or not R$。
另外，如果两个公式是等价的，你总是可以在任何表达式中用一个公式替换另一个，结果仍然是等价的。例如，由于 $not not P$ 等价于 $P$，如果 $not not P$ 出现在任何公式中，你总是可以用 $P$ 替换它，得到的公式将与原公式等价。

#question([找出与下列公式等价的更简洁的公式：])[
  + $not (P or not Q).$
  + $not (Q and not P) or P.$
]
#solution[
  + $not (P or not Q)$
    $
          "它等价于" #h(1em) & (not P or not not P) or P & #h(1em)"（德·摩根定理）。" \
      "进一步等价于" #h(1em) & (not Q or P) or P         &  #h(1em)"（双重否定律）。"
    $
    你可以通过为 $not P and Q$ 制作真值表来验证这个等价性，看看它是否与例 1.2.1 中 $not (P or not Q)$ 的真值表相同。
  + $not (Q and not P) or P$
    $
          "它等价于" #h(1em) & (not Q or not not P) or P & #h(1em) "（德·摩根定理）。" \
      "进一步等价于" #h(1em) & (not Q or P) or P         &  #h(1em) "（双重否定律）。" \
      "进一步等价于" #h(1em) & not Q or (P or P)         &      #h(1em) "（结合律）。" \
      "进一步等价于" #h(1em) & not Q or P                &      #h(1em) "（幂等律）。"
    $
]

有些等价关系是基于某些公式总是为真或总是为假的事实。例如，你可以通过制作真值表验证公式 $Q and (P or not P)$ 等价于 $Q$。但即使在制作真值表之前，你也可能能看出它们为什么等价。在真值表的每一行中，$P or not P$ 总是为真，因此 $Q and (P or not P)$ 在 $Q$ 为真时为真，在 $Q$ 为假时为假。
总是为真的公式，如 $P or not P$，称为 _永真式（tautologies）_#footnote[译者注：这个单词还有另一个翻译叫做重言式，虽然它们都是tatutology的译名，但是读者应该知道并非所有永真式都是重言式，例如“四足动物都有四只脚”（这是单独的命题组成的永真式但是并不是重言的）]。类似地，总是为假的公式称为 _矛盾式（contradictions）_。例如，$P and not P$ 是一个矛盾式。

#question([这些命题是 恒真式、矛盾式，还是 两者都不是？])[
  $
    not (P and Q),#h(3em)not P and not Q,#h(3em)not P or not Q.
  $
]
#solution[
  首先，我们为这三个命题都构造一个真值表。
  #align(center)[
    #table(
      columns: (2em, 2em, 7em, 8em, 8em),
      table.header([$P$], [$Q$], [$P or (Q or not P)$], [$P and not (Q or not Q)$], [$P or not (Q or Q)$]),
      [F], [F], [T], [F], [F],
      [F], [T], [T], [F], [F],
      [T], [F], [T], [F], [T],
      [T], [T], [T], [F], [T],
    )
  ]
  #h(2em)从真值表中可以清楚地看出，第一个公式是恒真式，第二个是矛盾式，第三个既不是恒真式也不是矛盾式。实际上，由于最后一列与第一列相同，第三个公式等价于 $P$。
]

我们现在可以陈述一些涉及恒真式和矛盾式的更有用的定律。你应该能够通过思考相关命题的真值表会是什么样子，来自行确认这些定律都是正确的。

*恒真式定律*
$
  P and ("恒真式") "等价于" P。 \
  P or ("恒真式") "是恒真式"。 \
  not ("恒真式") "是矛盾式"。
$
#h(2em)*矛盾式定律*
$
  P and ("矛盾式") "是矛盾式"。 \
  P or ("矛盾式") "等价于" P。 \
  not ("矛盾式") "是恒真式"。
$

#question([找出与下列公式等价的更简洁公式：])[
  + $P or (Q and not P).$
  + $not (P or (Q and not R)) and Q.$
]
#solution[
  + $P or ( Q and not P)$
    $
      #h(6em)"等价于" & #h(1em) (P or Q) and (P or not P) #h(1em) & "（分配律）。" \
       "进一步等价于" & #h(1em) P or Q #h(1em)                    & "（永真律）。"
    $
    最后一步使用了 $P or not P$ 是恒真式的事实。
  + $not (P or(Q and not R))and Q$
    $
          "它等价于" & #h(1em) (not P and not (Q and not R)) and Q#h(1em)    & "（德摩根定律）"， \
      "进一步等价于" & #h(1em) (not P and (not Q or not not R)) and Q#h(1em) & "（德摩根定律）"， \
      "进一步等价于" & #h(1em) (not P and (not Q or R)) and Q#h(1em)         & "（双重否定律）"， \
      "进一步等价于" & #h(1em) not P and ((not Q or R) and Q)#h(1em)         &     "（结合律）"， \
      "进一步等价于" & #h(1em) not P and (Q and (not Q or R))#h(1em)         &     "（交换律）"， \
      "进一步等价于" & #h(1em) not P and ((Q and not Q) or (Q and R))#h(1em) &     "（分配律）"， \
        "最终等价于" & #h(1em) not P and (Q and R)#h(1em)                    &     "（矛盾律）"。
    $
    最后一步使用了 $Q and not Q$ 是矛盾式的事实。最后，根据 $and$ 的结合律，我们可以去掉括号而不使公式产生歧义，因此原公式等价于 $not P and Q and R$。
]

#exercises((1, 5, 7, 9, 14, 16))[
  + 为下列公式制作真值表： \
    (a) $not P or Q$ \
    (b) $(S or G) and (not S or not G)$

  + 为下列公式制作真值表： \
    (a) $not \[P and (Q or not P)]$ \
    (b) $(P or Q) and (not P or R)$

  + 在本练习中，我们将使用符号 $+$ 表示异或。换句话说，$P + Q$ 表示“P 或 Q，但不能同时为真”。 \
    (a) 为 $P + Q$ 制作真值表。 \
    (b) 找出一个仅使用连接词 $and、or 和 not$ 的公式，该公式与 $P + Q$ 等价，并用真值表证明你的答案。

  + 找出一个仅使用连接词 $and 和 not$ 的公式，该公式与 $P or Q$ 等价，并用真值表证明你的答案。

  + 一些数学家使用符号 $arrow.b$ 表示异或。换句话说，$P arrow.b Q$ 表示“P 和 Q 都不为真”。 \
    (a) 为 $P arrow.b Q$ 制作真值表。 \
    (b) 找出一个仅使用连接词 $and、or 和 not$ 的公式，该公式与 $P arrow.b Q$ 等价。 \
    (c) 找出仅使用连接词 $arrow.b$ 的公式，分别与 $not P、P or Q 和 P and Q$ 等价。

  + 一些数学家用 $P | Q$ 表示“P 和 Q 不可能同时为真”。（这个连接词称为 nand，在计算机科学的电路研究中使用。） \
    (a) 为 $P bar.v Q$ 制作真值表。 \
    (b) 找出一个仅使用连接词 $and、or 和 not$ 的公式，该公式与 $P bar.v Q$ 等价。 \
    (c) 找出仅使用连接词 $bar.v$ 的公式，分别与 $not P、P or Q 和 P and Q$ 等价。

  + 使用真值表判断第 1.1 节练习 7 中的论证是否有效。

  + 使用真值表判断下列公式中哪些是等价的：
    (a) $(P and Q) or (not P and not Q)$ \
    (b) $not P or Q$ \
    (c) $(P or not Q) and (Q or not P)$ \
    (d) $not (P or Q)$ \
    (e) $(Q and P) or not P$

  + 使用真值表判断这些命题哪些是恒真式，哪些是矛盾式，哪些既不是恒真式也不是矛盾式。 \
    (a) $(P or Q) and (not P or not Q)$ \
    (b) $(P or Q) and (not P and not Q)$ \
    (c) $(P or Q) or (not P or not Q)$ \
    (d) $[P and (Q or not R)] or (not P or R)$ \

  + 使用真值表验证这些定律： \
    (a) 第二条德摩根定律（第一条在正文中已验证）。 \
    (b) 分配律。

  + 使用正文中陈述的定律，找出与下列公式等价的更简洁公式（参见例 1.2.5 和 1.2.7）： \
    (a) $not (not P and not Q)$ \
    (b) $(P and Q) or (P and not Q)$ \
    (c) $not (P and not Q) or (not P and Q)$

  + 使用正文中陈述的定律，找出与下列公式等价的更简洁公式（参见例 1.2.5 和 1.2.7）： \
    (a) $not (not P or Q) or (P and not R)$ \
    (b) $not (not P and Q) or (P and not R)$ \
    (c) $(P and R) or [not R and (P or Q)]$

  + 使用第一条德摩根定律和双重否定律推导第二条德摩根定律。

  + 注意，结合律仅说明在使用 $and$ 或 $or$ 连接三个命题时可以省略括号。实际上，当连接超过三个命题时，这些定律也可用于证明省略括号是合理的。使用结合律证明 $[P and (Q and R)] and S$ 等价于 $(P and Q) and (R and S)$。

  + 含有 $n$ 个字母的命题的真值表将有多少行？

  + 找出一个仅使用连接词 $and、or 和 not$ 的公式，使其具有下列真值表：
    #align(center)[
      #table(
        columns: 3,
        table.header([$P$], [$Q$], [???]),
        [F], [F], [T],
        [F], [T], [F],
        [T], [F], [T],
        [T], [T], [T],
      )
    ]

  + 找出一个仅使用连接词 $∧、∨ 和 ¬$ 的公式，使其具有下列真值表：
    #align(center)[
      #table(
        columns: 3,
        table.header([$P$], [$Q$], [???]),
        [F], [F], [F],
        [F], [T], [T],
        [T], [F], [T],
        [T], [T], [F],
      )
    ]

  + 假设一个论证的结论是恒真式。你能得出关于该论证有效性的什么结论？
    如果结论是矛盾式呢？
    如果其中一个前提是恒真式或矛盾式呢？
]
