#import "../lib.typ" : *

== 集合运算
假设 $A$ 是陈述 $P(x)$ 的真集，$B$ 是陈述 $Q(x)$ 的真集。那么，陈述 $P(x) and Q(x)$、$P(x) or Q(x)$ 和 $not P(x)$ 的真集分别是什么？为了回答这些问题，我们引入一些基本的集合运算。

#definition([两个集合 $A$ 和 $B$ 的_交集（intersection）_是集合 $A inter B$，其定义如下：])[
  $
    A inter B = {x | x in A and x in B}.
  $
  集合 $A$ 和 $B$ 的_并集（union）_是集合 $A union B$，其定义如下：
  $
    A union B= {x | x in A or x in B}.
  $
  集合 $A$ 和 $B$ 的差集是集合 $A without B$，其定义如下：
  $
    A without B = {x | x in A and x in.not B}.
  $
]

请记住，这些定义中出现的陈述是_元素性测试（Elementhood Test）_。例如，集合 $A inter B$ 的定义表明，要使一个对象成为 $A inter B$ 的元素，它必须是集合 $A$ 和 $B$ 中的元素。换句话说，$A inter B$ 是由 $A$ 和 $B$ 共有的元素构成的集合。
因为在数学中，“或”总是被解释为包含性“或”，所以任何属于 $A$ 或 $B$，或者同时属于 $A$ 和 $B$ 的元素，都会是集合 $A union B$ 的元素。因此，我们可以将 $A union B$ 看作是将集合 $A$ 和 $B$ 的所有元素放在一起形成的新集合。
集合 $A without B$ 是从集合 $A$ 中去掉所有也属于 $B$ 的元素后得到的集合。

#question([假设 $A = {1, 2, 3, 4, 5}$ 和 $B = {2, 4, 6, 8, 10}$。列出以下集合的元素：])[
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
    答案是$(A union B) without (A inter B) = {1, 3, 5, 6, 8, 10}$
  + 我们已经在解答 3 中列出了 $A without B$ 的元素，且 $B without A = {6, 8, 10}$。
    因此，它们的并集是$(A without B) union (B without A) = {1, 3, 5, 6, 8, 10}$。
    这与第 4 题的答案完全相同，这难道只是巧合吗？
]
