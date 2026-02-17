#import "../lib.typ": *

== 集合运算
假设 $A$ 是陈述 $P(x)$ 的真集，$B$ 是陈述 $Q(x)$ 的真集。那么，陈述 $P(x) and Q(x)$、$P(x) or Q(x)$ 和 $not P(x)$ 的真集分别是什么？为了回答这些问题，我们引入一些基本的集合运算。

#definition([两个集合 $A$ 和 $B$ 的_交集（intersection）_是集合 $A inter B$，其定义如下：])[
  $
    A inter B = {x | x in A "并且" x in B}.
  $
  集合 $A$ 和 $B$ 的_并集（union）_是集合 $A union B$，其定义如下：
  $
    A union B= {x | x in A "或者" x in B}.
  $
  集合 $A$ 和 $B$ 的差集是集合 $A without B$#footnote[译者注：有些书中写作 $A-B$]，其定义如下：
  $
    A without B = {x | x in A "并且" x in.not B}.
  $
]

请记住，这些定义中出现的陈述是_元素性测试（Elementhood Test）_。例如，集合 $A inter B$ 的定义表明，要使一个对象成为 $A inter B$ 的元素，它必须是集合 $A$ 和 $B$ 中的元素。换句话说，$A inter B$ 是由 $A$ 和 $B$ 共有的元素构成的集合。
因为在数学中，“或”总是被解释为包含性“或”，所以任何属于 $A$ 或 $B$，或者同时属于 $A$ 和 $B$ 的元素，都会是集合 $A union B$ 的元素。因此，我们可以将 $A union B$ 看作是将集合 $A$ 和 $B$ 的所有元素放在一起形成的新集合。
集合 $A without B$ 是从集合 $A$ 中去掉所有也属于 $B$ 的元素后得到的集合。

#example([假设 $A = {1, 2, 3, 4, 5}$ 和 $B = {2, 4, 6, 8, 10}$。列出以下集合的元素：])[
  + $A inter B$.
  + $A union B$.
  + $A without B$.
  + $(A union B) without (A inter B)$.
  + $(A without B) union (B without A)$.
]
#solution[
  + $A inter B = {2, 4}$.
  + $A union B = {1, 2, 3, 4, 5, 6, 8, 10}$.
  + $A without B = {1, 3, 5}$.
  + 我们刚刚在解答 1 和解答 2 中计算了 $A union B$ 和 $A inter B$，
    所以我们只需要从解答 2 中得到的集合 $A union B$ 开始，并移除其中也属于 $A inter B$ 的任何元素。
    答案是$(A union B) without (A inter B) = {1, 3, 5, 6, 8, 10}$。
  + 我们已经在解答 3 中列出了 $A without B$ 的元素，且 $B without A = {6, 8, 10}$。
    因此，它们的并集是$(A without B) union (B without A) = {1, 3, 5, 6, 8, 10}$。
    这与第 4 题的答案完全相同，这难道只是巧合吗？
]

#example(
  [假设 $A = {x | x "是男人"}$ ，$B = {x | x "有棕色头发"}$ 。那么 $A inter B$、$A union B$ 和 $A without B$ 各是什么？],
)[]
#solution[
  根据定义，$A inter B = {x | x in A " 且 " x in B}$ 。正如我们在上一节看到的，集合 $A$ 和 $B$ 的定义告诉我们，$x in A$ 等价于“$x$ 是男人”，而 $x in B$ 等价于“$x$ 有棕色头发”。将其代入 $A inter B$ 的定义，我们得到
  $
    A inter B = {x | x "是男人并且" x "有棕色头发"}.
  $
  类似的推理表明
  $
    A union B = {x | x "是男人或" x "有棕色头发"},
  $
  以及
  $
    A without B = {x | x "是男人并且" x "没有棕色头发"}.
  $
]
有时候，在处理集合运算时，画出这些运算结果的图形会很有帮助。实现这一点的方法之一就是使用如@venn-none 那样的图解。这种图叫做 _文氏图（Venn diagram）_。图中所围成的矩形内部表示论域 $U$，而两个圆的内部分别表示集合 $A$ 和 $B$。由这两个集合通过运算得到的其他集合，则由图中不同的区域表示。

例如，@venn-inter 中的阴影部分表示两个圆的交叠部分，因此它表示集合 $A inter B$。@venn-union 和@venn-without 分别展示了集合 $A union B$ 和 $A without B$ 所对应的区域。
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 2em,
  [#figure(image("../../image/venn1.svg"), caption: [])<venn-none>],
  [#figure(image("../../image/venn2.svg"), caption: [$A inter B$])<venn-inter>],

  [#figure(image("../../image/venn3.svg"), caption: [$A union B$])<venn-union>],
  [#figure(image("../../image/venn4.svg"), caption: [$A without B$])<venn-without>],
)

下面是一个文氏图如何帮助我们理解集合运算的例子。在例 1.4.2 中，对于某个特定的 $A$ 和 $B$，集合 $(A union B) without (A inter B)$ 和 $(A without B) union (B without A)$ 结果相等。通过为这两个集合分别画文氏图，你会发现这并不是巧合。两个文氏图看起来都像@venn-symme。
因此，这两个集合无论在什么情况下都相等，因为它们始终表示这样一个集合：属于 $A$ 或 $B$，但不同时属于二者的元素。这个集合叫做 _对称差（symmetric difference）_，记作 $A Delta B$#footnote[译者注：有的时候会记作 $A plus.o B$]。换句话说，
$A Delta B = (A without B) union (B without A) = (A union B) without (A inter B)$ 。
在本节的后面，我们还会看到另一种解释，说明为什么这些集合始终相等。

#figure(
  image("../../image/venn5.svg", height: 11em, width: 17.6em),
  caption: [$(A without B) union (B without A) = (A union B) without (A inter B)$],
)<venn-symme>

#h(2em)现在让我们回到本节开头的问题。若 $A$ 是陈述 $P(x)$ 的真集，而 $B$ 是陈述 $Q(x)$ 的真集，那么，正如我们在上一节看到的，$x in A$ 与 $P(x)$ 的含义相同，而 $x in B$ 与 $Q(x)$ 的含义相同。因此，$P(x) and Q(x)$ 的真集是 ${x | P(x) and Q(x)} = {x | x in A and x in B} = A ∩ B$。这是合理的。它只是表明 $P(x) and Q(x)$ 的真集由那些 $P(x)$ 和 $Q(x)$ 的真集共有的元素组成——换句话说，就是使得 $P(x)$ 与 $Q(x)$ 同时为真的 $x$ 的取值。我们已经看到过一个这样的例子。在例 1.4.3 中，集合 $A$ 和 $B$ 分别是陈述“$x$ 是男人”和“$x$ 有棕色头发”的真集，而 $A ∩ B$ 恰好是陈述“$x$ 是男人且 $x$ 有棕色头发”的真集。

类似的推理表明，$P(x) or Q(x)$ 的真集是 $A union B$。
要找到 $not P(x)$ 的真集，我们需要讨论论域 $U$。
$not P(x)$ 的真集将由论域中使 $P(x)$ 为假的那些元素组成，而我们可以通过从 $U$ 中去掉使 $P(x)$ 为真的那些元素来得到该集合。
因此，$not P(x)$ 的真集是 $U without A$。

这些关于真集的观察说明了：集合论中的运算符号 $inter, union, without$ 与逻辑联结词 $and, or, not$ 是相关的。
这并不令人惊讶，因为毕竟在它们的定义中出现了“并且”，“或者”和“不是”这几个词。（“不是”虽然没有显式出现，但它实际上隐藏在两个集合之差的定义中的符号 “$in$” 里。）
然而，重要的是要记住，尽管集合论运算和逻辑联结词彼此相关，但它们并不能互换。逻辑联结词只能用来联结_命题（statements）_，而集合运算必须用来联结_集合（sets）_。
例如，如果 $A$ 是 $P(x)$ 的真集，$B$ 是 $Q(x)$ 的真集，那么我们可以说 $A inter B$ 是 $P(x) and Q(x)$ 的真集。但像 $A and B$ 或 $P(x) inter Q(x)$ 这样的表达式则完全没有意义，绝不应当使用。

当我们分析关于集合的交、并与差的命题的逻辑形式时，集合论运算与逻辑联结词之间的关系也变得显而易见。

例如，根据交集的定义，若说 $x in A inter B$，意味着 $x in A and x in B$。
同样地，若说 $x in A union B$，意味着 $x in A or x in B$；
而 $x in A without B$ 则意味着 $x in A and x in.not B$，换句话说，就是 $x in A and not (x in B)$。
在分析更复杂集合的命题时，我们可以将这些规则进行组合使用。

#example([分析下列命题的逻辑形式：])[
  + $x in A inter (B union C)$。
  + $x in A without (B inter C)$。
  + $x in (A inter B) union (A inter C)$。
]
#solution[
  1. $x in A inter (B union C)$
  $
        "它等价于" #h(0.5em) & x in A and x in (B union C)   && #h(1em) "（"inter "的定义)，" \
    "进一步等价于" #h(0.5em) & x in A and (x in V or x in C) && #h(1em) "（"union "的定义)。"
  $
  2. $x in A without (B inter C)$
  $
        "它等价于" #h(0.5em) & x in A and not (x in B inter C)    && #h(1em) "（"and "的定义)，" \
    "进一步等价于" #h(0.5em) & x in A and not (x in B and x in C) && #h(1em) "（"inter "的定义)。"
  $
  3. $x in (A inter B) union (A inter C)$
  $
        "它等价于" #h(0.5em) & x in (A inter B) or x in (A inter C)       && #h(1em) "（"union "的定义)，" \
    "进一步等价于" #h(0.5em) & (x in A and x in B) or (x in A and x in C) && #h(1em) "（"inter "的定义)。"
  $
]

再看例 1.4.4 的第 1 部分和第 3 部分的解答。
你应该注意到，这两部分最后得到的命题是等价的。（如果你没有注意到，请回到第 1.2 节中的分配律。）
这种等价性意味着，命题 $x in A inter (B union C)$ 与命题 $x in (A inter B) union (A inter C)$ 是等价的。换句话说，属于集合 $A inter (B union C)$ 的对象，恰好就是属于集合 $(A inter B) union (A inter C)$ 的对象，无论集合 $A, B, C$ 是什么。
但请记住，具有相同元素的集合是相等的，因此可得：对任意集合 $A, B, C$，都有
$A inter (B union C) = (A inter B) union (A inter C)$。
另一种看法是利用@venn6 中的文式图。我们之前的文式图只有两个圆，因为前面的例子只涉及两个集合的运算。而这个文式图有三个圆，表示此处被运算的三个集合 $A, B, C$。
虽然确实可以为三个以上的集合画文式图，但这种情况很少见，因为无法用相互重叠的圆来完成。关于三个以上集合的文式图，请参见习题 12。

#figure(
  image("../../image/venn6.svg", height: 16em, width: auto),
  caption: [$A inter (B union C) = (A inter B) union (A inter C)$],
)<venn6>

因此，我们看到，逻辑联结词的一个分配律引出了集合运算的一个分配律。
你也许会猜想：既然逻辑联结词有两个分配律，且 $and$ 与 $or$ 在这两个律中扮演了对偶的角色，那么集合运算也应当有两个分配律。
集合的第二个分配律应当表述为：对任意集合 $A, B, C$，有
$A union (B inter C) = (A union B) inter (A union C)$ 。
你可以通过如下方式自己验证这一点：把命题 $x in A union (B inter C)$ 和 $x in (A union B) inter (A union C)$ 用逻辑联结词写出来，并利用逻辑联结词 $and$ 与 $or$ 的第二个分配律来验证它们是等价的。
另一种验证方法是画出文式图。

我们可以通过找到一个与例 1.4.4 第 2 部分最后得到的命题等价的命题，来推导出另一个集合恒等式。

#v(1em)
#par(first-line-indent: 0em)[$x in A without (B inter C)$]
$
      "它等价于" #h(0.5em) & x in A and not (x in B and x in C)                 && #h(1em) "（例 1.4.4），" \
  "进一步等价于" #h(0.5em) & x in A and (x in.not B or x in.not C)              && #h(1em) "（德·摩根定理），" \
  "进一步等价于" #h(0.5em) & (x in A and x in.not B) or (x in A and x in.not C) && #h(1em) "（分配律），" \
  "进一步等价于" #h(0.5em) & (x in A without B) or (x in A without C)           && #h(1em) "（"without"的定义），" \
  "进一步等价于" #h(0.5em) & x in (A without B) union (A without C)             && #h(1em) "（"union"的定义）。" \
$
#v(1em)

#h(2em)因此，我们已经证明：对任意集合 $A, B, C$，都有
$A without (B inter C) = (A without B) union (A without C)。$
同样地，你也可以用文氏图来验证这一点。

前面我们曾经承诺要提供一种验证恒等式$(A union B) without (A inter B) = (A without B) union (B without A)$的另一种方法。
现在你应该能看出如何做到这一点了。
首先，我们把命题$x in (A union B) without (A inter B)$ 和$x in (A without B) union (B without A)$的逻辑形式写出来：

$
    x in (A union B) without (A inter B) & "的含义是：" (x in A or x in B) and not (x in A and x in B)； \
  x in (A without B) union (B without A) & "的含义是：" (x in A and x in.not B) or (x in B and x in.not A)。
$
你现在可以使用第 1.2 节中的等值式来检验这些命题是等价的。
另一种检验等价性的办法是用真值表。为简化真值表，我们用 $P$ 和 $Q$ 作为命题 $x in A$ 和 $x in B$ 的缩写。
于是我们需要检验公式$(P or Q)and not (P and Q)$与$(P and not Q) or (Q and not P)$
是否等价。@table1.7 中的真值表给出了这一点。

#figure(
  table(
    align: center,
    columns: (2.5em, 2.5em, 10em, 12em),
    table.header([$P$], [$Q$], [$(P or Q) and not (P and Q)$], [$(P and not Q) or (Q and not P)$]),
    [F], [F], [F], [F],
    [F], [T], [T], [T],
    [T], [F], [T], [T],
    [T], [T], [F], [F],
  ),
  caption: [],
)<table1.7>

#definition(
  [假设 $A$ 和 $B$ 是集合。若 $A$ 的每个元素也是 $B$ 的元素，我们称 $A$ 是 $B$ 的子集。记号 $A subset.eq B$#footnote[$subset.eq$ 符号在一些地方还写作 $⫅$ 或者 $subset$，其中 $subset$ 可能会引起歧义，不过依照Unicode对这个符号解释，它应该是子集符号，又应为集合自己本身也是自己的子集，所以读者在大多数情况下都可以等同于前面两者] 表示 $A$ 是 $B$ 的子集。
    如果 $A$ 和 $B$ 没有公共元素，我们称它们是不交的。注意，这等价于说它们的公共元素所成的集合是空集，换句话说，就是 $A inter B = emptyset$。],
)[]
#v(-1em)
#example([假设
  $A = {"red", "green"}$，
  $B = {"red", "yellow", "green", "purple"}$，
  $C = {"blue", "purple"}$。
  那么，$A$ 的两个元素 red 和 green 也都在 $B$ 中，因此 $A subset.eq B$。
  另外，$A inter C = emptyset$，所以 $A$ 和 $C$ 不交。])[]

如果我们知道 $A emptyset B$，或者知道 $A$ 和 $B$ 不交，那么我们可以用不同的文氏图来表示 $A$ 和 $B$，以反映这一点。@venn-subset 和@venn-notsubset 说明了这一点。

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 2em,
  [#figure(image("../../image/venn7.svg"), caption: [])<venn-subset>],
  [#figure(image("../../image/venn8.svg"), caption: [$A inter B$])<venn-notsubset>],
)

正如我们之前推导过一些恒等式，说明某些集合恒等相等，有时我们也可以证明某些集合恒不相交，或者一个集合恒为另一个集合的子集。
例如，从文氏图中可以看出，集合 $A inter B$ 与 $A without B$ 互不重叠，因此对于任意集合 $A$ 和 $B$，它们总是不交的。
另一种方法是写出命题 $x in (A inter B) inter (A without B)$ 的含义：
$
  x in (A inter B) inter (A without B) "的含义是" (x in A and x in B) and (x in A and x in.not B)， \
  "同时等价于" x in A and (x in B and x in.not B)。
$
但是，最后这个命题显然是一个矛盾，因此命题 $x in (A inter B) inter (A without B)$ 无论对什么 $x$ 都总是假命题。
换句话说，不可能有任何元素属于 $(A inter B) inter (A without B)$，因此必有$(A inter B) inter (A without B) = subset.eq。$
所以，$A inter B$ 与 $A without B$ 是不交的。

下一个定理给出了关于集合运算的另一个普遍事实。这个定理的证明说明了：我们一直在学习的演绎推理原理实际上确实应用在数学证明之中。

#theorem([对任意集合 $A$ 和 $B$，有 $(A union B) without B subset.eq A$ 。])[]
#v(-1em)
#proof[
  _证明._ 我们必须证明：如果某个元素属于 $(A union B) without B$，那么它也必定属于 $A$。
  于是，假设 $x in (A union B) without B$。这意味着
  $x in A union B$ 且 $x in.not B$，
  换句话说，就是 $x in A or x in B$ 且 $x in.not B$。
  注意到，这些命题的逻辑形式正是 $P or Q$ 与 $not Q$，而这正是我们在第 1.1 节的第一个演绎论证例子中出现的前提形式！正如我们在那个例子中看到的，由这些前提我们可以得出结论：$x in A$ 必为真。
  因此，凡是属于 $(A union B) without B$ 的元素，也必定属于 $A$。
  由此可得$(A union B) without B subset.eq A$ 。
]

你可能会认为，为理解定理 1.4.7 为什么成立，并不需要如此谨慎地应用逻辑律。集合 $(A union B) without B$ 可以被看作这样一个过程的结果：先从集合 $A$ 出发，把 $B$ 的元素加入，然后再把它们移除。常识会暗示结果应当仍是原来的集合 $A$；换言之，表面上看似 $(A union B) without B = A$。
然而，正如你在练习 10 中被要求证明的那样，这一结论并不正确。这表明在数学中，不能让不精确的推理促使你仓促下结论。像我们在定理 1.4.7 的证明中那样，谨慎地应用逻辑律可以帮助你避免得出没有依据的结论。

#exercises((1, 4, 9, 12, 14))[
  + 设$A={1,3,12,35}, B={3,7,12,20}, C={x| x "是质数"}$。列出下列各集合的元素。下面的集合中，是否有任意两个互不相交？是否有某些集合是其他集合的子集？ \
    (a) $A inter B$。 \
    (b) $(A union B) without C$。 \
    (c) $A union (B without C)$。

  + 设 $A = {"United States", "Germany", "China", "Australia"}$，${"Germany",$ \
    $"France", "India", "Brazil"}$ ，$C={x| x "是欧洲的国家"}$，列出下列各集合的元素。下面的集合中，是否有任意两个互不相交？是否有某些集合是其他集合的子集？ \
    (a) $A union B$。 \
    (b) $(A inter B) without C$。 \
    (c) $(B inter C) without A$。

  + 验证本节所述：$(A union B) without (A inter B)$ 与 $(A without B)union (B without A)$ 的文氏图都如@venn6 所示。

  + 用文氏图验证下列恒等式： \
    (a) $A without (A inter B)=A without B$。 \
    (b) $A union (B inter C)=(A union B) inter (A union C)$。

  + 通过写出（用逻辑符号表示）对象 $x$ 属于各集合的含义，然后使用逻辑等值式，来验证第 4 题中的恒等式。

  + 用文氏图验证下列恒等式：
    (a) $(A union B) without C=(A without C) union (B without C)$。 \
    (b) $A union (B without C)=(A union B) without (C without A)$。

  + 通过写出（用逻辑符号表示）对象 $x$ 属于各集合的含义，然后使用逻辑等值式，来验证第 6 题中的恒等式。

  + 任选你喜欢的方法验证下列恒等式：
    (a) $(A without B) inter C = (A inter C) without B$。
    (b) $(A inter B) without B = emptyset$。
    (c) $A without (A without B) = A inter B$。

  + 对下列每一集合，用逻辑符号写出“对象 $x$ 属于该集合”的含义。然后通过判断哪些命题等价，确定这些集合中哪些必然相等。
    (a) $(A without B) without C$。
    (b) $A without (B without C)$。
    (c) $(A without B) union (A inter C)$。
    (d) $(A without B) inter (A without C)$。
    (e) $A without (B union C)$。

  + 本节已证明对任意集合 $A$ 与 $B$，有 $(A union B) without B subset.eq A$。
    (a) 举出一对集合 $A$ 与 $B$ 的例子，使得 $(A union B) without B eq.not A$。
    (b) 证明对所有集合 $A$ 与 $B$，恒有 $(A union B) without B = A without B$。

  + 设 $A$ 与 $B$ 为任意集合。下列陈述是否总为真？若不，总有哪一方必为另一方的子集？$(A without B) union B = A$ 否则是否总等于 $A without B$ 或 $A union B$？请判断并说明理由。

  + 本节宣称：无法用重叠圆画出四个集合的完整文氏图。 \
    (a) 下图有什么问题？（提示：集合 $(A inter D) without (B union C)$ 在哪里？）
    #figure(image("../../image/venn9.svg", height: 13em))
    (b) 你能否用圆以外的图形为四个集合画出文氏图？

  + (a) 为集合 $(A union B) without C$ 和 $A union (B without C)$ 作文氏图。根据文氏图，你能得出哪一个集合必然是另一个的子集吗？ \
    (b) 给出具体的集合 $A,B,C$ 的例子，使得 $(A union B) without C eq.not A union (B without C)$。

  + 用文氏图说明对称差满足结合律；即对于任意集合 $A,B,C$，有$A Delta (B Delta C) = (A Delta B) Delta C.$

  + 任意选用你喜欢的方法验证下列恒等式： \
    (a) $(A Delta B) union C = (A union C) Delta (B without C).$ \
    (b) $(A Delta B) inter C = (A inter C) Delta (B inter C).$ \
    (c) $(A Delta B) without C = (A without C) Delta (B without C).$

  + 任意选用你喜欢的方法验证下列恒等式： \
    (a) $(A union B) Delta C = (A Delta C) Delta (B without A).$ \
    (b) $(A inter B) Delta C = (A Delta C) Delta (A without B).$ \
    (c) $(A without B) Delta C = (A Delta C) Delta (A inter B).$ \

  + 填空使下列恒等式成立： \
    (a) $(A Delta B) inter C = (C without A) Delta underline(#h(4em))$. \
    (b) $C without (A Delta B) = (A inter C) Delta underline(#h(4em))$. \
    (c) $(B without A) Delta C = (A Delta C) Delta underline(#h(4em))$.
]
