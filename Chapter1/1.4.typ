#import "../lib.typ" : *
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4"

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
    所以我们只需要从解答 2 中得到的集合 $A   union B$ 开始，并移除其中也属于 $A inter B$ 的任何元素。
    答案是$(A union B) without (A inter B) = {1, 3, 5, 6, 8, 10}$。
  + 我们已经在解答 3 中列出了 $A without B$ 的元素，且 $B without A = {6, 8, 10}$。
    因此，它们的并集是$(A without B) union (B without A) = {1, 3, 5, 6, 8, 10}$。
    这与第 4 题的答案完全相同，这难道只是巧合吗？
]

#example([假设 $A = {x | x "是男人"}$ ，$B = {x | x "有棕色头发"}$ 。那么 $A inter B$、$A union B$ 和 $A without B$ 各是什么？])[]
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
  [#figure(image("../image/venn1.svg"), caption: [])<venn-none>],
  [#figure(image("../image/venn2.svg"), caption: [$A inter B$])<venn-inter>],
  [#figure(image("../image/venn3.svg"), caption: [$A union B$])<venn-union>],
  [#figure(image("../image/venn4.svg"), caption: [$A without B$])<venn-without>]
)

下面是一个文氏图如何帮助我们理解集合运算的例子。在例 1.4.2 中，对于某个特定的 $A$ 和 $B$，集合 $(A union B) without (A inter B)$ 和 $(A without B) union (B without A)$ 结果相等。通过为这两个集合分别画文氏图，你会发现这并不是巧合。两个文氏图看起来都像@venn-symme。
因此，这两个集合无论在什么情况下都相等，因为它们始终表示这样一个集合：属于 $A$ 或 $B$，但不同时属于二者的元素。这个集合叫做 _对称差（symmetric difference）_，记作 $A^2 B$#footnote[译者注：在其它地方通常记作 $A Delta B$，图论的书中通常记作 $A plus.circle B$]。换句话说，
$A^2 B = (A without B) union (B without A) = (A union B) without (A inter B)$ 。
在本节的后面，我们还会看到另一种解释，说明为什么这些集合始终相等。

#figure(image("../image/venn5.svg", height: 11em, width: 17.6em), caption: [$(A without B) union (B without A) = (A union B) without (A inter B)$])<venn-symme>

#h(2em)现在让我们回到本节开头的问题。若 $A$ 是陈述 $P(x)$ 的真集，而 $B$ 是陈述 $Q(x)$ 的真集，那么，正如我们在上一节看到的，$x ∈ A$ 与 $P(x)$ 的含义相同，而 $x ∈ B$ 与 $Q(x)$ 的含义相同。因此，$P(x) ∧ Q(x)$ 的真集是 ${x | P(x) ∧ Q(x)} = {x | x ∈ A ∧ x ∈ B} = A ∩ B$。这是合理的。它只是表明 $P(x) ∧ Q(x)$ 的真集由那些 $P(x)$ 和 $Q(x)$ 的真集共有的元素组成——换句话说，就是使得 $P(x)$ 与 $Q(x)$ 同时为真的 $x$ 的取值。我们已经看到过一个这样的例子。在例 1.4.3 中，集合 $A$ 和 $B$ 分别是陈述“$x$ 是男人”和“$x$ 有棕色头发”的真集，而 $A ∩ B$ 恰好是陈述“$x$ 是男人且 $x$ 有棕色头发”的真集。

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

#example([])[

]