
How To Prove It


# HOW TO PROVE IT

```
A Structured Approach
Third Edition
```
```
Daniel J. Velleman
Department of Mathematics and Statistics
Amherst College
Department of Mathematics and Statistics
University of Vermont
```

University Printing House, Cambridge CB2 8BS, United Kingdom
One Liberty Plaza, 20th Floor, New York, NY 10006, USA
477 Williamstown Road, Port Melbourne, VIC 3207, Australia
314–321, 3rd Floor, Plot 3, Splendor Forum, Jasola District Centre, New Delhi – 110025, India
79 Anson Road, #06–04/06, Singapore 079906
Cambridge University Press is part of the University of Cambridge.
It furthers the University’s mission by disseminating knowledge in the pursuit of education,
learning, and research at the highest international levels of excellence.
[http://www.cambridge.org](http://www.cambridge.org)
Information on this title: [http://www.cambridge.org/](http://www.cambridge.org/)
DOI: 10.1017/
© Daniel J. Velleman 2019
This publication is in copyright. Subject to statutory exception
and to the provisions of relevant collective licensing agreements,
no reproduction of any part may take place without the written
permission of Cambridge University Press.
First published 1994
Second edition 2006
Third edition 2019
Printed in the United Kingdom by TJ International Ltd, Padstow Cornwall
_A catalogue record for this publication is available from the British Library.
Library of Congress Cataloging-in-Publication Data_
Names: Velleman, Daniel J., author.
Title: How to prove it : a structured approach / Daniel J. Velleman (Amherst
College, Massachusetts).
Description: Third edition. | Cambridge ; New York, NY : Cambridge University
Press, [2019] | Includes index.
Identifiers: LCCN 2019013488| ISBN 9781108424189 (hardback : alk. paper) |
ISBN 9781108439534 (pbk. : alk. paper)
Subjects: LCSH: Logic, Symbolic and mathematical–Textbooks. |
Mathematics–Textbooks. | Proof theory–Textbooks.
Classification: LCC QA9 .V38 2019 | DDC 511.3–dc
LC record available at https://lccn.loc.gov/
ISBN 978-1-108-42418-9 Hardback
ISBN 978-1-108-43953-4 Paperback
Cambridge University Press has no responsibility for the persistence or accuracy
of URLs for external or third-party internet websites referred to in this publication
and does not guarantee that any content on such websites is, or will remain,
accurate or appropriate.


_To Shelley_


## Contents


- Introduction Preface to the Third Edition page ix
- 1 Sentential Logic
- 1.1 Deductive Reasoning and Logical Connectives
- 1.2 Truth Tables
- 1.3 Variables and Sets
- 1.4 Operations on Sets
- 1.5 The Conditional and Biconditional Connectives
- 2 Quantificational Logic
- 2.1 Quantifiers
- 2.2 Equivalences Involving Quantifiers
- 2.3 More Operations on Sets
- 3 Proofs
- 3.1 Proof Strategies
- 3.2 Proofs Involving Negations and Conditionals
- 3.3 Proofs Involving Quantifiers
- 3.4 Proofs Involving Conjunctions and Biconditionals
- 3.5 Proofs Involving Disjunctions
- 3.6 Existence and Uniqueness Proofs
- 3.7 More Examples of Proofs
- 4 Relations
- 4.1 Ordered Pairs and Cartesian Products
- 4.2 Relations
- 4.3 More About Relations
- 4.4 Ordering Relations
- 4.5 Equivalence Relations
- 5 Functions viii Contents
- 5.1 Functions
- 5.2 One-to-One and Onto
- 5.3 Inverses of Functions
- 5.4 Closures
- 5.5 Images and Inverse Images: A Research Project
- 6 Mathematical Induction
- 6.1 Proof by Mathematical Induction
- 6.2 More Examples
- 6.3 Recursion
- 6.4 Strong Induction
- 6.5 Closures Again
- 7 Number Theory
- 7.1 Greatest Common Divisors
- 7.2 Prime Factorization
- 7.3 Modular Arithmetic
- 7.4 Euler’s Theorem
- 7.5 Public-Key Cryptography
- 8 Infinite Sets
- 8.1 Equinumerous Sets
- 8.2 Countable and Uncountable Sets
- 8.3 The Cantor-Schr ̈oder-Bernstein Theorem
- Appendix: Solutions to Selected Exercises
- Suggestions for Further Reading
- Summary of Proof Techniques
- Index


## Introduction Preface to the Third Edition page ix

Students of mathematics and computer science often have trouble the first time
they’re asked to work seriously with mathematical proofs, because they don’t
know the “rules of the game.” What is expected of you if you are asked to
prove something? What distinguishes a correct proof from an incorrect one?
This book is intended to help students learn the answers to these questions
by spelling out the underlying principles involved in the construction of
proofs.
Many students get their first exposure to mathematical proofs in a high
school course on geometry. Unfortunately, students in high school geometry
are usually taught to think of a proof as a numbered list of statements and
reasons, a view of proofs that is too restrictive to be very useful. There is a
parallel with computer science here that can be instructive. Early programming
languages encouraged a similar restrictive view of computer programs as num-
bered lists of instructions. Now computer scientists have moved away from
such languages and teach programming by using languages that encourage an
approach called “structured programming.” The discussion of proofs in this
book is inspired by the belief that many of the considerations that have led
computer scientists to embrace the structured approach to programming apply
to proof writing as well. You might say that this book teaches “structured
proving.”
In structured programming, a computer program is constructed, not by
listing instructions one after another, but by combining certain basic structures
such as the if-else construct and do-while loop of the Java programming
language. These structures are combined, not only by listing them one after
another, but also by _nesting_ one within another. For example, a program
constructed by nesting an if-else construct within a do-while loop would look
like this:

```
ix
```

x _Preface to the Third Edition_

```
do
if [condition]
[List of instructions goes here.]
else
[Alternative list of instructions goes here.]
while [condition]
```
The indenting in this program outline is not absolutely necessary, but it is a
convenient method often used in computer science to display the underlying
structure of a program.
Mathematical proofs are also constructed by combining certain basic proof
structures. For example, a proof of a statement of the form “ifPthenQ” often
uses what might be called the “suppose-until” structure: we _suppose_ thatP is
true _until_ we are able to reach the conclusion thatQis true, at which point we
retract this supposition and conclude that the statement “ifPthenQ” is true.
Another example is the “for arbitraryxprove” structure: to prove a statement
of the form “for allx,P (x),” we _declare_ x _to be an arbitrary object_ and then
_prove_ P (x). Once we reach the conclusion thatP (x)is true we retract the
declaration ofxas arbitrary and conclude that the statement “for allx,P (x)”
is true. Furthermore, to prove more complex statements these structures are
often combined, not only by listing one after another, but also by nesting one
within another. For example, to prove a statement of the form “for allx, if
P (x)thenQ(x)” we would probably nest a “suppose-until” structure within a
“for arbitraryxprove” structure, getting a proof of this form:

```
Letxbe arbitrary.
SupposeP (x)is true.
[Proof ofQ(x) goes here.]
Thus, ifP (x)thenQ(x).
Thus, for allx, ifP (x)thenQ(x).
```
As before, we have used indenting to make the underlying structure of the
proof clear.
Of course, mathematicians don’t ordinarily write their proofs in this
indented form. Our aim in this book is to teach students to write proofs
in ordinary paragraphs, just as mathematicians do, and not in the indented
form. Nevertheless, our approach is based on the belief that if students are to
succeed at writing such proofs, they must understand the underlying structure
that proofs have. They must learn, for example, that sentences like “Letx
be arbitrary” and “SupposeP” are not isolated steps in proofs, but are used to
introduce the “for arbitraryxprove” and “suppose-until” proof structures. It is


```
Preface to the Third Edition xi
```
not uncommon for beginning students to use these sentences inappropriately
in other ways. Such mistakes are analogous to the programming error of using
a “do” with no matching “while.”
Note that in our examples, the choice of proof structure is guided by the
logical form of the statement being proven. For this reason, the book begins
with elementary logic to familiarize students with the various forms that
mathematical statements take. Chapter 1 discusses logical connectives, and
quantifiers are introduced in Chapter 2. These chapters also present the basics
of set theory, because it is an important subject that is used in the rest of the
book (and throughout mathematics), and also because it serves to illustrate
many of the points of logic discussed in these chapters.
Chapter 3 covers structured proving techniques in a systematic way,
running through the various forms that mathematical statements can take and
discussing the proof structures appropriate for each form. The examples of
proofs in this chapter are for the most part chosen, not for their mathematical
content, but for the proof structures they illustrate. This is especially true early
in the chapter, when only a few proof techniques have been discussed, and
as a result many of the proofs in this part of the chapter are rather trivial. As
the chapter progresses, the proofs get more sophisticated and more interesting,
mathematically.
Chapters 4 and 5, on relations and functions, serve two purposes. First,
they provide subject matter on which students can practice the proof-writing
techniques from Chapter 3. And second, they introduce students to some
fundamental concepts used in all branches of mathematics.
Chapter 6 is devoted to a method of proof that is very important in both
mathematics and computer science: mathematical induction. The presentation
builds on the techniques from Chapter 3, which students should have mastered
by this point in the book.
After completing Chapter 6, students should be ready to tackle more
substantial mathematical topics. Two such topics are presented in Chapters 7
and 8. Chapter 7, new in this third edition, gives an introduction to number
theory, and Chapter 8 discusses infinite cardinalities. These chapters give
students more practice with mathematical proofs, and they also provide a
glimpse of what more advanced mathematics is like.
Every section of every chapter ends with a list of exercises. Some exercises
are marked with an asterisk; solutions or hints for these exercises are given in
the appendix. Exercises marked with the symbolPDcan be done using Proof
Designer software, which is available free on the internet.
The biggest changes in this third edition are the addition of a new chapter
on number theory and also more than 150 additional exercises. The section


xii _Preface to the Third Edition_

on reflexive, symmetric, and transitive closures of relations has been deleted
from Chapter 4 (although these topics are now introduced in some exercises in
Section 4.4); it has been replaced with a new section in Chapter 5 on closures
of sets under functions. There are also numerous small changes throughout the
text.
I would like to thank all those who sent me comments about earlier editions
of this book. In particular, John Corcoran and Raymond Boute made several
helpful suggestions. I am also grateful for advice from Jonathan Sands and
several anonymous reviewers.


Introduction

What is mathematics? High school mathematics is concerned mostly with
solving equations and computing answers to numerical questions. College
mathematics deals with a wider variety of questions, involving not only
numbers, but also sets, functions, and other mathematical objects. What
ties them together is the use of _deductive reasoning_ to find the answers to
questions. When you solve an equation forx you are using the information
given by the equation to _deduce_ what the value ofxmust be. Similarly, when
mathematicians solve other kinds of mathematical problems, they always
justify their conclusions with deductive reasoning.
Deductive reasoning in mathematics is usually presented in the form of a
_proof_. One of the main purposes of this book is to help you develop your
mathematical reasoning ability in general, and in particular your ability to
read and write proofs. In later chapters we’ll study how proofs are constructed
in detail, but first let’s take a look at a few examples of proofs.
Don’t worry if you have trouble understanding these proofs. They’re just
intended to give you a taste of what mathematical proofs are like. In some
cases you may be able to follow many of the steps of the proof, but you may be
puzzled about why the steps are combined in the way they are, or how anyone
could have thought of the proof. If so, we ask you to be patient. Many of these
questions will be answered later in this book, particularly in Chapter 3.
All of our examples of proofs in this introduction will involve prime
numbers. Recall that an integer larger than 1 is said to be _prime_ if it cannot be
written as a product of two smaller positive integers. If it can be written as a
product of two smaller positive integers, then it is _composite_. For example, 6
is a composite number, since 6 = 2 ·3, but 7 is a prime number.
Before we can give an example of a proof involving prime numbers, we
need to find something to prove – some fact about prime numbers whose
correctness can be verified with a proof. Sometimes you can find interesting

```
1
```

2 _Introduction_

```
n Isnprime? 2 n− 1 Is 2n− 1 prime?
2 yes 3 yes
3 yes 7 yes
4 no: 4 = 2 ·2 15 no: 15 = 3 · 5
5 yes 31 yes
6 no: 6 = 2 ·3 63 no: 63 = 7 · 9
7 yes 127 yes
8 no: 8 = 2 ·4 255 no: 255 = 15 · 17
9 no: 9 = 3 ·3 511 no: 511 = 7 ·
10 no: 10 = 2 · 5 1023 no: 1023 = 31 · 33
Figure I.1.
```
patterns in mathematics just by trying out a calculation on a few numbers. For
example, consider the table in Figure I.1. For each integern from 2 to 10,
the table shows whether or not bothnand 2n− 1 are prime, and a surprising
pattern emerges. It appears that 2n− 1 is prime in precisely those cases in
whichnis prime!
Will this pattern continue? It is tempting to guess that it will, but this is
only a guess. Mathematicians call such guesses _conjectures_. Thus, we have
the following two conjectures:

**Conjecture 1.** _Suppose_ n _is an integer larger than 1 and_ n _is prime. Then_
2 n− 1 _is prime._

**Conjecture 2.** _Suppose_ n _is an integer larger than 1 and_ n _is not prime. Then_
2 n− 1 _is not prime._

Unfortunately, if we continue the table in Figure I.1, we immediately
find that Conjecture 1 is incorrect. It is easy to check that 11 is prime, but
211 − 1 = 2047 = 23·89, so 2^11 − 1 is composite. Thus, 11 is a _counterexample_
to Conjecture 1. The existence of even one counterexample establishes that
the conjecture is incorrect, but it is interesting to note that in this case there
are many counterexamples. If we continue checking numbers up to 30, we
find two more counterexamples to Conjecture 1: both 23 and 29 are prime,
but 2^23 − 1 = 8,388,607 = 47 · 178,481 and 2^29 − 1 = 536,870,911 =
2,089 · 256,999. However, no number up to 30 is a counterexample to
Conjecture 2.
Do you think that Conjecture 2 is correct? Having found counterexamples
to Conjecture 1, we know that this conjecture is incorrect, but our failure to
find a counterexample to Conjecture 2 does not show that it is correct. Perhaps
there are counterexamples, but the smallest one is larger than 30. Continuing
to check examples might uncover a counterexample, or, if it doesn’t, it might


```
Introduction 3
```
increase our confidence in the conjecture. But we can never be sure that
the conjecture is correct if we only check examples. No matter how many
examples we check, there is always the possibility that the next one will be the
first counterexample. The only way we can be sure that Conjecture 2 is correct
is to _prove_ it.
In fact, Conjecture 2 _is_ correct. Here is a proof of the conjecture:

_Proof of Conjecture 2._ Sincenis not prime, there are positive integersaand
bsuch thata < n,b < n, andn= ab. Letx= 2b− 1 andy= 1 + 2b+ 2^2 b
+ · · · + 2(a− 1)b. Then

```
xy= ( 2 b− 1)·(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= 2b·(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)− (1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= ( 2 b+ 2^2 b+ 2^3 b+ · · · + 2ab)−(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= 2ab− 1
= 2n− 1.
```
Sinceb < n, we can conclude thatx = 2b− 1 < 2 n− 1. Also, since
ab = n > a, it follows thatb >1. Therefore,x = 2b− 1> 21 − 1 = 1,
soy < xy= 2n− 1. Thus, we have shown that 2n− 1 can be written as the
product of two positive integersxandy, both of which are smaller than 2n− 1,
so 2n− 1 is not prime. ±

Now that the conjecture has been proven, we can call it a _theorem_. Don’t
worry if you find the proof somewhat mysterious. We’ll return to it again at
the end of Chapter 3 to analyze how it was constructed. For the moment, the
most important point to understand is that ifnis any integer larger than 1
that can be written as a product of two smaller positive integersaandb, then
the proof gives a method (admittedly, a somewhat mysterious one) of writing
2 n− 1 as a product of two smaller positive integersxandy. Thus, ifnis not
prime, then 2n− 1 must also not be prime. For example, supposen = 12,
so 2n− 1 = 4095. Since 12 = 3 · 4, we could takea = 3 andb = 4 in
the proof. Then according to the formulas forxandygiven in the proof, we
would havex= 2b− 1 = 2^4 − 1 = 15 andy= 1+ 2b+ 2^2 b+· · ·+ 2(a− 1)b=
1 + 2^4 + 2^8 = 273. And, just as the formulas in the proof predict, we have
xy = 15 ·273 = 4095 = 2n− 1. Of course, there are other ways of factoring
12 into a product of two smaller integers, and these might lead to other ways of
factoring 4095. For example, since 12 = 2 ·6, we could use the valuesa= 2
andb= 6. Try computing the corresponding values ofxandyand make sure
their product is 4095.


```
4 Introduction
Although we already know that Conjecture 1 is incorrect, there are still
interesting questions we can ask about it. If we continue checking prime
numbersnto see if 2n− 1 is prime, will we continue to find counterexamples
to the conjecture – examples for which 2n− 1 is not prime? Will we continue
to find examples for which 2n− 1 is prime? If there were only finitely many
prime numbers, then we might be able to investigate these questions by simply
checking 2n− 1 for every prime numbern. But in fact there are infinitely many
prime numbers. Euclid (circa 300 BCE) gave a proof of this fact in Book IX
of his Elements. His proof is one of the most famous in all of mathematics:^1
Theorem 3. There are infinitely many prime numbers.
Proof. Suppose there are only finitely many prime numbers. Letp 1 ,p 2 ,... ,
pnbe a list of all prime numbers. Letm= p 1 p 2 · · ·pn+ 1. Note thatmis not
divisible byp 1 , since dividingmbyp 1 gives a quotient ofp 2 p 3 · · ·pnand a
remainder of 1. Similarly,mis not divisible by any ofp 2 ,p 3 ,... ,pn.
We now use the fact that every integer larger than 1 is either prime or can
be written as a product of two or more primes. (We’ll see a proof of this fact
in Chapter 6 – see Theorem 6.4.2.) Clearlymis larger than 1, somis either
prime or a product of primes. Suppose first thatm is prime. Note thatm is
larger than all of the numbers in the listp 1 ,p 2 ,... ,pn, so we’ve found a
prime number not in this list. But this contradicts our assumption that this was
a list of all prime numbers.
Now supposem is a product of primes. Letqbe one of the primes in this
product. Thenmis divisible byq. But we’ve already seen thatmis not divis-
ible by any of the numbers in the listp 1 ,p 2 ,... ,pn, so once again we have a
contradiction with the assumption that this list included all prime numbers.
Since the assumption that there are finitely many prime numbers has led to
a contradiction, there must be infinitely many prime numbers. ±
Once again, you should not be concerned if some aspects of this proof
seem mysterious. After you’ve read Chapter 3 you’ll be better prepared to
understand the proof in detail. We’ll return to this proof then and analyze its
structure.
We have seen that ifn is not prime then 2n− 1 cannot be prime, but if
nis prime then 2n− 1 can be either prime or composite. Because there are
infinitely many prime numbers, there are infinitely many numbers of the form
2 n− 1 that, based on what we know so far, might be prime. But how many of
them are prime?
```
(^1) Euclid phrased the theorem and proof somewhat differently. We have chosen to take a more
modern approach in our presentation.


_Introduction_ 5
Prime numbers of the form 2n− 1 are called _Mersenne primes_ , after Father
Marin Mersenne (1588–1648), a French monk and scholar who studied these
numbers. Although many Mersenne primes have been found, it is still not
known if there are infinitely many of them. Many of the largest known prime
numbers are Mersenne primes. As of this writing (February 2019), the largest
known prime number is the Mersenne prime 282,589,933− 1, a number with
24,862,048 digits.
Mersenne primes are related to perfect numbers, the subject of another
famous unsolved problem of mathematics. A positive integern is said to be
_perfect_ ifnis equal to the sum of all positive integers smaller thannthat divide
n. (For any two integersmandn, we say thatm _divides_ nifnis divisible by
m; in other words, if there is an integerq such thatn = qm.) For example,
the only positive integers smaller than 6 that divide 6 are 1, 2, and 3, and
1+ 2+ 3 = 6. Thus, 6 is a perfect number. The next smallest perfect number is

28. (You should check for yourself that 28 is perfect by finding all the positive
integers smaller than 28 that divide 28 and adding them up.)
    Euclid proved that if 2n− 1 is prime, then 2n− 1( 2 n− 1)is perfect. Thus,
every Mersenne prime gives rise to a perfect number. Furthermore, about 2000
years after Euclid’s proof, the Swiss mathematician Leonhard Euler (1707–
1783), the most prolific mathematician in history, proved that every even
perfect number arises in this way. (For example, note that 6 = 2^1 ( 22 − 1)
and 28 = 2^2 ( 23 − 1).) Because it is not known if there are infinitely many
Mersenne primes, it is also not known if there are infinitely many even perfect
numbers. It is also not known if there are any odd perfect numbers. For proofs
of the theorems of Euclid and Euler, see exercises 18 and 19 in Section 7.4.
    Although there are infinitely many prime numbers, the primes thin out as we
look at larger and larger numbers. For example, there are 25 primes between
1 and 100, 16 primes between 1001 and 1100, and only six primes between
1,000,001 and 1,000,100. As our last introductory example of a proof, we
show that there are long stretches of consecutive positive integers containing
no primes at all. In this proof, we’ll use the following terminology: for any
positive integern, the product of all integers from 1 tonis calledn _factorial_
and is denotedn!. Thus,n!= 1 · 2 · 3· · ·n. As with our previous two proofs,
we’ll return to this proof at the end of Chapter 3 to analyze its structure.

**Theorem 4.** _For every positive integer_ n _, there is a sequence of_ n _consecutive
positive integers containing no primes._

_Proof._ Supposenis a positive integer. Letx= (n+ 1)!+ 2. We will show that
none of the numbersx,x+ 1,x+ 2,... ,x+ (n− 1)is prime. Since this is a
sequence ofnconsecutive positive integers, this will prove the theorem.


6 _Introduction_

```
To see thatxis not prime, note that
```
```
x= 1 · 2 · 3 ·4· · ·(n+ 1)+ 2
= 2 ·(1 ·3 · 4· · ·(n+ 1)+ 1).
```
Thus,xcan be written as a product of two smaller positive integers, sox is
not prime.
Similarly, we have

```
x+ 1 = 1 · 2 · 3 ·4· · ·(n+ 1)+ 3
= 3 ·(1 ·2 · 4· · ·(n+ 1)+ 1),
```
sox+ 1 is also not prime. In general, consider any numberx +i, where
0 ≤i≤ n− 1. Then we have

```
x+ i= 1 ·2 · 3 ·4 · · ·(n+ 1)+(i+ 2)
= (i+ 2)·(1 · 2 · 3· · ·(i+ 1)·(i+ 3)· · ·(n+ 1)+ 1),
```
sox+iis not prime. ±

Theorem 4 shows that there are sometimes long stretches between one
prime and the next prime. But primes also sometimes occur close together.
Since 2 is the only even prime number, the only pair of consecutive integers
that are both prime is 2 and 3. But there are lots of pairs of primes that differ
by only two, for example, 5 and 7, 29 and 31, and 7949 and 7951. Such pairs
of primes are called _twin primes_. It is not known whether there are infinitely
many twin primes.
Recently, significant progress has been made on the twin primes question.
In 2013, Yitang Zhang (1955–) proved that there is a positive integerd ≤
70,000,000 such that there are infinitely many pairs of prime numbers that
differ byd. Work of many other mathematicians in 2013–14 narrowed down
the possibilities fordtod≤ 246. Of course, if the statement holds withd= 2
then there are infinitely many twin primes.

```
Exercises
```
Note: Solutions or hints for exercises marked with an asterisk (*) are given in
the appendix.

*1. (a) Factor 2^15 − 1 = 32,767 into a product of two smaller positive
integers.


```
Introduction 7
(b) Find an integerxsuch that 1< x < 2 32,767− 1 and 232,767− 1 is
divisible byx.
```
2. Make some conjectures about the values ofnfor which 3n− 1 is prime or
    the values ofnfor which 3n− 2nis prime. (You might start by making a
    table similar to Figure I.1.)
*3. The proof of Theorem 3 gives a method for finding a prime number
different from any in a given list of prime numbers.
(a) Use this method to find a prime different from 2, 3, 5, and 7.
(b) Use this method to find a prime different from 2, 5, and 11.
4. Find five consecutive integers that are not prime.
5. Use the table in Figure I.1 and the discussion on p. 5 to find two more
    perfect numbers.
6. The sequence 3, 5, 7 is a list of three prime numbers such that each pair
    of adjacent numbers in the list differ by two. Are there any more such
    “triplet primes”?
7. A pair of distinct positive integers(m,n)is called _amicable_ if the sum of
    all positive integers smaller thannthat dividenism, and the sum of all
    positive integers smaller thanmthat dividemisn. Show that(220, 284)
    is amicable.


## 1 Sentential Logic

## 1.1 Deductive Reasoning and Logical Connectives

As we saw in the introduction, proofs play a central role in mathematics, and
deductive reasoning is the foundation on which proofs are based. Therefore,
we begin our study of mathematical reasoning and proofs by examining how
deductive reasoning works.

**Example 1.1.1.** Here are three examples of deductive reasoning:

1. It will either rain or snow tomorrow.
    It’s too warm for snow.
    Therefore, it will rain.
2. If today is Sunday, then I don’t have to go to work today.
    Today is Sunday.
    Therefore, I don’t have to go to work today.
3. I will go to work either tomorrow or today.
    I’m going to stay home today.
    Therefore, I will go to work tomorrow.

In each case, we have arrived at a _conclusion_ from the assumption that
some other statements, called _premises_ , are true. For example, the premises
in argument 3 are the statements “I will go to work either tomorrow or today”
and “I’m going to stay home today.” The conclusion is “I will go to work
tomorrow,” and it seems to be forced on us somehow by the premises.
But is this conclusion really correct? After all, isn’t it possible that I’ll stay
home today, and then wake up sick tomorrow and end up staying home again?
If that happened, the conclusion would turn out to be false. But notice that in
that case the first premise, which said that I would go to work either tomorrow

```
8
```

```
Deductive Reasoning and Logical Connectives 9
```
or today, would be false as well! Although we have no guarantee that the
conclusion is true, it can only be false if at least one of the premises is also
false. _If_ both premises are true, we can be sure that the conclusion is also true.
This is the sense in which the conclusion is forced on us by the premises, and
this is the standard we will use to judge the correctness of deductive reasoning.
We will say that an argument is _valid_ if the premises cannot all be true without
the conclusion being true as well. All three of the arguments in our example
are valid arguments.
Here’s an example of an invalid deductive argument:
Either the butler is guilty or the maid is guilty.
Either the maid is guilty or the cook is guilty.
Therefore, either the butler is guilty or the cook is guilty.

The argument is invalid because the conclusion could be false even if both
premises are true. For example, if the maid were guilty, but the butler and the
cook were both innocent, then both premises would be true and the conclusion
would be false.
We can learn something about what makes an argument valid by comparing
the three arguments in Example 1.1.1. On the surface it might seem that
arguments 2 and 3 have the most in common, because they’re both about
the same subject: attendance at work. But in terms of the reasoning used,
arguments 1 and 3 are the most similar. They both introduce two possibilities
in the first premise, rule out the second one with the second premise, and
then conclude that the first possibility must be the case. In other words, both
arguments have the form:

```
P orQ.
NotQ.
Therefore,P.
```
It is this form, and not the subject matter, that makes these arguments valid.
You can see that argument 1 has this form by thinking of the letter P as
standing for the statement “It will rain tomorrow,” and Q as standing for
“It will snow tomorrow.” For argument 3, P would be “I will go to work
tomorrow,” andQwould be “I will go to work today.”
Replacing certain statements in each argument with letters, as we have in
stating the form of arguments 1 and 3, has two advantages. First, it keeps
us from being distracted by aspects of the arguments that don’t affect their
validity. You don’t need to know anything about weather forecasting or work
habits to recognize that arguments 1 and 3 are valid. That’s because both
arguments have the form shown earlier, and you can tell that this argument


10 _Sentential Logic_

form is valid without even knowing whatP andQ stand for. If you don’t
believe this, consider the following argument:

```
Either the framger widget is misfiring, or the wrompal mechanism is out of
alignment.
I’ve checked the alignment of the wrompal mechanism, and it’s fine.
Therefore, the framger widget is misfiring.
```
If a mechanic gave this explanation after examining your car, you might still
be mystified about why the car won’t start, but you’d have no trouble following
his logic!
Perhaps more important, our analysis of the forms of arguments 1 and 3
makes clear what _is_ important in determining their validity: the words _or_ and
_not_. In most deductive reasoning, and in particular in mathematical reasoning,
the meanings of just a few words give us the key to understanding what
makes a piece of reasoning valid or invalid. (Which are the important words in
argument 2 in Example 1.1.1?) The first few chapters of this book are devoted
to studying those words and how they are used in mathematical writing and
reasoning.
In this chapter, we’ll concentrate on words used to combine statements
to form more complex statements. We’ll continue to use letters to stand for
statements, but only for unambiguous statements that are either true or false.
Questions, exclamations, and vague statements will not be allowed. It will
also be useful to use symbols, sometimes called _connective symbols_ , to stand
for some of the words used to combine statements. Here are our first three
connective symbols and the words they stand for:

Symbol Meaning
∨ or
∧ and
¬ not
Thus, ifPandQstand for two statements, then we’ll writeP∨Qto stand
for the statement “P orQ,”P∧Qfor “P andQ,” and ¬P for “notP” or “P
is false.” The statementP ∨Qis sometimes called the _disjunction_ ofP and
Q,P∧Qis called the _conjunction_ ofP andQ, and ¬Pis called the _negation_
ofP.

**Example 1. 1. 2.** Analyze the logical forms of the following statements:

1. Either John went to the store, or we’re out of eggs.
2. Joe is going to leave home and not come back.
3. Either Bill is at work and Jane isn’t, or Jane is at work and Bill isn’t.


```
Deductive Reasoning and Logical Connectives 11
```
_Solutions_

1. If we letP stand for the statement “John went to the store” andQstand for
    “We’re out of eggs,” then this statement could be represented symbolically
    asP∨Q.
2. If we letPstand for the statement “Joe is going to leave home” andQstand
    for “Joe is not going to come back,” then we could represent this statement
    symbolically asP ∧Q. But this analysis misses an important feature of
    the statement, because it doesn’t indicate thatQ is a negative statement.
    We could get a better analysis by lettingRstand for the statement “Joe is
    going to come back” and then writing the statementQas ¬R. Plugging
    this into our first analysis of the original statement, we get the improved
    analysisP∧ ¬R.
3. LetB stand for the statement “Bill is at work” andJ for the statement
    “Jane is at work.” Then the first half of the statement, “Bill is at work and
    Jane isn’t,” can be represented asB ∧ ¬J. Similarly, the second half is
    J ∧ ¬B. To represent the entire statement, we must combine these two
    with _or_ , forming their disjunction, so the solution is(B∧ ¬J )∨(J∧ ¬B).

Notice that in analyzing the third statement in the preceding example, we
added parentheses when we formed the disjunction ofB∧ ¬JandJ∧ ¬B to
indicate unambiguously which statements were being combined. This is like
the use of parentheses in algebra, in which, for example, the product ofa+ b
anda− bwould be written(a+ b)·(a−b), with the parentheses serving to
indicate unambiguously which quantities are to be multiplied. As in algebra,
it is convenient in logic to omit some parentheses to make our expressions
shorter and easier to read. However, we must agree on some conventions
about how to read such expressions so that they are still unambiguous.
One convention is that the symbol ¬ always applies only to the statement
that comes immediately after it. For example, ¬P ∧Q means(¬P )∧Q
rather than ¬(P ∧Q). We’ll see some other conventions about parentheses
later.

**Example 1. 1. 3.** What English sentences are represented by the following
expressions?

1. (¬S∧L)∨S, whereS stands for “John is smart” andLstands for “John
    is lucky.”
2. ¬S∧(L∨S), whereSandLhave the same meanings as before.
3. ¬(S∧L)∨S, withSandLstill as before.


12 _Sentential Logic_

_Solutions_

1. Either John isn’t smart and he is lucky, or he’s smart.
2. John isn’t smart, and either he’s lucky or he’s smart. Notice how the
    placement of the word _either_ in English changes according to where the
    parentheses are.
3. Either John isn’t both smart and lucky, or John is smart. The word
    _both_ in English also helps distinguish the different possible positions of
    parentheses.

It is important to keep in mind that the symbols∧,∨, and ¬ don’t really
correspond to all uses of the words _and_ , _or_ , and _not_ in English. For example,
the symbol∧could not be used to represent the use of the word _and_ in the
sentence “John and Bill are friends,” because in this sentence the word _and_ is
not being used to combine two statements. The symbols∧and∨can only be
used _between two statements_ , to form their conjunction or disjunction, and the
symbol ¬ can only be used _before a statement_ , to negate it. This means that
certain strings of letters and symbols are simply meaningless. For example,
P¬ ∧Q,P ∧/∨Q, andP¬Qare all “ungrammatical” expressions in the
language of logic. “Grammatical” expressions, such as those in Examples
1.1.2 and 1.1.3, are sometimes called _well-formed formulas_ or just _formulas_.
Once again, it may be helpful to think of an analogy with algebra, in which
the symbols + , − , ·, and ÷ can be used _between two numbers_ , as operators,
and the symbol − can also be used _before a number_ , to negate it. These are
the only ways that these symbols can be used in algebra, so expressions such
asx−÷ yare meaningless.
Sometimes, words other than _and_ , _or_ , and _not_ are used to express the mean-
ings represented by∧,∨, and ¬. For example, consider the first statement
inExample 1.1.3. Although we gave the English translation “Either John isn’t
smart and he is lucky, or he’s smart,” an alternative way of conveying the same
information would be to say “Either John isn’t smart _but_ he is lucky, or he’s
smart.” Often, the word _but_ is used in English to mean _and_ , especially when
there is some contrast or conflict between the statements being combined. For
a more striking example, imagine a weather forecaster ending his forecast with
the statement “Rain and snow are the only two possibilities for tomorrow’s
weather.” This is just a roundabout way of saying that it will either rain or snow
tomorrow. Thus, even though the forecaster has used the word _and_ , the mean-
ing expressed by his statement is a disjunction. The lesson of these examples
is that to determine the logical form of a statement you must think about what
the statement means, rather than just translating word by word into symbols.


_Deductive Reasoning and Logical Connectives_ 13
Sometimes logical words are hidden within mathematical notation. For
example, consider the statement 3 ≤ π. Although it appears to be a simple
statement that contains no words of logic, if you read it out loud you will hear
the word _or_. If we letPstand for the statement 3< πandQfor the statement
3 = π, then the statement 3 ≤ π would be writtenP ∨Q. In this example
the statements represented by the lettersP andQ are so short that it hardly
seems worthwhile to abbreviate them with single letters. In cases like this we
will sometimes not bother to replace the statements with letters, so we might
also write this statement as( 3 < π)∨(3 = π).
For a slightly more complicated example, consider the statement 3 ≤π <4.
This statement means 3 ≤ π _and_ π < 4, so once again a word of
logic has been hidden in mathematical notation. Filling in the meaning that
we just worked out for 3 ≤ π, we can write the whole statement as
[( 3 < π)∨(3 = π)]∧(π < 4 ). Knowing that the statement has this logical
form might be important in understanding a piece of mathematical reasoning
involving this statement.

```
Exercises
```
*1. Analyze the logical forms of the following statements:
(a) We’ll have either a reading assignment or homework problems, but
we won’t have both homework problems and a test.
(b) You won’t go skiing, or you will and there won’t be any snow.
(c)

### √

### 7 ±≤ 2.

2. Analyze the logical forms of the following statements:
    (a) Either John and Bill are both telling the truth, or neither of them is.
(b) I’ll have either fish or chicken, but I won’t have both fish and mashed
potatoes.
    (c) 3 is a common divisor of 6, 9, and 15.
3. Analyze the logical forms of the following statements:
    (a) Alice and Bob are not both in the room.
(b) Alice and Bob are both not in the room.
(c) Either Alice or Bob is not in the room.
(d) Neither Alice nor Bob is in the room.
4. Analyze the logical forms of the following statements:
    (a) Either both Ralph and Ed are tall, or both of them are handsome.
(b) Both Ralph and Ed are either tall or handsome.
(c) Both Ralph and Ed are neither tall nor handsome.
(d) Neither Ralph nor Ed is both tall and handsome.


14 _Sentential Logic_

5. Which of the following expressions are well-formed formulas?
    (a) ¬(¬P∨ ¬¬R).
(b) ¬(P,Q,∧R).
(c)P ∧ ¬P.
(d) (P ∧Q)(P ∨R).
*6. LetPstand for the statement “I will buy the pants” andSfor the statement
“I will buy the shirt.” What English sentences are represented by the
following formulas?
(a) ¬(P ∧ ¬S).
(b) ¬P∧ ¬S.
(c) ¬P∨ ¬S.
7. Let S stand for the statement “Steve is happy” and G for “George
    is happy.” What English sentences are represented by the following
    formulas?
    (a)(S∨G)∧(¬S∨ ¬G).
(b) [S∨(G∧ ¬S)]∨ ¬G.
(c)S∨[G∧(¬S∨ ¬G)].
8. LetT stand for the statement “Taxes will go up” andDfor “The deficit
    will go up.” What English sentences are represented by the following
    formulas?
    (a)T ∨D.
(b) ¬(T ∧D)∧ ¬(¬T ∧ ¬D).
(c)(T ∧ ¬D)∨(D∧ ¬T ).
9. Identify the premises and conclusions of the following deductive argu-
    ments and analyze their logical forms. Do you think the reasoning is
    valid? (Although you will have only your intuition to guide you in
    answering this last question, in the next section we will develop some
    techniques for determining the validity of arguments.)
    (a) Jane and Pete won’t both win the math prize. Pete will win either
       the math prize or the chemistry prize. Jane will win the math prize.
       Therefore, Pete will win the chemistry prize.
(b) The main course will be either beef or fish. The vegetable will be
either peas or corn. We will not have both fish as a main course and
corn as a vegetable. Therefore, we will not have both beef as a main
course and peas as a vegetable.
    (c) Either John or Bill is telling the truth. Either Sam or Bill is lying.
       Therefore, either John is telling the truth or Sam is lying.
(d) Either sales will go up and the boss will be happy, or expenses will go
up and the boss won’t be happy. Therefore, sales and expenses will
not both go up.


```
Truth Tables 15
```
## 1.2 Truth Tables

We saw in Section 1.1 that an argument is valid if the premises cannot all be
true without the conclusion being true as well. Thus, to understand how words
such as _and_ , _or_ , and _not_ affect the validity of arguments, we must see how they
contribute to the truth or falsity of statements containing them.
When we evaluate the truth or falsity of a statement, we assign to it one
of the labels _true_ or _false_ , and this label is called its _truth value_. It is clear
how the word _and_ contributes to the truth value of a statement containing it. A
statement of the formP∧Qcan be true only if bothP andQare true; if either
PorQis false, thenP∧Qwill be false too. Because we have assumed thatP
andQboth stand for statements that are either true or false, we can summarize
all the possibilities with the table shown in Figure 1.1. This is called a _truth
table_ for the formulaP ∧Q. Each row in the truth table represents one of
the four possible combinations of truth values for the statementsP andQ.
Although these four possibilities can appear in the table in any order, it is best
to list them systematically so we can be sure that no possibilities have been
skipped. The truth table for ¬Pis also quite easy to construct because for ¬P
to be true,P must be false. The table is shown in Figure 1.2.

```
P Q P∧Q
F F F
F T F
T F F
T T T
```
```
Figure 1.1.
```
### P ¬P

### F T

### T F

```
Figure 1.2.
```
The truth table forP ∨Qis a little trickier. The first three lines should
certainly be filled in as shown in Figure 1.3, but there may be some question
about the last line. ShouldP ∨Qbe true or false in the case in whichP and
Qare both true? In other words, doesP∨Qmean “P orQ, or both” or does
it mean “P orQbut not both”? The first way of interpreting the word _or_ is
called the _inclusive or_ (because it _includes_ the possibility of both statements
being true), and the second is called the _exclusive or_. In mathematics, _or_
always means inclusive or, unless specified otherwise, so we will interpret
∨as inclusive or. We therefore complete the truth table forP ∨Q as shown
in Figure 1.4. See exercise 3 for more about the exclusive or.
Using the rules summarized in these truth tables, we can now work out
truth tables for more complex formulas. All we have to do is work out the
truth values of the component parts of a formula, starting with the individual
letters and working up to more complex formulas a step at a time.


16 _Sentential Logic_

```
P Q P∨Q
F F F
F T T
T F T
T T?
Figure 1.3.
```
### P Q P∨Q

### F F F

### F T T

### T F T

### T T T

```
Figure 1.4.
```
**Example 1. 2. 1.** Make a truth table for the formula ¬(P ∨ ¬Q).

_Solution_

```
P Q ¬Q P∨ ¬Q ¬(P∨ ¬Q)
F F T T F
F T F F T
T F T T F
T T F T F
```
The first two columns of this table list the four possible combinations of truth
values ofP andQ. The third column, listing truth values for the formula ¬Q,
is found by simply negating the truth values forQin the second column. The
fourth column, for the formulaP∨¬Q, is found by combining the truth values
forPand ¬Qlisted in the first and third columns, according to the truth value
rule for∨summarized in Figure 1.4. According to this rule,P ∨ ¬Qwill be
false only if bothPand ¬Qare false. Looking in the first and third columns,
we see that this happens only in row two of the table, so the fourth column
contains an F in the second row and T’s in all other rows. Finally, the truth
values for the formula¬(P∨¬Q)are listed in the fifth column, which is found
by negating the truth values in the fourth column. (Note that these columns had
to be worked out in order, because each was used in computing the next.)

**Example 1. 2. 2.** Make a truth table for the formula ¬(P ∧Q)∨ ¬R.

_Solution_

```
P Q R P∧Q ¬(P∧Q) ¬R ¬(P∧Q)∨ ¬R
F F F F T T T
F F T F T F T
F T F F T T T
F T T F T F T
T F F F T T T
T F T F T F T
T T F T F T T
T T T T F F F
```

```
Truth Tables 17
```
Note that because this formula contains three letters, it takes eight lines to
list all possible combinations of truth values for these letters. (If a formula
containsndifferent letters, how many lines will its truth table have?)

Here’s a way of making truth tables more compactly. Instead of using
separate columns to list the truth values for the component parts of a formula,
just list those truth values below the corresponding connective symbol in
the original formula. This is illustrated in Figure 1.5, for the formula from
Example 1.2.1. In the first step, we have listed the truth values forP andQ
below these letters where they appear in the formula. In step two, the truth
values for ¬Qhave been added under the ¬ symbol for ¬Q. In the third step,
we have combined the truth values forP and ¬Q to get the truth values for
P ∨ ¬Q, which are listed under the∨symbol. Finally, in the last step, these
truth values are negated and listed under the initial ¬ symbol. The truth values
added in the last step give the truth value for the entire formula, so we will
call the symbol under which they are listed (the first ¬ symbol in this case) the
_main connective_ of the formula. Notice that the truth values listed under the
main connective in this case agree with the values we found in Example 1.2.1.

```
Step 1 Step 2
P Q ¬(P ∨ ¬Q)
F F F F
F T F T
T F T F
T T T T
```
### P Q ¬(P ∨ ¬Q)

### F F F T F

### F T F F T

### T F T T F

### T T T F T

```
Step 3 Step 4
P Q ¬(P ∨ ¬Q)
F F F T T F
F T F F F T
T F T T T F
T T T T F T
```
### P Q ¬(P ∨ ¬Q)

### F F F F T T F

### F T T F F F T

### T F F T T T F

### T T F T T F T

```
Figure 1.5.
```
Now that we know how to make truth tables for complex formulas, we’re
ready to return to the analysis of the validity of arguments. Consider again our
first example of a deductive argument:

```
It will either rain or snow tomorrow.
It’s too warm for snow.
Therefore, it will rain.
```

18 _Sentential Logic_

As we have seen, if we letP stand for the statement “It will rain tomorrow”
andQfor the statement “It will snow tomorrow,” then we can represent the
argument symbolically as follows:

P∨Q
¬Q
∴P (The symbol∴means _therefore_ .)
We can now see how truth tables can be used to verify the validity of this
argument. Figure 1.6 shows a truth table for both premises and the conclusion
of the argument. Recall that we decided to call an argument valid if the
premises cannot all be true without the conclusion being true as well. Looking
at Figure 1.6 we see that the only row of the table in which both premises
come out true is row three, and in this row the conclusion is also true. Thus,
the truth table confirms that if the premises are all true, the conclusion must
also be true, so the argument is valid.

```
Premises Conclusion
P Q P∨Q ¬Q P
F F F T F
F T T F F
T F T T T
T T T F T
Figure 1.6.
```
**Example 1. 2. 3.** Determine whether the following arguments are valid.

1. Either John isn’t smart and he is lucky, or he’s smart.
    John is smart.
    Therefore, John isn’t lucky.
2. The butler and the cook are not both innocent.
    Either the butler is lying or the cook is innocent.
    Therefore, the butler is either lying or guilty.

_Solutions_

1. As in Example 1.1.3, we letSstand for the statement “John is smart” and
    Lstand for “John is lucky.” Then the argument has the form:
       (¬S∧L)∨S
       S
       ∴¬L


```
Truth Tables 19
Now we make a truth table for both premises and the conclusion. (You
should work out the intermediate steps in deriving column three of this
table to confirm that it is correct.)
```
```
Premises Conclusion
S L (¬S∧L)∨S S ¬L
F F F F T
F T T F F
T F T T T
T T T T F
```
```
Both premises are true in lines three and four of this table. The conclusion
is also true in line three, but it is false in line four. Thus, it is possible
for both premises to be true and the conclusion false, so the argument is
invalid. In fact, the table shows us exactly why the argument is invalid. The
problem occurs in the fourth line of the table, in whichSandLare both
true – in other words, John is both smart and lucky. Thus, if John is both
smart and lucky, then both premises will be true but the conclusion will
be false, so it would be a mistake to infer that the conclusion must be true
from the assumption that the premises are true.
```
2. LetB stand for the statement “The butler is innocent,”Cfor the statement
    “The cook is innocent,” andLfor the statement “The butler is lying.” Then
    the argument has the form:

```
¬(B ∧C)
L∨C
∴L∨ ¬B
Here is the truth table for the premises and conclusion:
```
```
Premises Conclusion
B C L ¬(B∧C) L∨C L∨ ¬B
F F F T F T
F F T T T T
F T F T T T
F T T T T T
T F F T F F
T F T T T T
T T F F T F
T T T F T T
```
```
The premises are both true only in lines two, three, four, and six, and in
each of these cases the conclusion is true as well. Therefore, the argument
is valid.
```

20 _Sentential Logic_

If you expected the first argument in Example 1.2.3 to turn out to be valid,
it’s probably because the first premise confused you. It’s a rather complicated
statement, which we represented symbolically with the formula(¬S∧L)∨S.
According to our truth table, this formula is false ifSandLare both false, and
true otherwise. But notice that this is exactly the same as the truth table for the
simpler formulaL∨S! Because of this, we say that the formulas(¬S∧L)∨S
andL∨S are _equivalent_. Equivalent formulas always have the same truth
value no matter what statements the letters in them stand for and no matter
what the truth values of those statements are. The equivalence of the premise
(¬S∧L)∨Sand the simpler formulaL∨Smay help you understand why
the argument is invalid. Translating the formulaL∨Sback into English, we
see that the first premise could have been stated more simply as “John is either
lucky or smart (or both).” But from this premise and the second premise (that
John is smart), it clearly doesn’t follow that he’s not lucky, because he might
be both smart and lucky.

**Example 1. 2. 4.** Which of these formulas are equivalent?

```
¬(P ∧Q), ¬P∧ ¬Q, ¬P∨ ¬Q.
```
_Solution_

Here’s a truth table for all three statements. (You should check it yourself!)

```
P Q ¬(P∧Q) ¬P∧ ¬Q ¬P∨ ¬Q
F F T T T
F T T F T
T F T F T
T T F F F
```
The third and fifth columns in this table are identical, but they are different
from the fourth column. Therefore, the formulas ¬(P∧Q)and ¬P∨ ¬Qare
equivalent, but neither is equivalent to the formula ¬P ∧ ¬Q. This should
make sense if you think about what all the symbols mean. For example,
supposeP stands for the statement “The Yankees won last night” and Q
stands for “The Red Sox won last night.” Then ¬(P ∧Q) would represent
the statement “The Yankees and the Red Sox did not both win last night,”
and ¬P ∨ ¬Qwould represent “Either the Yankees or the Red Sox lost last
night”; these statements clearly convey the same information. On the other
hand, ¬P∧ ¬Qwould represent “The Yankees and the Red Sox both lost last
night,” which means something entirely different.


_Truth Tables_ 21
You can check for yourself by making a truth table that the formula ¬P ∧
¬Qfrom Example 1.2.4 is equivalent to the formula ¬(P ∨Q). (To see that
this equivalence makes sense, notice that the statements “Both the Yankees
and the Red Sox lost last night” and “It is not the case that either the Yankees
or the Red Sox won last night” mean the same thing.) This equivalence and
the one discovered in Example 1.2.4 are called _De Morgan’s laws_. They are
named for the British mathematician Augustus De Morgan (1806–1871).
In analyzing deductive arguments and the statements that occur in them, it
is helpful to be familiar with a number of equivalences that come up often.
Verify the equivalences in the following list yourself by making truth tables,
and check that they make sense by translating the formulas into English, as we
did in Example 1.2.4.

**De Morgan’s laws**

```
¬(P ∧Q)is equivalent to ¬P ∨ ¬Q.
¬(P ∨Q)is equivalent to ¬P ∧ ¬Q.
```
**Commutative laws**

```
P∧Qis equivalent toQ∧P.
P∨Qis equivalent toQ∨P.
```
**Associative laws**

```
P∧(Q∧R)is equivalent to(P ∧Q)∧R.
P∨(Q∨R)is equivalent to(P ∨Q)∨R.
```
**Idempotent laws**

```
P∧P is equivalent toP.
P∨P is equivalent toP.
```
**Distributive laws**

```
P∧(Q∨R)is equivalent to(P ∧Q)∨(P ∧R).
P∨(Q∧R)is equivalent to(P ∨Q)∧(P ∨R).
```
**Absorption laws**

```
P∨(P ∧Q)is equivalent toP.
P∧(P ∨Q)is equivalent toP.
```
**Double Negation law**

```
¬¬P is equivalent toP.
```
Notice that because of the associative laws we can leave out parentheses in
formulas of the formsP∧Q∧RandP∨Q∨Rwithout worrying that the
resulting formula will be ambiguous, because the two possible ways of filling
in the parentheses lead to equivalent formulas.


22 _Sentential Logic_

Many of the equivalences in the list should remind you of similar rules
involving + , ·, and − in algebra. As in algebra, these rules can be applied
to more complex formulas, and they can be combined to work out more
complicated equivalences. Any of the letters in these equivalences can be
replaced by more complicated formulas, and the resulting equivalence will
still be true. For example, by replacingP in the double negation law with the
formulaQ∨¬R, you can see that ¬¬(Q∨¬R)is equivalent toQ∨¬R. Also,
if two formulas are equivalent, you can always substitute one for the other in
any expression and the results will be equivalent. For example, since ¬¬P is
equivalent toP, if ¬¬Poccurs in any formula, you can always replace it with
Pand the resulting formula will be equivalent to the original.

**Example 1. 2. 5.** Find simpler formulas equivalent to these formulas:

1. ¬(P ∨ ¬Q).
2. ¬(Q∧ ¬P )∨P.

_Solutions_

1. ¬(P ∨ ¬Q)
    is equivalent to ¬P ∧ ¬¬Q (De Morgan’s law),
which is equivalent to ¬P ∧Q (double negation law).

```
You can check that this equivalence is right by making a truth table for
¬P ∧Q and seeing that it is the same as the truth table for ¬(P ∨ ¬Q)
found in Example 1.2.1.
```
2. ¬(Q∧ ¬P )∨P
    is equivalent to(¬Q∨ ¬¬P )∨P (De Morgan’s law),
which is equivalent to(¬Q∨P )∨P (double negation law),
which is equivalent to ¬Q∨(P ∨P ) (associative law),
which is equivalent to ¬Q∨P (idempotent law).

Some equivalences are based on the fact that certain formulas are either
always true or always false. For example, you can verify by making a truth
table that the formulaQ∧(P ∨ ¬P )is equivalent to justQ. But even before
you make the truth table, you can probably see why they are equivalent.
In every line of the truth table,P ∨ ¬P will come out true, and therefore
Q∧(P ∨ ¬P )will come out true when Q is also true, and false when
Q is false. Formulas that are always true, such as P ∨ ¬P, are called
_tautologies_. Similarly, formulas that are always false are called _contradictions_.
For example,P∧ ¬P is a contradiction.


```
Truth Tables 23
```
**Example 1.2.6.** Are these formulas tautologies, contradictions, or neither?

```
P∨(Q∨ ¬P ), P ∧ ¬(Q∨ ¬Q), P∨ ¬(Q∨ ¬Q).
```
_Solution_

First we make a truth table for all three formulas.

```
P Q P∨(Q∨ ¬P ) P∧ ¬(Q∨ ¬Q) P∨ ¬(Q∨ ¬Q)
F F T F F
F T T F F
T F T F T
T T T F T
```
From the truth table it is clear that the first formula is a tautology, the second
a contradiction, and the third neither. In fact, since the last column is identical
to the first, the third formula is equivalent toP.

We can now state a few more useful laws involving tautologies and
contradictions. You should be able to convince yourself that all of these laws
are correct by thinking about what the truth tables for the statements involved
would look like.

**Tautology laws**

```
P∧(a tautology) is equivalent toP.
P∨(a tautology) is a tautology.
¬ (a tautology) is a contradiction.
```
**Contradiction laws**

```
P∧(a contradiction) is a contradiction.
P∨(a contradiction) is equivalent toP.
¬ (a contradiction) is a tautology.
```
**Example 1.2.7.** Find simpler formulas equivalent to these formulas:

1. P∨(Q∧ ¬P ).
2. ¬(P ∨(Q∧ ¬R))∧Q.

_Solutions_

1. P∨(Q∧ ¬P )

```
is equivalent to(P ∨Q)∧(P ∨ ¬P ) (distributive law),
which is equivalent toP∨Q (tautology law).
The last step uses the fact thatP ∨ ¬Pis a tautology.
```

24 _Sentential Logic_

2. ¬(P ∨(Q∧ ¬R))∧Q
    is equivalent to(¬P∧ ¬(Q∧ ¬R))∧Q (De Morgan’s law),
which is equivalent to(¬P∧(¬Q∨ ¬¬R))∧Q (De Morgan’s law),
which is equivalent to(¬P∧(¬Q∨R))∧Q (double negation law),
which is equivalent to ¬P∧((¬Q∨R)∧Q) (associative law),
which is equivalent to ¬P∧(Q∧(¬Q∨R)) (commutative law),
which is equivalent to ¬P∧((Q ∧ ¬Q)∨(Q∧R))
(distributive law),
which is equivalent to ¬P∧(Q∧R) (contradiction law).
The last step uses the fact thatQ∧ ¬Q is a contradiction. Finally, by the
associative law for∧we can remove the parentheses without making the
formula ambiguous, so the original formula is equivalent to the formula
¬P∧Q∧R.

```
Exercises
```
```
*1. Make truth tables for the following formulas:
(a) ¬P ∨Q.
(b) (S∨G)∧(¬S∨ ¬G).
```
2. Make truth tables for the following formulas:
    (a) ¬ [P ∧(Q∨ ¬P )].
(b) (P ∨Q)∧(¬P∨R).
3. In this exercise we will use the symbol + to mean _exclusive or_. In other
    words,P+ Qmeans “P orQ, but not both.”
    (a) Make a truth table forP+Q.
(b) Find a formula using only the connectives∧,∨, and ¬ that is
equivalent toP +Q. Justify your answer with a truth table.
4. Find a formula using only the connectives∧and ¬ that is equivalent to
    P∨Q. Justify your answer with a truth table.
*5. Some mathematicians use the symbol ↓ to mean _nor_. In other words,
P ↓Qmeans “neitherPnorQ.”
(a) Make a truth table forP ↓Q.
(b) Find a formula using only the connectives∧,∨, and ¬ that is
equivalent toP ↓Q.
(c) Find formulas using only the connective ↓ that are equivalent to ¬P,
P ∨Q, andP∧Q.


```
Truth Tables 25
```
6. Some mathematicians writeP |Qto mean “PandQare not both true.”
    (This connective is called _nand_ , and is used in the study of circuits in
    computer science.)
    (a) Make a truth table forP |Q.
    (b) Find a formula using only the connectives ∧,∨, and ¬ that is
       equivalent toP |Q.
    (c) Find formulas using only the connective | that are equivalent to ¬P,
       P∨Q, andP ∧Q.
*7. Use truth tables to determine whether or not the arguments in exercise 9
of Section 1.1 are valid.
8. Use truth tables to determine which of the following formulas are
    equivalent to each other:
    (a) (P ∧Q)∨(¬P ∧ ¬Q).
    (b) ¬P∨Q.
    (c) (P ∨ ¬Q)∧(Q∨ ¬P ).
    (d) ¬(P ∨Q).
    (e) (Q∧P )∨ ¬P.
*9. Use truth tables to determine which of these statements are tautologies,
which are contradictions, and which are neither:
(a) (P ∨Q)∧(¬P ∨ ¬Q).
(b) (P ∨Q)∧(¬P ∧ ¬Q).
(c) (P ∨Q)∨(¬P ∨ ¬Q).
(d) [P∧(Q∨ ¬R)]∨(¬P∨R).
10. Use truth tables to check these laws:
(a) The second De Morgan’s law. (The first was checked in the text.)
(b) The distributive laws.
*11. Use the laws stated in the text to find simpler formulas equivalent to
these formulas. (See Examples 1.2.5 and 1.2.7.)
(a) ¬(¬P ∧ ¬Q).
(b) (P ∧Q)∨(P ∧ ¬Q).
(c) ¬(P ∧ ¬Q)∨(¬P ∧Q).
12. Use the laws stated in the text to find simpler formulas equivalent to
these formulas. (See Examples 1.2.5 and 1.2.7.)
(a) ¬(¬P ∨Q)∨(P ∧ ¬R).
(b) ¬(¬P ∧Q)∨(P ∧ ¬R).
(c) (P ∧R)∨[¬R∧(P ∨Q)].
13. Use the first De Morgan’s law and the double negation law to derive the
second De Morgan’s law.


26 _Sentential Logic_

*14. Note that the associative laws say only that parentheses are unnecessary
when combining _three_ statements with∧or∨. In fact, these laws can be
used to justify leaving parentheses out when more than three statements
are combined. Use associative laws to show that [P ∧(Q∧R)]∧S is
equivalent to(P ∧Q)∧(R∧S).

15. How many lines will there be in the truth table for a statement containing
    nletters?
*16. Find a formula involving the connectives∧,∨, and ¬ that has the
following truth table:

```
P Q ???
F F T
F T F
T F T
T T T
```
17. Find a formula involving the connectives∧,∨, and ¬ that has the
    following truth table:

```
P Q ???
F F F
F T T
T F T
T T F
```
18. Suppose the conclusion of an argument is a tautology. What can you
    conclude about the validity of the argument? What if the conclusion is
    a contradiction? What if one of the premises is either a tautology or a
    contradiction?

## 1.3 Variables and Sets

In mathematical reasoning it is often necessary to make statements about
objects that are represented by letters called _variables_. For example, if
the variablex is used to stand for a number in some problem, we might
be interested in the statement “x is a prime number.” Although we may
sometimes use a single letter, sayP, to stand for this statement, at other
times we will revise this notation slightly and writeP (x), to stress that
this is a statement _about_ x. The latter notation makes it easy to talk about
assigning a value toxin the statement. For example,P ( 7 )would represent the
statement “7 is a prime number,” andP (a+b)would mean “a+bis a prime


```
Variables and Sets 27
```
number.” If a statement contains more than one variable, our abbreviation for
the statement will include a list of all the variables involved. For example, we
might represent the statement “p is divisible byq” byD(p,q). In this case,
D(12, 4)would mean “12 is divisible by 4.”
Although you have probably seen variables used most often to stand for
numbers, they can stand for anything at all. For example, we could letM(x)
stand for the statement “xis a man,” andW(x) for “x is a woman.” In this
case, we are using the variablexto stand for a person. A statement might even
contain several variables that stand for different kinds of objects. For example,
in the statement “xhasychildren,” the variablexstands for a person, andy
stands for a number.
Statements involving variables can be combined using connectives, just like
statements without variables.

**Example 1. 3. 1.** Analyze the logical forms of the following statements:

1. xis a prime number, and eitheryorzis divisible byx.
2. xis a man andyis a woman andxlikesy, butydoesn’t likex.

_Solutions_

1. We could letPstand for the statement “xis a prime number,”Dfor “yis
    divisible byx,” andEfor “zis divisible byx.” The entire statement would
    then be represented by the formulaP∧(D∨E). But this analysis, though
    not incorrect, fails to capture the relationship between the statementsDand
    E. A better analysis would be to letP (x)stand for “xis a prime number”
    andD(y,x)for “y is divisible by x.” ThenD(z,x) would mean “z is
    divisible byx,” so the entire statement would beP (x)∧(D(y,x)∨D(z,x)).
2. LetM(x) stand for “xis a man,”W(y) for “yis a woman,” andL(x,y)for
    “xlikesy.” ThenL(y,x)would mean “ylikesx.” (Notice that the order of
    the variables after theLmakes a difference!) The entire statement would
    then be represented by the formulaM(x) ∧W(y) ∧L(x,y)∧ ¬L(y,x).

In the last section, we introduced the idea of assigning truth values to
statements. This idea is unproblematic for statements that do not contain
variables, since such statements are either true or false. But if a statement
contains variables, we can no longer describe the statement as being simply
true or false. Its truth value might depend on the values of the variables
involved. For example, ifP (x)stands for the statement “xis a prime number,”
thenP (x)would be true ifx = 23, but false ifx = 22. To deal with this
complication, we will define _truth sets_ for statements containing variables.


28 _Sentential Logic_

Before giving this definition, though, it might be helpful to review some basic
definitions from set theory.
A _set_ is a collection of objects. The objects in the collection are called the
_elements_ of the set. The simplest way to specify a particular set is to list its
elements between braces. For example, {3, 7, 14}is the set whose elements are
the three numbers 3, 7, and 14. We use the symbol∈to mean _is an element of_.
For example, if we letAstand for the set {3, 7, 14}, then we could write 7∈A
to say that 7 is an element ofA. To say that 11 is not an element ofA, we write
11 ∈/A.
A set is completely determined once its elements have been specified. Thus,
two sets that have exactly the same elements are always equal. Also, when a
set is defined by listing its elements, all that matters is which objects are in the
list of elements, not the order in which they are listed. An element can even
appear more than once in the list. Thus, {3, 7, 14}, {14, 3, 7}, and {3, 7, 14, 7}
are three different names for the same set.
It may be impractical to define a set that contains a very large number of
elements by listing all of its elements, and it would be impossible to give such
a definition for a set that contains infinitely many elements. Often this problem
can be overcome by listing a few elements with an ellipsis (... ) after them, if
it is clear how the list should be continued. For example, suppose we define
a setB by saying thatB = {2, 3, 5, 7, 11, 13, 17,.. .}. Once you recognize
that the numbers listed in the definition ofB are the prime numbers, then
you know that, for example, 23∈B, even though it wasn’t listed explicitly
when we definedB. But this method requires recognition of the pattern in
the list of numbers in the definition ofB, and this requirement introduces an
element of ambiguity and subjectivity into our notation that is best avoided
in mathematical writing. It is therefore usually better to define such a set by
spelling out the pattern that determines the elements of the set.
In this case we could be explicit by definingBas follows:
B = {x|xis a prime number}.

This is read “Bis equal to the set of allxsuch thatxis a prime number,” and
it means that the elements ofB are the values ofx that make the statement
“xis a prime number” come out true. You should think of the statement “x
is a prime number” as an _elementhood test_ for the set. Any value ofx that
makes this statement come out true passes the test and is an element of the set.
Anything else fails the test and is not an element. Of course, in this case the
values ofxthat make the statement true are precisely the prime numbers, so
this definition says thatB is the set whose elements are the prime numbers,
exactly as before.


```
Variables and Sets 29
```
**Example 1. 3. 2.** Rewrite these set definitions using elementhood tests:

1. E= {2, 4, 6, 8,.. .}.
2. P = {George Washington, John Adams, Thomas Jefferson, James
    Madison,.. .}.

_Solutions_

Although there might be other ways of continuing these lists of elements,
probably the most natural ones are given by the following definitions:

1. E= {n|nis a positive even integer}.
2. P = {z|zwas a president of the United States}.

If a set has been defined using an elementhood test, then that test can be used
to determine whether or not something is an element of the set. For example,
consider the set {x |x^2 < 9}. If we want to know if 5 is an element of this
set, we simply apply the elementhood test in the definition of the set – in other
words, we check whether or not 5^2 <9. Since 5^2 = 25>9, it fails the test, so
5 ∈/ {x|x^2 <9}. On the other hand,(−2)^2 = 4< 9, so − 2∈ {x|x^2 < 9}.
The same reasoning would apply to any other number. For any numbery, to
determine whether or noty ∈ {x | x^2 < 9}, we just check whether or not
y^2 < 9. In fact, we could think of the statementy ∈ {x | x^2 < 9} as just a
roundabout way of sayingy^2 <9.
Notice that because the statementy ∈ {x| x^2 < 9} means the same thing
asy^2 < 9, it is a statement abouty, but notx! To determine whether or not
y∈ {x| x^2 < 9}you need to know whatyis (so you can compare its square
to 9), but not whatx is. We say that in the statementy ∈ {x | x^2 < 9},
y is a _free_ variable, whereasx is a _bound_ variable (or a _dummy_ variable).
The free variables in a statement stand for objects that the statement says
something about. Plugging in different values for a free variable affects the
meaning of a statement and may change its truth value. The fact that you
can plug in different values for a free variable means that it is free to stand
for anything. Bound variables, on the other hand, are simply letters that are
used as a convenience to help express an idea and should not be thought
of as standing for any particular object. A bound variable can always be
replaced by a new variable without changing the meaning of the statement,
and often the statement can be rephrased so that the bound variables are
eliminated altogether. For example, the statementsy ∈ {x | x^2 < 9} and
y ∈ {w | w^2 < 9} mean the same thing, because they both mean “yis an
element of the set of all numbers whose squares are less than 9.” In this last


30 _Sentential Logic_

statement, all bound variables have been eliminated, and the only variable that
appears in the statement is the free variabley.
Note thatxis a bound variable in the statementy ∈ {x | x^2 < 9} even
though it is a free variable in the statementx^2 < 9. This last statement is a
statement aboutxthat would be true for some values ofxand false for others.
It is only when this statement is used inside the elementhood test notation that
xbecomes a bound variable. We could say that the notation {x|.. .} _binds_ the
variablex.
Everything we have said about the set {x|x^2 < 9}would apply to any set
defined by an elementhood test. In general, the statementy ∈ {x | P (x)}
means the same thing asP (y), which is a statement abouty but notx.
Similarly,y /∈ {x | P (x)} means the same thing as ¬P (y). Of course, the
expression {x | P (x)} is not a statement at all; it is a name for a set. As
you learn more mathematical notation, it will become increasingly important
to make sure you are careful to distinguish between expressions that are
mathematical statements and expressions that are names for mathematical
objects.

**Example 1. 3. 3.** What do these statements mean? What are the free variables
in each statement?

1. a+ b /∈ {x|xis an even number}.
2. y∈ {x|xis divisible byw}.
3. 2∈ {w| 6∈/ {x|xis divisible byw}}.

_Solutions_

1. This statement says thata+ bis not an element of the set of all even
    numbers, or in other words,a+ bis not an even number. Bothaandb
    are free variables, butxis a bound variable. The statement will be true for
    some values ofaandband false for others.
2. This statement says thatyis divisible byw. Bothyandware free variables,
    butxis a bound variable. The statement is true for some values ofyandw
    and false for others.
3. This looks quite complicated, but if we go a step at a time, we can decipher
    it. First, note that the statement 6∈/ {x|xis divisible byw}, which appears
    inside the given statement, means the same thing as “6 is not divisible
    byw.” Substituting this into the given statement, we find that the original
    statement is equivalent to the simpler statement 2∈ {w| 6 is not divisible
    byw}. But this just means the same thing as “6 is not divisible by 2.” Thus,
    the statement has no free variables, and bothxandware bound variables.


```
Variables and Sets 31
Because there are no free variables, the truth value of the statement doesn’t
depend on the values of any variables. In fact, since 6 is divisible by 2, the
statement is false.
```
Perhaps you have guessed by now how we can use set theory to help us
understand truth values of statements containing free variables. As we have
seen, a statement, sayP (x), containing a free variablex, may be true for
some values ofxand false for others. To distinguish the values ofxthat make
P (x)true from those that make it false, we could form the set of values ofx
for whichP (x)is true. We will call this set the _truth set_ ofP (x).

**Definition 1.3.4.** The _truth set_ of a statementP (x)is the set of all values of
xthat make the statementP (x)true. In other words, it is the set defined by
using the statementP (x)as an elementhood test: {x|P (x)}.

Note that we have defined truth sets only for statements containing _one_ free
variable. We will discuss truth sets for statements with more than one free
variable in Chapter 4.

**Example 1.3.5.** What are the truth sets of the following statements?

1. Shakespeare wrotex.
2. nis an even prime number.

_Solutions_

1. {x| Shakespeare wrotex} = {Hamlet, Macbeth, Twelfth Night,... }.
2. {n| nis an even prime number}. Because the only even prime number is
    2, this is the set {2}. Note that 2 and {2} are not the same thing! The first is
    a number, and the second is a set whose only element is a number. Thus,
    2 ∈ {2}, but 2 ±= {2}.

SupposeAis the truth set of a statementP (x). According to the definition
of truth set, this means thatA = {x | P (x)}. We’ve already seen that for
any objecty, the statementy ∈ {x | P (x)} means the same thing asP (y).
Substituting inAfor {x|P (x)}, it follows thaty∈Ameans the same thing
asP (y). Thus, we see that in general, ifAis the truth set ofP (x), then to say
thaty∈Ameans the same thing as sayingP (y).
When a statement contains free variables, it is often clear from context that
these variables stand for objects of a particular kind. The set of all objects of
this kind – in other words, the set of all possible values for the variables – is


32 _Sentential Logic_

called the _universe of discourse_ for the statement, and we say that the variables
_range over_ this universe. For example, in most contexts the universe for the
statementx^2 < 9 would be the set of all real numbers; the universe for the
statement “xis a man” might be the set of all people.
Certain sets come up often in mathematics as universes of discourse, and
it is convenient to have fixed names for them. Here are a few of the most
important ones:

```
R= {x|xis a real number}.
Q= {x|xis a rational number}.
(Recall that a real number is any number on the number line, and a
rational number is a number that can be written as a fractionp/q,
wherepandqare integers.)
Z= {x|xis an integer} = {.. ., −3, − 2, − 1, 0, 1, 2, 3,.. .}.
N= {x|xis a natural number} = {0, 1, 2, 3,.. .}.
(Some books include 0 as a natural number and some don’t. In this
book, we consider 0 to be a natural number.)
```
The lettersR,Q, andZcan be followed by a superscript + or − to indicate that
only positive or negative numbers are to be included in the set. For example,
R+= {x|xis a positive real number}, andZ−= {x|xis a negative integer}.
Although the universe of discourse can usually be determined from context,
it is sometimes useful to identify it explicitly. Consider a statementP (x)with
a free variablexthat ranges over a universeU. Although we have written the
truth set ofP (x)as {x | P (x)}, if there were any possibility of confusion
about what the universe was, we could specify it explicitly by writing {x ∈
U |P (x)}; this is read “the set of allxinU such thatP (x).” This notation
indicates that only elements ofU are to be considered for elementhood in
this truth set, and among elements ofU, only those that pass the elementhood
testP (x) will actually be in the truth set. For example, consider again the
statementx^2 < 9. If the universe of discourse for this statement were the
set of all real numbers, then its truth set would be {x ∈R| x^2 < 9}, or in
other words, the set of all real numbers between − 3 and 3. But if the universe
were the set of all integers, then the truth set would be {x∈Z| x^2 < 9} =
{−2, − 1, 0, 1, 2}. Thus, for example, 1.58∈ {x∈R|x^2 < 9}but 1.58∈/ {x∈
Z|x^2 <9}. Clearly, the choice of universe can sometimes make a difference!
Sometimes this explicit notation is used not to specify the universe of
discourse but to restrict attention to just a part of the universe. For example, in
the case of the statementx^2 < 9, we might want to consider the universe
of discourse to be the set of all real numbers, but in the course of some
reasoning involving this statement we might want to temporarily restrict our


```
Variables and Sets 33
```
attention to only positive real numbers. We might then be interested in the set
{x∈R+ | x^2 < 9}. As before, this notation indicates that only positive real
numbers will be considered for elementhood in this set, and among positive
real numbers, only those whose square is less than 9 will be in the set. Thus,
for a number to be an element of this set, it must pass two tests: it must be a
positive real number, and its square must be less than 9. In other words, the
statementy∈ {x∈R+ |x^2 <9}means the same thing asy∈R+∧y^2 <9.
In general,y∈ {x∈A|P (x)} means the same thing asy∈A∧P (y).
When a new mathematical concept has been defined, mathematicians are
usually interested in studying any possible extremes of this concept. For
example, when we discussed truth tables, the extremes we studied were
statements whose truth tables contained only T’s (tautologies) or only F’s
(contradictions). For the concept of the truth set of a statement containing a
free variable, the corresponding extremes would be the truth sets of statements
that are always true or always false. SupposeP (x) is a statement containing
a free variablexthat ranges over a universeU. It should be clear that ifP (x)
comes out true for every value ofxinU, then the truth set ofP (x)will be
the whole universeU. For example, since the statementx^2 ≥ 0 is true for
every real numberx, the truth set of this statement is {x∈R|x^2 ≥ 0} =R.
Of course, this is not unrelated to the concept of a tautology. For example,
sinceP ∨ ¬P is a tautology, the statementP (x) ∨ ¬P (x) will be true
for everyx ∈ U, no matter what statementP (x) stands for or what the
universeU is, and therefore the truth set of the statementP (x)∨ ¬P (x)will
beU.
For a statementP (x)that is false for every possible value ofx, nothing in
the universe can pass the elementhood test for the truth set ofP (x), and so this
truth set must have no elements. The idea of a set with no elements may sound
strange, but it arises naturally when we consider truth sets for statements that
are always false. Because a set is completely determined once its elements
have been specified, there is only one set that has no elements. It is called
the _empty set_ , or the _null set_ , and is often denoted∅. For example, {x∈Z|
x±= x} = ∅. Since the empty set has no elements, the statementx∈∅is an
example of a statement that is always false, no matter whatxis.
Another common notation for the empty set is based on the fact that any set
can be named by listing its elements between braces. Since the empty set has
no elements, we write nothing between the braces, like this:∅= {}. Note that
{∅}is not correct notation for the empty set. Just as we saw earlier that 2 and
{2} are not the same thing,∅is not the same as {∅}. The first is a set with
no elements, whereas the second is a set with one element, that one element
being∅, the empty set.


34 _Sentential Logic_

```
Exercises
```
*1. Analyze the logical forms of the following statements:
(a) 3 is a common divisor of 6, 9, and 15. (Note: You did this in exercise
2 of Section 1.1, but you should be able to give a better answer now.)
(b) xis divisible by both 2 and 3 but not 4.
(c)xandyare natural numbers, and exactly one of them is prime.

2. Analyze the logical forms of the following statements:
    (a)xandyare men, and eitherxis taller thanyoryis taller thanx.
(b) Eitherxoryhas brown eyes, and eitherxoryhas red hair.
(c) Eitherxoryhas both brown eyes and red hair.
*3. Write definitions using elementhood tests for the following sets:
(a) {Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune }.
(b) {Brown, Columbia, Cornell, Dartmouth, Harvard, Princeton, Univer-
sity of Pennsylvania, Yale}.
(c) {Alabama, Alaska, Arizona,... , Wisconsin, Wyoming}.
(d) {Alberta, British Columbia, Manitoba, New Brunswick, Newfound-
land and Labrador, Northwest Territories, Nova Scotia, Nunavut,
Ontario, Prince Edward Island, Quebec, Saskatchewan, Yukon}.
4. Write definitions using elementhood tests for the following sets:
    (a) {1, 4, 9, 16, 25, 36, 49,.. .}.
(b) {1, 2, 4, 8, 16, 32, 64,... }.
(c) {10, 11, 12, 13, 14, 15, 16, 17, 18, 19}.
*5. Simplify the following statements. Which variables are free and which
are bound? If the statement has no free variables, say whether it is true or
false.
(a) − 3∈ {x∈R| 13 − 2x >1}.
(b) 4∈ {x∈R− | 13 − 2x >1}.
(c) 5∈/ {x∈R| 13 − 2x > c}.
6. Simplify the following statements. Which variables are free and which
    are bound? If the statement has no free variables, say whether it is true or
    false.
    (a)w∈ {x∈R| 13 − 2x > c}.
(b) 4∈ {x∈R| 13 − 2x∈ {y|yis a prime number}}. (It might make
this statement easier to read if we letP = {y|yis a prime number};
using this notation, we could rewrite the statement as 4∈ {x ∈R|
13 − 2x∈P}.)
    (c) 4 ∈ {x ∈ {y | yis a prime number} | 13 − 2x > 1}. (Using
       the same notation as in part (b), we could write this as 4∈ {x∈P |
       13 − 2x >1}.)


```
Operations on Sets 35
```
7. List the elements of the following sets:
    (a) {x∈R| 2x^2 +x− 1 = 0}.
(b) {x∈R+| 2x^2 +x− 1 = 0}.
(c) {x∈Z| 2x^2 + x− 1 = 0}.
(d) {x∈N| 2x^2 +x− 1 = 0}.
*8. What are the truth sets of the following statements? List a few elements
of the truth set if you can.
(a) Elizabeth Taylor was once married tox.
(b) xis a logical connective studied in Section 1.1.
(c)xis the author of this book.
9. What are the truth sets of the following statements? List a few elements
    of the truth set if you can.
    (a)xis a real number andx^2 − 4x+ 3 = 0.
(b) xis a real number andx^2 − 2x+ 3 = 0.
(c)xis a real number and 5∈ {y∈R|x^2 +y^2 <50}.

## 1.4 Operations on Sets

SupposeA is the truth set of a statementP (x)and B is the truth set of
Q(x). What are the truth sets of the statementsP (x)∧Q(x),P (x)∨Q(x),
and ¬P (x)? To answer these questions, we introduce some basic operations
on sets.

**Definition 1.4.1.** The _intersection_ of two setsAandBis the setA∩Bdefined
as follows:

```
A∩B= {x|x∈Aandx∈B}.
```
The _union_ ofAandB is the setA∪Bdefined as follows:

```
A∪B = {x|x∈Aorx∈B}.
```
The _difference_ ofAandBis the setA\Bdefined as follows:

```
A\ B = {x|x∈Aandx ∈/B}.
```
Remember that the statements that appear in these definitions are _element-
hood tests_. Thus, for example, the definition ofA∩Bsays that for an object to
be an element ofA∩B, it must be an element of bothAandB. In other words,
A∩B is the set consisting of the elements thatA andB have in common.
Because the word _or_ is always interpreted as _inclusive or_ in mathematics,


36 _Sentential Logic_

anything that is an element of eitherAorB, or both, will be an element of
A∪B. Thus, we can think ofA∪Bas the set resulting from throwing all the
elements ofAandBtogether into one set.A\Bis the set you would get if you
started with the setAand removed from it any elements that were also inB.

**Example 1. 4. 2.** SupposeA= {1, 2, 3, 4, 5} andB = {2, 4, 6, 8, 10}. List the
elements of the following sets:

1. A∩B.
2. A∪B.
3. A\B.
4. (A∪B)\(A∩B).
5. (A\B)∪(B\A).

_Solutions_

1. A∩B= {2, 4}.
2. A∪B= {1, 2, 3, 4, 5, 6, 8, 10}.
3. A\B = {1, 3, 5}.
4. We have just computedA∪B andA∩B in solutions 1 and 2, so all we
    need to do is start with the setA∪B from solution 2 and remove from it
    any elements that are also inA∩B. The answer is(A∪B)\ (A∩B)=
    {1, 3, 5, 6, 8, 10}.
5. We already have the elements ofA\ B listed in solution 3, andB\A =
    {6, 8, 10}. Thus, their union is(A\B)∪(B \A)= {1, 3, 5, 6, 8, 10}. Is it
    just a coincidence that this is the same as the answer to part 4?

**Example 1. 4. 3.** SupposeA= {x | xis a man} andB = {x| xhas brown
hair}. What areA∩B,A∪B, andA\B?

_Solution_

By definition,A∩B = {x|x∈Aandx∈B}. As we saw in the last section,
the definitions ofAandBtell us thatx∈Ameans the same thing as “xis a
man,” andx∈B means the same thing as “xhas brown hair.” Plugging this
into the definition ofA∩B, we find that

```
A∩B = {x|xis a man andxhas brown hair}.
```
Similar reasoning shows that

```
A∪B = {x| eitherxis a man orxhas brown hair}
```

```
Operations on Sets 37
```
and

```
A\B= {x|xis a man andxdoes not have brown hair}.
```
Sometimes it is helpful when working with operations on sets to draw
pictures of the results of these operations. One way to do this is with diagrams
like that in Figure 1.7. This is called a _Venn diagram_. The interior of the
rectangle enclosing the diagram represents the universe of discourseU, and
the interiors of the two circles represent the two setsA andB. Other sets
formed by combining these sets would be represented by different regions
in the diagram. For example, the shaded region in Figure 1.8 is the region
common to the interiors of the circles representing A and B, and so it
represents the setA∩B. Figures 1.9 and 1.10 show the regions representing
A∪BandA\B, respectively.

```
Figure 1.7. Figure 1.8.A∩B.
```
```
Figure 1.9.A∪B. Figure 1.10.A\B.
```
Here’s an example of how Venn diagrams can help us understand operations
on sets. In Example 1.4.2 the sets(A∪B)\ (A∩B)and(A\B)∪(B \A)
turned out to be equal, for a particular choice ofAandB. You can see by
making Venn diagrams for both sets that this was not a coincidence. You’ll find
that both Venn diagrams look like Figure 1.11. Thus, these sets will always be
equal, no matter what the setsAandB are, because both sets will always be


38 _Sentential Logic_

the set of objects that are elements of eitherAorB but not both. This set is
called the _symmetric difference_ ofA andB and is writtenA² B. In other
words,A² B = (A\B)∪(B\A)= (A∪B)\(A∩B). Later in this section
we’ll see another explanation of why these sets are always equal.

```
Figure 1.11. (A∪B)\(A∩B)=(A\B)∪(B\A).
```
Let’s return now to the question with which we began this section. IfAis
the truth set of a statementP (x)andBis the truth set ofQ(x), then, as we saw
in the last section,x∈Ameans the same thing asP (x)andx∈Bmeans the
same thing asQ(x). Thus, the truth set ofP (x)∧Q(x) is {x|P (x)∧Q(x)} =
{x | x ∈A∧x ∈B} = A∩B. This should make sense. It just says that
the truth set ofP (x)∧Q(x) consists of those elements that the truth sets of
P (x)andQ(x) have in common – in other words, the values ofxthat make
bothP (x)andQ(x) come out true. We have already seen an example of this.
In Example 1.4.3 the setsAandBwere the truth sets of the statements “xis a
man” and “xhas brown hair,” andA∩B turned out to be the truth set of “xis
a man andxhas brown hair.”
Similar reasoning shows that the truth set ofP (x)∨Q(x) isA∪B. To
find the truth set of ¬P (x), we need to talk about the universe of discourse
U. The truth set of ¬P (x)will consist of those elements of the universe for
whichP (x)is false, and we can find this set by starting withUand removing
from it those elements for whichP (x)is true. Thus, the truth set of ¬P (x)
isU\A.
These observations about truth sets illustrate the fact that the set theory
operations ∩,∪, and \ are related to the logical connectives∧,∨, and ¬. This
shouldn’t be surprising, since after all the words _and_ , _or_ , and _not_ appear in
their definitions. (The word _not_ doesn’t appear explicitly, but it’s there, hidden
in the mathematical symbol∈/in the definition of the difference of two sets.)
It is important to remember, though, that although the set theory operations
and logical connectives are related, they are not interchangeable. The logical
connectives can only be used to combine _statements_ , whereas the set theory
operations must be used to combine _sets_. For example, ifAis the truth set of


```
Operations on Sets 39
```
P (x)andB is the truth set ofQ(x), then we can say thatA∩Bis the truth set
ofP (x)∧Q(x), but expressions such asA∧BorP (x)∩Q(x) are completely
meaningless and should never be used.
The relationship between set theory operations and logical connectives also
becomes apparent when we analyze the logical forms of statements about
intersections, unions, and differences of sets. For example, according to the
definition of intersection, to say thatx∈A∩Bmeans thatx∈A∧x∈B.
Similarly, to say thatx∈A∪Bmeans thatx∈A∨x ∈B, andx ∈A\B
meansx∈A∧x ∈/B, or in other wordsx∈A∧ ¬(x∈B). We can combine
these rules when analyzing statements about more complex sets.

**Example 1. 4. 4.** Analyze the logical forms of the following statements:

1. x∈A∩(B∪C).
2. x∈A\(B ∩C).
3. x∈(A∩B)∪(A∩C).

_Solutions_

1. x∈A∩(B∪C)
    is equivalent tox∈A∧x∈(B ∪C) (definition of ∩),
which is equivalent tox∈A∧(x∈B ∨x∈C) (definition of∪).
2. x∈A\(B ∩C)

```
is equivalent tox∈A∧ ¬(x∈B∩C) (definition of \ ),
which is equivalent tox∈A∧ ¬(x∈B∧x∈C) (definition of ∩).
```
3. x∈(A∩B)∪(A∩C)

```
is equivalent tox∈(A∩B)∨x∈(A∩C) (definition of∪),
which is equivalent to(x ∈A∧x∈B)∨(x∈A∧x∈C)
(definition of ∩).
```
Look again at the solutions to parts 1 and 3 of Example 1.4.4. You
should recognize that the statements we ended up with in these two parts
are equivalent. (If you don’t, look back at the distributive laws in Section
1.2.) This equivalence means that the statementsx ∈A∩(B ∪C) andx∈
(A∩B)∪(A∩C)are equivalent. In other words, the objects that are elements
of the setA∩(B∪C)will be precisely the same as the objects that are elements
of(A∩B)∪(A∩C), no matter what the setsA,B, andCare. But recall that
sets with the same elements are equal, so it follows that for any setsA,B, and
C,A∩(B∪C)=(A∩B)∪(A∩C). Another way to see this is with the Venn


40 _Sentential Logic_

diagram in Figure 1.12. Our earlier Venn diagrams had two circles, because
in previous examples only two sets were being combined. This Venn diagram
has three circles, which represent the three setsA,B, andC that are being
combined in this case. Although it is possible to create Venn diagrams for more
than three sets, it is rarely done, because it cannot be done with overlapping
circles. For more on Venn diagrams for more than three sets, see exercise 12.

```
Figure 1.12.A∩(B∪C)=(A∩B)∪(A∩C).
```
Thus, we see that a distributive law for logical connectives has led to a
distributive law for set theory operations. You might guess that because there
were _two_ distributive laws for the logical connectives, with∧and∨playing
opposite roles in the two laws, there might be two distributive laws for set
theory operations too. The second distributive law for sets should say that
for any setsA,B, andC,A∪(B ∩C) = (A ∪B)∩(A∪C). You can
verify this for yourself by writing out the statementsx ∈A∪(B ∩C) and
x∈(A∪B)∩(A∪C)using logical connectives and verifying that they are
equivalent, using the second distributive law for the logical connectives∧and
∨. Another way to see it is to make a Venn diagram.
We can derive another set theory identity by finding a statement equivalent
to the statement we ended up with in part 2 of Example 1.4.4:

x∈A\(B ∩C)

```
is equivalent tox∈A∧¬(x∈B∧x∈C) (Example 1.4.4),
which is equivalent tox∈A∧(x ∈/B∨x ∈/C) (De Morgan’s law),
which is equivalent to(x∈A∧x ∈/B)∨(x∈A∧x ∈/C) (distributive law),
which is equivalent to(x∈A\B)∨(x∈A\C) (definition of \ ),
which is equivalent tox∈(A\B)∪(A\ C) (definition of∪).
```

```
Operations on Sets 41
```
Thus, we have shown that for any setsA,B, andC, we haveA\(B ∩C) =
(A\B)∪(A\ C). Once again, you can verify this with a Venn diagram as
well.
Earlier we promised an alternative way to check the identity(A∪B)\(A∩
B) = (A\B) ∪(B \ A). You should see now how this can be done. First,
we write out the logical forms of the statementsx∈(A∪B)\(A∩B)and
x∈(A\B)∪(B\ A):

```
x∈(A∪B)\(A∩B)means(x∈A∨x∈B)∧ ¬(x ∈A∧x∈B);
x∈(A\B)∪(B \A)means(x∈A∧x ∈/B)∨(x ∈B∧x ∈/A).
```
You can now check, using equivalences from Section 1.2, that these statements
are equivalent. An alternative way to check the equivalence is with a truth
table. To simplify the truth table, let’s useP andQ as abbreviations for the
statementsx ∈Aandx ∈B. Then we must check that the formulas(P ∨
Q)∧ ¬(P∧Q)and(P∧ ¬Q)∨(Q∧ ¬P )are equivalent. The truth table in
Figure 1.13 shows this.

```
P Q (P ∨Q)∧ ¬(P ∧Q) (P ∧ ¬Q)∨(Q∧ ¬P )
F F F F
F T T T
T F T T
T T F F
```
```
Figure 1.13.
```
**Definition 1.4.5.** SupposeAandBare sets. We will say thatAis a _subset_ of
Bif every element ofAis also an element ofB. We writeA⊆Bto mean that
Ais a subset ofB.AandB are said to be _disjoint_ if they have no elements
in common. Note that this is the same as saying that the set of elements they
have in common is the empty set, or in other wordsA∩B= ∅.

**Example 1.4.6.** SupposeA= {red, green},B = {red, yellow, green, purple},
andC = {blue, purple}. Then the two elements ofA, red and green, are both
also inB, and thereforeA⊆B. Also,A∩C= ∅, soAandCare disjoint.

If we know thatA ⊆B, or thatAandB are disjoint, then we might draw
a Venn diagram forAandB differently to reflect this. Figures 1.14 and 1.15
illustrate this.
Just as we earlier derived identities showing that certain sets are always
equal, it is also sometimes possible to show that certain sets are always


42 _Sentential Logic_

```
Figure 1.14.A⊆B. Figure 1.15.A∩B=∅.
```
disjoint, or that one set is always a subset of another. For example, you can
see in a Venn diagram that the setsA∩B andA\ B do not overlap, and
therefore they will always be disjoint for any setsAandB. Another way to
see this would be to write out what it means to say thatx∈(A∩B)∩(A\B):

```
x∈(A∩B)∩(A\B)means(x∈A∧x∈B)∧(x∈A∧x ∈/B),
which is equivalent tox∈A∧(x ∈B ∧x ∈/B).
```
But this last statement is clearly a contradiction, so the statementx∈(A∩B)∩
(A\B)will always be false, no matter whatxis. In other words, nothing can be
an element of(A∩B)∩(A\B), so it must be the case that(A∩B)∩(A\B)= ∅.
Therefore,A∩BandA\Bare disjoint.
The next theorem gives another example of a general fact about set oper-
ations. The proof of this theorem illustrates that the principles of deductive
reasoning we have been studying are actually used in mathematical proofs.

**Theorem 1. 4. 7.** _For any sets_ A _and_ B _,_ (A∪B)\B ⊆A_._

_Proof._ We must show that if something is an element of(A∪B)\B, then it
must also be an element ofA, so suppose thatx ∈(A∪B)\B. This means
thatx ∈A∪B andx ∈/ B, or in other wordsx∈A∨x ∈B andx ∈/B.
But notice that these statements have the logical formP∨Qand ¬Q, and this
is precisely the form of the premises of our very first example of a deductive
argument in Section 1.1! As we saw in that example, from these premises we
can conclude thatx ∈Amust be true. Thus, anything that is an element of
(A∪B)\Bmust also be an element ofA, so(A∪B)\B ⊆A. ±

You might think that such a careful application of logical laws is not needed
to understand why Theorem 1.4.7 is correct. The set(A∪B)\ B could be
thought of as the result of starting with the setA, adding in the elements of
B, and then removing them again. Common sense suggests that the result will


```
Operations on Sets 43
```
just be the original setA; in other words, it appears that(A∪B)\ B = A.
However, as you are asked to show in exercise 10, this conclusion is incorrect.
This illustrates that in mathematics, you must not allow imprecise reasoning
to lead you to jump to conclusions. Applying laws of logic carefully, as we did
in our proof of Theorem 1.4.7, may help you to avoid jumping to unwarranted
conclusions.

```
Exercises
```
```
*1. LetA= {1, 3, 12, 35},B = {3, 7, 12, 20}, andC = {x | xis a prime
number}. List the elements of the following sets. Are any of the sets
below disjoint from any of the others? Are any of the sets below subsets
of any others?
(a) A∩B.
(b) (A∪B)\C.
(c) A∪(B \C).
```
2. LetA= {United States, Germany, China, Australia},B = {Germany,
    France, India, Brazil}, andC = {x| xis a country in Europe}. List the
    elements of the following sets. Are any of the sets below disjoint from
    any of the others? Are any of the sets below subsets of any others?
    (a) A∪B.
    (b) (A∩B)\C.
    (c) (B ∩C)\A.
3. Verify that the Venn diagrams for(A∪B)\(A∩B)and(A\B)∪(B\A)
    both look like Figure 1.11, as stated in this section.
*4. Use Venn diagrams to verify the following identities:
(a) A\ (A∩B)=A\B.
(b) A∪(B ∩C)= (A∪B)∩(A∪C).
5. Verify the identities in exercise 4 by writing out (using logical symbols)
    what it means for an objectxto be an element of each set and then using
    logical equivalences.
6. Use Venn diagrams to verify the following identities:
    (a) (A∪B)\C=(A\C)∪(B \ C).
    (b) A∪(B \C)=(A∪B)\(C\ A).
7. Verify the identities in exercise 6 by writing out (using logical symbols)
    what it means for an objectxto be an element of each set and then using
    logical equivalences.
8. Use any method you wish to verify the following identities:


44 _Sentential Logic_

```
(a)(A\B)∩C= (A∩C)\B.
(b) (A∩B)\B = ∅.
(c)A\(A\B)= A∩B.
*9. For each of the following sets, write out (using logical symbols) what
it means for an objectxto be an element of the set. Then determine
which of these sets must be equal to each other by determining which
statements are equivalent.
(a)(A\B)\C.
(b) A\(B \C).
(c)(A\B)∪(A∩C).
(d) (A\B)∩(A\C).
(e)A\(B ∪C).
```
10. It was shown in this section that for any setsAandB,(A∪B)\B ⊆A.
    (a) Give an example of two setsAandBfor which(A∪B)\B ±= A.
(b) Show that for all setsAandB,(A∪B)\B = A\B.
11. SupposeAandBare sets. Is it necessarily true that(A\B)∪B = A? If
    not, is one of these sets necessarily a subset of the other? Is(A\B)∪B
    always equal to eitherA\B orA∪B?
*12. It is claimed in this section that you cannot make a Venn diagram for
four sets using overlapping circles.
(a) What’s wrong with the following diagram? (Hint: Where’s the set
(A∩D)\ (B∪C)?)

```
(b) Can you make a Venn diagram for four sets using shapes other than
circles?
```
13. (a) Make Venn diagrams for the sets(A∪B)\CandA∪(B\C). What
    can you conclude about whether one of these sets is necessarily a
    subset of the other?
(b) Give an example of setsA,B, andC for which(A∪B)\ C ±=
A∪(B \C).


```
The Conditional and Biconditional Connectives 45
```
*14. Use Venn diagrams to show that the associative law holds for symmetric
difference; that is, for any setsA,B, andC,A² (B² C) =(A² B)² C.

15. Use any method you wish to verify the following identities:
    (a) (A² B)∪C= (A∪C)² (B \C).
    (b) (A² B)∩C= (A∩C)² (B ∩C).
    (c) (A² B)\C= (A\C)² (B \C).
16. Use any method you wish to verify the following identities:
    (a) (A∪B)² C= (A² C)² (B \A).
    (b) (A∩B)² C= (A² C)² (A\B).
    (c) (A\B)² C= (A² C)² (A∩B).
17. Fill in the blanks to make true identities:
    (a) (A² B)∩C= (C\A)².
    (b) C\(A² B)= (A∩C)².
    (c) (B \A)² C= (A² C)².

## 1.5 The Conditional and Biconditional Connectives

It is time now to return to a question we left unanswered in Section 1.1. We
have seen how the reasoning in the first and third arguments in Example 1.1.1
can be understood by analyzing the connectives∨and ¬. But what about the
reasoning in the second argument? Recall that the argument went like this:

```
If today is Sunday, then I don’t have to go to work today.
Today is Sunday.
Therefore, I don’t have to go to work today.
```
What makes this reasoning valid?
It appears that the crucial words here are _if_ and _then_ , which occur in
the first premise. We therefore introduce a new logical connective, →, and
writeP →Q to represent the statement “IfP thenQ.” This statement is
sometimes called a _conditional_ statement, withP as its _antecedent_ andQ
as its _consequent_. If we letP stand for the statement “Today is Sunday” and
Qfor the statement “I don’t have to go to work today,” then the logical form
of the argument would be

```
P →Q
P
∴Q
```

46 _Sentential Logic_

Our analysis of the new connective →should lead to the conclusion that this
argument is valid.

**Example 1. 5. 1.** Analyze the logical forms of the following statements:

1. If it’s raining and I don’t have my umbrella, then I’ll get wet.
2. If Mary did her homework, then the teacher won’t collect it, and if she
    didn’t, then he’ll ask her to do it on the board.

_Solutions_

1. LetRstand for the statement “It’s raining,”U for “I have my umbrella,”
    andW for “I’ll get wet.” Then statement 1 would be represented by the
    formula(R∧ ¬U)→W.
2. LetHstand for “Mary did her homework,”Cfor “The teacher will collect
    it,” andBfor “The teacher will ask Mary to do the homework on the board.”
    Then the given statement means(H → ¬C)∧(¬H →B).

To analyze arguments containing the connective →we must work out the
truth table for the formulaP → Q. BecauseP → Qis supposed to mean
that ifP is true thenQis also true, we certainly want to say that ifP is true
andQis false thenP → Q is false. IfP is true andQis also true, then it
seems reasonable to say thatP → Qis true. This gives us the last two lines
of the truth table in Figure 1.16. The remaining two lines of the truth table are
harder to fill in, although probably most people would say that ifP andQare
both false thenP → Qshould be considered true. Thus, we can sum up our
conclusions so far with the table in Figure 1.16.

```
P Q P →Q
F F T?
F T?
T F F
T T T
```
```
Figure 1.16.
```
To help us fill in the undetermined lines in this truth table, let’s look at
an example. Consider the statement “Ifx > 2 thenx^2 > 4,” which we
could represent with the formulaP (x) → Q(x), whereP (x)stands for the
statementx >2 andQ(x) stands forx^2 >4. Of course, the statementsP (x)
andQ(x) containxas a free variable, and each will be true for some values
ofxand false for others. But surely, no matter what the value of x is, we


```
The Conditional and Biconditional Connectives 47
```
would say it is true that _if_ x >2 thenx^2 > 4, so the conditional statement
P (x) → Q(x) should be true. Thus, the truth table should be completed
in such a way that no matter what value we plug in forx, this conditional
statement comes out true.
For example, supposex = 3. In this casex > 2 andx^2 = 9> 4, so
P (x)andQ(x) are both true. This corresponds to line four of the truth table
in Figure 1.16, and we’ve already decided that the statementP (x) →Q(x)
should come out true in this case. But now consider the casex = 1. Then
x <2 andx^2 = 1< 4, soP (x)andQ(x) are both false, corresponding to
line one in the truth table. We have tentatively placed a T in this line of the
truth table, and now we see that this tentative choice must be right. If we put
an F there, then the statementP (x)→Q(x) would come out false in the case
x= 1, and we’ve already decided that it should be true for all values ofx.
Finally, consider the case x = − 5. Thenx < 2, soP (x)is false, but
x^2 = 25 > 4, soQ(x) is true. Thus, in this case we find ourselves in the
second line of the truth table, and once again, if the conditional statement
P (x)→ Q(x) is to be true in this case, we must put a T in this line. So it
appears that all the questionable lines in the truth table in Figure 1.16 must be
filled in with T’s, and the completed truth table for the connective → must be
as shown in Figure 1.17.

### P Q P →Q

### F F T

### F T T

### T F F

### T T T

```
Figure 1.17.
```
Of course, there are many other values ofxthat could be plugged into our
statement “Ifx >2 thenx^2 >4”; but if you try them, you’ll find that they all
lead to line one, two, or four of the truth table, as our examplesx = 1, − 5,
and 3 did. No value ofxwill lead to line three, because you could never have
x >2 butx^2 ≤ 4. After all, that’s why we said that the statement “Ifx > 2
thenx^2 >4” was always true, no matter whatxwas! The point of saying that
this conditional statement is always true is simply to say that you will never
find a value ofxsuch thatx >2 andx^2 ≤ 4 – in other words, there is no value
ofxfor whichP (x)is true butQ(x) is false. Thus, it should make sense that
in the truth table forP →Q, the only line that is false is the line in whichP
is true andQis false.


48 _Sentential Logic_

As the truth table in Figure 1.18 shows, the formula ¬P∨Qis also true in
every case except whenP is true andQis false. Thus, if we accept the truth
table in Figure 1.17 as the correct truth table for the formulaP →Q, then we
will be forced to accept the conclusion that the formulasP →Qand ¬P∨Q
are equivalent. Is this consistent with the way the words _if_ and _then_ are used
in ordinary language? It may not seem to be at first, but, at least for some uses
of the words _if_ and _then_ , it is.

### P Q ¬P ∨Q

### F F T

### F T T

### T F F

### T T T

```
Figure 1.18.
```
For example, imagine a teacher saying to a class, in a threatening tone
of voice, “You won’t neglect your homework, or you’ll fail the course.”
Grammatically, this statement has the form ¬P∨Q, whereP is the statement
“You will neglect your homework” andQ is “You’ll fail the course.” But
what message is the teacher trying to convey with this statement? Clearly
the intended message is “If you neglect your homework, then you’ll fail the
course,” or in other wordsP → Q. Thus, in this example, the formulas
¬P∨QandP →Qseem to mean the same thing.
There is a similar idea at work in the first statement from Example 1.1.2,
“Either John went to the store, or we’re out of eggs.” In Section 1.1 we
represented this statement by the formulaP ∨Q, withP standing for “John
went to the store” andQfor “We’re out of eggs.” But someone who made this
statement would probably be trying to express the idea that if John didn’t go
to the store, then we’re out of eggs, or in other words ¬P → Q. Thus, this
example suggests that ¬P → Q means the same thing asP ∨Q. In fact,
we can derive this equivalence from the previous one by substituting ¬P for
P. BecauseP → Q is equivalent to ¬P ∨Q, it follows that ¬P → Q
is equivalent to ¬¬P ∨Q, which is equivalent toP ∨Q by the double
negation law.
We can derive another useful equivalence as follows:

```
¬P∨Qis equivalent to ¬P∨ ¬¬Q (double negation law),
which is equivalent to ¬(P ∧ ¬Q) (De Morgan’s law).
```

```
The Conditional and Biconditional Connectives 49
```
Thus,P →Qis also equivalent to ¬(P ∧ ¬Q). In fact, this is precisely the
conclusion we reached earlier when discussing the statement “Ifx >2 then
x^2 > 4.” We decided then that the reason this statement is true for every value
ofxis that there is no value ofxfor whichx >2 andx^2 ≤ 4. In other words,
the statementP (x)∧ ¬Q(x) is never true, where as beforeP (x)stands for
x >2 andQ(x) forx^2 > 4. But that’s the same as saying that the statement
¬(P (x)∧ ¬Q(x)) is always true. Thus, to say thatP (x)→Q(x) is always
true means the same thing as saying that ¬(P (x)∧ ¬Q(x)) is always true.
For another example of this equivalence, consider the statement “If it’s
going to rain, then I’ll take my umbrella.” Of course, this statement has the
formP → Q, whereP stands for the statement “It’s going to rain” andQ
stands for “I’ll take my umbrella.” But we could also think of this statement as
a declaration that I won’t be caught in the rain without my umbrella – in other
words, ¬(P ∧ ¬Q).
To summarize, so far we have discovered the following equivalences
involving conditional statements:

```
Conditional laws
P →Qis equivalent to ¬P ∨Q.
P →Qis equivalent to ¬(P ∧ ¬Q).
```
In case you’re still not convinced that the truth table in Figure 1.17 is right,
we give one more reason. We know that, using this truth table, we can now
analyze the validity of deductive arguments involving the words _if_ and _then_.
We’ll find, when we analyze a few simple arguments, that the truth table
in Figure 1.17 leads to reasonable conclusions about the validity of these
arguments. But if we were to make any changes in the truth table, we would
end up with conclusions that are clearly incorrect. For example, let’s return to
the argument form with which we started this section:

```
P →Q
P
∴Q
```
We have already decided that this form of argument should be valid, and the
truth table in Figure 1.19 confirms this. The premises are both true only in line
four of the table, and in this line the conclusion is true as well.
You can also see from Figure 1.19 that both premises are needed to make
this argument valid. But if we were to change the truth table for the conditional
statement to makeP →Qfalse in the first line of the table, then the second
premise of this argument would no longer be needed. We would end up with


50 _Sentential Logic_

```
Premises Conclusion
P Q P →Q P Q
F F T F F
F T T F T
T F F T F
T T T T T
Figure 1.19.
```
the conclusion that, just from the single premiseP → Q, we could infer that
Qmust be true, since in the two lines of the truth table in which the premise
P → Qwould still be true, lines two and four, the conclusionQis true too.
But this doesn’t seem right. Just knowing that _if_ P is true thenQis true,
but not knowing thatP _is_ true, it doesn’t seem reasonable that we should
be able to conclude thatQis true. For example, suppose we know that the
statement “If John didn’t go to the store then we’re out of eggs” is true. Unless
we also know whether or not John has gone to the store, we can’t reach any
conclusion about whether or not we’re out of eggs. Thus, changing the first
line of the truth table forP →Qwould lead to an incorrect conclusion about
the validity of an argument.
Changing the second line of the truth table would also lead to unacceptable
conclusions about the validity of arguments. To see this, consider the argument
form:

```
P →Q
Q
∴P
```
This should _not_ be considered a valid form of reasoning. For example,
consider the following argument, which has this form:

```
If Jones was convicted of murdering Smith, then he will go to jail.
Jones will go to jail.
Therefore, Jones was convicted of murdering Smith.
```
Even if the premises of this argument are true, the conclusion that Jones was
convicted of murdering Smith doesn’t follow. Maybe the reason he will go to
jail is that he robbed a bank or cheated on his income tax. Thus, the conclusion
of this argument could be false even if the premises were true, so the argument
isn’t valid.
The truth table analysis in Figure 1.20 agrees with this conclusion. In line
two of the table, the conclusionP is false, but both premises are true, so the
argument is invalid. But notice that if we were to change the truth table for


```
The Conditional and Biconditional Connectives 51
```
P →Qand make it false in line two, then the truth table analysis would say
that the argument is valid. Thus, the analysis of this argument seems to support
our decision to put a T in the second line of the truth table forP →Q.

```
Premises Conclusion
P Q P →Q Q P
F F T F F
F T T T F
T F F F T
T T T T T
```
```
Figure 1.20.
```
The last example shows that from the premisesP →QandQit is incorrect
to inferP. But it would certainly be correct to inferP from the premises
Q → P andQ. This shows that the formulasP → Q andQ → P do
_not_ mean the same thing. You can check this by making a truth table for
both and verifying that they are not equivalent. For example, a person might
believe that, in general, the statement “If you are a convicted murderer then
you are untrustworthy” is true, without believing that the statement “If you
are untrustworthy then you are a convicted murderer” is generally true. The
formulaQ → P is called the _converse_ ofP → Q. It is very important to
make sure you never confuse a conditional statement with its converse.
The _contrapositive_ ofP → Q is the formula ¬Q → ¬P, and it _is_
equivalent toP → Q. This may not be obvious at first, but you can verify
it with a truth table. For example, the statements “If John cashed the check
I wrote then my bank account is overdrawn” and “If my bank account isn’t
overdrawn then John hasn’t cashed the check I wrote” are equivalent. I would
be inclined to assert both in exactly the same circumstances – namely, if
the check I wrote was for more money than I had in my account. The
equivalence of conditional statements and their contrapositives is used often
in mathematical reasoning. We add it to our list of important equivalences:

```
Contrapositive law
P →Qis equivalent to ¬Q→ ¬P.
```
**Example 1.5.2.** Which of the following statements are equivalent?

1. If it’s either raining or snowing, then the game has been canceled.
2. If the game hasn’t been canceled, then it’s not raining and it’s not snowing.
3. If the game has been canceled, then it’s either raining or snowing.


52 _Sentential Logic_

4. If it’s raining then the game has been canceled, and if it’s snowing then the
    game has been canceled.
5. If it’s neither raining nor snowing, then the game hasn’t been canceled.

_Solution_

We translate all of the statements into the notation of logic, using the following
abbreviations:R stands for the statement “It’s raining,” S stands for “It’s
snowing,” andCstands for “The game has been canceled.”

1. (R∨S)→C.
2. ¬C → (¬R∧ ¬S). By one of De Morgan’s laws, this is equivalent to
    ¬C → ¬(R ∨S). This is the contrapositive of statement 1, so they are
    equivalent.
3. C→(R∨S). This is the converse of statement 1, which is _not_ equivalent
    to it. You can verify this with a truth table, or just think about what
    the statements mean. Statement 1 says that rain or snow would result
    in cancelation of the game. Statement 3 says that these are the _only_
    circumstances in which the game will be canceled.
4. (R → C)∧(S → C). This is also equivalent to statement 1, as the
    following reasoning shows:
       (R→C)∧(S→C)
          is equivalent to(¬R∨C)∧(¬S∨C) (conditional law),
which is equivalent to(¬R∧ ¬S)∨C (distributive law),
which is equivalent to ¬(R∨S)∨C (De Morgan’s law),
which is equivalent to(R∨S)→C (conditional law).
    You should read statements 1 and 4 again and see if it makes sense to you
    that they’re equivalent.
5. ¬(R∨S) → ¬C. This is the contrapositive of statement 3, so they are
    equivalent. It is not equivalent to statements 1, 2, and 4.

Statements that meanP → Q come up very often in mathematics, but
sometimes they are not written in the form “IfPthenQ.” Here are a few other
ways of expressing the ideaP →Qthat are used often in mathematics:

```
P impliesQ.
Q, ifP.
P only ifQ.
P is a sufficient condition forQ.
Qis a necessary condition forP.
```

_The Conditional and Biconditional Connectives_ 53
Some of these may require further explanation. The second expression, “Q,
ifP,” is just a slight rearrangement of the statement “IfPthenQ,” so it should
make sense that it meansP →Q. As an example of a statement of the form
“Ponly ifQ,” consider the sentence “You can run for president only if you are
a citizen.” In this case,P is “You can run for president” andQis “You are a
citizen.” What the statement means is that if you’re not a citizen, then you can’t
run for president, or in other words ¬Q→ ¬P. But by the contrapositive law,
this is equivalent toP →Q.
Think of “P is a sufficient condition forQ” as meaning “The truth ofP
suffices to guarantee the truth ofQ,” and it should make sense that this should
be represented byP →Q. Finally, “Qis a necessary condition forP” means
that in order forPto be true, it is necessary forQto be true also. This means
that ifQisn’t true, thenP can’t be true either, or in other words, ¬Q→ ¬P.
Once again, by the contrapositive law we getP →Q.

**Example 1. 5. 3.** Analyze the logical forms of the following statements:

1. If at least ten people are there, then the lecture will be given.
2. The lecture will be given only if at least ten people are there.
3. The lecture will be given if at least ten people are there.
4. Having at least ten people there is a sufficient condition for the lecture
    being given.
5. Having at least ten people there is a necessary condition for the lecture
    being given.

_Solutions_

LetT stand for the statement “At least ten people are there” andLfor “The
lecture will be given.”

1. T →L.
2. L→T. The given statement means that if there are not at least ten people
    there, then the lecture will not be given, or in other words ¬T → ¬L.
    By the contrapositive law, this is equivalent toL→T.
3. T →L. This is just a rephrasing of statement 1.
4. T →L. The statement says that having at least ten people there suffices to
    guarantee that the lecture will be given, and this means that if there are at
    least ten people there, then the lecture will be given.
5. L→T. This statement means the same thing as statement 2: If there are
    not at least ten people there, then the lecture will not be given.

We have already seen that a conditional statementP →Qand its converse
Q → P are not equivalent. Often in mathematics we want to say that both


54 _Sentential Logic_

P → QandQ → P are true, and it is therefore convenient to introduce a
new connective symbol,↔, to express this. You can think ofP ↔Qas just an
abbreviation for the formula(P →Q)∧(Q→P ). A statement of the form
P ↔Qis called a _biconditional_ statement, because it represents two condi-
tional statements. By making a truth table for(P →Q)∧(Q→ P )you can
verify that the truth table forP ↔Qis as shown in Figure 1.21. Note that, by
the contrapositive law,P ↔Qis also equivalent to(P →Q)∧(¬P → ¬Q).

```
P Q P ↔Q
F F T
F T F
T F F
T T T
```
```
Figure 1.21.
```
BecauseQ→P can be written “P ifQ” andP → Qcan be written “P
only ifQ,”P ↔Qmeans “PifQandP only ifQ,” and this is often written
“P if and only ifQ.” The phrase _if and only if_ occurs so often in mathematics
that there is a common abbreviation for it, _iff_. Thus,P ↔Qis often written
“P iffQ.” Another statement that meansP ↔ Qis “P is a necessary and
sufficient condition forQ.”

**Example 1. 5. 4.** Analyze the logical forms of the following statements:

1. The game will be canceled iff it’s either raining or snowing.
2. Having at least ten people there is a necessary and sufficient condition for
    the lecture being given.
3. If John went to the store then we have some eggs, and if he didn’t then we
    don’t.

_Solutions_

1. LetCstand for “The game will be canceled,”R for “It’s raining,” andS
    for “It’s snowing.” Then the statement would be represented by the formula
    C↔(R∨S).
2. LetTstand for “There are at least ten people there” andLfor “The lecture
    will be given.” Then the statement meansT ↔L.
3. LetSstand for “John went to the store” andEfor “We have some eggs.”
    Then a literal translation of the given statement would be(S → E)∧
    (¬S→ ¬E). This is equivalent toS↔E.


_The Conditional and Biconditional Connectives_ 55
One of the reasons it’s so easy to confuse a conditional statement with its
converse is that in everyday speech we sometimes use a conditional statement
when what we mean to convey is actually a biconditional. For example, you
probably wouldn’t say “The lecture will be given if at least ten people are
there” unless it was also the case that if there were fewer than ten people,
the lecture wouldn’t be given. After all, why mention the number ten at all if
it’s not the minimum number of people required? Thus, the statement actually
suggests that the lecture will be given _iff_ there are at least ten people there.
For another example, suppose a child is told by his parents, “If you don’t eat
your dinner, you won’t get any dessert.” The child certainly expects that if
he _does_ eat his dinner, he _will_ get dessert, although that’s not literally what
his parents said. In other words, the child interprets the statement as meaning
“Eating your dinner is a necessary _and sufficient_ condition for getting dessert.”
Such a blurring of the distinction between _if_ and _iff_ is never acceptable in
mathematics. Mathematicians always use a phrase such as _iff_ or _necessary and
sufficient condition_ when they want to express a biconditional statement. You
should never interpret an if-then statement in mathematics as a biconditional
statement, the way you might in everyday speech.

```
Exercises
```
*1. Analyze the logical forms of the following statements:
(a) If this gas either has an unpleasant smell or is not explosive, then it
isn’t hydrogen.
(b) Having both a fever and a headache is a sufficient condition for
George to go to the doctor.
(c) Both having a fever and having a headache are sufficient conditions
for George to go to the doctor.
(d) Ifx±= 2, then a necessary condition forxto be prime is thatxbe odd.

2. Analyze the logical forms of the following statements:
    (a) Mary will sell her house only if she can get a good price and find a
       nice apartment.
(b) Having both a good credit history and an adequate down payment is
a necessary condition for getting a mortgage.
    (c) John will drop out of school, unless someone stops him. (Hint: First
       try to rephrase this using the words _if_ and _then_ instead of _unless_ .)
(d) Ifxis divisible by either 4 or 6, then it isn’t prime.
3. Analyze the logical form of the following statement:
    (a) If it is raining, then it is windy and the sun is not shining.


56 _Sentential Logic_

Now analyze the following statements. Also, for each statement determine
whether the statement is equivalent to either statement (a) or its converse.
(b) It is windy and not sunny only if it is raining.
(c) Rain is a sufficient condition for wind with no sunshine.
(d) Rain is a necessary condition for wind with no sunshine.
(e) It’s not raining, if either the sun is shining or it’s not windy.
(f) Wind is a necessary condition for it to be rainy, and so is a lack of
sunshine.
(g) Either it is windy only if it is raining, or it is not sunny only if it is
raining.
*4. Use truth tables to determine whether or not the following arguments are
valid:
(a) Either sales or expenses will go up. If sales go up, then the boss will
be happy. If expenses go up, then the boss will be unhappy. Therefore,
sales and expenses will not both go up.
(b) If the tax rate and the unemployment rate both go up, then there will
be a recession. If the GDP goes up, then there will not be a recession.
The GDP and taxes are both going up. Therefore, the unemployment
rate is not going up.
(c) The warning light will come on if and only if the pressure is too
high and the relief valve is clogged. The relief valve is not clogged.
Therefore, the warning light will come on if and only if the pressure
is too high.

5. Use truth tables to determine whether or not the following arguments are
    valid:
    (a) If Jones is convicted then he will go to prison. Jones will be convicted
       only if Smith testifies against him. Therefore, Jones won’t go to prison
       unless Smith testifies against him.
(b) Either the Democrats or the Republicans will have a majority in the
Senate, but not both. Having a Democratic majority is a necessary
condition for the bill to pass. Therefore, if the Republicans have a
majority in the Senate then the bill won’t pass.
6. (a) Show thatP ↔Qis equivalent to(P ∧Q)∨(¬P∧ ¬Q).
    (b) Show that(P →Q)∨(P →R)is equivalent toP →(Q∨R).
*7. (a) Show that(P →R)∧(Q→R)is equivalent to(P ∨Q) →R.
(b) Formulate and verify a similar equivalence involving(P → R) ∨
(Q →R).
8. (a) Show that(P →Q)∧(Q→R)is equivalent to(P →R)∧[(P ↔
    Q)∨(R↔Q)].
(b) Show that(P →Q)∨(Q →R)is a tautology.


```
The Conditional and Biconditional Connectives 57
```
*9. Find a formula involving only the connectives ¬ and → that is equivalent
toP ∧Q.

10. Find a formula involving only the connectives ¬ and → that is equivalent
    toP ↔Q.
11. (a) Show that(P ∨Q) ↔Qis equivalent toP →Q.
    (b) Show that(P ∧Q) ↔Qis equivalent toQ→P.
12. Which of the following formulas are equivalent?
    (a)P →(Q →R).
    (b) Q→(P →R).
       (c)(P →Q)∧(P →R).
    (d) (P ∧Q)→R.
       (e)P →(Q∧R).


## 2 Quantificational Logic

## 2.1 Quantifiers

We have seen that a statementP (x)containing a free variablexmay be true
for some values ofxand false for others. Sometimes we want to say something
about _how many_ values ofxmakeP (x)come out true. In particular, we often
want to say either thatP (x)is true for _every_ value ofx or that it is true
for _at least one_ value ofx. We therefore introduce two more symbols, called
_quantifiers_ , to help us express these ideas.
To say thatP (x)is true for every value ofx in the universe of discourse
U, we will write∀xP (x). This is read “For allx,P (x).” Think of the upside
downAas standing for the word _all_. The symbol∀is called the _universal
quantifier_ , because the statement∀xP (x) says thatP (x)is _universally_ true.
As we discussed in Section 1.3, to say thatP (x)is true for every value ofx
in the universe means that the truth set ofP (x)will be the whole universeU.
Thus, you could also think of the statement∀xP (x)as saying that the truth set
ofP (x)is equal toU.
We write∃xP (x) to say that there is at least one value ofxin the universe
for whichP (x)is true. This is read “There exists anxsuch thatP (x).” The
backwardEcomes from the word _exists_ and is called the _existential quantifier_.
Once again, you can interpret this statement as saying something about the
truth set ofP (x). To say thatP (x) is true for at least one value ofx means
that there is at least one element in the truth set ofP (x), or in other words, the
truth set is not equal to∅.
For example, in Section 1.5 we discussed the statement “Ifx > 2 then
x^2 > 4,” wherex ranges over the set of all real numbers, and we claimed
that this statement was true for all values ofx. We can now write this claim
symbolically as∀x(x >2 →x^2 > 4 ).

### 58


```
Quantifiers 59
```
**Example 2. 1. 1.** What do the following formulas mean? Are they true or false?

1. ∀x(x^2 ≥ 0), where the universe of discourse isR, the set of all real
    numbers.
2. ∃x(x^2 − 2x+ 3 = 0), with universeRagain.
3. ∃x(M(x) ∧B(x)), where the universe of discourse is the set of all people,
    M(x) stands for the statement “xis a man,” andB(x)means “xhas brown
    hair.”
4. ∀x(M(x) → B(x)), with the same universe and the same meanings for
    M(x) andB(x).
5. ∀xL(x,y), where the universe is the set of all people, andL(x,y)means
    “xlikesy.”

_Solutions_

1. This means that for every real numberx,x^2 ≥ 0. This is true.
2. This means that there is at least one real numberxthat makes the equation
    x^2 − 2x+ 3 = 0 come out true. In other words, the equation has at least
    one real solution. If you solve the equation, you’ll find that this statement is
    false; the equation has no real solutions. (Try either completing the square
    or using the quadratic formula.)
3. There is at least one personxsuch thatxis a man andxhas brown hair. In
    other words, there is at least one man who has brown hair. Of course, this
    is true.
4. For every personx, ifxis a man thenxhas brown hair. In other words, all
    men have brown hair. If you’re not convinced that this is what the formula
    means, it might help to look back at the truth table for the conditional
    connective. According to this truth table, the statementM(x) → B(x)
    will be false only ifM(x) is true andB(x) is false; that is,xis a man andx
    doesn’t have brown hair. Thus, to say thatM(x) →B(x) is true for every
    personxmeans that this situation never occurs, or in other words, that there
    are no men who don’t have brown hair. But that’s exactly what it means to
    say that all men have brown hair. Of course, this statement is false.
5. For every personx,xlikesy. In other words, everyone likesy. We can’t
    tell if this is true or false unless we know whoyis.

Notice that in the fifth statement in this example, we needed to know who
ywas to determine if the statement was true or false, but not whoxwas. The
statement says that everyone likesy, and this is a statement abouty, but notx.
This means thatyis a free variable in this statement butxis a bound variable.


60 _Quantificational Logic_

Similarly, although all the other statements contain the letterx, we didn’t
need to know the value ofx to determine their truth values, soxis a bound
variable in every case. In general, even ifxis a free variable in some statement
P (x), it is a bound variable in the statements∀xP (x) and∃xP (x). For this
reason, we say that the quantifiers _bind_ a variable. As in Section 1.3, this
means that a variable that is bound by a quantifier can always be replaced
with a new variable without changing the meaning of the statement, and it
is often possible to paraphrase the statement without mentioning the bound
variable at all. For example, the statement∀xL(x,y)from Example 2.1.1 is
equivalent to∀wL(w,y), because both mean the same thing as “Everyone
likesy.” Words such as _everyone_ , _someone_ , _everything_ , or _something_ are often
used to express the meanings of statements containing quantifiers. If you are
translating an English statement into symbols, these words will often tip you
off that a quantifier will be needed.
As with the symbol ¬, we follow the convention that the expressions∀x
and∃xapply only to the statements that come immediately after them. For
example,∀xP (x)→Q(x) means(∀xP (x))→Q(x), not∀x(P (x) →Q(x)).

**Example 2. 1. 2.** Analyze the logical forms of the following statements.

1. Someone didn’t do the homework.
2. Everything in that store is either overpriced or poorly made.
3. Nobody’s perfect.
4. Susan likes everyone who dislikes Joe.
5. A⊆B.
6. A∩B⊆B\C.

_Solutions_

1. The word _someone_ tips us off that we should use an existential quantifier.
    As a first step, we write∃x(xdidn’t do the homework). Now if we letH(x)
    stand for the statement “xdid the homework,” then we can rewrite this as
    ∃x¬H(x).
2. Think of this statement as saying “If it’s in that store, then it’s either
    overpriced or poorly made (no matter what _it_ is).” Thus, we start by writing
    ∀x(ifxis in that store thenxis either overpriced or poorly made). To write
    the part in parentheses symbolically, we letS(x) stand for “x is in that
    store,”O(x) for “xis overpriced,” andP (x)for “xis poorly made.” Then
    our final answer is∀x[S(x) →(O(x) ∨P (x))].
       Note that, like statement 4 in Example 2.1.1, this statement has the
    form of a universal quantifier applied to a conditional statement. This form
    occurs quite often, and it is important to learn to recognize what it means


```
Quantifiers 61
and when it should be used. We can check our answer to this problem as
we did before, by using the truth table for the conditional connective. The
only way that the statementS(x) →(O(x) ∨P (x))can be false is ifxis in
that store, but is neither overpriced nor poorly made. Thus, to say that the
statement is true for all values ofxmeans that this never happens, which is
exactly what it means to say that everything in that store is either overpriced
or poorly made.
```
3. This means ¬(somebody is perfect), or in other words ¬∃xP (x), where
    P (x)stands for “xis perfect.”
4. As in statement 2 in this example, we could think of this as meaning “If
    a person dislikes Joe then Susan likes that person (no matter who the
    person is).” Thus, we can start by rewriting the given statement as∀x(if
    x dislikes Joe then Susan likesx). LetL(x,y) stand for “x likesy.” In
    statements that talk about specific elements of the universe of discourse
    it is sometimes convenient to introduce letters to stand for those specific
    elements. In this case we need to talk about Joe and Susan, so let’s let
    j stand for Joe ands for Susan. Thus, we can write L(s,x) to mean
    “Susan likesx,” and ¬L(x,j ) for “xdislikes Joe.” Filling these in, we
    end up with the answer ∀x(¬L(x,j ) → L(s,x)). Notice that, once
    again, we have a universal quantifier applied to a conditional statement. As
    before, you can check this answer using the truth table for the conditional
    connective.
5. According to Definition 1.4.5, to say thatAis a subset ofB means that
    everything inAis inB. If you’ve caught on to the pattern of how universal
    quantifiers and conditionals are combined, you should recognize that this
    would be written symbolically as∀x(x ∈A→x∈B).
6. As in the previous statement, we first write this as∀x(x ∈A∩B →x ∈
    B \C). Now using the definitions of intersection and difference, we can
    expand this further to get∀x[(x ∈A∧x∈B)→(x ∈B∧x /∈C)].

Although all of our examples so far have contained only one quantifier,
there’s no reason why a statement can’t have more than one quantifier. For
example, consider the statement “Some students are married.” The word _some_
indicates that this statement should be written using an existential quantifier,
so we can think of it as having the form∃x(xis a student andxis married).
LetS(x) stand for “xis a student.” We could similarly choose a letter to stand
for “xis married,” but perhaps a better analysis would be to recognize that to
be married means to be married _to someone_. Thus, if we letM(x,y)stand for
“xis married toy,” then we can write “xis married” as∃yM(x,y). We can
therefore represent the entire statement by the formula∃x(S(x) ∧∃yM(x,y)),
a formula containing two existential quantifiers.


62 _Quantificational Logic_

As another example, let’s analyze the statement “All parents are married.”
We start by writing it as∀x(ifx is a parent thenxis married). Parenthood,
like marriage, is a relationship between two people; to be a parent means to be
a parent _of someone_. Thus, it might be best to represent the statement “xis a
parent” by the formula∃yP (x,y), whereP (x,y)means “xis a parent ofy.” If
we again represent “xis married” by the formula∃yM(x,y), then our analysis
of the original statement will be∀x(∃yP (x,y)→ ∃yM(x,y)). Although this
isn’t wrong, the double use of the variableycould cause confusion. Perhaps a
better solution would be to replace the formula∃yM(x,y)with the equivalent
formula∃zM(x,z). (Recall that these are equivalent because a bound variable
in any statement can be replaced by another without changing the meaning
of the statement.) Our improved analysis of the statement would then be
∀x(∃yP (x,y)→ ∃zM(x,z)).
A common mistake made by beginners is to leave out quantifiers. For
example, you might be tempted to represent the statement “All parents are
married” incorrectly by the formula∀x(P (x,y)→ M(x,z)), leaving out∃y
and∃z. A good way to catch such mistakes is to pay attention to free and
bound variables. In the incorrect formula, there are no quantifiers binding the
variablesyandz, soyandzare free variables. But the original statement,
“All parents are married,” is not a statement aboutyandz, so these variables
should not be free in the answer. This is a tip-off that quantifiers ony and
zare missing. Note that if we translate the incorrect formula∀x(P (x,y)→
M(x,z))back into English, we get a statement aboutyandz: “Everyone who
is a parent ofyis married toz.”

**Example 2. 1. 3.** Analyze the logical forms of the following statements.

1. Everybody in the dorm has a roommate he or she doesn’t like.
2. Nobody likes a sore loser.
3. Anyone who has a friend who has the measles will have to be quarantined.
4. If anyone in the dorm has a friend who has the measles, then everyone in
    the dorm will have to be quarantined.
5. IfA⊆B, thenAandC\B are disjoint.

_Solutions_

1. This means∀x(ifxlives in the dorm thenxhas a roommate he or she
    doesn’t like). To say thatxhas a roommate he or she doesn’t like, we could
    write∃y(xandyare roommates andxdoesn’t likey). If we letR(x,y)
    stand for “xandyare roommates” andL(x,y)for “xlikesy,” then this
    becomes∃y(R(x,y)∧ ¬L(x,y)). Finally, if we letD(x) mean “xlives in


```
Quantifiers 63
the dorm,” then the complete analysis of the original statement would be
∀x[D(x) → ∃y(R(x,y)∧ ¬L(x,y))].
```
2. This is tricky, because the phrase _a sore loser_ doesn’t refer to a _particular_
    sore loser, it refers to _all_ sore losers. The statement means that all sore
    losers are disliked, or in other words∀x(ifxis a sore loser then nobody
    likesx). To say nobody likesxwe write ¬(somebody likesx), which means
    ¬∃yL(y,x), whereL(y,x) means “y likesx.” If we letS(x) mean “x
    is a sore loser,” then the whole statement would be written∀x(S(x) →
    ¬∃yL(y,x)).
3. You have probably realized by now that it is usually easiest to translate
    from English into symbols in several steps, translating only a little bit at a
    time. Here are the steps we might use to translate this statement:
       (i) ∀x(ifx has a friend who has the measles then x will have to be
          quarantined).
    (ii) ∀x[∃y(yis a friend ofxandyhas the measles) →xwill have to be
       quarantined].
    Now, lettingF(y,x)stand for “yis a friend ofx,”M(y) for “y has the
    measles,” andQ(x) for “xwill have to be quarantined,” we get:
    (iii) ∀x[∃y(F(y,x)∧M(y)) →Q(x)].
4. The word _anyone_ is difficult to interpret, because in different statements
    it means different things. In statement 3 it meant _everyone_ , but in this
    statement it means _someone_. Here are the steps of our analysis:
       (i) (Someone in the dorm has a friend who has the measles) → (everyone
          in the dorm will have to be quarantined).
    (ii) ∃x(xlives in the dorm andxhas a friend who has the measles) → ∀z(if
       zlives in the dorm thenzwill have to be quarantined).
    Using the same abbreviations as in the last statement and lettingD(x) stand
    for “xlives in the dorm,” we end up with the following formula:
    (iii) ∃x[D(x) ∧ ∃y(F(y,x)∧M(y))] → ∀z(D(z) →Q(z)).
5. Clearly the answer will have the form of a conditional statement,(A ⊆
    B) → (A andC\ B are disjoint). We have already written A ⊆ B
    symbolically in Example 2.1.2. To say thatAandC\B are disjoint means
    that they have no elements in common, or in other words ¬∃x(x ∈A∧x∈
    C\ B). Putting this all together, and filling in the definition ofC\B, we
    end up with∀x(x ∈A→x∈B)→ ¬∃x(x ∈A∧x∈C∧x ∈/B).

When a statement contains more than one quantifier it is sometimes difficult
to figure out what it means and whether it is true or false. It may be best in this
case to think about the quantifiers one at a time, in order. For example, consider
the statement∀x∃y(x +y= 5), where the universe of discourse is the set of


64 _Quantificational Logic_

all real numbers. Thinking first about just the first quantifier expression∀x,
we see that the statement means that for every real numberx, the statement
∃y(x +y= 5)is true. We can worry later about what∃y(x +y= 5)means;
thinking about two quantifiers at once is too confusing.
If we want to figure out whether or not the statement∃y(x+y= 5)is true
for every value ofx, it might help to try out a few values ofx. For example,
supposex= 2. Then we must determine whether or not the statement∃y(2 +
y = 5)is true. Now it’s time to think about the next quantifier, ∃y. This
statement says that there is at least one value ofy for which the equation
2 +y = 5 holds. In other words, the equation 2 + y = 5 has at least one
solution. Of course, this is true, because the equation has the solutiony =
5 − 2 = 3. Thus, the statement∃y(2 +y= 5)is true.
Let’s try one more value ofx. Ifx = 7, then we are interested in the
statement∃y(7 +y= 5), which says that the equation 7 + y= 5 has at least
one solution. Once again, this is true, since the solution isy= 5 − 7 = − 2.
In fact, you have probably realized by now that no matter what value we plug
in forx, the equationx+ y = 5 will always have the solutiony = 5 −x,
so the statement∃y(x + y = 5)will be true. Thus, the original statement
∀x∃y(x+ y= 5)is true.
On the other hand, the statement∃y∀x(x+y= 5)means something entirely
different. This statement means that there is at least one value ofyfor which
the statement∀x(x+y= 5)is true. Can we find such a value ofy? Suppose,
for example, we tryy = 4. Then we must determine whether or not the
statement∀x(x + 4 = 5)is true. This statement says that no matter what
value we plug in forx, the equationx+ 4 = 5 holds, and this is clearly
false. In fact, no value ofxother thanx= 1 works in this equation. Thus, the
statement∀x(x+ 4 = 5)is false.
We have seen that wheny = 4 the statement∀x(x + y= 5)is false, but
maybe some other value ofywill work. Remember, we are trying to determine
whether or not there is _at least one_ value ofythat works. Let’s try one more,
say,y= 9. Then we must consider the statement∀x(x + 9 = 5), which says
that no matter whatxis, the equationx+ 9 = 5 holds. Once again this is clearly
false, since onlyx= − 4 works in this equation. In fact, it should be clear by
now that no matter what value we plug in fory, the equationx+y= 5 will be
true for only one value ofx, namelyx= 5−y, so the statement∀x(x+y= 5)
will be false. Thus there are _no_ values ofyfor which∀x(x + y= 5)is true,
so the statement∃y∀x(x + y= 5)is false.
Notice that we found that the statement∀x∃y(x + y = 5)is true, but
∃y∀x(x + y = 5)is false. Apparently, the order of the quantifiers makes a
difference! What is responsible for this difference? The first statement says


```
Quantifiers 65
```
that for every real numberx, there is a real numberysuch thatx+y= 5. For
example, when we triedx = 2 we found thaty= 3 worked in the equation
x+ y= 5, and withx= 7,y = − 2 worked. Note that for different values
ofx, we had to use different values ofyto make the equation come out true.
You might think of this statement as saying that for each real numberxthere
is a _corresponding_ real numberysuch thatx+ y = 5. On the other hand,
when we were analyzing the statement∃y∀x(x + y= 5)we found ourselves
searching for a _single_ value ofythat made the equationx+y= 5 true for all
values ofx, and this turned out to be impossible. For each value ofxthere is a
corresponding value ofythat makes the equation true, but no single value of
yworks for everyx.
For another example, consider the statement ∀x∃yL(x,y), where the
universe of discourse is the set of all people andL(x,y) means “x likes
y.” This statement says that for every personx, the statement∃yL(x,y)is
true. Now∃yL(x,y)could be written as “x likes someone,” so the original
statement means that for every personx,xlikes someone. In other words,
everyone likes someone. On the other hand,∃y∀xL(x,y)means that there
is some personysuch that∀xL(x,y)is true. As we saw in Example 2.1.1,
∀xL(x,y)means “Everyone likesy,” so∃y∀xL(x,y)means that there is some
personysuch that everyone likesy. In other words, there is someone who is
universally liked. These statements don’t mean the same thing. It might be the
case that everyone likes someone, but no one is universally liked.

**Example 2. 1. 4.** What do the following statements mean? Are they true or
false? The universe of discourse in each case is N, the set of all natural
numbers.

1. ∀x∃y(x < y).
2. ∃y∀x(x < y).
3. ∃x∀y(x < y).
4. ∀y∃x(x < y).
5. ∃x∃y(x < y).
6. ∀x∀y(x < y).

_Solutions_

1. This means that for every natural numberx, the statement∃y(x < y)is
    true. In other words, for every natural numberx, there is a natural number
    bigger thanx. This is true. For example,x+ 1 is always bigger thanx.
2. This means that there is some natural numberysuch that the statement
    ∀x(x < y)is true. In other words, there is some natural numberysuch


66 _Quantificational Logic_

```
that all natural numbers are smaller thany. This is false. No matter what
natural numberywe pick, there will always be larger natural numbers.
```
3. This means that there is a natural numberxsuch that the statement∀y(x <
    y) is true. You might be tempted to say that this statement will be true
    ifx = 0, but this isn’t right. Since 0 is the smallest natural number, the
    statement 0< yis true for all values ofy _except_ y = 0, but ify = 0,
    then the statement 0< yis false, and therefore∀y( 0 < y)is false. Similar
    reasoning shows that for every value ofxthe statement∀y(x < y)is false,
    so∃x∀y(x < y)is false.
4. This means that for every natural numbery, there is a natural number
    smaller thany. This is true for every natural numbery _except_ y= 0, but
    there is no natural number smaller than 0. Therefore this statement is false.
5. This means that there is a natural numberxsuch that∃y(x < y)is true.
    But as we saw in the first statement, this is actually true for _every_ natural
    numberx, so it is certainly true for at least one. Thus,∃x∃y(x < y)is true.
6. This means that for every natural numberx, the statement∀y(x < y) is
    true. But as we saw in the third statement, there isn’t even _one_ value ofx
    for which this statement is true. Thus,∀x∀y(x < y)is false.

```
Exercises
```
*1. Analyze the logical forms of the following statements.
(a) Anyone who has forgiven at least one person is a saint.
(b) Nobody in the calculus class is smarter than everybody in the discrete
math class.
(c) Everyone likes Mary, except Mary herself.
(d) Jane saw a police officer, and Roger saw one too.
(e) Jane saw a police officer, and Roger saw him too.

2. Analyze the logical forms of the following statements.
    (a) Anyone who has bought a Rolls Royce with cash must have a rich
       uncle.
(b) If anyone in the dorm has the measles, then everyone who has a friend
in the dorm will have to be quarantined.
    (c) If nobody failed the test, then everybody who got an A will tutor
       someone who got a D.
(d) If anyone can do it, Jones can.
(e) If Jones can do it, anyone can.


```
Quantifiers 67
```
3. Analyze the logical forms of the following statements. The universe of
    discourse isR. What are the free variables in each statement?
    (a) Every number that is larger thanxis larger thany.
(b) For every numbera, the equationax^2 + 4x− 2 = 0 has at least one
solution iffa≥ − 2.
    (c) All solutions of the inequalityx^3 − 3x <3 are smaller than 10.
(d) If there is a numberxsuch thatx^2 + 5x= wand there is a numbery
such that 4 −y^2 = w, thenwis strictly between − 10 and 10.
*4. Translate the following statements into idiomatic English.
(a)∀x[(H (x)∧¬∃yM(x,y)) →U(x)], whereH (x) means “xis a man,”
M(x,y)means “xis married toy,” andU(x) means “xis unhappy.”
(b) ∃z(P (z,x)∧S(z,y)∧W(y)), whereP (z,x) means “zis a parent
ofx,”S(z,y)means “zandyare siblings,” andW(y) means “yis a
woman.”
5. Translate the following statements into idiomatic mathematical English.
    (a)∀x[(P (x)∧ ¬(x = 2))→O(x)], whereP (x)means “xis a prime
       number” andO(x) means “xis odd.”
(b) ∃x[P (x)∧ ∀y(P (y) → y≤ x)], whereP (x)means “xis a perfect
number.”
6. Translate the following statements into idiomatic mathematical English.
    Are they true or false? The universe of discourse isR.
    (a) ¬∃x(x^2 + 2x+ 3 = 0∧x^2 + 2x− 3 = 0).
(b) ¬[∃x(x^2 + 2x+ 3 = 0)∧ ∃x(x^2 + 2x− 3 = 0)].
(c) ¬∃x(x^2 + 2x+ 3 = 0)∧ ¬∃x(x^2 + 2x− 3 = 0).
7. Are these statements true or false? The universe of discourse is the set of
    all people, andP (x,y)means “xis a parent ofy.”
    (a)∃x∀yP (x,y).
(b) ∀x∃yP (x,y).
(c) ¬∃x∃yP (x,y).
(d) ∃x¬∃yP (x,y).
(e)∃x∃y¬P (x,y).
*8. Are these statements true or false? The universe of discourse isN.
(a)∀x∃y( 2 x−y= 0).
(b) ∃y∀x( 2 x−y= 0).
(c)∀x∃y(x− 2y= 0).
(d) ∀x(x <10 → ∀y(y < x→y < 9 )).
(e)∃y∃z(y +z= 100).
(f) ∀x∃y(y > x∧ ∃z(y+ z= 100)).
9. Same as exercise 8 but withRas the universe of discourse.
10. Same as exercise 8 but withZas the universe of discourse.


68 _Quantificational Logic_

## 2.2 Equivalences Involving Quantifiers

In our study of logical connectives inChapter 1 we found it useful to examine
equivalences between different formulas. In this section, we will see that there
are also a number of important equivalences involving quantifiers.
For example, in Example 2.1.2 we represented the statement “Nobody’s
perfect” by the formula ¬∃xP (x), where P (x) meant “x is perfect.” But
another way to express the same idea would be to say that everyone fails to
be perfect, or in other words∀x¬P (x). This suggests that these two formulas
are equivalent, and a little thought should show that they are. No matter what
P (x)stands for, the formula ¬∃xP (x)means that there’s no value ofxin the
universe of discourse for whichP (x)is true. But that’s the same as saying that
for every value ofxin the universe,P (x)is false, or in other words∀x¬P (x).
Thus, ¬∃xP (x)is equivalent to∀x¬P (x).
Similar reasoning shows that ¬∀xP (x) is equivalent to∃x¬P (x). To say
that ¬∀xP (x) means that it is not the case that for all values ofx,P (x) is
true. That’s equivalent to saying there’s at least one value ofxfor whichP (x)
is false, which is what it means to say∃x¬P (x). For example, in Example
2.1.2 we translated “Someone didn’t do the homework” as∃x¬H(x), where
H(x) stands for “xdid the homework.” An equivalent statement would be
“Not everyone did the homework,” which would be represented by the formula
¬∀xH(x).
Thus, we have the following two laws involving negation and quantifiers:

```
Quantifier Negation laws
¬∃xP (x)is equivalent to∀x¬P (x).
¬∀xP (x)is equivalent to∃x¬P (x).
```
Combining these laws with De Morgan’s laws and other equivalences
involving the logical connectives, we can often reexpress a negative statement
as an equivalent, but easier to understand, positive statement. This will turn
out to be an important skill when we begin to work with negative statements
in proofs.

**Example 2.2.1.** Negate these statements and then reexpress the results as
equivalent positive statements.

1. A⊆B.
2. Everyone has a relative he or she doesn’t like.


```
Equivalences Involving Quantifiers 69
```
_Solutions_

1. We already know thatA⊆B means∀x(x ∈A →x∈B). To reexpress
    the negation of this statement as an equivalent positive statement, we reason
    as follows:

```
¬∀x(x ∈A→x∈B)
is equivalent to∃x¬(x∈A→x∈B) (quantifier negation law),
which is equivalent to∃x¬(x ∈/A∨x∈B) (conditional law),
which is equivalent to∃x(x ∈A∧x ∈/B) (De Morgan’s law).
```
```
Thus,A ±Bmeans the same thing as∃x(x ∈A∧x ∈/B). If you think
about this, it should make sense. To say thatAis not a subset ofB is the
same as saying that there’s something inAthat is not inB.
```
2. First of all, let’s write the original statement symbolically. You should
    be able to check that if we letR(x,y) stand for “x is related to y”
    andL(x,y)for “xlikesy,” then the original statement would be written
    ∀x∃y(R(x ,y)∧ ¬L(x,y)). Now we negate this and try to find a simpler,
    equivalent positive statement:

```
¬∀x∃y(R(x ,y)∧ ¬L(x,y))
is equivalent to∃x¬∃y(R(x,y)∧ ¬L(x,y))
(quantifier negation law),
which is equivalent to∃x∀y¬(R(x,y)∧ ¬L(x,y))
(quantifier negation law),
which is equivalent to∃x∀y(¬R(x,y)∨L(x,y))
(De Morgan’s law),
which is equivalent to∃x∀y(R(x,y)→L(x,y))
(conditional law).
```
```
Let’s translate this last formula back into colloquial English. Leaving aside
the first quantifier for the moment, the formula∀y(R(x,y) → L(x,y))
means that for every persony, ifxis related toy thenx likesy. In other
words,xlikes all his or her relatives. Adding∃xto the beginning of this,
we get the statement “There is someone who likes all his or her relatives.”
You should take a minute to convince yourself that this really is equivalent
to the negation of the original statement “Everyone has a relative he or she
doesn’t like.”
```

```
70 Quantificational Logic
For another example of how the quantifier negation laws can help us
understand statements, consider the statement “Everyone who Patricia likes,
Sue doesn’t like.” If we letL(x,y)stand for “xlikesy,” and we letpstand for
Patricia andsfor Sue, then this statement would be represented by the formula
∀x(L(p,x) → ¬L(s,x)). Now we can work out a formula equivalent to this
one as follows:
```
```
∀x(L(p,x)→ ¬L(s,x))
is equivalent to∀x(¬L(p,x)∨ ¬L(s,x)) (conditional law),
which is equivalent to∀x¬(L(p,x)∧L(s,x)) (De Morgan’s law),
which is equivalent to ¬∃x(L(p,x)∧L(s,x)) (quantifier negation law).
```
Translating the last formula back into English, we get the statement “There’s
no one who both Patricia and Sue like,” and this does mean the same thing as
the statement we started with.
We saw in Section 2.1 that reversing the order of two quantifiers can
sometimes change the meaning of a formula. However, if the quantifiers
are the same type (both∀or both∃), it turns out the order can always be
switched without affecting the meaning of the formula. For example, consider
the statement “Someone has a teacher who is younger than he or she is.”
To write this symbolically we first write∃x(xhas a teacher who is younger
thanx). Now to say “x has a teacher who is younger than x” we write
∃y(T (y,x)∧P (y,x)), whereT (y,x)means “yis a teacher ofx” andP (y,x)
means “yis younger thanx.” Putting this all together, the original statement
would be represented by the formula∃x∃y(T (y,x)∧P (y,x)).
Now what happens if we switch the quantifiers? In other words, what
does the formula∃y∃x(T (y,x) ∧P (y,x)) mean? You should be able to
convince yourself that this formula says that there is a personysuch thaty
is a teacher of someone who is older thany. In other words, someone has a
student who is older than he or she is. But this would be true in exactly the
same circumstances as the original statement, “Someone has a teacher who
is younger than he or she is”! Both mean that there are peoplexandysuch
thatyis a teacher ofxandyis younger thanx. In fact, this suggests that a
good way of reading the pair of quantifiers∃y∃xor∃x∃ywould be “there are
objectsxandysuch that... .”
Similarly, two universal quantifiers in a row can always be switched without
changing the meaning of a formula, because∀x∀y and∀y∀x can both be
thought of as meaning “for all objectsxandy,... .” For example, consider
the formula∀x∀y(L(x,y) →A(x,y)), whereL(x,y)means “xlikesy” and
A(x,y)means “xadmiresy.” You could think of this formula as saying “For


```
Equivalences Involving Quantifiers 71
```
all peoplex andy, ifxlikesy thenx admiresy.” In other words, people
always admire the people they like. The formula∀y∀x(L(x,y) → A(x,y))
means exactly the same thing.
It is important to realize that when we say “there are objectsxandy” or “for
all objectsxandy,” we are not ruling out the possibility thatxandyare the
same object. For example, the formula∀x∀y(L(x,y)→ A(x,y))means not
just that a person who likes another person always admires that other person,
but also that people who like themselves also admire themselves. As another
example, suppose we wanted to write a formula that means “xis a bigamist.”
(Of course,xwill be a free variable in this formula.) You might think you
could express this with the formula∃y∃z(M(x,y)∧M(x,z)), whereM(x,y)
means “x is married toy.” But to say thatxis a bigamist you must say that
there are two _different_ people to whomxis married, and this formula doesn’t
say thatyandzare different. The right answer is∃y∃z(M(x,y)∧M(x,z)∧
y±= z).

**Example 2. 2. 2.** Analyze the logical forms of the following statements.

1. All married couples have fights.
2. Everyone likes at least two people.
3. John likes exactly one person.

_Solutions_

1. ∀x∀y(M(x ,y)→F(x,y)), whereM(x,y)means “xandyare married to
    each other” andF(x,y)means “xandyfight with each other.”
2. ∀x∃y∃z(L(x,y)∧L(x,z)∧y ±= z), whereL(x,y)stands for “x likes
    y.” Note that the statement means that everyone likes at least two _different_
    people, so it would be incorrect to leave out the “y±=z” at the end.
3. LetL(x,y) mean “xlikesy,” and letj stand for John. We translate this
    statement into symbols gradually:
       (i) ∃x(John likesxand John doesn’t like anyone other thanx).
(ii) ∃x(L(j ,x)∧ ¬∃y(John likesyandy±= x)).
    (iii) ∃x(L(j ,x)∧ ¬∃y(L(j ,y)∧y±= x)).

Note that for the third statement in this example we could not have given
the simpler answer∃xL(j,x), because this would mean that John likes _at least_
one person, not _exactly_ one person. The phrase _exactly one_ occurs so often in
mathematics that there is a special notation for it. We will write∃!xP (x) to
represent the statement “There is exactly one value ofx such thatP (x) is
true.” It is sometimes also read “There is a uniquex such thatP (x).” For


72 _Quantificational Logic_

example, the third statement in Example 2.2.2 could be written symbolically
as∃!xL(j ,x). In fact, we could think of this as just an abbreviation for the
formula given in Example 2.2.2 as the answer for statement 3. Similarly, in
general we can think of∃!xP (x)as an abbreviation for the formula∃x(P (x)∧
¬∃y(P (y)∧y±= x)).
Recall that when we were discussing set theory, we sometimes found it
useful to write the truth set ofP (x)as {x∈U|P (x)}rather than {x|P (x)},
to make sure it was clear what the universe of discourse was. Similarly, instead
of writing∀xP (x) to indicate thatP (x)is true for every value ofxin some
universeU, we might write∀x∈U P (x). This is read “For allxinU,P (x).”
Similarly, we can write∃x∈U P (x)to say that there is at least one value ofx
in the universeUsuch thatP (x)is true. For example, the statement∀x(x ≥ 0)
would be false if the universe of discourse were the real numbers, but true if
it were the natural numbers. We could avoid confusion when discussing this
statement by writing either∀x∈R(x ≥ 0)or∀x∈N(x ≥ 0), to make it clear
which we meant.
As before, we sometimes use this notation not to specify the universe of
discourse but to restrict attention to a subset of the universe. For example, if
our universe of discourse is the real numbers and we want to say that some
real numberxhas a square root, we could write∃y(y^2 = x). To say that every
_positive_ real number has a square root, we would say∀x∈R+∃y(y^2 = x).
We could say that every positive real number has a negative square root by
writing∀x ∈R+∃y ∈R−(y^2 = x). In general, for any setA, the formula
∀x ∈ A P (x)means that for every value ofx _in the set_ A,P (x) is true,
and∃x ∈ A P (x)means that there is at least one value ofx _in the set A_
such thatP (x)is true. The quantifiers in these formulas are sometimes called
_bounded quantifiers_ , because they place _bounds_ on which values ofxare to
be considered. Occasionally we may use variations on this notation to place
other kinds of restrictions on quantified variables. For example, the statement
that every positive real number has a negative square root could also be written
∀x > 0 ∃y < 0 (y^2 = x).
Formulas containing bounded quantifiers can also be thought of as abbre-
viations for more complicated formulas containing only normal, unbounded
quantifiers. To say that∃x∈A P (x)means that there is some value ofxthat
is inAand that also makesP (x)come out true, and another way to write this
would be∃x(x ∈A∧P (x)). Similarly, you should convince yourself that
∀x∈A P (x)means the same thing as∀x(x ∈A→P (x)). For example, the
formula∀x∈R+∃y ∈R−(y^2 = x)discussed earlier means the same thing
as∀x(x ∈R+ → ∃y ∈R−(y^2 = x)), which in turn can be expanded as
∀x(x ∈R+ → ∃y(y ∈R− ∧y^2 = x)). By the definitions ofR+andR−,


```
Equivalences Involving Quantifiers 73
```
an equivalent way to say this would be∀x(x > 0 → ∃y(y < 0 ∧y^2 = x)).
You should make sure you are convinced that this formula, like the original
formula, means that every positive real number has a negative square root. For
another example, note that the statementA ⊆B, which by definition means
∀x(x ∈A→x∈B), could also be written as∀x∈A(x ∈B).
It is interesting to note that the quantifier negation laws work for bounded
quantifiers as well. In fact, we can derive these bounded quantifier negation
laws from the original laws by thinking of the bounded quantifiers as
abbreviations, as described earlier. For example,

```
¬∀x∈A P (x)
is equivalent to ¬∀x(x ∈A→P (x)) (expanding abbreviation),
which is equivalent to∃x¬(x∈A→P (x)) (quantifier negation law),
which is equivalent to∃x¬(x ∈/ A∨P (x)) (conditional law),
which is equivalent to∃x(x ∈A∧ ¬P (x)) (De Morgan’s law),
which is equivalent to∃x∈A¬P (x) (abbreviation).
```
Thus, we have shown that ¬∀x∈A P (x)is equivalent to∃x∈A¬P (x). You
are asked in exercise 5 to prove the other bounded quantifier negation law, that
¬∃x∈A P (x)is equivalent to∀x∈A¬P (x).
It should be clear that ifA = ∅then∃x∈A P (x)will be false no matter
what the statementP (x)is. There can be nothing inAthat, when plugged in
forx, makesP (x)come out true, because there is nothing inAat all! It may
not be so clear whether∀x∈A P (x)should be considered true or false, but
we can find the answer using the quantifier negation laws:

```
∀x∈A P (x)
is equivalent to ¬¬∀x∈A P (x) (double negation law),
which is equivalent to ¬∃x∈A¬P (x) (quantifier negation law).
```
Now ifA= ∅then this last formula will be true, no matter what the statement
P (x)is, because, as we have seen,∃x∈A¬P (x)must be false. Thus,∀x ∈
A P (x)is always true ifA= ∅. Mathematicians sometimes say that such a
statement is _vacuously_ true. Another way to see this is to rewrite the statement
∀x∈A P (x)in the equivalent form∀x(x ∈A →P (x)). Now according to
the truth table for the conditional connective, the only way this can be false is
if there is some value ofxsuch thatx∈Ais true butP (x)is false. But there
is no such value ofx, simply because there isn’t a value ofxfor whichx∈A
is true.


74 _Quantificational Logic_

As an application of this principle, we note that the empty set is a subset
of every set. To see why, just rewrite the statementA ⊆B in the equivalent
form∀x ∈A(x ∈B). Now ifA = ∅then, as we have just observed, this
statement will be vacuously true. Thus, no matter what the setB is,∅⊆B.
Another example of a vacuously true statement is the statement “All unicorns
are purple.” We could represent this by the formula∀x ∈A P (x), whereA
is the set of all unicorns andP (x)stands for “xis purple.” Since there are no
unicorns,Ais the empty set, so the statement is vacuously true. (Notice that
the statement “All unicorns are green” is also true – which does not contradict
the fact that all unicorns are purple!)
Perhaps you have noticed by now that, although in Chapter 1 we were
always able to check equivalences involving logical connectives by making
truth tables, we have no such simple way of checking equivalences involving
quantifiers. So far, we have justified our equivalences involving quantifiers by
just looking at examples and using common sense. As the formulas we work
with get more complicated, this method will become unreliable and difficult
to use. Fortunately, in Chapter 3 we will develop better methods for reasoning
about statements involving quantifiers. To get more practice in thinking
about quantifiers, we will work out a few somewhat more complicated
equivalences using common sense. If you’re not completely convinced that
these equivalences are right, you’ll be able to check them more carefully when
you get to Chapter 3.
Consider the statement “Everyone is bright-eyed and bushy-tailed.” If we
letE(x) mean “x is bright-eyed” andT (x) mean “x is bushy-tailed,” then
we could represent this statement by the formula∀x(E(x) ∧T (x)). Is this
equivalent to the formula∀xE(x) ∧ ∀xT (x)? This latter formula means
“Everyone is bright-eyed, and also everyone is bushy-tailed,” and intuitively
this means the same thing as the original statement. Thus, it appears that
∀x(E(x) ∧T (x))is equivalent to∀xE(x) ∧∀xT (x). In other words, we could
say that the universal quantifier _distributes over_ conjunction.
However, the corresponding distributive law doesn’t work for the existential
quantifier. Consider the formulas∃x(E(x) ∧T (x))and∃xE(x)∧∃xT (x). The
first means that there is someone who is both bright-eyed and bushy-tailed,
and the second means that there is someone who is bright-eyed, and there is
also someone who is bushy-tailed. These don’t mean the same thing at all. In
the second statement the bright-eyed person and the bushy-tailed person don’t
have to be the same, but in the first statement they do. Another way to see the
difference between the two statements is to think about truth sets. LetAbe the
truth set ofE(x) andB the truth set ofT (x). In other words,Ais the set of
bright-eyed people, andB is the set of bushy-tailed people. Then the second


```
Equivalences Involving Quantifiers 75
```
statement says that neitherAnorB is the empty set, but the first says that
A∩Bis not the empty set, or in other words thatAandBare not disjoint.
As an application of the distributive law for the universal quantifier and
conjunction, supposeAandB are sets and consider the equationA= B. We
know that two sets are equal when they have exactly the same elements. Thus,
the equationA = B means∀x(x ∈A ↔ x ∈B), which is equivalent to
∀x[(x ∈A→x∈B)∧(x∈B→x∈A)]. Because the universal quantifier
distributes over conjunction, this is equivalent to the formula∀x(x ∈A →
x∈B)∧ ∀x(x ∈B → x ∈A), and by the definition of subset this means
A ⊆ B ∧B ⊆ A. Thus, we have shown that the equationA = B is also
equivalent to the formulaA⊆B∧B⊆A.
We have now introduced seven basic logical symbols: the connectives∧,
∨, ¬, →, and↔, and the quantifiers∀and∃. It is a remarkable fact that
the structure of all mathematical statements can be understood using these
symbols, and all mathematical reasoning can be analyzed in terms of the
proper use of these symbols. To illustrate the power of the symbols we have
introduced, we conclude this section by writing out a few more mathematical
statements in logical notation.

**Example 2. 2. 3.** Analyze the logical forms of the following statements.

1. Statements about the natural numbers. The universe of discourse isN.
    (a)xis a perfect square.
(b) xis a multiple ofy.
(c)xis prime.
(d) xis the smallest positive number that is a multiple of bothyandz.
2. Statements about the real numbers. The universe of discourse isR.
    (a) The identity element for addition is 0.
(b) Every real number has an additive inverse.
(c) Negative numbers don’t have square roots.
(d) Every positive number has exactly two square roots.

_Solutions_

1. (a) This means thatx is the square of some natural number, or in other
    words∃y(x = y^2 ).
(b) This means thatxis equal toytimes some natural number, or in other
words∃z(x = yz).
(c) This means thatx > 1, andxcannot be written as a product of two
smaller natural numbers. In symbols:x > 1 ∧ ¬∃y∃z(x = yz∧y <
    x∧z < x).


76 _Quantificational Logic_

```
(d) We translate this in several steps:
(i)xis positive andx is a multiple of bothyandzand there is no
smaller positive number that is a multiple of bothyandz.
(ii)x > 0 ∧ ∃a(x = ya) ∧ ∃b(x = zb)∧ ¬∃w(w > 0 ∧w < x∧(w
is a multiple of bothyandz)).
(iii)x > 0 ∧ ∃a(x = ya) ∧ ∃b(x = zb) ∧ ¬∃w(w > 0 ∧w <
x∧ ∃c(w = yc)∧ ∃d(w = zd)).
```
2. (a)∀x(x + 0 = x).
    (b) ∀x∃y(x+ y= 0).
       (c)∀x(x < 0 → ¬∃y(y^2 =x)).
    (d) We translate this gradually:
       (i) ∀x(x >0 →xhas exactly two square roots).
(ii) ∀x(x > 0 → ∃y∃z(y andzare square roots ofxandy±= zand
nothing else is a square root ofx)).
(iii) ∀x(x > 0 → ∃y∃z(y^2 = x∧z^2 = x∧y ±= z∧ ¬∃w(w^2 =
x∧w±= y∧w±= z))).

```
Exercises
```
```
*1. Negate these statements and then reexpress the results as equivalent
positive statements. (See Example 2.2.1.)
(a) Everyone who is majoring in math has a friend who needs help with
his or her homework.
(b) Everyone has a roommate who dislikes everyone.
(c)A∪B⊆C\D.
(d) ∃x∀y[y > x→ ∃z(z^2 + 5z=y)].
```
2. Negate these statements and then reexpress the results as equivalent
    positive statements. (See Example 2.2.1.)
    (a) There is someone in the freshman class who doesn’t have a room-
       mate.
(b) Everyone likes someone, but no one likes everyone.
(c)∀a∈A∃b∈B(a ∈C↔b∈C).
(d) ∀y > 0 ∃x(ax^2 +bx+c= y).
3. Are these statements true or false? The universe of discourse isN.
    (a)∀x(x <7 → ∃a∃b∃c(a^2 + b^2 + c^2 = x)).
(b) ∃!x(x^2 + 3 = 4x).
(c)∃!x(x^2 = 4x+ 5).
(d) ∃x∃y(x^2 = 4x+ 5∧y^2 = 4y+ 5).


```
Equivalences Involving Quantifiers 77
*4. Show that the second quantifier negation law, which says that ¬∀xP (x)
is equivalent to∃x¬P (x), can be derived from the first, which says
that ¬∃xP (x)is equivalent to∀x¬P (x). (Hint: Use the double negation
law.)
```
5. Show that ¬∃x∈A P (x)is equivalent to∀x∈A¬P (x).
*6. Show that the existential quantifier distributes over disjunction. In other
words, show that∃x(P (x)∨Q(x)) is equivalent to∃xP (x)∨ ∃xQ(x).
(Hint: Use the fact, discussed in this section, that the universal quantifier
distributes over conjunction.)
7. Show that∃x(P (x) →Q(x)) is equivalent to∀xP (x)→ ∃xQ(x).
*8. Show that(∀x ∈ A P (x))∧(∀x ∈ B P (x))is equivalent to∀x ∈
(A∪B) P (x). (Hint: Start by writing out the meanings of the bounded
quantifiers in terms of unbounded quantifiers.)
9. Is∀x(P (x) ∨Q(x)) equivalent to∀xP (x)∨ ∀xQ(x)? Explain. (Hint:
    Try assigning meanings toP (x)andQ(x).)
10. (a) Show that∃x∈A P (x)∨ ∃x∈B P (x)is equivalent to∃x∈(A∪
B) P (x).
    (b) Is∃x ∈A P (x)∧ ∃x∈B P (x)equivalent to∃x ∈(A∩B) P (x)?
       Explain.
*11. Show that the statementsA⊆BandA\B= ∅are equivalent by writing
each in logical symbols and then showing that the resulting formulas are
equivalent.
12. Show that the statementsC ⊆ A∪B andC\ A ⊆ B are equivalent
by writing each in logical symbols and then showing that the resulting
formulas are equivalent.
13. (a) Show that the statementsA⊆B andA∪B= Bare equivalent by
writing each in logical symbols and then showing that the resulting
formulas are equivalent. (Hint: You may find exercise 11 from
Section 1.5 useful.)
(b) Show that the statementsA⊆B andA∩B = Aare equivalent.
*14. Show that the statementsA∩B =∅andA\B = Aare equivalent.
15. LetT (x,y)mean “xis a teacher ofy.” What do the following statements
mean? Under what circumstances would each one be true? Are any of
them equivalent to each other?
(a) ∃!yT (x,y).
(b) ∃x∃!yT (x,y).
(c) ∃!x∃yT (x,y).
(d) ∃y∃!xT (x,y).
(e) ∃!x∃!yT (x,y).
(f) ∃x∃y[T (x,y)∧ ¬∃u∃v(T (u,v)∧(u±= x∨v±= y))].


78 _Quantificational Logic_

## 2.3 More Operations on Sets

Now that we know how to work with quantifiers, we are ready to discuss some
more advanced topics in set theory.
So far, the only way we have to define sets, other than listing their elements
one by one, is to use the elementhood test notation {x|P (x)}. Sometimes this
notation is modified by allowing thexbefore the vertical line to be replaced
with a more complex expression. For example, suppose we wanted to define
Sto be the set of all perfect squares. Perhaps the easiest way to describe this
set is to say that it consists of all numbers of the formn^2 , wherenis a natural
number. This is writtenS= {n^2 |n∈N}. Note that, using our solution for the
first statement from Example 2.2.3, we could also define this set by writing
S= {x| ∃n∈N(x = n^2 )}. Thus, {n^2 |n∈N} = {x| ∃n∈N(x = n^2 )} and
thereforex∈ {n^2 |n∈N}means the same thing as∃n∈N(x= n^2 ).
Similar notation is often used if the elements of a set have been numbered.
For example, suppose we wanted to form the set whose elements are the first
100 prime numbers. We might start by numbering the prime numbers, calling
themp 1 ,p 2 ,p 3 ,.... In other words,p 1 = 2,p 2 = 3,p 3 = 5, and so on.
Then the set we are looking for would be the setP = {p 1 ,p 2 ,p 3 ,.. .,p 100 }.
Another way of describing this set would be to say that it consists of all
numberspi, forian element of the setI = {1, 2, 3,.. ., 100} = {i ∈N|
1 ≤ i ≤ 100}. This could be writtenP = {pi| i∈I}. Each elementpiin
this set is identified by a numberi∈I, called the _index_ of the element. A set
defined in this way is sometimes called an _indexed family_ , andIis called the
_index set_.
Although the indices for an indexed family are often numbers, they need
not be. For example, supposeS is the set of all students at your school. If
we wanted to form the set of all mothers of students, we might letmsstand
for the mother ofs, for any students. Then the set of all mothers of students
could be writtenM = {ms | s ∈S}. This is an indexed family in which
the index set isS, the set of all students. Each mother in the set is identified
by naming the student who is her child. Note that we could also define this
set using an elementhood test, by writingM = {m | m is the mother of
some student} = {m | ∃s ∈S(m = ms)}. In general, any indexed family
A= {xi|i∈I} can also be defined asA= {x | ∃i∈I (x = xi)}. It follows
that the statementx∈ {xi|i∈I} means the same thing as∃i∈I (x = xi).

**Example 2.3.1.** Analyze the logical forms of the following statements by
writing out the definitions of the set theory notation used.


```
More Operations on Sets 79
```
1. y∈ {^3

### √

```
x|x∈Q}.
```
2. {xi|i∈I} ⊆A.
3. {n^2 |n∈N}and {n^3 |n∈N}are not disjoint.

_Solutions_

1. ∃x∈Q(y =^3

### √

```
x).
```
2. By the definition of subset we must say that every element of {xi|i∈I}is
    also an element ofA, so we could start by writing∀x(x ∈ {xi|i∈I} →
    x ∈A). Filling in the meaning ofx ∈ {xi|i ∈I}, which we worked out
    earlier, we would end up with∀x(∃i∈I (x = xi)→x ∈A). But since
    the elements of {xi|i∈I} are just thexi’s, for alli∈I, perhaps an easier
    way of saying that every element of {xi| i∈I} is an element ofAwould
    be∀i ∈I (xi ∈A). The two answers we have given are equivalent, but
    showing this would require the methods we will be studying in Chapter 3.
3. We must say that the two sets have a common element, so one solution is
    to start by writing∃x(x ∈ {n^2 |n ∈N} ∧x ∈ {n^3 | n∈N}). However,
    as in the last statement, there is an easier way. An element common to the
    two sets would have to be the square of some natural number and also the
    cube of some (possibly different) natural number. Thus, we could say that
    there is such a common element by saying∃n∈N∃m∈N(n^2 = m^3 ). Note
    that it would be wrong to write∃n∈N(n^2 = n^3 ), because this wouldn’t
    allow for the possibility of the two natural numbers being different. By the
    way, this statement is true, since 64 = 8^2 = 4^3 , so 64 is an element of
    both sets.

Anything at all can be an element of a set. Some interesting and useful ideas
arise when we consider the possibility of a set having _other sets_ as elements.
For example, supposeA= {1, 2, 3},B = {4}, andC= ∅. There is no reason
why we couldn’t form the setF= {A,B,C}, whose elements are the three
setsA,B, andC. Filling in the definitions ofA,B, andC, we could write this
in another way:F= {{1, 2, 3}, {4},∅}. Note that 1∈AandA∈Fbut 1∈/F.
Fhas only three elements, and all three of them are sets, not numbers. Sets
such asF, whose elements are all sets, are sometimes called _families_ of sets.
It is often convenient to define families of sets as indexed families. For
example, suppose we again letSstand for the set of all students, and for each
studentswe letCsbe the set of courses thatshas taken. Then the collection
of all of these setsCswould be an indexed family of setsF= {Cs | s∈S}.
Remember that the elements of this family are not courses but _sets_ of courses.


80 _Quantificational Logic_

If we lett stand for some particular student Tina, and if Tina has taken
Calculus, English Composition, and American History, thenCt= {Calculus,
English Composition, American History}andCt ∈F, but Calculus∈/F.
An important example of a family of sets is given by the power set of a set.

**Definition 2.3.2.** SupposeAis a set. The _power set_ ofA, denotedP(A), is
the set whose elements are all the subsets ofA. In other words,

```
P(A) = {x|x⊆A}.
```
For example, the setA= {7, 12}has four subsets:∅, {7}, {12}, and {7, 12}.
Thus,P(A) = {∅, {7},{12}, {7, 12}}. What aboutP(∅)? Although∅has no
elements, it does have one subset, namely∅. Thus,P(∅)= {∅}. Note that,
as we saw in Section 1.3, {∅} is not the same as∅.
Any time you are working with some subsets of a setX, it may be helpful
to remember that all of these subsets ofX are elements ofP(X), by the
definition of power set. For example, if we letCbe the set of all courses
offered at your school, then each of the setsCsdiscussed earlier is a subset of
C. Thus, for each students,Cs ∈P(C). This means that every element of
the familyF= {Cs |s∈S} is an element ofP(C), soF⊆P(C).

**Example 2.3.3.** Analyze the logical forms of the following statements.

1. x∈P(A).
2. P(A) ⊆P(B).
3. B∈ {P(A) |A∈F}.
4. x∈P(A∩B).
5. x∈P(A)∩P(B).

_Solutions_

1. By the definition of power set, the elements ofP(A)are the subsets ofA.
    Thus, to say thatx∈P(A) means thatx ⊆ A, which we already know
    can be written as∀y(y ∈x→y∈A).
2. By the definition of subset, this means∀x(x ∈P(A) → x ∈P(B)).
    Now, writing outx∈P(A) andx∈P(B)as before, we get∀x[∀y(y ∈
    x→y∈A) → ∀y(y ∈x→y∈B)].
3. As before, this means∃A∈F(B = P(A)). Now, to say thatB = P(A)
    means that the elements ofB are precisely the subsets ofA, or in other
    words∀x(x ∈B ↔x⊆A). Filling this in, and writing out the definition


```
More Operations on Sets 81
of subset, we get our final answer,∃A∈F ∀x(x ∈B ↔ ∀y(y ∈x →
y∈A)).
```
4. As in the first statement, we start by writing this as∀y(y ∈x → y ∈
    A∩B). Now, filling in the definition of intersection, we get∀y(y ∈x→
    (y ∈A∧y∈B)).
5. By the definition of intersection, this means(x ∈P(A)) ∧(x ∈P(B)).
    Now, writing out the definition of power set as before, we get∀y(y ∈x→
    y∈A)∧ ∀y(y ∈x→y∈B).

Note that for statement 5 in this example we first wrote out the definition of
intersection and then used the definition of power set, whereas in statement
4 we started by writing out the definition of power set and then used the
definition of intersection. As you learn the definitions of more mathematical
terms and symbols, it will become more important to be able to choose which
definition to think about first when working out the meaning of a complex
mathematical statement. A good rule of thumb is to always start with the
“outermost” symbol. In statement 4 in Example 2.3.3, the intersection symbol
occurred inside the power set notation, so we wrote out the definition of power
set first. In statement 5, the power set notation occurred within both sides of
the notation for the intersection of two sets, so we started with the definition of
intersection. Similar considerations led us to use the definition of subset first,
rather than power set, in statement 2.
It is interesting to note that our answers for statements 4 and 5 in Example
2.3.3 are equivalent. (You are asked to verify this in exercise 11.) As in
Section 1.4, it follows that for any setsAandB,P(A∩B) = P(A)∩P(B).
You are asked in exercise 12 to show that this equation is not true in general if
we change ∩ to∪.
Consider once again the family of setsF = {Cs |s ∈S}, whereS is the
set of all students and for each students,Csis the set of all courses thatshas
taken. If we wanted to know which courses had been taken by all students, we
would need to find those elements that all the sets inFhave in common. The
set of all these common elements is called the intersection of the familyFand
is written

### ±

```
F. Similarly, the union of the familyF, written
```
### ²

F, is the set
resulting from throwing all the elements of all the sets inFtogether into one
set. In this case,

### ²

Fwould be the set of all courses that had been taken by
any student.

**Example 2. 3. 4.** LetF = {{1, 2, 3, 4},{2, 3, 4, 5},{3, 4, 5, 6}}. Find

### ±

² Fand
F.


82 _Quantificational Logic_

_Solution_

```
³
F= {1, 2, 3, 4} ∩ {2, 3, 4, 5} ∩ {3, 4, 5, 6} = {3, 4},
́
F= {1, 2, 3, 4} ∪ {2, 3, 4, 5} ∪ {3, 4, 5, 6} = {1, 2, 3, 4, 5, 6}.
```
```
Although these examples may make it clear what we mean by
```
### ±

² F and
F, we still have not given careful definitions for these sets. In general, if
Fis any family of sets, then we want

### ±

F to contain the elements that all
the sets inFhave in common. Thus, to be an element of

### ±

F, an object will
have to be an element of every set inF. On the other hand, anything that is an
element of any of the sets inFshould be in

### ²

```
F, so to be in
```
### ²

Fan object
only needs to be an element of at least one set inF. Thus, we are led to the
following general definitions.

**Definition 2.3.5.** SupposeF is a family of sets. Then the _intersection_ and
_union_ ofFare the sets

### ±

```
Fand
```
### ²

```
Fdefined as follows:
³
F= {x| ∀A∈F(x∈A)} = {x| ∀A(A ∈F→x∈A)}.
́
F= {x| ∃A∈F(x∈A)} = {x| ∃A(A ∈F∧x∈A)}.
```
```
Some mathematicians consider
```
### ±

Fto be undefined ifF = ∅. For an
explanation of the reason for this, see exercise 15. We will use the notation±
Fonly whenF±= ∅.
Notice that ifAandBare any two sets andF= {A,B}, then

### ±

### F= A∩B

and

### ²

F= A∪B. Thus, the definitions of intersection and union of a family
of sets are actually generalizations of our old definitions of the intersection
and union of two sets.

**Example 2.3.6.** Analyze the logical forms of the following statements.

1. x∈

### ±

### F.

### 2.

### ±

### F±

### ²

### G.

3. x∈P(

### ²

### F).

4. x∈

### ²

### {P(A)|A∈F}.

_Solutions_

1. By the definition of the intersection of a family of sets, this means∀A ∈
    F(x∈A), or equivalently,∀A(A ∈F→x∈A).
2. As we saw in Example 2.2.1, to say that one set is not a subset of another
    means that there is something that is an element of the first but not the


```
More Operations on Sets 83
second. Thus, we start by writing∃x(x ∈
```
### ±

```
F∧x /∈
```
### ²

```
G). We have
already written out whatx ∈
```
### ±

```
Fmeans in solution 1. By the definition
of the union of a family of sets,x ∈
```
### ²

```
Gmeans∃A ∈G(x ∈A), so
x /∈
```
### ²

```
Gmeans ¬∃A ∈G(x ∈A). By the quantifier negation laws, this
is equivalent to∀A ∈G(x /∈A). Putting this all together, our answer is
∃x[∀A∈F(x∈A)∧ ∀A∈G(x /∈A)].
```
3. Because the union symbol occurs within the power set notation, we start
    by writing out the definition of power set. As in Example 2.3.3, we get
    x ⊆

### ²

```
F, or in other words∀y(y ∈x → y ∈
```
### ²

```
F). Now we use the
definition of union to write outy ∈
```
### ²

```
F as∃A ∈F(y ∈A). The final
answer is∀y(y ∈x→ ∃A∈F(y ∈A)).
```
4. This time we start by writing out the definition of union. According to
    this definition, the statement means thatx is an element of at least one
    of the setsP(A), forA ∈ F. In other words,∃A ∈F(x ∈ P(A)).
    Inserting our analysis of the statementx∈P(A)from Example 2.3.3, we
    get∃A∈F∀y(y ∈x→y∈A).

Writing complex mathematical statements in logical symbols, as we did in
the last example, may sometimes help you understand what the statements
mean and whether they are true or false. For example, suppose that we once
again letCsbe the set of all courses that have been taken by students. LetM
be the set of math majors andEthe set of English majors, and letF= {Cs |
s ∈M} andG= {Cs |s∈E}. With these definitions, what does statement
2 of Example 2.3.6 mean, and under what circumstances would it be true?
According to our solution for this example, the statement means∃x[∀A ∈
F(x ∈A)∧ ∀A∈G(x /∈A)], or in other words, there is something that is
an element of each set inF, and that fails to be an element of each set inG.
Taking into account the definitions ofFandGthat we are using, this means
that there is some course that has been taken by all of the math majors but
none of the English majors. If, for example, all of the math majors have taken
Calculus but none of the English majors have, then the statement would be
true.
As another example, supposeF = {{1, 2, 3},{2, 3, 4},{3, 4, 5}}, andx =
{4, 5, 6}. With these definitions, would statement 3 of Example 2.3.6 be true?
You could determine this by finding P(

### ²

F)and then checking to see ifx
is an element of it, but this would take a very long time, because it turns out
thatP(

### ²

F)has 32 elements. It is easier to use the translation into logical
symbols given in our solution for this example. According to that translation,
the statement means∀y(y ∈x → ∃A∈F(y ∈A)); in other words, every
element ofxis in at least one set inF. Looking back at our definitions ofF


84 _Quantificational Logic_

andx, it is not hard to see that this is false, because 6∈x, but 6 is not in any
of the sets inF.
An alternative notation is sometimes used for the union or intersection of
an indexed family of sets. SupposeF= {Ai|i ∈I}, where eachAiis a set.
Then

### ±

Fwould be the set of all elements common to all theAi’s, fori∈I,
and this can also be written as

### ±

```
i∈IAi. In other words,
³
F=
```
### ³

```
i∈I
```
```
Ai= {x| ∀i∈I (x ∈Ai)}.
```
Similarly, an alternative notation for

### ²

```
Fis
```
### ²

```
i∈IAi, so
́
F=
```
### ́

```
i∈I
```
```
Ai= {x| ∃i∈I (x ∈Ai)}.
```
Returning to our example of courses taken by students, we could use this
notation to write the set of courses taken by all students as

### ±

s∈SCs. You
could think of this notation as denoting the result of running through all of the
elementssinS, forming the setCsfor each of them, and then intersecting all
of these sets.

**Example 2. 3. 7.** LetI = {1, 2, 3}, and for eachi∈I letAi= {i,i+ 1,i+
2,i+ 3}. Find

### ±

```
i∈IAiand
```
### ²

```
i∈IAi.
```
_Solution_

First we list the elements of the setsAi, fori∈I:

```
A 1 = {1, 2, 3, 4}, A 2 = {2, 3, 4, 5}, A 3 = {3, 4, 5, 6}.
```
Then
³

```
i∈I
```
```
Ai= A 1 ∩A 2 ∩A 3 = {1, 2, 3, 4} ∩ {2, 3, 4, 5} ∩ {3, 4, 5, 6} = {3, 4},
```
and similarly
́

```
i∈I
```
```
Ai= {1, 2, 3, 4} ∪ {2, 3, 4, 5} ∪ {3, 4, 5, 6} = {1, 2, 3, 4, 5, 6}.
```
In fact, we can now see that the question asked in this example is exactly the
same as the one in Example 2.3.4, but with different notation.

**Example 2. 3. 8.** For this example our universe of discourse will be the setS
of all students. LetL(x,y)stand for “xlikesy” andA(x,y)for “xadmires
y.” For each students, letLsbe the set of all students thatslikes. In other


```
More Operations on Sets 85
```
wordsLs= {t ∈S |L(s,t)}. Similarly, letAs= {t∈S|A(s,t)} = the set
of all students thatsadmires. Describe the following sets.

1.

### ±

s∈SLs.
2.

### ²

s∈SLs.
3.

### ²

```
s∈SLs\
```
### ²

s∈SAs.
4.

### ²

```
s∈S(Ls\As).
```
5. (

### ±

```
s∈SLs)∩(
```
### ±

s∈SAs).
6.

### ±

s∈S(Ls∩As).
7.

### ²

```
b∈BLb, whereB=
```
### ±

```
s∈SAs.
```
_Solutions_

First of all, note that in general,t∈Lsmeans the same thing asL(s,t), and
similarlyt∈AsmeansA(s,t).

1.

### ±

```
s∈SLs= {t| ∀s∈S(t ∈Ls)} = {t∈S | ∀s∈S L(s,t)} = the set of
all students who are liked by all students.
```
2.

### ²

```
s∈SLs= {t| ∃s∈S(t ∈Ls)} = {t∈S | ∃s∈S L(s,t)} = the set of all
students who are liked by at least one student.
```
3. As we saw in solution 2,

### ²

```
s∈SLs = the set of all students who are liked
by at least one student. Similarly,
```
### ²

```
s∈SAs= the set of all students who
are admired by at least one student. Thus
```
### ²

```
s∈SLs\
```
### ²

```
² s∈SAs = {t| t ∈
s∈SLsandt /∈
```
### ²

s∈SAs} = the set of all students who are liked by at
least one student, but are not admired by any students.
4.

### ²

```
s∈S(Ls\As)= {t| ∃s∈S(t ∈Ls\As)} = {t ∈S| ∃s∈S(L(s ,t)∧
¬A(s,t))} = the set of all studentstsuch that some student likest, but
doesn’t admiret. Note that this is different from the set in part 3. For a
studenttto be in this set, there must be a student who likestbut doesn’t
admiret, but there could be other students who admiret. To be in the set
in part 3,tmust be admired by nobody.
```
5. (

### ±

```
s∈SLs)∩(
```
### ±

```
s∈SAs)= {t|t∈
```
### ±

```
s∈SLsandt∈
```
### ±

s∈SAs} = {t| ∀s∈
S(t ∈Ls)∧∀s∈S(t∈As)} = {t∈S| ∀s∈S L(s,t)∧∀s∈S A(s,t)} =
the set of all students who are liked by all students and also admired by all
students.
6.

### ±

```
s∈S(Ls∩As)= {t| ∀s∈S(t ∈Ls∩As)} = {t∈S| ∀s∈S(L(s,t)∧
A(s,t))} = the set of all students who are both liked and admired by all
students. This is the same as the set in part 5. In fact, you can use the
distributive law for universal quantification and conjunction to show that
the elementhood tests for the two sets are equivalent.
```

86 _Quantificational Logic_

7.

### ²

```
b∈BLb = {t | ∃b ∈B(t ∈Lb)} = {t ∈S | ∃b(b ∈B ∧L(b,t))}.
ButB was defined to be the set of all students who are admired by all
students, so² b ∈Bmeansb∈S ∧ ∀s∈S A(s,b). Inserting this, we get
b∈BLb= {t∈S| ∃b(b ∈S∧^ ∀s∈S A(s,b)∧L(b,t))} = the set of all
students who are liked by some student who is admired by all students.
```
```
Exercises
```
```
*1. Analyze the logical forms of the following statements. You may use the
symbols∈,∈/, =, ±= ,∧,∨, →, ↔,∀, and∃in your answers, but not⊆,
±,P, ∩,∪, \ , {, }, or ¬. (Thus, you must write out the definitions of
some set theory notation, and you must use equivalences to get rid of any
occurrences of ¬.)
(a)F⊆P(A).
(b) A⊆ {2n+ 1 |n∈N}.
(c) {n^2 +n+ 1 |n∈N} ⊆ {2n+ 1 |n∈N}.
(d) P(
```
### ²

```
i∈IAi)±
```
### ²

```
i∈IP(Ai).
```
2. Analyze the logical forms of the following statements. You may use the
    symbols∈,∈/, =, ±= ,∧,∨, →, ↔,∀, and∃in your answers, but not⊆,
    ±,P, ∩,∪, \ , {, }, or ¬. (Thus, you must write out the definitions of
    some set theory notation, and you must use equivalences to get rid of any
    occurrences of ¬.)
    (a)x∈

### ²

### F\

### ²

### G.

```
(b) {x∈B|x /∈C} ∈P(A).
(c)x∈
```
### ±

```
i∈I(Ai∪Bi).
(d) x∈(
```
### ±

```
i∈IAi)∪(
```
### ±

```
i∈IBi).
```
3. We’ve seen thatP(∅)= {∅}, and {∅} ±=∅. What isP({∅})?
*4. SupposeF= {{red, green, blue}, {orange, red, blue}, {purple, red, green,
blue}}. Find

### ±

```
Fand
```
### ²

### F.

5. SupposeF= {{3, 7, 12},{5, 7, 16},{5, 12, 23}}. Find

### ±

```
Fand
```
### ²

### F.

6. LetI= {2, 3, 4, 5}, and for eachi∈IletAi= {i,i+ 1,i− 1, 2i}.
    (a) List the elements of all the setsAi, fori∈I.
(b) Find

### ±

```
i∈IAiand
```
### ²

```
i∈IAi.
```
7. LetP = {Johann Sebastian Bach, Napoleon Bonaparte, Johann Wolf-
    gang von Goethe, David Hume, Wolfgang Amadeus Mozart, Isaac New-
    ton, George Washington}and letY = {1750, 1751, 1752,.. ., 1759}. For
    eachy ∈Y, letAy = {p ∈P | the personpwas alive at some time
    during the yeary}. Find

### ²

```
y∈YAyand
```
### ±

```
y∈YAy.
```

```
More Operations on Sets 87
*8. LetI = {2, 3}, and for eachi∈IletAi= {i, 2i} andBi= {i,i+ 1}.
(a) List the elements of the setsAiandBifori∈I.
(b) Find
```
### ±

```
i∈I(Ai∪Bi)and(
```
### ±

```
i∈IAi)∪(
```
### ±

```
i∈IBi). Are they the same?
(c) In parts (c) and (d) of exercise 2 you analyzed the statements± x ∈
i∈I(Ai ∪Bi)andx ∈(
```
### ±

```
i∈IAi)∪(
```
### ±

```
i∈IBi). What can you
conclude from your answer to part (b) about whether or not these
statements are equivalent?
```
9. (a) Analyze the logical forms of the statementsx ∈

### ²

```
i∈I(Ai\ Bi),
x∈(
```
### ²

```
i∈IAi)\(
```
### ²

```
i∈IBi), andx∈(
```
### ²

```
i∈IAi)\(
```
### ±

```
i∈IBi). Do you
think that any of these statements are equivalent to each other?
(b) LetI,Ai, andBibe defined as in exercise 8. Find
```
### ²

```
i∈I(Ai\Bi),
(
```
### ²

```
i∈IAi)\(
```
### ²

```
i∈IBi), and(
```
### ²

```
i∈IAi)\(
```
### ±

```
i∈IBi). Now do you think
any of the statements in part (a) are equivalent?
```
10. Give an example of an index setIand indexed families of sets {Ai|i∈
    I} and {Bi|i∈I} such that

### ²

```
i∈I(Ai∩Bi)±= (
```
### ²

```
i∈IAi)∩(
```
### ²

```
i∈IBi).
```
11. Show that for any setsA andB,P(A∩B) = P(A) ∩P(B), by
    showing that the statementsx∈P(A∩B)andx∈P(A)∩P(B)are
    equivalent. (See Example 2.3.3.)
*12. Give examples of setsAandBfor whichP(A∪B)±= P(A)∪P(B).
13. Verify the following identities by writing out (using logical symbols)
what it means for an objectxto be an element of each set and then using
logical equivalences.
(a)

### ²

```
i∈I(Ai∪Bi)= (
```
### ²

```
i∈IAi)∪(
```
### ²

```
i∈IBi).
(b) (
```
### ±

### F)∩(

### ±

### G)=

### ±

### (F∪G).

```
(c)
```
### ±

```
i∈I(Ai\Bi)= (
```
### ±

```
i∈IAi)\(
```
### ²

i∈IBi).
*14. Sometimes each set in an indexed family of sets has _two_ indices. For
this problem, use the following definitions:I = {1, 2},J = {3, 4}. For
eachi ∈ I andj ∈J, letAi,j = {i,j,i+ j}. Thus, for example,
A2,3= {2, 3, 5}.
(a) For eachj∈JletBj=

### ²

```
i∈IAi,j= A1,j∪A2,j. FindB^3 andB^4.
(b) Find
```
### ±

```
j∈JBj. (Note that, replacingBjwith its definition, we could
say that
```
### ±

```
j∈JBj=
```
### ±

```
j∈J(
```
### ²

```
i∈IAi,j).)
(c) Find
```
### ²

```
i∈I(
```
### ±

```
j∈JAi,j). (Hint: You may want to do this in two
steps, corresponding to parts (a) and (b).) Are
```
### ±

```
j∈J(
```
### ²

```
² i∈IAi,j)and
i∈I(
```
### ±

```
j∈JAi,j)equal?
(d) Analyze the logical forms of the statementsx∈
```
### ±

```
j∈J(
```
### ²

```
i∈IAi,j)
andx∈
```
### ²

```
i∈I(
```
### ±

```
j∈JAi,j). Are they equivalent?
```
15. (a) Show that ifF= ∅, then the statementx ∈

### ²

```
Fwill be false no
matter whatxis. It follows that
```
### ²

### ∅= ∅.


88 _Quantificational Logic_

```
(b) Show that ifF= ∅, then the statementx ∈
```
### ±

```
Fwill be true no
matter whatxis. In a context in which it is clear what the universe
of discourseU is, we might therefore want to say that
```
### ±

### ∅= U.

```
However, this has the unfortunate consequence that the notation
```
### ±

### ∅

```
will mean different things in different contexts. Furthermore, when
working with sets whose elements are sets, mathematicians often
do not use a universe of discourse at all. (For more on this, see the
next exercise.) For these reasons, some mathematicians consider the
notation
```
### ±

```
∅to be meaningless. We will avoid this problem in this
book by using the notation
```
### ±

```
Fonly in contexts in which we can be
sure thatF±= ∅.
```
16. In Section 2.3 we saw that a set can have other sets as elements. When
    discussing sets whose elements are sets, it might seem most natural to
    consider the universe of discourse to be the set of all sets. However, as
    we will see in this problem, assuming that there is such a set leads to
    contradictions.
       SupposeUwere the set of all sets. Note that in particularU is a set,
    so we would haveU ∈U. This is not yet a contradiction; although most
    sets are not elements of themselves, perhaps some sets are elements of
    themselves. But it suggests that the sets in the universeUcould be split
    into two categories: the unusual sets that, likeUitself, are elements of
    themselves, and the more typical sets that are not. LetR be the set of
    sets in the second category. In other words,R= {A∈U |A ∈/A}. This
    means that for any setAin the universeU,Awill be an element ofRiff
    A ∈/A. In other words, we have∀A∈U(A ∈R↔A ∈/A).
    (a) Show that applying this last fact to the setRitself (in other words,
       plugging inRforA) leads to a contradiction. This contradiction was
       discovered by Bertrand Russell (1872–1970) in 1901, and is known
       as _Russell’s paradox_.
(b) Think some more about the paradox in part (a). What do you think
it tells us about sets?


## 3 Proofs

## 3.1 Proof Strategies

Mathematicians are skeptical people. They use many methods, including
experimentation with examples, trial and error, and guesswork, to try to find
answers to mathematical questions, but they are generally not convinced that
an answer is correct unless they can prove it. You have probably seen some
mathematical proofs before (there were some examples in the introduction),
but you may not have any experience writing them yourself. In this chapter
you’ll learn more about how proofs are put together, so you can start writing
your own proofs.
Proofs are a lot like jigsaw puzzles. There are no rules about how jigsaw
puzzles must be solved. The only rule concerns the final product: all the pieces
must fit together, and the picture must look right. The same holds for proofs.
Although there are no rules about how jigsaw puzzles must be solved, some
techniques for solving them work better than others. For example, you’d never
do a jigsaw puzzle by filling in every _other_ piece, and then going back and
filling in the holes! But you also don’t do it by starting at the top and filling in
the pieces in order until you reach the bottom. You probably fill in the border
first, and then gradually put other chunks of the puzzle together and figure out
where they go. Sometimes you try to put pieces in the wrong places, realize
that they don’t fit, and feel that you’re not making any progress. And every
once in a while you see, in a satisfying flash, how two big chunks fit together
and feel that you’ve suddenly made a lot of progress. As the pieces of the
puzzle fall into place, a picture emerges. You suddenly realize that the patch
of blue you’ve been putting together is a lake, or part of the sky. But it’s only
when the puzzle is complete that you can see the whole picture.
Similar things could be said about the process of figuring out a proof. And
I think one more similarity should be mentioned. When you finish a jigsaw

```
89
```

90 _Proofs_

puzzle, you don’t take it apart right away, do you? You probably leave it out
for a day or two, so you can admire it. You should do the same thing with a
proof. You figured out how to fit it together yourself, and once it’s all done,
isn’t it pretty?
In this chapter we will discuss the proof-writing techniques that math-
ematicians use most often and explain how to use them to begin writing
proofs yourself. Understanding these techniques may also help you read and
understand proofs written by other people. Unfortunately, the techniques in
this chapter do not give a step-by-step procedure for solving every proof
problem. When trying to write a proof you may make a few false starts before
finding the right way to proceed, and some proofs may require some cleverness
or insight. With practice your proof-writing skills should improve, and you’ll
be able to tackle more and more challenging proofs.
Mathematicians usually state the answer to a mathematical question in the
form of a _theorem_ that says that if certain assumptions called the _hypotheses_
of the theorem are true, then some conclusion must also be true. Often
the hypotheses and conclusion contain free variables, and in this case it is
understood that these variables can stand for any elements of the universe of
discourse. An assignment of particular values to these variables is called an
_instance_ of the theorem, and in order for the theorem to be correct it must be
the case that for every instance of the theorem that makes the hypotheses come
out true, the conclusion is also true. If there is even one instance in which the
hypotheses are true but the conclusion is false, then the theorem is incorrect.
Such an instance is called a _counterexample_ to the theorem.

**Example 3.1.1.** Consider the following theorem:

**Theorem.** _Suppose_ x > 3 _and_ y < 2_. Then_ x^2 − 2y > 5_._

This theorem is correct. (You are asked to prove it in exercise 15.) The
hypotheses of the theorem arex > 3 andy < 2, and the conclusion is
x^2 − 2y > 5. As an instance of the theorem, we could plug in 5 forx and
1 fory. Clearly with these values of the variables the hypothesesx > 3 and
y <2 are both true, so the theorem tells us that the conclusionx^2 − 2y > 5
must also be true. In fact, plugging in the values ofx andy we find that
x^2 − 2y = 25 − 2 = 23, and certainly 23> 5. Note that this calculation
does not constitute a proof of the theorem. We have only checked one instance
of the theorem, and a proof would have to show that _all_ instances are correct.
If we drop the second hypothesis, then we get an incorrect theorem:

**Incorrect Theorem.** _Suppose_ x > 3_. Then_ x^2 − 2y > 5_._


```
Proof Strategies 91
```
We can see that this theorem is incorrect by finding a counterexample. For
example, suppose we let x = 4 andy = 6. Then the only remaining
hypothesis,x > 3, is true, butx^2 − 2y = 16 − 12 = 4, so the conclusion
x^2 − 2y >5 is false.

If you find a counterexample to a theorem, then you can be sure that the
theorem is incorrect, but the only way to know for sure that a theorem is
correct is to prove it. A proof of a theorem is simply a deductive argument
whose premises are the hypotheses of the theorem and whose conclusion is
the conclusion of the theorem. Throughout the proof, we think of any free
variables in the hypotheses and conclusion of the theorem as standing for
some particular but unspecified elements of the universe of discourse. In other
words, we imagine that we are reasoning about some instance of the theorem,
but we don’t actually choose a particular instance; the reasoning in the proof
should apply to all instances. Of course the argument should be valid, so we
can be sure that if the hypotheses of the theorem are true for any instance, then
the conclusion will be true for that instance as well.
How you figure out and write up the proof of a theorem will depend mostly
on the logical form of the conclusion. Often it will also depend on the logical
forms of the hypotheses. The proof-writing techniques we will discuss in this
chapter will tell you which proof strategies are most likely to work for various
forms of hypotheses and conclusions.
Proof-writing techniques that are based on the logical forms of the hypothe-
ses usually suggest ways of drawing inferences from the hypotheses. When
you draw an inference from the hypotheses, you use the assumption that the
hypotheses are true to justify the assertion that some other statement is also
true. Once you have shown that a statement is true, you can use it later in
the proof exactly as if it were a hypothesis. Perhaps the most important rule
to keep in mind when drawing such inferences is this: _Never assert anything
until you can justify it completely_ using the hypotheses or using conclusions
reached from them earlier in the proof. Your motto should be: “I shall make
no assertion before its time.” Following this rule will prevent you from using
circular reasoning or jumping to conclusions and will guarantee that, if the
hypotheses are true, then the conclusion must also be true. And this is the
primary purpose of any proof: to provide a guarantee that the conclusion is
true if the hypotheses are.
To make sure your assertions are adequately justified, you must be skeptical
about every inference in your proof. If there is any doubt in your mind about
whether the justification you have given for an assertion is adequate, then it
isn’t. After all, if your own reasoning doesn’t even convince _you_ , how can you
expect it to convince anybody else?


92 _Proofs_

Proof-writing techniques based on the logical form of the conclusion
are often somewhat different from techniques based on the forms of the
hypotheses. They usually suggest ways of transforming the problem into
one that is equivalent but easier to solve. The idea of solving a problem
by transforming it into an easier problem should be familiar to you. For
example, adding the same number to both sides of an equation transforms the
equation into an equivalent equation, and the resulting equation is sometimes
easier to solve than the original one. Students who have studied calculus
may be familiar with techniques of evaluating integrals, such as substitution
or integration by parts, that can be used to transform a difficult integration
problem into an easier one.
Proofs that are written using these transformation strategies often include
steps in which you assume for the sake of argument that some statement is
true without providing any justification for that assumption. It may seem at
first that such reasoning would violate the rule that assertions must always
be justified, but it doesn’t, because _assuming_ something is not the same as
_asserting_ it. To assert a statement is to claim that it is true, and such a claim
is never acceptable in a proof unless it can be justified. However, the purpose
of making an assumption in a proof is not to make a claim about what _is_
true, but rather to enable you to find out what _would be_ true _if_ the assumption
were correct. You must always keep in mind that any conclusion you reach
that is based on an assumption might turn out to be false if the assumption is
incorrect. Whenever you make a statement in a proof, it’s important to be sure
you know whether it’s an assertion or an assumption.
Perhaps an example will help clarify this. Suppose that during the course
of a proof you decide to assume that some statement, call itP, is true, and
you use this assumption to conclude that another statementQis true. It would
be wrong to call this a proof thatQ is true, because you can’t be sure that
your assumption about the truth ofP was correct. All you can conclude at this
point is that _if_ P is true, then you can be sure thatQis true as well. In other
words, you know that the statementP →Q is true. If the conclusion of the
theorem being proven wasQ, then the proof is incomplete at best. But if the
conclusion wasP →Q, then the proof is complete. This brings us to our first
proof strategy.

```
To prove a conclusion of the form P →Q :
AssumePis true and then proveQ.
```
Here’s another way of looking at what this proof technique means. Assum-
ing thatP is true amounts to the same thing as addingP to your list
of hypotheses. AlthoughP might not originally have been one of your


```
Proof Strategies 93
```
hypotheses, once you have assumed it, you can use it exactly the way
you would use any other hypothesis. ProvingQ means treatingQ as your
conclusion and forgetting about the original conclusion. So this technique says
that if the conclusion of the theorem you are trying to prove has the form
P → Q, then you can _transform the problem_ by addingP to your list of
hypotheses and changing your conclusion fromP →QtoQ. This gives you
a new, perhaps easier proof problem to work on. If you can solve the new
problem, then you will have shown that _if_ P is true thenQis also true, thus
solving the original problem of provingP → Q. How you solve this new
problem will now be guided by the logical form of the new conclusionQ
(which might itself be a complex statement), and perhaps also by the logical
form of the new hypothesisP.
Note that this technique doesn’t tell you how to do the whole proof, it just
gives you one step, leaving you with a new problem to solve in order to finish
the proof. Proofs are usually not written all at once, but are created gradually
by applying several proof techniques one after another. Often the use of these
techniques will lead you to transform the problem several times. In discussing
this process it will be helpful to have some way to keep track of the results
of this sequence of transformations. We therefore introduce the following
terminology. We will refer to the statements that are known or assumed to
be true at some point in the course of figuring out a proof as _givens_ , and
the statement that remains to be proven at that point as the _goal_. When you
are starting to figure out a proof, the givens will be just the hypotheses of the
theorem you are proving, but they may later include other statements that have
been inferred from the hypotheses or added as new assumptions as the result of
some transformation of the problem. The goal will initially be the conclusion
of the theorem, but it may be changed several times in the course of figuring
out a proof.
To keep in mind that all of our proof strategies apply not only to the original
proof problem but also to the results of any transformation of the problem, we
will talk from now on only about givens and goals, rather than hypotheses
and conclusions, when discussing proof-writing strategies. For example, the
strategy stated earlier should really be called a strategy for proving a _goal_ of
the formP →Q, rather than a conclusion of this form. Even if the conclusion
of the theorem you are proving is not a conditional statement, if you transform
the problem in such a way that a conditional statement becomes the goal, then
you can apply this strategy as the next step in figuring out the proof.

**Example 3. 1. 2.** Supposeaandbare real numbers. Prove that if 0< a < b
thena^2 < b^2.


94 _Proofs_

_Scratch work_

We are given as a hypothesis thataandbare real numbers. Our conclusion
has the formP → Q, whereP is the statement 0 < a < bandQ is the
statementa^2 < b^2. Thus we start with these statements as given and goal:

_Givens Goal_
aandbare real numbers ( 0 < a < b)→(a^2 < b^2 )
According to our proof technique we should assume that 0< a < band try
to use this assumption to prove thata^2 < b^2. In other words, we transform the
problem by adding 0< a < bto the list of givens and makinga^2 < b^2 our
goal:

```
Givens Goal
aandbare real numbers
0 < a < b
```
```
a^2 < b^2
```
Comparing the inequalitiesa < banda^2 < b^2 suggests that multiplying
both sides of the given inequalitya < bby eitheraorbmight get us closer
to our goal. Because we are given thataandbare positive, we won’t need
to reverse the direction of the inequality if we do this. Multiplyinga < b
bya gives usa^2 < ab, and multiplying it byb gives usab < b^2. Thus
a^2 < ab < b^2 , soa^2 < b^2.

_Solution_

**Theorem.** _Suppose_ a _and_ b _are real numbers. If_ 0 < a < b _then_ a^2 < b^2_._

_Proof._ Suppose 0< a < b. Multiplying the inequalitya < bby the positive
numberawe can conclude thata^2 < ab, and similarly multiplying bybwe
getab < b^2. Thereforea^2 < ab < b^2 , soa^2 < b^2 , as required. Thus, if
0 < a < bthena^2 < b^2. ±

As you can see from the preceding example, there’s a difference between the
reasoning you use when you are figuring out a proof and the steps you write
down when you write the final version of the proof. In particular, although
we will often talk about givens and goals when trying to figure out a proof,
the final write-up will generally not refer to them. Throughout this chapter,
and sometimes in later chapters as well, we will precede our proofs with the
scratch work used to figure out the proof, but this is just to help you understand
how proofs are constructed. When mathematicians write proofs, they usually
just write the steps needed to justify their conclusions with no explanation of


```
Proof Strategies 95
```
how they thought of them. Some of these steps will be sentences indicating that
the problem has been transformed (usually according to some proof strategy
based on the logical form of the goal); some steps will be assertions that are
justified by inferences from the givens (often using some proof strategy based
on the logical form of a given). However, there will usually be no explanation
of how the mathematician thought of these transformations and inferences.
For example, the proof in Example 3.1.2 starts with the sentence “Suppose
0 < a < b,” indicating that the problem has been transformed according to
our strategy, and then proceeds with a sequence of inferences leading to the
conclusion thata^2 < b^2. No other explanations were necessary to justify the
final conclusion, in the last sentence, that if 0< a < bthena^2 < b^2.
Although this lack of explanation sometimes makes proofs hard to read, it
serves the purpose of keeping two distinct objectives separate: _explaining your
thought processes_ and _justifying your conclusions_. The first is psychology;
the second, mathematics. The primary purpose of a proof is to justify the
claim that the conclusion follows from the hypotheses, and no explanation of
your thought processes can substitute for adequate justification of this claim.
Keeping any discussion of thought processes to a minimum in a proof helps
to keep this distinction clear. Occasionally, in a very complicated proof, a
mathematician may include some discussion of the strategy behind the proof
to make the proof easier to read. Usually, however, it is up to readers to figure
this out for themselves. Don’t worry if you don’t immediately understand the
strategy behind a proof you are reading. Just try to follow the justifications of
the steps, and the strategy will eventually become clear. If it doesn’t, a second
reading of the proof might help.
To keep the distinction between the proof and the strategy behind the proof
clear, in the future when we state a proof strategy we will often describe both
the scratch work you might use to figure out the proof and the form that the
final write-up of the proof should take. For example, here’s a restatement of
the proof strategy we discussed earlier, in the form we will be using to present
proof strategies from now on.

```
To prove a goal of the form P →Q :
AssumeP is true and then proveQ.
```
_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
### P →Q


96 _Proofs_

After using strategy:

```
Givens Goal
—
—
P
```
```
Q
```
_Form of final proof:_

```
SupposeP.
[Proof ofQgoes here.]
ThereforeP→Q.
```
Note that the suggested form for the final proof tells you how the beginning
and end of the proof will go, but more steps will have to be added in the
middle. The givens and goal list under the heading “After using strategy” tells
you what is known or can be assumed and what needs to be proven in order to
fill in this gap in the proof. Many of our proof strategies will tell you how to
write either the beginning or the end of your proof, leaving a gap to be filled
in with further reasoning.
There is a second method that is sometimes used for proving goals of the
formP →Q. Because any conditional statementP →Qis equivalent to its
contrapositive ¬Q → ¬P, you can proveP → Q by proving ¬Q → ¬P
instead, using the strategy discussed earlier. In other words:

```
To prove a goal of the form P →Q :
AssumeQis false and prove thatP is false.
```
_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
### P →Q

After using strategy:

```
Givens Goal
—
—
¬Q
```
### ¬P


```
Proof Strategies 97
```
_Form of final proof:_

```
SupposeQis false.
[Proof of ¬P goes here.]
ThereforeP →Q.
```
**Example 3. 1. 3.** Supposea,b, andcare real numbers anda > b. Prove that
ifac ≤ bcthenc≤ 0.

_Scratch work_

```
Givens Goal
a,b, andcare real numbers
a > b
```
```
(ac ≤ bc)→(c≤ 0)
```
The contrapositive of the goal is ¬(c ≤ 0) → ¬(ac ≤ bc), or in other
words(c > 0 )→(ac > bc), so we can prove it by addingc >0 to the list of
givens and makingac > bcour new goal:

```
Givens Goal
a,b, andcare real numbers
a > b
c > 0
```
```
ac > bc
```
We can also now write the first and last sentences of the proof. According to
the strategy, the final proof should have this form:

Supposec >0.
[Proof ofac > bcgoes here.]
Therefore, ifac ≤bcthenc≤ 0.
Using the new given c > 0, we see that the goalac > bc follows
immediately from the givena > bby multiplying both sides by the positive
numberc. Inserting this step between the first and last sentences completes the
proof.

_Solution_

**Theorem.** _Suppose_ a _,_ b _, and_ c _are real numbers and_ a > b_. If_ ac ≤ bc _then_
c≤ 0_._

_Proof._ We will prove the contrapositive. Suppose c > 0. Then we can
multiply both sides of the given inequalitya > bbyc and conclude that
ac > bc. Therefore, ifac≤ bcthenc≤ 0. ±


98 _Proofs_

Notice that, although we have used the symbols of logic freely in the scratch
work, we have not used them in the final write-up of the proof. Although
it would not be incorrect to use logical symbols in a proof, mathematicians
usually try to avoid it. Using the notation and rules of logic can be very helpful
when you are figuring out the strategy for a proof, but in the final write-up you
should try to stick to ordinary English as much as possible.
You may be wondering how we knew in Example 3.1.3 that we should use
the second method for proving a goal of the formP →Qrather than the first.
The answer is simple: we tried both methods, and the second worked. When
there is more than one strategy for proving a goal of a particular form, you
may have to try a few different strategies before you hit on one that works.
With practice, you will get better at guessing which strategy is most likely to
work for a particular proof.
Notice that in each of the examples we have given, our strategy involved
making changes in our givens and goal to try to make the problem easier. The
beginning and end of the proof, which were supplied for us in the statement of
the proof technique, serve to tell a reader of the proof that these changes have
been made and how the solution to this revised problem solves the original
problem. The rest of the proof contains the solution to this easier, revised
problem.
Most of the other proof techniques in this chapter also suggest that you
revise your givens and goal in some way. These revisions result in a new proof
problem, and in every case the revisions have been designed so that a solution
to the new problem, when combined with some beginning or ending sentences
explaining these revisions, would also solve the original problem. This means
that whenever you use one of these strategies you can write a sentence or two
at the beginning or end of the proof and then forget about the original problem
and work instead on the new problem, which will usually be easier. Often you
will be able to figure out a proof by using the techniques in this chapter to
revise your givens and goal repeatedly, making the remaining problem easier
and easier until you reach a point at which it is completely obvious that the
goal follows from the givens.

```
Exercises
```
```
*1. Consider the following theorem. (This theorem was proven in the
introduction.)
```
```
Theorem. Suppose n is an integer larger than 1 and n is not prime.
Then 2 n− 1 is not prime.
```

```
Proof Strategies 99
(a) Identify the hypotheses and conclusion of the theorem. Are the
hypotheses true whenn = 6? What does the theorem tell you in
this instance? Is it right?
(b) What can you conclude from the theorem in the casen= 15? Check
directly that this conclusion is correct.
(c) What can you conclude from the theorem in the casen= 11?
```
2. Consider the following theorem. (The theorem is correct, but we will not
    ask you to prove it here.)

```
Theorem. Suppose that b^2 > 4 ac. Then the quadratic equation ax^2 +
bx+c= 0 has exactly two real solutions.
```
```
(a) Identify the hypotheses and conclusion of the theorem.
(b) To give an instance of the theorem, you must specify values fora,b,
andc, but notx. Why?
(c) What can you conclude from the theorem in the casea= 2,b= − 5,
c= 3? Check directly that this conclusion is correct.
(d) What can you conclude from the theorem in the casea= 2,b= 4,
c= 3?
```
3. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose n is a natural number larger than 2, and
n is not a prime number. Then 2 n+ 13 is not a prime number.
```
What are the hypotheses and conclusion of this theorem? Show that
the theorem is incorrect by finding a counterexample.
*4. Complete the following alternative proof of the theorem in Example
3.1.2.

```
Proof. Suppose 0< a < b. Thenb− a >0.
[Fill in a proof ofb^2 −a^2 >0 here.]
Sinceb^2 −a^2 >0, it follows thata^2 < b^2. Therefore if 0< a < bthen
a^2 < b^2. ±
```
5. Supposeaandbare real numbers. Prove that ifa < b <0 thena^2 > b^2.
6. Supposea andb are real numbers. Prove that if 0 < a < b then
    1 /b < 1 /a.
7. Suppose thata is a real number. Prove that ifa^3 > athena^5 > a.
    (Hint: One approach is to start by completing the following equation:
    a^5 −a= (a^3 − a)· ?.)
*8. SupposeA\ B ⊆C∩Dandx∈A. Prove that ifx /∈Dthenx∈B.


100 _Proofs_

9. SupposeA∩B⊆C\D. Prove that ifx∈A, then ifx∈Dthenx /∈B.
*10. Supposeaandbare real numbers. Prove that ifa < bthen(a+b)/ 2 < b.
11. Supposexis a real number andx±= 0. Prove that if(^3

### √

x+ 5)/(x^2 + 6)=
1 /xthenx±= 8.
*12. Supposea,b,c, anddare real numbers, 0< a < b, andd >0. Prove
that ifac≥ bdthenc > d.

13. Supposexandyare real numbers, and 3x+ 2y≤ 5. Prove that ifx > 1
    theny <1.
14. Suppose thatxandyare real numbers. Prove that ifx^2 + y= − 3 and
    2 x− y= 2 thenx= − 1.
*15. Prove the first theorem in Example 3.1.1. (Hint: You might find it useful
to apply the theorem from Example 3.1.2.)
16. Consider the following theorem.

```
Theorem. Suppose x is a real number and x±= 4. If ( 2 x− 5)/(x−4)= 3
then x= 7.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Supposex= 7. Then( 2 x− 5)/(x− 4)= ( 2 ( 7 )− 5)/(7− 4)=
9 /3 = 3. Therefore if( 2 x− 5)/(x − 4)= 3 thenx= 7. ±
(b) Give a correct proof of the theorem.
```
17. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose that x and y are real numbers and x±= 3.
If x^2 y= 9y then y= 0.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose thatx^2 y = 9y. Then(x^2 − 9)y = 0. Sincex±= 3,
x^2 ±= 9, sox^2 − 9 ±= 0. Therefore we can divide both sides of the
equation(x^2 − 9)y = 0 byx^2 − 9, which leads to the conclusion that
y= 0. Thus, ifx^2 y= 9ytheny= 0. ±
(b) Show that the theorem is incorrect by finding a counterexample.
```
## 3.2 Proofs Involving Negations and Conditionals

We turn now to proofs in which the goal has the form ¬P. Usually it’s easier
to prove a positive statement than a negative statement, so it is often helpful to
reexpress a goal of the form ¬P before proving it. Instead of trying to prove


```
Proofs Involving Negations and Conditionals 101
```
a goal that says what _shouldn’t_ be true, see if you can rephrase it as a goal
that says what _should_ be true. Fortunately, we have already studied several
equivalences that will help with this reexpression. Thus, our first strategy for
proving negated statements is:

**To prove a goal of the form** ¬P **:**
If possible, reexpress the goal in some other form and then use one of the
proof strategies for this other goal form.

**Example 3. 2. 1.** SupposeA∩C⊆B anda∈C. Prove thata /∈A\B.

_Scratch work_

```
Givens Goal
A∩C⊆B
a∈C
```
```
a /∈A\B
```
To prove the goal, we must show that it cannot be the case thata∈Aand
a /∈B. Because this is a negative goal, we try to reexpress it as a positive
statement:

```
a /∈A\B is equivalent to ¬(a∈A∧a /∈B) (definition ofA\B),
which is equivalent toa /∈A∨a∈B (De Morgan’s law),
which is equivalent toa∈A→a∈B (conditional law).
```
Rewriting the goal in this way gives us:

```
Givens Goal
A∩C⊆B
a∈C
```
```
a∈A→a∈B
```
We now prove the goal in this new form, using the first strategy from Section
3.1. Thus, we adda∈Ato our list of givens and makea∈Bour goal:

```
Givens Goal
A∩C⊆B
a∈C
a∈A
```
```
a∈B
```
The proof is now easy: from the givensa ∈Aanda ∈Cwe can conclude
thata∈A∩C, and then, sinceA∩C⊆B, it follows thata∈B.


102 _Proofs_

_Solution_

**Theorem.** _Suppose_ A∩C⊆B _and_ a∈C_. Then_ a /∈A\B_._

_Proof._ Supposea∈A. Then sincea∈C,a∈A∩C. But then sinceA∩C⊆
Bit follows thata∈B. Thus, it cannot be the case thatais an element ofA
but notB, soa /∈A\B. ±

Sometimes a goal of the form ¬P cannot be reexpressed as a positive
statement, and therefore this strategy cannot be used. In this case it is usually
best to do a _proof by contradiction_. Start by assuming thatP is true, and try
to use this assumption to prove something that you know is false. Often this is
done by proving a statement that contradicts one of the givens. Because you
know that the statement you have proven is false, the assumption thatP was
true must have been incorrect. The only remaining possibility then is thatP is
false.

**To prove a goal of the form** ¬P **:**
AssumePis true and try to reach a contradiction. Once you have reached a
contradiction, you can conclude thatPmust be false.

_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
### ¬P

After using strategy:

```
Givens Goal
—
—
P
```
```
Contradiction
```
_Form of final proof:_

```
SupposeP is true.
[Proof of contradiction goes here.]
Thus,P is false.
```
**Example 3. 2. 2.** Prove that ifx^2 + y= 13 andy±= 4 thenx±= 3.


```
Proofs Involving Negations and Conditionals 103
```
_Scratch work_

The goal is a conditional statement, so according to the first proof strategy in
Section 3.1 we can treat the antecedent as given and make the consequent our
new goal:

```
Givens Goal
x^2 + y= 13
y±= 4
```
```
x±= 3
```
This proof strategy also suggests what form the final proof should take.
According to the strategy, the proof should look like this:

```
Supposex^2 +y= 13 andy±= 4.
[Proof ofx±= 3 goes here.]
Thus, ifx^2 +y= 13 andy±= 4 thenx±= 3.
```
In other words, the first and last sentences of the final proof have already been
written, and the problem that remains to be solved is to fill in a proof ofx±= 3
between these two sentences. The givens–goal list summarizes what we know
and what we have to prove in order to solve this problem.
The goalx ±= 3 means ¬(x = 3), but becausex = 3 has no logical
connectives in it, none of the equivalences we know can be used to reexpress
this goal in a positive form. We therefore try proof by contradiction and
transform the problem as follows:

```
Givens Goal
x^2 +y= 13
y±= 4
x= 3
```
```
Contradiction
```
Once again, the proof strategy that suggested this transformation also tells
us how to fill in a few more sentences of the final proof. As we indicated
earlier, these sentences go between the first and last sentences of the proof,
which were written before.

```
Supposex^2 +y= 13 andy±= 4.
Supposex= 3.
[Proof of contradiction goes here.]
Thereforex±= 3.
Thus, ifx^2 +y= 13 andy±= 4 thenx±= 3.
```
The indenting in this outline of the proof will not be part of the final proof.
We have done it here to make the underlying structure of the proof clear. The
first and last lines go together and indicate that we are proving a conditional


104 _Proofs_

statement by assuming the antecedent and proving the consequent. Between
these lines is a proof of the consequent,x±= 3, which we have set off from the
first and last lines by indenting it. This inner proof has the form of a proof by
contradiction, as indicated by its first and last lines. Between these lines we
still need to fill in a proof of a contradiction.
At this point we don’t have a particular statement as our goal; any
impossible conclusion will do. We must therefore look more closely at the
givens to see if some of them contradict others. In this case, the first and third
together imply thaty= 4, which contradicts the second.

_Solution_

**Theorem.** _If_ x^2 + y= 13 _and_ y±= 4 _then_ x±= 3_._

_Proof._ Supposex^2 +y= 13 andy±= 4. Supposex= 3. Substituting this into
the equationx^2 + y= 13, we get 9 +y= 13, soy = 4. But this contradicts
the fact thaty±= 4. Thereforex ±= 3. Thus, ifx^2 + y= 13 andy±= 4 then
x±= 3. ±

You may be wondering at this point why we were justified in concluding,
when we reached a contradiction in the proof, thatx±= 3. After all, the second
list of givens in our scratch work contained three givens. How could we be
sure, when we reached a contradiction, that the culprit was the third given,
x= 3? To answer this question, look back at the first givens and goal analysis
for this example. According to that analysis, there were two givens,x^2 +y= 13
andy±= 4, from which we had to deduce the goalx±= 3. Those givens were
introduced as assumptions in the first sentence of the proof. Our proof that
x±= 3 took place in a context in which those assumptions were in force, as
indicated by the indenting in the outline of the proof in our scratch work. Thus,
we only had to show thatx ±= 3 _under the assumption that_ x^2 + y= 13 _and_
y±= 4. When we reached a contradiction, we didn’t need to figure out which
of the three statements in the second list of givens was false. We were certainly
justified in concluding that _if_ neither of the first two was the culprit, then it had
to be the third, and that was all that was required to finish the proof.
Proving a goal by contradiction has the advantage that it allows you to
assume that your conclusion is false, providing you with another given to
work with. But it has the disadvantage that it leaves you with a rather vague
goal: produce a contradiction by proving something that you know is false.
Because all the proof strategies we have discussed so far depend on analyzing
the logical form of the goal, it appears that none of them will help you to


```
Proofs Involving Negations and Conditionals 105
```
achieve the goal of producing a contradiction. In the preceding proof we were
forced to look more closely at our givens to find a contradiction. In this case
we did it by proving thaty= 4, contradicting the giveny±= 4. This illustrates
a pattern that occurs often in proofs by contradiction: if one of the givens has
the form ¬P, then you can produce a contradiction by provingP. This is our
first strategy based on the logical form of a _given_.

**To use a given of the form** ¬P **:**
If you’re doing a proof by contradiction, try makingP your goal. If you
can proveP, then the proof will be complete, becausePcontradicts the given
¬P.

_Scratch work_

Before using strategy:

```
Givens Goal
¬P
—
—
```
```
Contradiction
```
After using strategy:

```
Givens Goal
¬P
—
—
```
```
P
```
_Form of final proof:_

```
[Proof ofPgoes here.]
Since we already know ¬P, this is a contradiction.
```
Although we have recommended proof by contradiction for proving goals
of the form ¬P, it can be used for any goal. Usually it’s best to try the other
strategies first if any of them apply; but if you’re stuck, you can try proof by
contradiction in any proof.
The next example illustrates this and also another important rule of proof
writing: in many cases the logical form of a statement can be discovered
by _writing out the definition_ of some mathematical word or symbol that
occurs in the statement. For this reason, knowing the precise statements of
the definitions of all mathematical terms is extremely important when you’re
writing a proof.


106 _Proofs_

**Example 3. 2. 3.** SupposeA,B, andCare sets,A\B⊆C, andxis anything
at all. Prove that ifx∈A\ Cthenx∈B.

_Scratch work_

We’re given thatA\B ⊆C, and our goal isx∈A\C →x ∈B. Because
the goal is a conditional statement, our first step is to transform the problem
by addingx∈A\Cas a second given and makingx∈Bour goal:

```
Givens Goal
A\B⊆C
x∈A\C
```
```
x∈B
```
The form of the final proof will therefore be as follows:

Supposex∈A\ C.
[Proof ofx∈Bgoes here.]
Thus, ifx∈A\ Cthenx∈B.
The goalx∈Bcontains no logical connectives, so none of the techniques
we have studied so far apply, and it is not obvious why the goal follows from
the givens. Lacking anything else to do, we try proof by contradiction:

```
Givens Goal
A\B ⊆C
x∈A\C
x ∈/B
```
```
Contradiction
```
As before, this transformation of the problem also enables us to fill in a few
more sentences of the proof:

Supposex∈A\ C.
Supposex ∈/B.
[Proof of contradiction goes here.]
Thereforex∈B.
Thus, ifx∈A\ Cthenx∈B.
Because we’re doing a proof by contradiction and our last given is now a
negated statement, we could try using our strategy for using givens of the form
¬P. Unfortunately, this strategy suggests makingx ∈B our goal, which just
gets us back to where we started. We must look at the other givens to try to
find the contradiction.
In this case, writing out the definition of the second given is the key to the
proof, since this definition also contains a negated statement. By definition,


```
Proofs Involving Negations and Conditionals 107
```
x ∈A\ Cmeansx ∈Aandx ∈/C. Replacing this given by its definition
gives us:

```
Givens Goal
A\B ⊆C
x∈A
x ∈/C
x ∈/B
```
```
Contradiction
```
Now the third given also has the form ¬P, whereP is the statementx∈C,
so we can apply the strategy for using givens of the form ¬Pand makex∈C
our goal. Showing thatx ∈Cwould complete the proof because it would
contradict the givenx ∈/C.

```
Givens Goal
A\ B ⊆C
x∈A
x ∈/C
x ∈/B
```
```
x∈C
```
Once again, we can add a little more to the proof we are gradually writing
by filling in the fact that we plan to derive our contradiction by provingx∈C.
We also add the definition ofx∈A\Cto the proof, inserting it in what seems
like the most logical place, right after we stated thatx∈A\C:

Supposex∈A\C. This means thatx∈Aandx ∈/C.
Supposex ∈/B.
[Proof ofx∈Cgoes here.]
This contradicts the fact thatx ∈/C.
Thereforex∈B.
Thus, ifx∈A\Cthenx∈B.
We have finally reached a point where the goal follows easily from the
givens. Fromx∈Aandx ∈/Bwe conclude thatx∈A\B. SinceA\B ⊆C
it follows thatx∈C.

_Solution_

**Theorem.** _Suppose_ A _,_ B _, and_ C _are sets,_ A\B ⊆ C _, and_ x _is anything at
all. If_ x∈A\C _then_ x∈B_._

_Proof._ Supposex∈A\C. This means thatx∈Aandx ∈/C. Supposex ∈/B.
Thenx∈A\B, so sinceA\B⊆C,x∈C. But this contradicts the fact that
x ∈/C. Thereforex∈B. Thus, ifx∈A\Cthenx∈B. ±


108 _Proofs_

The strategy we’ve recommended for using givens of the form ¬P only
applies if you are doing a proof by contradiction. For other kinds of proofs,
the next strategy can be used. This strategy is based on the fact that givens of
the form ¬P, like goals of this form, may be easier to work with if they are
reexpressed as positive statements.

```
To use a given of the form ¬P :
If possible, reexpress this given in some other form.
```
We have discussed strategies for working with both givens and goals of
the form ¬P, but only strategies for goals of the formP → Q. We now
fill this gap by giving two strategies for using givens of the formP → Q.
We said before that many strategies for using givens suggest ways of drawing
inferences from the givens. Such strategies are called _rules of inference_. Both
of our strategies for using givens of the formP →Qare examples of rules of
inference.

**To use a given of the form** P →Q **:**
If you are also givenP, or if you can prove thatP is true, then you can
use this given to conclude thatQis true. Since it is equivalent to ¬Q→ ¬P,
if you can prove thatQis false, you can use this given to conclude thatP is
false.

The first of these rules of inference says that if you know that bothP and
P → Qare true, you can conclude thatQmust also be true. Logicians call
this rule _modus ponens_. We saw this rule used in one of our first examples
of valid deductive reasoning in Chapter 1, argument 2 in Example 1.1.1. The
validity of this form of reasoning was verified using the truth table for the
conditional connective in Section 1.5.
The second rule, called _modus tollens_ , says that if you know thatP →Q
is true andQis false, you can conclude thatPmust also be false. The validity
of this rule can also be checked with truth tables, as you are asked to show in
exercise 14. Usually you won’t find a given of the formP →Qto be much
use until you are able to prove eitherP or ¬Q. However, if you ever reach
a point in your proof where you have determined thatP is true, you should
probably use this given immediately to conclude thatQ is true. Similarly, if
you ever establish ¬Q, immediately use this given to conclude ¬P.
Although most of our examples will involve specific mathematical state-
ments, occasionally we will do examples of proofs containing letters standing
for unspecified statements. Later in this chapter we will be able to use this


```
Proofs Involving Negations and Conditionals 109
```
method to verify some of the equivalences from Chapter 2 that could only
be justified on intuitive grounds before. Here’s an example of this kind,
illustrating the use of modus ponens and modus tollens.

**Example 3. 2. 4.** SupposeP →(Q→R). Prove that ¬R→(P → ¬Q).

_Scratch work_

This could actually be done with a truth table, as you are asked to show in
exercise 15, but let’s do it using the proof strategies we’ve been discussing.
We start with the following situation:

```
Givens Goal
P →(Q →R) ¬R→(P → ¬Q)
```
Our only given is a conditional statement. By the rules of inference just
discussed, if we knewP we could use modus ponens to concludeQ → R,
and if we knew ¬(Q → R)we could use modus tollens to conclude ¬P.
Because we don’t, at this point, know either of these, we can’t yet do anything
with this given. If eitherP or ¬(Q →R)ever gets added to the givens list,
then we should consider using modus ponens or modus tollens. For now, we
need to concentrate on the goal.
The goal is also a conditional statement, so we assume the antecedent and
set the consequent as our new goal:

```
Givens Goal
P →(Q→R)
¬R
```
### P → ¬Q

We can also now write a little bit of the proof:

Suppose ¬R.
[Proof ofP → ¬Qgoes here.]
Therefore ¬R→(P → ¬Q).
We still can’t do anything with the givens, but the goal is another condi-
tional, so we use the same strategy again:

```
Givens Goal
P →(Q→R)
¬R
P
```
### ¬Q


110 _Proofs_

Now the proof looks like this:

```
Suppose ¬R.
SupposeP.
[Proof of ¬Qgoes here.]
ThereforeP → ¬Q.
Therefore ¬R→(P → ¬Q).
```
We’ve been watching for our chance to use our first given by applying either
modus ponens or modus tollens, and now we can do it. Since we knowP →
(Q → R)andP, by modus ponens we can inferQ → R. Any conclusion
inferred from the givens can be added to the givens column:

```
Givens Goal
P →(Q→R)
¬R
P
Q→R
```
### ¬Q

We also add one more line to the proof:

Suppose ¬R.
SupposeP.
SincePandP →(Q→R), it follows thatQ→R.
[Proof of ¬Qgoes here.]
ThereforeP → ¬Q.
Therefore ¬R→(P → ¬Q).
Finally, our last step is to use modus tollens. We now knowQ → Rand
¬R, so by modus tollens we can conclude ¬Q. This is our goal, so the proof
is done.

_Solution_

**Theorem.** _Suppose_ P→(Q→R)_. Then_ ¬R→(P → ¬Q)_._

_Proof._ Suppose ¬R. SupposeP. SinceP andP → (Q → R), it follows
thatQ → R. But then, since ¬R, we can conclude ¬Q. Thus,P → ¬Q.
Therefore ¬R→(P → ¬Q). ±

Sometimes if you’re stuck you can use rules of inference to work backward.
For example, suppose one of your givens has the formP →Qand your goal
isQ. If only you could proveP, you could use modus ponens to reach your
goal. This suggests treatingP as your goal instead ofQ. If you can proveP,


```
Proofs Involving Negations and Conditionals 111
```
then you’ll just have to add one more step to the proof to reach your original
goalQ.

**Example 3. 2. 5.** Suppose thatA ⊆ B,a ∈A, anda /∈B \ C. Prove that
a∈C.

_Scratch work_

```
Givens Goal
A⊆B
a∈A
a /∈B\C
```
```
a∈C
```
Our third given is a negative statement, so we begin by reexpressing it as
an equivalent positive statement. According to the definition of the difference
of two sets, this given means ¬(a ∈B∧a /∈C), and by one of De Morgan’s
laws, this is equivalent toa /∈B ∨a ∈C. Because our goal isa ∈C, it is
probably more useful to rewrite this in the equivalent forma∈B →a∈C:

```
Givens Goal
A⊆B
a∈A
a∈B →a∈C
```
```
a∈C
```
Now we can use our strategy for using givens of the formP → Q. Our
goal isa∈C, and we are given thata∈B → a∈C. If we could prove that
a∈B, then we could use modus ponens to reach our goal. So let’s try treating
a∈B as our goal and see if that makes the problem easier:

```
Givens Goal
A⊆B
a∈A
a∈B →a∈C
```
```
a∈B
```
```
Now it is clear how to reach the goal. Sincea∈AandA⊆B,a∈B.
```
_Solution_

**Theorem.** _Suppose that_ A⊆B _,_ a∈A _, and_ a /∈B\C_. Then_ a∈C_._

_Proof._ Sincea∈AandA⊆B, we can conclude thata∈B. Buta /∈B\C,
so it follows thata∈C. ±


112 _Proofs_

```
Exercises
```
```
*1. This problem could be solved by using truth tables, but don’t do it that
way. Instead, use the methods for writing proofs discussed so far in this
chapter. (See Example 3.2.4.)
(a) SupposeP →QandQ → Rare both true. Prove thatP → Ris
true.
(b) Suppose ¬R→ (P → ¬Q)is true. Prove thatP →(Q →R) is
true.
```
2. This problem could be solved by using truth tables, but don’t do it that
    way. Instead, use the methods for writing proofs discussed so far in this
    chapter. (See Example 3.2.4.)
    (a) SupposeP →QandR→ ¬Qare both true. Prove thatP → ¬R
       is true.
(b) Suppose thatP is true. Prove thatQ→ ¬(Q→ ¬P )is true.
3. SupposeA ⊆ C, andB andCare disjoint. Prove that ifx ∈A then
    x /∈B.
4. Suppose thatA\B is disjoint fromCandx ∈A. Prove that ifx ∈C
    thenx∈B.
*5. Prove that it cannot be the case thatx∈A\ Bandx∈B\C.
*6. Use the method of proof by contradiction to prove the theorem in
Example 3.2.1.
7. Use the method of proof by contradiction to prove the theorem in
    Example 3.2.5.
8. Suppose thaty+x= 2y− x, andxandyare not both zero. Prove that
    y±= 0.
*9. Suppose thataandbare nonzero real numbers. Prove that ifa < 1 /a <
b < 1 /bthena <− 1.
10. Suppose thatxandyare real numbers. Prove that ifx^2 y= 2x+y, then
ify±= 0 thenx±= 0.
11. Suppose thatxandy are real numbers. Prove that ifx ±= 0, then if
y=( 3 x^2 + 2y)/(x^2 + 2)theny= 3.
*12. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose x and y are real numbers and x+y= 10.
Then x±= 3 and y±= 8.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose the conclusion of the theorem is false. Thenx= 3
andy = 8. But thenx+ y = 11, which contradicts the given
```

```
Proofs Involving Quantifiers 113
information that x + y = 10. Therefore the conclusion must
be true. ±
(b) Show that the theorem is incorrect by finding a counterexample.
```
13. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose that A ⊆C , B ⊆C , and x∈A. Then
x∈B.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose thatx ∈/B. Sincex∈AandA⊆C,x∈C. Since
x ∈/B andB ⊆C,x ∈/C. But now we have proven bothx∈Cand
x ∈/C, so we have reached a contradiction. Thereforex∈B. ±
(b) Show that the theorem is incorrect by finding a counterexample.
```
14. Use truth tables to show that modus tollens is a valid rule of inference.
*15. Use truth tables to check the correctness of the theorem in Example
3.2.4.
16. Use truth tables to check the correctness of the statements in exercise 1.
17. Use truth tables to check the correctness of the statements in exercise 2.
18. Can the proof in Example 3.2.2 be modified to prove that ifx^2 +y= 13
    andx±= 3 theny±= 4? Explain.

## 3.3 Proofs Involving Quantifiers

Look again at Example 3.2.3. In that example we said thatxcould be anything
at all, and we proved the statementx∈A\C→x∈B. Because the reasoning
we used would apply no matter whatx was, our proof actually shows that
x ∈A\ C → x ∈ B is true for all values ofx. In other words, we can
conclude∀x(x ∈A\C→x∈B).
This illustrates the easiest and most straightforward way of proving a goal
of the form∀xP (x). If you can give a proof of the goalP (x)that would work
no matter whatxwas, then you can conclude that∀xP (x) must be true. To
make sure that your proof would work for any value ofx, it is important to
start your proof with no assumptions aboutx. Mathematicians express this by
saying thatxmust be _arbitrary_. In particular, you must not assume thatxis
equal to any other object already under discussion in the proof. Thus, if the
letterxis already being used in the proof to stand for some particular object,
then you cannot use it to stand for an arbitrary object. In this case you must
choose a different variable that is not already being used in the proof, sayy,


114 _Proofs_

and replace the goal∀xP (x)with the equivalent statement∀yP (y). Now you
can proceed by lettingystand for an arbitrary object and provingP (y).

**To prove a goal of the form** ∀xP (x) **:**
Letxstand for an arbitrary object and proveP (x). The letterxmust be a
new variable in the proof. Ifxis already being used in the proof to stand for
something, then you must choose an unused variable, sayy, to stand for the
arbitrary object, and proveP (y).

_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
```
∀xP (x)
```
After using strategy:

```
Givens Goal
—
—
```
```
P (x)
```
_Form of final proof:_

```
Letxbe arbitrary.
[Proof ofP (x)goes here.]
Sincexwas arbitrary, we can conclude that∀xP (x).
```
**Example 3. 3. 1.** SupposeA,B, andCare sets, andA\ B ⊆C. Prove that
A\C⊆B.

_Scratch work_

_Givens Goal_
A\B ⊆C A\C⊆B
As usual, we look first at the logical form of the goal to plan our strategy. In
this case we must write out the definition of⊆to determine the logical form
of the goal.

_Givens Goal_
A\B ⊆C ∀x(x ∈A\C→x∈B)
Because the goal has the form∀xP (x), whereP (x) is the statement
x ∈A\ C → x ∈B, we will introduce a new variablexinto the proof


```
Proofs Involving Quantifiers 115
```
to stand for an arbitrary object and then try to provex∈A\ C → x∈B.
Note thatx _is_ a new variable in the proof. It appeared in the logical form of
the goal as a bound variable, but remember that bound variables don’t stand
for anything in particular. We have not yet used xas a free variable in any
statement, so it has not been used to stand for any particular object. To make
surexis arbitrary we must be careful not to add any assumptions aboutxto
the givens column. However, we do change our goal:

```
Givens Goal
A\B ⊆C x∈A\C→x∈B
```
According to our strategy, the final proof should look like this:

Letxbe arbitrary.
[Proof ofx∈A\C→x∈Bgoes here.]
Sincexwas arbitrary, we can conclude that∀x(x ∈A\C→ x∈B), so
A\C⊆B.
The problem is now exactly the same as in Example 3.2.3, so the rest of the
solution is the same as well. In other words, we can simply insert the proof
we wrote in Example 3.2.3 between the first and last sentences of the proof
written here.

_Solution_

**Theorem.** _Suppose_ A _,_ B _, and_ C _are sets, and_ A\B ⊆C_. Then_ A\ C⊆B_._

_Proof._ Letxbe arbitrary. Supposex ∈A\ C. This means thatx ∈Aand
x ∈/C. Supposex ∈/ B. Thenx ∈A\B, so sinceA\ B ⊆C,x∈C. But
this contradicts the fact thatx ∈/C. Thereforex∈B. Thus, ifx∈A\Cthen
x∈B. Sincexwas arbitrary, we can conclude that∀x(x ∈A\C→x∈B),
soA\C⊆B. ±

Notice that, although this proof shows that every element ofA\ Cis also
an element ofB, it does not contain phrases such as “every element ofA\C”
or “all elements ofA\C.” For most of the proof we simply reason aboutx,
which is treated as a single, fixed element ofA\C. We pretend thatxstands for
some particular element ofA\C, being careful to make no assumptions about
_which_ element it stands for. It is only at the end of the proof that we observe
that, becausexwas arbitrary, our conclusions aboutxwould be true no matter
whatxwas. This is the main advantage of using this strategy to prove a goal of
the form∀xP (x). It enables you to prove a goal about _all_ objects by reasoning
about only _one_ object, as long as that object is arbitrary. If you are proving a


116 _Proofs_

goal of the form∀xP (x)and you find yourself saying a lot about “allx’s” or
“everyx,” you are probably making your proof unnecessarily complicated by
not using this strategy.
As we saw in Chapter 2, statements of the form∀x(P (x) → Q(x)) are
quite common in mathematics. It might be worthwhile, therefore, to consider
how the strategies we’ve discussed can be combined to prove a goal of this
form. Because the goal starts with∀x, the first step is to letxbe arbitrary and
try to proveP (x) → Q(x). To prove this goal, you will probably want to
assume thatP (x)is true and proveQ(x). Thus, the proof will probably start
like this: “Letxbe arbitrary. SupposeP (x).” It will then proceed with the
steps needed to reach the goalQ(x). Often in this type of proof the statement
thatxis arbitrary is left out, and the proof simply starts with “SupposeP (x).”
When a new variablexis introduced into a proof in this way, it is usually
understood thatxis arbitrary. In other words, no assumptions are being made
aboutxother than the stated one thatP (x)is true.
An important example of this type of proof is a proof in which the goal
has the form∀x ∈A P (x). Recall that∀x ∈A P (x)means the same thing
as∀x(x ∈A → P (x)), so according to our strategy the proof should start
with “Supposex ∈A” and then proceed with the steps needed to conclude
thatP (x)is true. Once again, it is understood that no assumptions are being
made aboutxother than the stated assumption thatx∈A, soxstands for an
arbitrary element ofA.
Mathematicians sometimes skip other steps in proofs, if knowledgeable
readers could be expected to fill them in themselves. In particular, many of
our proof strategies have suggested that the proof end with a sentence that
sums up why the reasoning that has been given in the proof leads to the desired
conclusion. In a proof in which several of these strategies have been combined,
there might be several of these summing up sentences, one after another, at
the end of the proof. Mathematicians often condense this summing up into
one sentence, or even skip it entirely. When you are reading a proof written by
someone else, you may find it helpful to fill in these skipped steps.

**Example 3. 3. 2.** SupposeA andB are sets. Prove that ifA∩B = A then
A⊆B.

_Scratch work_

Our goal isA∩B = A→A⊆B. Because the goal is a conditional statement,
we add the antecedent to the givens list and make the consequent the goal. We
will also write out the definition of⊆in the new goal to show what its logical
form is.


_Proofs Involving Quantifiers_ 117
_Givens Goal_
A∩B= A ∀x(x ∈A→x∈B)
Now the goal has the form∀x(P (x) →Q(x)), whereP (x)is the statement
x∈AandQ(x)is the statementx∈B. We therefore letxbe arbitrary, assume
x∈A, and provex∈B:

```
Givens Goal
A∩B= A
x∈A
```
```
x∈B
```
Combining the proof strategies we have used, we see that the final proof
will have this form:

```
SupposeA∩B= A.
Letxbe arbitrary.
Supposex∈A.
[Proof ofx∈Bgoes here.]
Thereforex∈A→x∈B.
Sincexwas arbitrary, we can conclude that ∀x(x ∈A → x ∈B), so
A⊆B.
Therefore, ifA∩B =AthenA⊆B.
```
As discussed earlier, when we write up the final proof we can skip the sentence
“Letx be arbitrary,” and we can also skip some or all of the last three
sentences.
We have now reached the point at which we can analyze the logical form of
the goal no further. Fortunately, when we look at the givens, we discover that
the goal follows easily. Sincex∈AandA∩B= A, it follows thatx∈A∩B,
sox∈B. (In this last step we are using the definition of ∩:x∈A∩Bmeans
x∈Aandx∈B.)

_Solution_

**Theorem.** _Suppose_ A _and_ B _are sets. If_ A∩B= A _then_ A⊆B_._

_Proof._ SupposeA∩B = A, and supposex ∈A. Then sinceA∩B = A,
x∈A∩B, sox∈B. Sincexwas an arbitrary element ofA, we can conclude
thatA⊆B. ±

Proving a goal of the form∃xP (x)also involves introducing a new variable
xinto the proof and provingP (x), but in this casexwill not be arbitrary.
Because you only need to prove thatP (x)is true for _at least one_ x, it suffices
to assign a particular value toxand proveP (x)for this one value ofx.


118 _Proofs_

**To prove a goal of the form** ∃xP (x) **:**
Try to find a value ofxfor which you thinkP (x)will be true. Then start
your proof with “Letx = (the value you decided on)” and proceed to prove
P (x)for this value ofx. Once again,xshould be a new variable. If the letter
xis already being used in the proof for some other purpose, then you should
choose an unused variable, sayy, and rewrite the goal in the equivalent form
∃yP (y). Now proceed as before by starting your proof with “Lety = (the
value you decided on)” and proveP (y).

_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
```
∃xP (x)
```
After using strategy:

```
Givens Goal
—
—
x= (the value you decided on)
```
```
P (x)
```
_Form of final proof:_

```
Letx= (the value you decided on).
[Proof ofP (x)goes here.]
Thus,∃xP (x).
```
Finding the right value to use forxmay be difficult in some cases. One
method that is sometimes helpful is to assume thatP (x)is true and then see
if you can figure out whatxmust be, based on this assumption. IfP (x)is an
equation involvingx, this amounts to solving the equation forx. However, if
this doesn’t work, you may use any other method you please to try to find a
value to use forx, including trial-and-error and guessing. The reason you have
such freedom with this step is that _the reasoning you use to find a value for_ x
_will not appear in the final proof_. This is because of our rule that a proof should
contain only the reasoning needed to justify the conclusion of the proof, not
an explanation of how you thought of that reasoning. To justify the conclusion
that∃xP (x) is true it is only necessary to verify thatP (x) comes out true
whenxis assigned some particular value. How you thought of that value is
your own business, and not part of the justification of the conclusion.


```
Proofs Involving Quantifiers 119
```
**Example 3. 3. 3.** Prove that for every real numberx, ifx > 0 then there is a
real numberysuch thaty(y + 1)= x.

_Scratch work_

In symbols, our goal is∀x(x > 0 → ∃y[y(y+ 1)= x]), where the variables
xandyin this statement are understood to range overR. We therefore start by
lettingxbe an arbitrary real number, and we then assume thatx >0 and try
to prove that∃y[y(y + 1)= x]. Thus, we now have the following given and
goal:

```
Givens Goal
x > 0 ∃y[y(y+ 1)= x]
```
Because our goal has the form∃yP (y), where P (y) is the statement
y(y + 1) = x, according to our strategy we should try to find a value of
yfor whichP (y) is true. In this case we can do it by solving the equation
y(y + 1)= xfory. It’s a quadratic equation and can be solved using the
quadratic formula:

```
y(y + 1)= x ⇔ y^2 +y− x= 0 ⇔ y=
```
### − 1 ²

### √

```
1 + 4x
2
```
### .

Note that

### √

1 + 4x is defined, since we havex > 0 as a given. We have
actually found two solutions fory, but to prove that∃y[y(y + 1) = x] we
only need to exhibit one value ofythat makes the equationy(y+ 1)=xtrue.
Either of the two solutions could be used in the proof. We will use the solution
y= (−1 +

### √

1 + 4x)/2.
_The steps we’ve used to solve for_ y _should not appear in the final proof._ In
the final proof we will simply say “Lety = (− 1 +

### √

1 + 4x)/2” and then
prove thaty(y + 1)= x. In other words, the final proof will have this form:

```
Letxbe an arbitrary real number.
Supposex >0.
Lety= (− 1 +
```
### √

1 + 4x)/2.
[Proof ofy(y+ 1)=xgoes here.]
Thus,∃y[y(y + 1)= x].
Thereforex >0 → ∃y[y(y+ 1)= x].
Sincexwas arbitrary, we can conclude that∀x(x >0→ ∃y[y(y+ 1)= x]).
To see what must be done to fill in the remaining gap in the proof, we add
y= (− 1 +

### √

```
1 + 4x)/2 to the givens list and makey(y+ 1)= xthe goal:
```

120 _Proofs_

```
Givens Goal
x > 0
y= (− 1 +
```
### √

```
1 + 4x)/ 2
```
```
y(y + 1)= x
```
We can now prove that the equationy(y+ 1)=xis true by simply substituting
(− 1 +

### √

```
1 + 4x)/2 foryand verifying that the resulting equation is true.
```
_Solution_

**Theorem.** _For every real number_ x _, if_ x > 0 _then there is a real number_ y
_such that_ y(y + 1)= x_._

_Proof._ Letxbe an arbitrary real number, and supposex >0. Let

```
y=
```
### −1 +

### √

```
1 + 4x
2
```
### ,

which is defined sincex >0. Then

```
y(y + 1)=
```
### ±

### − 1 +

### √

```
1 + 4x
2
```
### ²

### ·

### ±

### − 1 +

### √

```
1 + 4x
2
```
### + 1

### ²

### =

### ±√

```
1 + 4x− 1
2
```
### ²

### ·

### ±√

```
1 + 4x+ 1
2
```
### ²

```
= 1 + 4x− 1
4
```
```
=^4 x
4
```
```
= x. ±
```
Sometimes when you’re proving a goal of the form∃yQ(y) you won’t be
able to tell just by looking at the statementQ(y) what value you should plug
in fory. In this case you may want to look more closely at the givens to see
if they suggest a value to use fory. In particular, a given of the form∃xP (x)
may be helpful in this situation. This given says that an object with a certain
property exists. It is probably a good idea to imagine that a particular object
with this property has been chosen and to introduce a new variable, sayx 0 ,
into the proof to stand for this object. Thus, for the rest of the proof you will
be usingx 0 to stand for some particular object, and you can assume that with
x 0 standing for this object,P (x 0 )is true. In other words, you can addP (x 0 )
to your givens list. This objectx 0 , or something related to it, might turn out to
be the right thing to plug in foryto makeQ(y) come out true.

**To use a given of the form** ∃xP (x) **:**
Introduce a new variablex 0 into the proof to stand for an object for which
P (x 0 )is true. This means that you can now assume that P (x 0 )is true.
Logicians call this rule of inference _existential instantiation_.


_Proofs Involving Quantifiers_ 121
Note that using a given of the form∃xP (x) is very different from proving a
goal of the form∃xP (x), because when using a given of the form∃xP (x), _you
don’t get to choose a particular value to plug in for_ x. You can assume thatx 0
stands for some object for whichP (x 0 )is true, but you can’t assume anything
else aboutx 0. On the other hand, a given of the form∀xP (x) says thatP (x)
would be true _no matter what_ value is assigned tox. You can therefore _choose
any value you wish_ to plug in forxand use this given to conclude thatP (x)
is true.

**To use a given of the form** ∀xP (x) **:**
You can plug in any value, saya, forxand use this given to conclude that
P (a)is true. This rule is called _universal instantiation_.

Usually, if you have a given of the form ∃xP (x), you should apply
existential instantiation to it immediately. A good guideline is: if you know
something exists, you should give it a name. On the other hand, you won’t be
able to apply universal instantiation to a given of the form∀xP (x) unless you
have a particular valuea to plug in forx, so you might want to wait until
a likely choice fora pops up in the proof. For example, consider a given
of the form∀x(P (x) → Q(x)). You can use this given to conclude that
P (a) → Q(a) for anya, but according to our rule for using givens that are
conditional statements, this conclusion probably won’t be very useful unless
you know eitherP (a)or ¬Q(a). You should probably wait until an objecta
appears in the proof for which you know eitherP (a)or ¬Q(a), and plug this
ain forxwhen it appears.
We’ve already used this technique in some of our earlier proofs when
dealing with givens of the formA ⊆B. For instance, in Example 3.2.5 we
used the givensA⊆B anda ∈Ato conclude thata∈B. The justification
for this reasoning is thatA⊆Bmeans∀x(x ∈A→x∈B), so by universal
instantiation we can plug inaforxand conclude thata∈A→a∈B. Since
we also knowa∈A, it follows by modus ponens thata∈B.

**Example 3.3.4.** SupposeFandGare families of sets andF∩G±= ∅. Prove
that

### ³

### F⊆

### ́

### G.

_Scratch work_

Our first step in analyzing the logical form of the goal is to write out the
meaning of the subset symbol, which gives us the statement∀x(x ∈

### ³

### F→

x∈

### ́

G). We could go further with this analysis by writing out the definitions
of union and intersection, but the part of the analysis that we have already


122 _Proofs_

done will be enough to allow us to decide how to get started on the proof.
The definitions of union and intersection will be needed later in the proof, but
we will wait until they are needed before filling them in. When analyzing the
logical forms of givens and goals in order to figure out a proof, it is usually
best to do only as much of the analysis as is needed to determine the next step
of the proof. Going further with the logical analysis usually just introduces
unnecessary complication, without providing any benefit.
Because the goal means∀x(x ∈

### ³

```
F→ x∈
```
### ́

G), we letxbe arbitrary,
assumex∈

### ³

```
F, and try to provex∈
```
### ́

### G.

```
Givens Goal
F∩G±= ∅
x∈
```
### ³

### F

```
x∈
```
### ́

### G

The new goal means∃A∈G(x∈A), so to prove it we should try to find
a value that will “work” forA. Just looking at the goal doesn’t make it clear
how to chooseA, so we look more closely at the givens. We begin by writing
them out in logical symbols:

```
Givens Goal
∃A(A ∈F∩G)
∀A∈F(x∈A)
```
```
∃A∈G(x∈A)
```
The second given starts with∀A, so we may not be able to use this given
until a likely value to plug in forApops up during the course of the proof. In
particular, we should keep in mind that if we ever come across an element ofF
while trying to figure out the proof, we can plug it in forAin the second given
and conclude that it containsxas an element. The first given, however, starts
with∃A, so we should use it immediately. It says that there is some object that
is an element ofF∩G. By existential instantiation, we can introduce a name,
sayA 0 , for this object. Thus, we can treatA 0 ∈F∩Gas a given from now on.
Because we now have a name,A 0 , for a particular element ofF∩G, it would
be redundant to continue to discuss the given statement∃A(A ∈F∩G), so
we will drop it from our list of givens. Since our new givenA 0 ∈F∩Gmeans
A 0 ∈FandA 0 ∈G, we now have the following situation:

```
Givens Goal
A 0 ∈F
A 0 ∈G
∀A∈F(x∈A)
```
```
∃A∈G(x∈A)
```
If you’ve been paying close attention, you should know what the next step
should be. We decided before to keep our eyes open for any elements ofFthat


```
Proofs Involving Quantifiers 123
```
might come up during the proof, because we might want to plug them in forA
in the last given. An element ofFhas come up:A 0! PluggingA 0 in forAin
the last given, we can conclude thatx∈A 0. Any conclusions can be treated
in the future as givens, so you can add this statement to the givens column if
you like.
Remember that we decided to look at the givens because we didn’t know
what value to assign toAin the goal. What we need is a value forAthat is inG
and that will make the statementx∈Acome out true. Has this consideration
of the givens suggested a value to use forA? Yes! UseA= A 0.
Although we translated the given statementsx∈

### ³

```
F,x∈
```
### ́

G, andF∩
G±= ∅into logical symbols in order to figure out how to use them in the proof,
these translations are not usually written out when the proof is written up in
final form. In the final proof we just write these statements in their original
form and leave it to the reader of the proof to work out their logical forms in
order to follow our reasoning.

_Solution_

**T** ³ **heorem.** _Suppose_ F _and_ G _are families of sets, and_ F∩G ±= ∅_. Then_
F⊆

### ́

### G.

_Proof._ Supposex∈

### ³

F. SinceF∩G±= ∅, we can letA 0 be an element of
F∩G. Thus,A 0 ∈FandA 0 ∈G. Sincex∈

### ³

FandA 0 ∈F, it follows that
x∈A 0. But we also know thatA 0 ∈G, so we can conclude thatx∈

### ́

### G. ±

Proofs involving the quantifiers _for all_ and _there exists_ are often difficult for
them.
That last sentence confused you, didn’t it? You’re probably wondering,
“Who are _they_ ?” Readers of your proofs will experience the same sort
of confusion if you use variables without explaining what they stand for.
Beginning proof-writers are sometimes careless about this, and that’s why
proofs involving the quantifiers _for all_ and _there exists_ are often difficult for
them. (It made more sense that time, didn’t it?) When you use the strategies
we’ve discussed in this section, you’ll be introducing new variables into your
proof, and when you do this, you must always be careful to make it clear to
the reader what they stand for.
For example, if you were proving a goal of the form∀x ∈A P (x), you
would probably start by introducing a variablex to stand for an arbitrary
element ofA. Your reader won’t know whatxmeans, though, unless you begin
your proof with “Letxbe an arbitrary element ofA,” or “Supposex ∈A.”
These sentences tell the reader that, from now on, he or she should think ofx


124 _Proofs_

as standing for some particular element ofA, although which element it stands
for is left unspecified. Of course, you must be clear in your own mind about
whatxmeans. In particular, becausexis to be arbitrary, you must be careful
not to assume anything aboutxother than the fact thatx∈A. It might help to
think of the value ofxas being chosen by _someone else_ ; you have no control
over which element ofAthey’ll pick. Using a given of the form∃xP (x) is
similar. This given tells you that you can introduce a new variablex 0 into the
proof to stand for some object for whichP (x 0 )is true, but you cannot assume
anything else aboutx 0. On the other hand, if you are _proving_ ∃xP (x), your
proof will probably start “Letx=.. ..” This time _you_ get to choose the value
ofx, and you must tell the reader explicitly that you are choosing the value of
xand what value you have chosen.
It’s also important, when you’re introducing a new variablex, to be sure
you know what _kind_ of objectxstands for. Is it a number? a set? a function?
a matrix? You’d better not writea ∈X unlessX is a set, for example. If
you aren’t careful about this, you might end up writing nonsense. You also
sometimes need to know what kind of object a variable stands for to figure out
the logical form of a statement involving that variable. For example,A= B
means∀x(x ∈A↔x∈B)ifAandBare sets, but not if they’re numbers.
The most important thing to keep in mind about introducing variables into
a proof is simply the fact that variables must always be introduced before they
are used. If you make a statement aboutx(i.e., a statement in whichxoccurs
as a free variable) without first explaining whatxstands for, a reader of your
proof won’t know what you’re talking about – and there’s a good chance that
you won’t know what you’re talking about either!
Because proofs involving quantifiers may require more practice than the
other proofs we have discussed so far, we end this section with two more
examples.

**E** ́ **xample 3. 3. 5.** SupposeB is a set andFis a family of sets. Prove that if
F⊆B thenF⊆P(B).

_Scratch work_

We assume

### ́

F⊆B and try to proveF ⊆P(B). Because this goal means
∀x(x ∈F → x ∈P(B)), we letxbe arbitrary, assumex ∈F, and set
x∈P(B) as our goal. Recall thatFis a family of sets, so sincex∈F,xis
a set. Thus, we now have the following givens and goal:

```
́ Givens Goal
F⊆B
x∈F
```
```
x∈P(B)
```

_Proofs Involving Quantifiers_ 125
To figure out how to prove this goal, we must use the definition of power
set. The statementx∈P(B)meansx⊆B, or in other words∀y(y ∈x→
y∈B). We must therefore introduce another arbitrary object into the proof.
We letybe arbitrary, assumey∈x, and try to provey∈B.

```
́ Givens Goal
F⊆B
x∈F
y∈x
```
```
y∈B
```
The goal can be analyzed no further, so we must look more closely at the
givens. Our goal isy∈B, and the only given that even mentionsB is the first.
In fact, the first given would enable us to reach this goal, if only we knew that
y ∈

### ́

```
F. This suggests that we might try treatingy ∈
```
### ́

F as our goal. If
we can reach this goal, then we can just add one more step, applying the first
given, and the proof will be done.

```
́ Givens Goal
F⊆B
x∈F
y∈x
```
```
y∈
```
### ́

### F

Once again, we have a goal whose logical form can be analyzed, so we use
the form of the goal to guide our strategy. The goal means∃A∈F(y ∈A),
so to prove it we must find a setAsuch thatA∈Fandy∈A. Looking at the
givens, we see thatxis such a set, so the proof is done.

_Solution_

**Theorem.** _Suppose_ B _is a set and_ F _is a family of sets. If_

### ́

F ⊆ B _then_
F⊆P(B)_._

_Proof._ Suppose

### ́

F⊆B. Letxbe an arbitrary element ofF. Lety be an
arbitrary element ofx. Sincey ∈x andx ∈F, by the definition of

### ́

### F,

y∈

### ́

```
F. But then since
```
### ́

F⊆B,y∈B. Sinceywas an arbitrary element
ofx, we can conclude thatx ⊆ B, sox ∈P(B). Butxwas an arbitrary
element ofF, so this shows thatF⊆P(B), as required. ±

The Venn diagram in Figure 3.1 may help you see why the theorem in
Example 3.3.5 is true, and you might find it useful to refer to the picture
as you reread the proof. But notice that we didn’t prove the theorem by
simply explaining this picture; the proof was constructed by following the
proof strategies we have discussed. There are many methods, such as drawing


126 _Proofs_

```
Figure 3.1. The small circles represent elements ofF, and the shaded region
is
```
```
́
F. The large circle representsB.
```
pictures or working out examples, that may help you achieve an understanding
of why a theorem is true. But an explanation of this understanding is not a
proof. To prove a theorem, you must follow the strategies in this chapter.
The proof in Example 3.3.5 is probably the most complex proof we’ve
done so far. Read it again and make sure you understand its structure and the
purpose of every sentence. Isn’t it remarkable how much logical complexity
has been packed into just a few lines?
It is not uncommon for a short proof to have such a rich logical structure.
This efficiency of exposition is one of the most attractive features of proofs, but
it also often makes them difficult to read. Although we’ve been concentrating
so far on _writing_ proofs, it is also important to learn how to _read_ proofs written
by other people. To give you some practice with this, we present our last proof
in this section without the scratch work. See if you can follow the structure
of the proof as you read it. We’ll provide a commentary after the proof that
should help you to understand it.
For this proof, we need the following definition:

**Definition 3.3.6.** For any integersx andy, we’ll say thatx _divides_ y(ory
_is divisible by_ x) if∃k ∈Z(kx = y). We use the notationx |yto mean “x
dividesy,” andx±ymeans “xdoes not dividey.”

For example, 4 | 20, since 5 ·4 = 20, but 4±21.

**Theorem 3.3.7.** _For all integers_ a _,_ b _, and_ c _, if_ a|b _and_ b|c _then_ a|c_._

_Proof._ Leta,b, andcbe arbitrary integers and supposea|bandb|c. Since
a|b, we can choose some integermsuch thatma = b. Similarly, sinceb|c,


```
Proofs Involving Quantifiers 127
```
we can choose an integernsuch thatnb = c. Thereforec = nb = nma, so
sincenmis an integer,a|c. ±

_Commentary._ The theorem says∀a∈Z∀b∈Z∀c∈Z(a |b∧b|c→a|c),
so the most natural way to proceed is to leta,b, andcbe arbitrary integers,
assumea|bandb |c, and then provea|c. The first sentence of the proof
indicates that this strategy is being used, so the goal for the rest of the proof
must be to prove thata| c. The fact that this is the goal for the rest of the
proof is not explicitly stated. You are expected to figure this out for yourself
by using your knowledge of proof strategies. You might even want to make a
givens and goal list to help you keep track of what is known and what remains
to be proven as you continue to read the proof. At this point in the proof, the
list would look like this:

```
Givens Goal
a,b, andcare integers
a|b
b|c
```
```
a|c
```
Because the new goal means∃k ∈Z(ka = c), the proof will probably
proceed by finding an integerksuch thatka = c. As with many proofs of
existential statements, the first step in finding such akinvolves looking more
closely at the givens. The next sentence of the proof uses the givena | b
to conclude that we can choose an integerm such thatma = b. The proof
doesn’t say what rule of inference justifies this. It is up to you to figure it out by
working out the logical form of the given statementa|b, using the definition
of _divides_. Because this given means∃k ∈Z(ka = b), you should recognize
that the rule of inference being used is existential instantiation. Existential
instantiation is also used in the next sentence of the proof to justify choosing
an integernsuch thatnb= c. The equationsma = bandnb = ccan now be
added to the list of givens.
Some steps have also been skipped in the last sentence of the proof. We
expected that the goala | c would be proven by finding an integerk such
thatka = c. From the equationc = nma and the fact thatnm is an integer,
it follows thatk = nm will work, but the proof doesn’t explicitly say that
this value ofkis being used; in fact, the variablekdoes not appear at all in the
proof. Of course, the variablekdoes not appear in the statement of the theorem
either. A reader of the proof would expect us to prove thata|cby finding an
integer that, when multiplied bya, gives the valuec, but based on reading
the statement of the theorem, the reader would have no reason to expect this
integer to be given the namek. Assigning this name to the integernmwould
therefore not have made the proof easier to understand, so we didn’t do it.


```
128 Proofs
Exercises
```
```
Note: Exercises marked with the symbolPDcan be done with Proof Designer,
which is computer software that is available free on the internet.
```
```
*1. In exercise 7 of Section 2.2 you used logical equivalences to show
that∃x(P (x) → Q(x)) is equivalent to∀xP (x) → ∃xQ(x). Now
use the methods of this section to prove that if∃x(P (x) → Q(x))
is true, then∀xP (x) → ∃xQ(x) is true. (Note: The other direction
of the equivalence is quite a bit harder to prove. See exercise 30 of
Section 3.5.)
```
2. Prove that ifAandB \Care disjoint, thenA∩B ⊆C.
*3. Prove that ifA⊆B\CthenAandCare disjoint.
PD4. SupposeA⊆P(A). Prove thatP(A) ⊆P(P(A)).
5. The hypothesis of the theorem proven in exercise 4 isA⊆P(A).
(a) Can you think of a setAfor which this hypothesis is true?
(b) Can you think of another?
6. Supposexis a real number.
(a) Prove that ifx±= 1 then there is a real numberysuch thatyy+ 1− 2= x.
(b) Prove that if there is a real numbery such thatyy+ 1− 2 = x, then
x±= 1.
*7. Prove that for every real numberx, ifx >2 then there is a real number
ysuch thaty+ 1/y = x.
PD8. Prove that ifFis a family of sets andA∈F, thenA⊆ ́F.
*9. Prove that ifFis a family of sets andA∈F, then

### ³

### F⊆A.

10. Suppose thatFis a nonempty family of sets,B is a set, and∀A ∈
    F(B ⊆A). Prove thatB ⊆

### ³

### F.

11. Suppose thatFis a family of sets. Prove that if∅∈Fthen

### ³

### F= ∅.

PD*12. SupposeFandGare families of sets. Prove that ifF⊆Gthen ́F⊆
́
G.

13. SupposeFandGare nonempty families of sets. Prove that ifF⊆ G
    then

### ³

### G⊆

### ³

### F.

```
*14. Suppose that { ́ Ai | i ∈I} is an indexed family of sets. Prove that
i∈IP(Ai)⊆ P(
```
### ́

```
i∈IAi). (Hint: First make sure you know what
all the notation means!)
```
15. Suppose {Ai| i ∈I} is an indexed family of sets andI ±= ∅. Prove
    that

### ³

```
i∈IAi∈
```
### ³

```
i∈IP(Ai).
PD16. Prove the converse of the statement proven in Example 3.3.5. In other
words, prove that ifF⊆P(B)then
```
### ́

### F⊆B.

```
*17. SupposeFandGare nonempty families of sets, and every element of
Fis a subset of every element ofG. Prove that
```
### ́

### F⊆

### ³

### G.


```
Proofs Involving Quantifiers 129
```
18. In this problem all variables range overZ, the set of all integers.
    (a) Prove that ifa|banda|c, thena|(b+ c).
    (b) Prove that ifac |bcandc±= 0, thena|b.
19. (a) Prove that for all real numbersxandythere is a real numberzsuch
    thatx+z=y− z.
    (b) Would the statement in part (a) be correct if “real number” were
       changed to “integer”? Justify your answer.
*20. Consider the following theorem:

```
Theorem. For every real number x , x^2 ≥ 0.
```
```
What’s wrong with the following proof of the theorem?
Proof. Suppose not. Then for every real number x,x^2 < 0. In
particular, plugging inx = 3 we would get 9< 0, which is clearly
false. This contradiction shows that for every numberx,x^2 ≥ 0. ±
```
21. Consider the following incorrect theorem:

```
Incorrect Theorem. If ∀x∈A(x±= 0) and A⊆B then ∀x∈B(x ±= 0).
```
(a) What’s wrong with the following proof of the theorem?
_Proof._ Suppose that∀x ∈A(x ±= 0)andA ⊆ B. Letxbe an
arbitrary element ofA. Since∀x ∈A(x ±= 0), we can conclude
thatx±= 0. Also, sinceA⊆B,x∈B. Sincex∈B,x±= 0, andx
was arbitrary, we can conclude that∀x∈B(x ±= 0). ±
(b) Find a counterexample to the theorem. In other words, find an
example of setsAandB for which the hypotheses of the theorem
are true but the conclusion is false.
*22. Consider the following incorrect theorem:

```
Incorrect Theorem. ∃x∈R∀y∈R(xy^2 = y−x).
```
```
What’s wrong with the following proof of the theorem?
Proof. Letx= y/(y^2 + 1). Then
```
```
y−x=y−
```
```
y
y^2 + 1
```
### =

```
y^3
y^2 + 1
```
### =

```
y
y^2 + 1
```
```
·y^2 = xy^2. ±
```
23. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose F and G are families of sets. If
```
### ́

```
́ F and
G are disjoint, then so are F and G.
```

130 _Proofs_

```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose
```
### ́

```
Fand
```
### ́

```
Gare disjoint. SupposeFandGare
not disjoint. Then we can choose some setAsuch thatA∈Fand
A∈G. SinceA∈F, by exercise 8,A⊆
```
### ́

```
F, so every element of
Ais in
```
### ́

```
F. Similarly, sinceA∈G, every element ofAis in
```
### ́

### G.

```
But then every element ofAis in both
```
### ́

```
Fand
```
### ́

```
G, and this is
impossible since
```
### ́

```
Fand
```
### ́

```
Gare disjoint. Thus, we have reached
a contradiction, soFandGmust be disjoint. ±
(b) Find a counterexample to the theorem.
```
24. Consider the following putative theorem:

```
Theorem? For all real numbers x and y , x^2 +xy− 2y^2 = 0.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Letxandybe equal to some arbitrary real numberr. Then
x^2 +xy− 2y^2 = r^2 +r·r− 2r^2 = 0.
```
```
Sincex and y were both arbitrary, this shows that for all real
numbersxandy,x^2 +xy− 2y^2 = 0. ±
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
*25. Prove that for every real numberxthere is a real numberysuch that
for every real numberz,yz= (x+z)^2 −(x^2 +z^2 ).
```
26. (a) Comparing the various rules for dealing with quantifiers in proofs,
    you should see a similarity between the rules for goals of the form
    ∀xP (x) and givens of the form∃xP (x). What is this similarity?
    What about the rules for goals of the form∃xP (x)and givens of
    the form∀xP (x)?
(b) Can you think of a reason why these similarities might be expected?
(Hint: Think about how proof by contradiction works when the goal
starts with a quantifier.)

## 3.4 Proofs Involving Conjunctions and Biconditionals

The method for proving a goal of the formP∧Qis very simple:

```
To prove a goal of the form P∧Q :
ProvePandQseparately.
```

```
Proofs Involving Conjunctions and Biconditionals 131
```
In other words, a goal of the formP∧Qis treated as two separate goals:P,
andQ. The same is true of givens of the formP∧Q:

```
To use a given of the form P∧Q :
Treat this given as two separate givens:P, andQ.
```
We’ve already used these ideas, without mention, in some of our previous
examples. For example, the definition of the givenx∈A\Cin Example 3.2.3
wasx ∈A∧x ∈/ C, but we treated it as two separate givens:x ∈A, and
x ∈/C.

**Example 3.4.1.** SupposeA ⊆B, andAandCare disjoint. Prove thatA ⊆
B\C.

_Scratch work_

```
Givens Goal
A⊆B
A∩C= ∅
```
### A⊆B\C

Analyzing the logical form of the goal, we see that it has the form∀x(x ∈
A→x∈B\C), so we letxbe arbitrary, assumex∈A, and try to prove that
x∈B\C. The new goalx∈B\Cmeansx∈B∧x ∈/C, so according to
our strategy we should split this into two goals,x∈Bandx ∈/C, and prove
them separately.

```
Givens Goals
A⊆B
A∩C= ∅
x∈A
```
```
x∈B
x ∈/C
```
```
The final proof will have this form:
```
Letxbe arbitrary.
Supposex∈A.
[Proof ofx∈B goes here.]
[Proof ofx ∈/Cgoes here.]
Thus,x∈B∧x ∈/C, sox∈B\C.
Thereforex∈A→x∈B\C.
Sincexwas arbitrary,∀x(x ∈A→x∈B\C), soA⊆B\C.
The first goal,x∈B, clearly follows from the fact thatx∈AandA⊆B.
The second goal,x ∈/ C, follows fromx ∈AandA∩C = ∅. You can see


132 _Proofs_

this by analyzing the logical form of the statementA∩C= ∅. It is a negative
statement, but it can be reexpressed as an equivalent positive statement:

A∩C=∅is equivalent to ¬∃y(y ∈A∧y∈C) (definitions of ∩ and∅),

```
which is equivalent to∀y¬(y ∈A∧y∈C) (quantifier negation law),
which is equivalent to∀y(y /∈A∨y ∈/C) (De Morgan’s law),
which is equivalent to∀y(y ∈A→y ∈/C) (conditional law).
```
Plugging inxforyin this last statement, we see thatx ∈A→ x ∈/C, and
since we already knowx∈A, we can conclude thatx ∈/C.

_Solution_

**Theorem.** _Suppose_ A⊆B _, and_ A _and_ C _are disjoint. Then_ A⊆B\C_._

_Proof._ Supposex∈A. SinceA⊆B, it follows thatx∈B, and sinceAand
Care disjoint, we must havex ∈/C. Thus,x∈B\C. Sincexwas an arbitrary
element ofA, we can conclude thatA⊆B\C. ±

Using our strategies for working with conjunctions, we can now work out
the proper way to deal with statements of the formP ↔Qin proofs. Because
P↔Qis equivalent to(P →Q)∧(Q →P ), according to our strategies a
given or goal of the formP ↔Qshould be treated as two separate givens or
goals:P →Q, andQ→P.

```
To prove a goal of the form P ↔Q :
ProveP →QandQ→P separately.
```
```
To use a given of the form P ↔Q :
Treat this as two separate givens:P →Q, andQ→P.
```
This is illustrated in the next example, in which we use the following
definitions.

**Definition 3.4.2.** An integerxis _even_ if∃k ∈Z(x = 2k), andxis _odd_ if
∃k∈Z(x = 2k+ 1).

We also use the fact that every integer is either even or odd, but not both. For
a proof of this fact, see exercise 16 in Section 6.1.

**Example 3.4.3.** Supposexis an integer. Prove thatxis even iffx^2 is even.


```
Proofs Involving Conjunctions and Biconditionals 133
```
_Scratch work_

The goal is (xis even)↔(x^2 is even), so we prove the two goals
(xis even) → (x^2 is even)and(x^2 is even) → (xis even)separately. For
the first, we assume thatxis even and prove thatx^2 is even:

```
Givens Goal
x∈Z
xis even
```
```
x^2 is even
```
Writing out the definition of _even_ in both the given and the goal will reveal
their logical forms:

```
Givens Goal
x∈Z
∃k∈Z(x= 2k)
```
```
∃k∈Z(x^2 = 2k)
```
Because the second given starts with∃k, we immediately use it and letk
stand for some particular integer for which the statementx= 2kis true. Thus,
we have two new given statements:k∈Z, andx= 2k.

```
Givens Goal
x∈Z
k∈Z
x= 2k
```
```
∃k∈Z(x^2 = 2k)
```
The goal starts with∃k, but sincek is already being used to stand for a
particular number, we cannot assign a new value tok to prove the goal. We
must therefore switch to a different letter, sayj. One way to understand this
is to think of rewriting the goal in the equivalent form∃j ∈Z(x^2 = 2j). To
prove this goal we must come up with a value to plug in forj. It must be an
integer, and it must satisfy the equationx^2 = 2j. Using the given equation
x = 2k, we see thatx^2 = ( 2 k)^2 = 4k^2 = 2( 2 k^2 ), so it looks like the right
value to choose forjisj = 2k^2. Clearly 2k^2 is an integer, so this choice forj
will work to complete the proof of our first goal.
To prove the second goal (x^2 is even) → (xis even), we’ll prove the
contrapositive(xis not even)→(x^2 is not even)instead. Since any integer is
either even or odd but not both, this is equivalent to the statement(xis odd)→
(x^2 is odd).

```
Givens Goal
x∈Z
xis odd
```
```
x^2 is odd
```
The steps are now quite similar to the first part of the proof. As before, we
begin by writing out the definition of _odd_ in both the second given and the


134 _Proofs_

goal. This time, to avoid the conflict of variable names we ran into in the first
part of the proof, we use different names for the bound variables in the two
statements.

```
Givens Goal
x∈Z
∃k∈Z(x= 2k+ 1)
```
```
∃j∈Z(x^2 = 2j+ 1)
```
Next we use the second given and letk stand for a particular integer for
whichx= 2k+ 1.

```
Givens Goal
x∈Z
k∈Z
x= 2k+ 1
```
```
∃j∈Z(x^2 = 2j+ 1)
```
We must now find an integerjsuch thatx^2 = 2j+ 1. Plugging in 2k+ 1 for
xwe getx^2 = ( 2 k+ 1)^2 = 4k^2 + 4k+ 1 = 2( 2 k^2 + 2k)+ 1, soj = 2k^2 + 2k
looks like the right choice.
Before giving the final write-up of the proof, we should make a few
explanatory remarks. The two conditional statements we’ve proven can be
thought of as representing the two directions → and ← of the biconditional
symbol ↔ in the original goal. These two parts of the proof are sometimes
labeled with the symbols → and ←. In each part, we end up proving a
statement that asserts the existence of a number with certain properties. We
called this numberj in the scratch work, but note thatj was not mentioned
explicitly in the statement of the problem. As in the proof of Theorem 3.3.7,
we have chosen not to mentionjexplicitly in the final proof either.

_Solution_

**Theorem.** _Suppose_ x _is an integer. Then_ x _is even iff_ x^2 _is even._

_Proof._ (→)Supposexis even. Then for some integerk,x= 2k. Therefore,
x^2 = 4k^2 = 2( 2 k^2 ), so since 2k^2 is an integer,x^2 is even. Thus, ifxis even
thenx^2 is even.
(←)Supposexis odd. Thenx = 2k+ 1 for some integerk. Therefore,
x^2 = ( 2 k+ 1)^2 = 4k^2 + 4k+ 1 = 2( 2 k^2 + 2k)+ 1, so since 2k^2 + 2kis an
integer,x^2 is odd. Thus, ifx^2 is even thenxis even. ±

Using the proof techniques we’ve developed, we can now verify some of
the equivalences that we were only able to justify on intuitive grounds in
Chapter 2. As an example of this, let’s prove that the formulas∀x¬P (x)and


```
Proofs Involving Conjunctions and Biconditionals 135
```
¬∃xP (x)are equivalent. To say that these formulas are equivalent means that
they will always have the same truth value. In other words, no matter what
statementP (x)stands for, the statement∀x¬P (x)↔ ¬∃xP (x) will be true.
We can prove this using our technique for proving biconditional statements.

**Example 3. 4. 4.** Prove that∀x¬P (x)↔ ¬∃xP (x).

_Scratch work_

(→)We must prove∀x¬P (x)→ ¬∃xP (x), so we assume∀x¬P (x)and try
to prove ¬∃xP (x). Our goal is now a negated statement, and reexpressing it
would require the use of the very equivalence that we are trying to prove! We
therefore fall back on our only other strategy for dealing with negative goals,
proof by contradiction. We now have the following situation:

```
Givens Goal
∀x¬P (x)
∃xP (x)
```
```
Contradiction
```
The second given starts with an existential quantifier, so we use it immedi-
ately and letx 0 stand for some object for which the statementP (x 0 )is true.
But now plugging inx 0 forxin the first given we can conclude that ¬P (x 0 ),
which gives us the contradiction we need.
(←)For this direction of the biconditional we should assume ¬∃xP (x)and
try to prove∀x¬P (x). Because this goal starts with a universal quantifier, we
letxbe arbitrary and try to prove ¬P (x). Once again, we now have a negated
goal that can’t be reexpressed, so we use proof by contradiction:

```
Givens Goal
¬∃xP (x)
P (x)
```
```
Contradiction
```
Our first given is also a negated statement, and this suggests that we could
get the contradiction we need by proving∃xP (x). We therefore set this as our
goal.

```
Givens Goal
¬∃xP (x)
P (x)
```
```
∃xP (x)
```
To keep from confusing thexthat appears as a free variable in the second
given (the arbitraryxintroduced earlier in the proof) with thexthat appears
as a bound variable in the goal, you might want to rewrite the goal in the
equivalent form∃yP (y). To prove this goal we have to find a value ofythat


136 _Proofs_

makesP (y)come out true. But this is easy! Our second given,P (x), tells us
that our arbitraryxis the value we need.

_Solution_

**Theorem.** ∀x¬P (x)↔ ¬∃xP (x)_._

_Proof._ (→)Suppose∀x¬P (x), and suppose∃xP (x). Then we can choose
somex 0 such thatP (x 0 )is true. But since∀x¬P (x), we can conclude that
¬P (x 0 ), and this is a contradiction. Therefore∀x¬P (x)→ ¬∃xP (x).
(←)Suppose ¬∃xP (x). Letxbe arbitrary, and supposeP (x). Since we
have a specificxfor whichP (x)is true, it follows that∃xP (x), which is a
contradiction. Therefore, ¬P (x). Sincexwas arbitrary, we can conclude that
∀x¬P (x), so ¬∃xP (x) → ∀x¬P (x). ±

Sometimes in a proof of a goal of the formP ↔Qthe steps in the proof of
Q→P are the same as the steps used to proveP →Q, but in reverse order.
In this case you may be able to simplify the proof by writing it as a string of
equivalences, starting withP and ending withQ. For example, suppose you
found that you could proveP →Qby first assumingP, then usingP to infer
some other statementR, and then usingRto deduceQ; and suppose that the
same steps could be used, in reverse order, to prove thatQ → P. In other
words, you could assumeQ, use this assumption to conclude thatRwas true,
and then useRto proveP. Since you would be asserting bothP → Rand
R→ P, you could sum up these two steps by sayingP ↔R. Similarly, the
other two steps of the proof tell you thatR↔Q. These two statements imply
the goalP ↔ Q. Mathematicians sometimes present this kind of proof by
simply writing the string of equivalences

```
P iffRiffQ.
```
You can think of this as an abbreviation for “PiffRandRiffQ(and therefore
PiffQ).” This is illustrated in the next example.

**Example 3. 4. 5.** SupposeA,B, andCare sets. Prove thatA∩(B \ C) =
(A∩B)\C.

_Scratch work_

As we saw in Chapter 2, the equationA∩(B \ C) = (A ∩B)\C means
∀x(x ∈A∩(B \ C) ↔ x ∈(A∩B)\ C), but it is also equivalent to the
statement [A∩(B \C) ⊆ (A∩B)\C]∧[(A∩B)\ C⊆ A∩(B \ C)].


```
Proofs Involving Conjunctions and Biconditionals 137
```
This suggests two approaches to the proof. We could letx be arbitrary and
then provex∈A∩(B \C)↔x∈(A∩B)\C, or we could prove the two
statementsA∩(B \ C)⊆ (A∩B)\ Cand(A∩B)\ C ⊆ A∩(B \C).
In fact, almost every proof that two sets are equal will involve one of these
two approaches. In this case we will use the first approach, so once we have
introduced our arbitraryx, we will have an iff goal.
For the(→)half of the proof we assumex∈A∩(B \C)and try to prove
x∈(A∩B)\ C:

```
Givens Goal
x∈A∩(B \C) x∈(A∩B)\ C
```
To see the logical forms of the given and goal, we write out their definitions
as follows:

```
x∈A∩(B\C)iffx∈A∧x∈B\Ciffx∈A∧x∈B∧x ∈/C;
x∈(A∩B)\Ciffx∈A∩B∧x ∈/Ciffx∈A∧x∈B∧x ∈/C.
```
At this point it is clear that the given implies the goal, since the last steps in
both strings of equivalences turned out to be identical. In fact, it is also clear
that the reasoning involved in the(←)direction of the proof will be exactly
the same, but with the given and goal columns reversed. Thus, we might try
to shorten the proof by writing it as a string of equivalences, starting with
x∈A∩(B\C)and ending withx∈(A∩B)\C. In this case, if we start with
x∈A∩(B \C) and follow the first string of equivalences displayed above,
we come to a statement that is the same as the last statement in the second
string of equivalences. We can then continue by following the second string of
equivalences _backward_ , ending withx∈(A∩B)\C.

_Solution_

**Theorem.** _Suppose_ A _,_ B _, and_ C _are sets. Then_ A∩(B\C)= (A∩B)\C_._

_Proof._ Letxbe arbitrary. Then

```
x∈A∩(B \C)iffx∈A∧x∈B\C
iffx∈A∧x∈B∧x ∈/C
iffx∈(A∩B)∧x ∈/C
iffx∈(A∩B)\C.
```
Thus,∀x(x ∈A∩(B\C)↔x∈(A∩B)\C), soA∩(B\C)= (A∩B)\C.
±


138 _Proofs_

The technique of figuring out a sequence of equivalences in one order and
then writing it in the reverse order is used quite often in proofs. The order in
which the steps should be written in the final proof is determined by our rule
that an assertion should never be made until it can be justified. In particular,
if you are trying to proveP ↔ Q, it is wrong to start your write-up of the
proof with the unjustified statementP ↔Qand then work out the meanings
of the two sidesP andQ, showing that they are the same. You should instead
start with equivalences you can justify and string them together to produce
a justification of the goalP ↔ Q before you assert this goal. A similar
technique can sometimes be used to figure out proofs of equations, as the next
example shows.

**Example 3. 4. 6.** Prove that for any real numbersaandb,

```
(a+ b)^2 − 4(a− b)^2 = ( 3 b−a)( 3 a−b).
```
_Scratch work_

The goal has the form∀a∀b((a +b)^2 − 4(a−b)^2 = ( 3 b−a)( 3 a−b)), so we
start by lettingaandbbe arbitrary real numbers and try to prove the equation.
Multiplying out both sides gives us:

(a+ b)^2 − 4(a−b)^2 = a^2 + 2ab+b^2 − 4(a^2 − 2ab+b^2 )
= − 3a^2 + 10ab− 3b^2 ;
( 3 b−a)( 3 a− b)= 9ab− 3a^2 − 3b^2 +ab = − 3a^2 + 10ab− 3b^2.
Clearly the two sides are equal. The simplest way to write the proof of this is
to write a string of equalities starting with(a+b)^2 − 4(a−b)^2 and ending with
( 3 b−a)( 3 a−b). We can do this by copying down the first string of equalities
displayed above, and then following it with the last line, written backward.

_Solution_

**Theorem.** _For any real numbers_ a _and_ b _,_

```
(a+ b)^2 − 4(a− b)^2 = ( 3 b−a)( 3 a−b).
```
_Proof._ Letaandbbe arbitrary real numbers. Then

```
(a+b)^2 − 4(a−b)^2 = a^2 + 2ab+ b^2 − 4(a^2 − 2ab+b^2 )
= − 3a^2 + 10ab− 3b^2
= 9ab− 3a^2 − 3b^2 +ab= ( 3 b−a)( 3 a−b). ±
```

_Proofs Involving Conjunctions and Biconditionals_ 139
We end this section by presenting another proof without preliminary scratch
work, but with a commentary to help you read the proof.

**Theorem 3. 4. 7.** _For every integer_ n _,_ 6 |n _iff_ 2 |n _and_ 3 |n_._

_Proof._ Letnbe an arbitrary integer.
(→)Suppose 6 | n. Then we can choose an integerksuch that 6k = n.
Thereforen = 6k = 2( 3 k), so 2 | n, and similarlyn = 6k = 3( 2 k),
so 3 |n.
(←)Suppose 2 |nand 3 | n. Then we can choose integersj andksuch
thatn= 2jandn= 3k. Therefore 6(j− k)= 6j− 6k= 3( 2 j)− 2( 3 k)=
3 n− 2n= n, so 6 |n. ±

_Commentary._ The statement to be proven is∀n∈Z[6 |n↔((2|n)∧(3|n))],
and the most natural strategy for proving a goal of this form is to let n
be arbitrary and then prove both directions of the biconditional separately.
It should be clear that this is the strategy being used in the proof.
For the left-to-right direction of the biconditional, we assume 6 |nand then
prove 2 | nand 3 | n, treating this as two separate goals. The introduction
of the integerkis justified by existential instantiation, since the assumption
6 |nmeans∃k∈Z( 6 k= n). At this point in the proof we have the following
givens and goals:

```
Givens Goals
n∈Z
k∈Z
6 k= n
```
```
2 |n
3 |n
```
The first goal, 2 |n, means∃j ∈Z( 2 j = n), so we must find an integerj
such that 2j = n. Although the proof doesn’t say so explicitly, the equation
n= 2( 3 k), which is derived in the proof, suggests that the value being used
forj isj = 3k. Clearly, 3kis an integer (another step skipped in the proof),
so this choice forjworks. The proof of 3 |nis similar.
For the right-to-left direction we assume 2 |nand 3 |nand prove 6 | n.
Once again, the introduction ofjandkis justified by existential instantiation.
No explanation is given for why we should compute 6(j−k), but a proof need
not provide such explanations. The reason for the calculation should become
clear when, surprisingly, it turns out that 6(j−k)= n. Such surprises provide
part of the pleasure of working with proofs. As in the first half of the proof,
sincej−kis an integer, this shows that 6 |n.


```
140 Proofs
Exercises
```
```
*1. Use the methods of this chapter to prove that∀x(P (x) ∧Q(x)) is
equivalent to∀xP (x)∧ ∀xQ(x).
PD2. Prove that ifA⊆BandA⊆CthenA⊆B∩C.
PD3. SupposeA⊆B. Prove that for every setC,C\B ⊆C\A.
PD*4. Prove that ifA⊆BandA²CthenB ²C.
PD5. Prove that ifA⊆B\CandA±= ∅thenB ²C.
```
6. Prove that for any setsA,B, andC,A\(B∩C)= (A\B)∪(A\C),
    by finding a string of equivalences starting withx∈A\ (B ∩C) and
    ending withx∈(A\B)∪(A\C). (See Example 3.4.5.)
PD*7. Use the methods of this chapter to prove that for any setsA andB,
P(A∩B)= P(A)∩P(B).
PD8. Prove thatA⊆B iffP(A) ⊆P(B).
*9. Prove that ifxandyare odd integers, thenxyis odd.
10. Prove that ifxandyare odd integers, thenx−yis even.
11. Prove that for every integern,n^3 is even iffnis even.
12. Consider the following putative theorem:

```
Theorem? Suppose m is an even integer and n is an odd integer. Then
n^2 −m^2 = n+m.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Sincem is even, we can choose some integerksuch that
m= 2k. Similarly, sincenis odd we haven= 2k+ 1. Therefore
```
```
n^2 −m^2 = ( 2 k+ 1)^2 −( 2 k)^2 = 4k^2 + 4k+ 1 − 4k^2 = 4k+ 1
= ( 2 k+ 1)+ ( 2 k)= n+m. ±
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
*13. Prove that∀x∈R[∃y∈R(x+y= xy) ↔x±= 1].
```
14. Prove that∃z∈R∀x∈R+[∃y∈R(y−x= y/x) ↔x±= z].
PD15. SupposeBis a set andFis a family of sets. Prove that ́{A\B |A∈
F} ⊆

### ́

### (F\P(B)).

```
*16. SupposeFandGare nonempty families of sets and every element of
Fis disjoint from some element ofG. Prove that
```
### ́

```
Fand
```
### ³

Gare
disjoint.
PD17. Prove that for any setA,A= ́P(A).
PD*18. SupposeFandGare families of sets.


```
Proofs Involving Conjunctions and Biconditionals 141
(a) Prove that
```
### ́

### (F∩G)⊆(

### ́

### F)∩(

### ́

### G).

```
(b) What’s wrong with the following proof that(
```
### ́

### F)∩(

### ́

### ́ G) ⊆

### (F∩G)?

```
Proof. Supposex ∈(
```
### ́

### F)∩(

### ́

```
G). This means thatx ∈
```
### ́

### F

```
andx∈
```
### ́

```
G, so∃A∈F(x∈A)and∃A∈G(x ∈A). Thus, we
can choose a setAsuch thatA ∈F,A∈G, andx ∈A. Since
A ∈FandA∈G,A∈F∩G. Therefore∃A∈F∩G(x ∈A),
sox ∈
```
### ́

```
(F∩G). Sincexwas arbitrary, we can conclude that
(
```
### ́

### F)∩(

### ́

### G)⊆

### ́

### (F∩G). ±

```
(c) Find an example of families of setsFandGfor which
```
### ́

### (F∩G)±=

```
(
```
### ́

### F)∩(

### ́

### G).

```
PD19. SupposeFandGare families of sets. Prove that( ́F)∩( ́G)⊆
́
(F∩G)iff∀A∈F∀B ∈G(A∩B ⊆
```
### ́

### (F∩G)).

```
PD20. SupposeFandGare families of sets. Prove that ́Fand ́Gare
disjoint iff for allA∈FandB ∈G,AandBare disjoint.
PD21. SupposeFandGare families of sets.
(a) Prove that(
```
### ́

### F)\(

### ́

### G)⊆

### ́

### (F\G).

```
(b) What’s wrong with the following proof that
```
### ́

### (F\G)⊆(

### ́

### F)\

```
(
```
### ́

### G)?

```
Proof. Supposex ∈
```
### ́

```
(F\G). Then we can choose someA ∈
F\Gsuch thatx∈A. SinceA∈F\ G,A∈FandA ∈/G. Since
x ∈AandA∈F,x∈
```
### ́

```
F. Sincex ∈AandA ∈/ G,x ∈/
```
### ́

### G.

```
Thereforex∈(
```
### ́

### F)\(

### ́

### G). ±

```
(c) Prove that
```
### ́

### (F\ G)⊆ (

### ́

### F)\ (

### ́

```
G)iff∀A ∈(F\G)∀B ∈
G(A∩B = ∅).
(d) Find an example of families of setsFandGfor which
```
### ́

### (F\G)±=

```
(
```
### ́

### F)\(

### ́

### G).

PD*22. SupposeFandGare families of sets. Prove that if ́F² ́G, then

```
there is someA∈Fsuch that for allB ∈G,A²B.
```
23. SupposeBis a set, {Ai|i∈I}is an indexed family of sets, andI±= ∅.
    (a) What proof strategies are used in the following proof of the
       equationB∩(

### ́

```
i∈IAi)=
```
### ́

```
i∈I(B ∩Ai)?
Proof. Letxbe arbitrary. Supposex∈B∩(
```
### ́

```
i∈IAi). Thenx ∈
B andx ∈
```
### ́

```
i∈IAi, so we can choose somei^0 ∈I such that
x ∈Ai 0. Sincex ∈B andx ∈Ai 0 ,x ∈ B ∩Ai 0. Therefore
x∈
```
### ́

```
i∈I(B ∩Ai).
Now supposex ∈
```
### ́

```
i∈I(B ∩Ai). Then we can choose some
i 0 ∈I such thatx ∈B ∩Ai 0. Thereforex ∈B andx ∈Ai 0.
Sincex ∈Ai 0 ,x ∈
```
### ́

```
i∈IAi. Sincex ∈B andx ∈
```
### ́

```
i∈IAi,
x∈B∩(
```
### ́

```
i∈lAi).
```

142 _Proofs_

```
Sincexwas arbitrary, we have shown that∀x[x∈B∩(
```
### ́

```
i∈IAi)
↔x∈
```
### ́

```
i∈I(B ∩Ai)], soB∩(
```
### ́

```
i∈IAi)=
```
### ́

```
i∈I(B∩Ai). ±
(b) Prove thatB\(
```
### ́

```
i∈IAi)=
```
### ³

```
i∈I(B\Ai).
(c) Can you discover and prove a similar theorem aboutB\(
```
### ³

```
i∈IAi)?
(Hint: Try to guess the theorem, and then try to prove it. If you can’t
finish the proof, it might be because your guess was wrong. Change
your guess and try again.)
*24. Suppose {Ai|i∈I}and {Bi|i∈I} are indexed families of sets and
I±= ∅.
(a) Prove that
```
### ́

```
i∈I(Ai\Bi)⊆(
```
### ́

```
i∈IAi)\(
```
### ³

```
i∈lBi).
(b) Find an example for which
```
### ́

```
i∈I(Ai\Bi)±= (
```
### ́

```
i∈IAi)\(
```
### ³

```
i∈IBi).
```
25. Suppose {Ai|i∈I} and {Bi|i∈I} are indexed families of sets.
    (a) Prove that

### ́

```
i∈I(Ai∩Bi)⊆(
```
### ́

```
i∈IAi)∩(
```
### ́

```
i∈IBi).
(b) Find an example for which
```
### ́

```
i∈I(Ai ∩Bi) ±= (
```
### ́

```
i∈IAi) ∩
(
```
### ́

```
i∈IBi).
```
26. Prove that for all integersaandbthere is an integercsuch thata| c
    andb|c.
27. (a) Prove that for every integern, 15 |niff 3 |nand 5 |n.
    (b) Prove that it is _not_ true that for every integern, 60 |niff 6 |nand
       10 |n.

## 3.5 Proofs Involving Disjunctions

Suppose one of your givens in a proof has the formP∨Q. This given tells
you that eitherPorQis true, but it doesn’t tell you which. Thus, there are two
possibilities that you must take into account. One way to do the proof would
be to consider these two possibilities in turn. In other words, first assume that
Pis true and use this assumption to prove your goal. Then assumeQ is true
and give another proof that the goal is true. Although you don’t know which
of these assumptions is correct, the givenP ∨Qtells you that _one_ of them
must be correct. Whichever one it is, you have shown that it implies the goal.
Thus, the goal must be true.
The two possibilities that are considered separately in this type of proof –
the possibility thatP is true and the possibility thatQis true – are called _cases_.
The givenP∨Qjustifies the use of these two cases by guaranteeing that these
cases cover all of the possibilities. Mathematicians say in this situation that the
cases are _exhaustive_. Any proof can be broken into two or more cases at any
time, as long as the cases are exhaustive.


_Proofs Involving Disjunctions_ 143
**To use a given of the form** P∨Q **:**
Break your proof into cases. For case 1, assume thatP is true and use this
assumption to prove the goal. For case 2, assumeQ is true and give another
proof of the goal.

_Scratch work_

Before using strategy:

```
Givens Goal
P ∨Q
—
```
### —

After using strategy:

```
Case 1: Givens Goal
P
—
```
### —

```
Case 2: Givens Goal
Q
—
```
### —

_Form of final proof:_

```
Case 1.P is true.
[Proof of goal goes here.]
Case 2.Qis true.
[Proof of goal goes here.]
Since we knowP∨Q, these cases cover all the possibilities. Therefore the
goal must be true.
```
**Example 3.5.1.** Suppose thatA,B, andCare sets. Prove that ifA⊆Cand
B ⊆CthenA∪B ⊆C.

_Scratch work_

We assumeA⊆CandB ⊆Cand proveA∪B ⊆C. Writing out the goal
using logical symbols gives us the following givens and goal:

```
Givens Goal
A⊆C
B⊆C
```
```
∀x(x ∈A∪B →x∈C)
```
To prove the goal we let xbe arbitrary, assumex ∈ A∪B, and try to
provex ∈C. Thus, we now have a new givenx ∈A∪B, which we write as
x∈A∨x∈B, and our goal is nowx∈C.


144 _Proofs_

```
Givens Goal
A⊆C
B ⊆C
x∈A∨x∈B
```
```
x∈C
```
Because the goal cannot be analyzed any further at this point, we look more
closely at the givens. The first given will be useful if we ever come across an
object that is an element ofA, since it would allow us to conclude immediately
that this object must also be an element ofC. Similarly, the second given will
be useful if we come across an element ofB. Keeping in mind that we should
watch for any elements ofAorBthat might come up, we move on to the third
given. Because this given has the formP ∨Q, we try proof by cases. For the
first case we assumex∈A, and for the second we assumex∈B. In the first
case we therefore have the following givens and goal:

```
Givens Goal
A⊆C
B ⊆C
x∈A
```
```
x∈C
```
We’ve already decided that if we ever come across an element ofA, we can
use the first given to conclude that it is also an element ofC. Since we now
havex ∈Aas a given, we can conclude thatx ∈C, which is our goal. The
reasoning for the second case is quite similar, using the second given instead
of the first.

_Solution_

**Theorem.** _Suppose that_ A _,_ B _, and_ C _are sets. If_ A ⊆ C _and_ B ⊆ C _then_
A∪B ⊆C_._

_Proof._ SupposeA⊆CandB⊆C, and letxbe an arbitrary element ofA∪B.
Then eitherx∈Aorx∈B.
Case 1.x∈A. Then sinceA⊆C,x∈C.
Case 2.x∈B. Then sinceB ⊆C,x∈C.
Since we know that eitherx ∈ A orx ∈B, these cases cover all the
possibilities, so we can conclude thatx∈C. Sincexwas an arbitrary element
ofA∪B, this means thatA∪B ⊆C. ±

Note that the cases in this proof are not _exclusive_. In other words, it is
possible for bothx ∈A andx ∈B to be true, so some values ofxmight
fall under both cases. There is nothing wrong with this. The cases in a proof


```
Proofs Involving Disjunctions 145
```
by cases must cover all possibilities, but there is no harm in covering some
possibilities more than once. In other words, the cases must be exhaustive, but
they need not be exclusive.
Proof by cases is sometimes also helpful if you are proving a goal of the
formP ∨Q. If you can proveP in some cases andQin others, then as long
as your cases are exhaustive you can conclude thatP∨Qis true. This method
is particularly useful if one of the givens also has the form of a disjunction,
because then you can use the cases suggested by this given.

```
To prove a goal of the form P ∨Q :
Break your proof into cases. In each case, either provePor proveQ.
```
**Example 3. 5. 2.** Suppose thatA,B, andCare sets. Prove thatA\(B \C)⊆
(A\B)∪C.

_Scratch work_

Because the goal is∀x(x ∈A\ (B \C) → x∈(A\ B)∪C), we letxbe
arbitrary, assumex∈A\(B\ C), and try to provex∈(A\B)∪C. Writing
these statements out in logical symbols gives us:

_Givens Goal_
x∈A∧ ¬(x ∈B∧x ∈/C) (x∈A∧x ∈/B)∨x∈C
We split the given into two separate givens,x∈Aand ¬(x∈B∧x ∈/C),
and since the second is a negated statement we use one of De Morgan’s laws
to reexpress it as the positive statementx ∈/B∨x∈C.

```
Givens Goal
x∈A
x ∈/B∨x∈C
```
```
(x∈A∧x ∈/B)∨x∈C
```
Now the second given and the goal are both disjunctions, so we’ll try
considering the two casesx ∈/B andx∈Csuggested by the second given.
According to our strategy for proving goals of the formP∨Q, if in each case
we can either provex ∈A∧x ∈/ B or provex ∈C, then the proof will be
complete. For the first case we assumex ∈/B.

```
Givens Goal
x∈A
x ∈/B
```
```
(x∈A∧x ∈/B)∨x∈C
```
In this case the goal is clearly true, because in fact we can conclude that
x∈A∧x ∈/B. For the second case we assumex∈C, and once again the
goal is clearly true.


146 _Proofs_

_Solution_

**Theorem.** _Suppose that_ A _,_ B _, and_ C _are sets. Then_ A\(B\C)⊆(A\B)∪C_._

_Proof._ Supposex∈A\(B\C). Thenx∈Aandx ∈/B\C. Sincex ∈/B\C,
it follows that eitherx ∈/B orx∈C. We will consider these cases separately.
Case 1.x ∈/B. Then sincex∈A,x∈A\B, sox∈(A\B)∪C.
Case 2.x∈C. Then clearlyx∈(A\B)∪C.
Sincex was an arbitrary element ofA\ (B \ C), we can conclude that
A\(B\C)⊆(A\ B)∪C. ±

Sometimes you may find it useful to break a proof into cases even if the
cases are not suggested by a given of the formP∨Q. Any proof can be broken
into cases at any time, as long as the cases exhaust all of the possibilities.

**Example 3. 5. 3.** Prove that for every integerx, the remainder whenx^2 is
divided by 4 is either 0 or 1.

_Scratch work_

We start by lettingx be an arbitrary integer and then try to prove that the
remainder whenx^2 is divided by 4 is either 0 or 1.

```
Givens Goal
x∈Z (x^2 ÷ 4 has remainder 0)∨(x^2 ÷ 4 has remainder 1)
```
Because the goal is a disjunction, breaking the proof into cases seems like a
likely approach, but there is no given that suggests what cases to use. However,
trying out a few values forxsuggests the right cases:

x x^2 quotient ofx^2 ÷ 4 remainder ofx^2 ÷ 4
1 1 0 1
2 4 1 0
3 9 2 1
4 16 4 0
5 25 6 1
6 36 9 0
It appears that the remainder is 0 whenxis even and 1 whenxis odd. These
are the cases we will use. Thus, for case 1 we assumexis even and try to prove
that the remainder is 0, and for case 2 we assumexis odd and prove that the
remainder is 1. Because every integer is either even or odd, these cases are
exhaustive.


```
Proofs Involving Disjunctions 147
Filling in the definition of even , here are our givens and goal for case 1:
Givens Goal
x∈Z
∃k∈Z(x= 2k)
```
```
x^2 ÷ 4 has remainder 0
```
We immediately use the second given and let k stand for some particular
integer for whichx = 2k. Thenx^2 = ( 2 k)^2 = 4k^2 , so clearly when we
dividex^2 by 4 the quotient isk^2 and the remainder is 0.
Case 2 is quite similar:
_Givens Goal_
x∈Z
∃k∈Z(x= 2k+ 1)

```
x^2 ÷ 4 has remainder 1
```
Once again we use the second given immediately and letkstand for an integer
for whichx= 2k+ 1. Thenx^2 = ( 2 k+ 1)^2 = 4k^2 + 4k+ 1 = 4(k^2 +k)+ 1,
so whenx^2 is divided by 4 the quotient isk^2 +kand the remainder is 1.

_Solution_

**Theorem.** _For every integer_ x _, the remainder when_ x^2 _is divided by 4 is either
0 or 1._

_Proof._ Supposexis an integer. We consider two cases.
Case 1.xis even. Thenx= 2kfor some integerk, sox^2 = 4k^2. Clearly the
remainder whenx^2 is divided by 4 is 0.
Case 2.xis odd. Thenx= 2k+ 1 for some integerk, sox^2 = 4k^2 + 4k+ 1 =
4 (k^2 +k)+ 1. Clearly in this case the remainder whenx^2 is divided by 4 is 1.
±

Sometimes in a proof of a goal that has the formP ∨Qit is hard to figure
out how to break the proof into cases. Here’s a way of doing it that is often
helpful. Simply assume thatP is true in case 1 and assume that it is false in
case 2. CertainlyP is either true or false, so these cases are exhaustive. In the
first case you have assumed thatPis true, so certainly the goalP ∨Qis true.
Thus, no further reasoning is needed in case 1. In the second case you have
assumed thatP is false, so the only way the goalP∨Qcould be true is ifQ
is true. Thus, to complete this case you should try to proveQ.

**To prove a goal of the form** P ∨Q **:**
IfP is true, then clearly the goalP∨Qis true, so you only need to worry
about the case in whichP is false. You can complete the proof in this case by
proving thatQis true.


148 _Proofs_

_Scratch work_

Before using strategy:

```
Givens Goal
—
—
```
### P∨Q

After using strategy:

```
Givens Goal
—
—
¬P
```
```
Q
```
_Form of final proof:_

```
IfP is true, then of courseP∨Qis true. Now supposePis false.
[Proof ofQgoes here.]
Thus,P∨Qis true.
```
Thus, this strategy for provingP ∨Q suggests that you transform the
problem by adding ¬P as a new given and changing the goal toQ. It is
interesting to note that this is exactly the same as the transformation you
would use if you were proving the goal ¬P → Q! This is not really
surprising, because we already know that the statementsP∨Qand ¬P →Q
are equivalent. But we derived this equivalence before from the truth table
for the conditional connective, and this truth table may have been hard to
understand at first. Perhaps the reasoning we’ve given makes this equivalence,
and therefore the truth table for the conditional connective, seem more natural.
Of course, the roles ofP andQcould be reversed in using this strategy.
Thus, you can also proveP∨Qby assuming thatQis false and provingP.

**Example 3. 5. 4.** Prove that for every real numberx, ifx^2 ≥ xthen either
x≤ 0 orx≥ 1.

_Scratch work_

Our goal is∀x(x^2 ≥ x→(x≤ 0∨x≥ 1)), so to get started we letxbe an
arbitrary real number, assumex^2 ≥ x, and setx≤ 0∨x≥ 1 as our goal:

```
Givens Goal
x^2 ≥ x x≤ 0∨x≥ 1
```

_Proofs Involving Disjunctions_ 149
According to our strategy, to prove this goal we can either assumex > 0
and provex≥ 1 or assumex <1 and provex≤ 0. The assumption thatxis
positive seems more likely to be useful in reasoning about inequalities, so we
take the first approach.

```
Givens Goal
x^2 ≥x
x > 0
```
```
x≥ 1
```
The proof is now easy. Sincex > 0, we can divide the given inequality
x^2 ≥ xbyxto get the goalx≥ 1.

_Solution_

**Theorem.** _For every real number_ x _, if_ x^2 ≥x _then either_ x≤ 0 _or_ x≥ 1_._

_Proof._ Supposex^2 ≥ x. Ifx ≤ 0, then of coursex ≤ 0 orx ≥ 1. Now
supposex >0. Then we can divide both sides of the inequalityx^2 ≥ xbyx
to conclude thatx≥ 1. Thus, eitherx≤ 0 orx≥ 1. ±

The equivalence ofP ∨Qand ¬P →Q also suggests a rule of inference
called _disjunctive syllogism_ for using a given statement of the formP ∨Q:

**To use a given of the form** P∨Q **:**
If you are also given ¬P, or you can prove thatP is false, then you can use
this given to conclude thatQis true. Similarly, if you are given ¬Qor can
prove thatQis false, then you can conclude thatPis true.

In fact, this rule is the one we used in our first example of deductive
reasoning in Chapter 1!
Once again, we end this section with a proof for you to read without the
benefit of a preliminary scratch work analysis.

**Theorem 3.5.5.** _Suppose_ m _and_ n _are integers. If_ mn _is even, then either_ m _is
even or_ n _is even._

_Proof._ Supposemn is even. Then we can choose an integerk such that
mn= 2k. Ifm is even then there is nothing more to prove, so supposem
is odd. Thenm = 2j + 1 for some integerj. Substituting this into the
equationmn = 2k, we get( 2 j+ 1)n = 2k, so 2jn+ n= 2k, and therefore
n= 2k− 2jn = 2(k− jn). Sincek−jnis an integer, it follows thatnis
even. ±


150 _Proofs_

_Commentary._ The overall form of the proof is the following:

Supposemnis even.
Ifmis even, then clearly eithermis even ornis even. Now supposem
is not even. Thenmis odd.
[Proof thatnis even goes here.]
Therefore eithermis even ornis even.
Therefore ifmnis even then eithermis even ornis even.
The assumptions that mn is even and m is odd lead, by existential
instantiation, to the equationsmn= 2kandm = 2j+ 1. Although the proof
doesn’t say so explicitly, you are expected to work out for yourself that in
order to prove thatnis even it suffices to find an integercsuch thatn= 2c.
Straightforward algebra leads to the equationn= 2(k − jn), so the choice
c= k−jn works.

```
Exercises
```
```
PD*1. SupposeA,B, andCare sets. Prove thatA∩(B ∪C)⊆(A∩B)∪C.
PD2. SupposeA,B, andCare sets. Prove that(A∪B)\C⊆A∪(B\ C).
PD3. SupposeAandBare sets. Prove thatA\(A \B)= A∩B.
PD4. SupposeA,B, andCare sets. Prove thatA\(B\C)= (A\B)∪(A∩C).
PD*5. SupposeA∩C⊆B ∩CandA∪C⊆B ∪C. Prove thatA⊆B.
PD6. Recall fromSection 1.4 that the symmetric difference of two setsAand
Bis the setA³ B = (A\B)∪(B\ A) = (A∪B)\(A∩B). Prove
that ifA³ B ⊆AthenB ⊆A.
PD7. SupposeA,B, andCare sets. Prove thatA∪C⊆B∪CiffA\C⊆
B\C.
PD*8. Prove that for any setsAandB,P(A)∪P(B) ⊆P(A∪B).
PD9. Prove that for any setsAandB, ifP(A)∪P(B) = P(A ∪B) then
eitherA⊆B orB ⊆A.
```
10. Supposexandyare real numbers andx ±= 0. Prove thaty+ 1/x =
    1 +y/x iff eitherx= 1 ory= 1.
11. Prove that for every real numberx, if |x− 3|>3 thenx^2 > 6 x. (Hint:
    According to the definition of |x− 3|, ifx− 3 ≥ 0 then |x− 3| = x− 3,
    and ifx− 3<0 then |x− 3| = 3 −x. The easiest way to use this fact
    is to break your proof into cases. Assume thatx− 3 ≥ 0 in case 1, and
    x− 3<0 in case 2.)


```
Proofs Involving Disjunctions 151
*12. Prove that for every real numberx, |2x− 6|> xiff |x− 4|>2. (Hint:
Read the hint for exercise 11.)
```
13. (a) Prove that for all real numbersaandb, |a| ≤ biff −b≤ a≤ b.
    (b) Prove that for any real numberx, −|x| ≤ x ≤ |x|. (Hint: Use
       part (a).)
    (c) Prove that for all real numbersxandy, |x+y| ≤ |x|+|y|. (This is
       called the _triangle inequality_. One way to prove this is to combine
       parts (a) and (b), but you can also do it by considering a number of
       cases.)
    (d) Prove that for all real numbersxandy, |x+ y| ≥ |x| − |y|. (Hint:
       Start with the equation |x| = |(x+ y)+ (−y)| and then apply the
       triangle inequality to the right-hand side.)
14. Prove that for every integerx,x^2 + xis even.
15. Prove that for every integerx, the remainder whenx^4 is divided by 8 is
    either 0 or 1.
*16. SupposeFandGare nonempty families of sets.
PD(a) Prove that ́(F∪G)= ( ́F)∪( ́G).
(b) Can you discover and prove a similar theorem about

### ³

### (F∪G)?

17. SupposeFis a nonempty family of sets andBis a set.
    PD(a) Prove thatB∪( ́F)= ́(F∪ {B}).
       (b) Prove thatB∪(

### ³

### F)=

### ³

### A∈F(B ∪A).

```
(c) Can you discover and prove similar theorems aboutB ∩(
```
### ́

### F)

```
andB∩(
```
### ³

### F)?

18. SupposeF,G, andHare nonempty families of sets and for everyA∈F
    and everyB∈G,A∪B∈H. Prove that

### ³

### H⊆(

### ³

### F)∪(

### ³

### G).

PD19. SupposeAandBare sets. Prove that∀x(x∈A³ B↔(x∈A↔x /∈B)).
PD*20. SupposeA,B, andCare sets. Prove thatA³ B andCare disjoint iff

A∩C= B∩C.
PD21. SupposeA,B, andCare sets. Prove thatA³ B ⊆CiffA∪C=B∪C.
PD22. SupposeA,B, andCare sets. Prove thatC⊆A³ B iffC ⊆A∪B
andA∩B∩C= ∅.
PD*23. SupposeA,B, andCare sets.

(a) Prove thatA\C⊆(A\B)∪(B\C).
(b) Prove thatA³ C⊆(A³ B)∪(B³ C).
PD*24. SupposeA,B, andCare sets.

```
(a) Prove that(A∪B)³ C⊆(A³ C)∪(B³ C).
(b) Find an example of setsA,B, andC such that(A ∪B)³ C ±=
(A³ C)∪(B³ C)
PD25. SupposeA,B, andCare sets.
(a) Prove that(A³ C)∩(B³ C)⊆(A∩B)³ C.
```

152 _Proofs_

```
(b) Is it always true that(A∩B) ³ C⊆ (A³ C)∩(B ³ C)? Give
either a proof or a counterexample.
PD26. SupposeA,B, andC are sets. Consider the sets(A \ B) ³ C and
(A³ C)\ (B ³ C). Can you prove that either is a subset of the other?
Justify your conclusions with either proofs or counterexamples.
*27. Consider the following putative theorem.
```
```
Theorem? For every real number x , if |x− 3|< 3 then 0 < x < 6.
```
```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```
```
Proof. Letxbe an arbitrary real number, and suppose |x− 3|<3. We
consider two cases:
Case 1.x− 3 ≥ 0. Then |x− 3| = x− 3. Plugging this into the
assumption that |x− 3|<3, we getx− 3<3, so clearlyx <6.
Case 2.x− 3<0. Then |x− 3| = 3−x, so the assumption |x− 3|< 3
means that 3 −x <3. Therefore 3<3 +x, so 0< x.
Since we have proven both 0< xandx <6, we can conclude that
0 < x <6. ±
```
28. Consider the following putative theorem.

```
Theorem? For any sets A , B , and C , if A\B ⊆C and A ²C then
A∩B±= ∅.
```
```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```
```
Proof. SupposeA\ B ⊆CandA²C. SinceA²C, we can choose
somexsuch thatx ∈Aandx ∈/C. Sincex ∈/C andA\ B ⊆ C,
x ∈/A\B. Therefore eitherx ∈/Aorx∈B. But we already know that
x∈A, so it follows thatx ∈B. Sincex ∈Aandx∈B,x∈A∩B.
ThereforeA∩B±= ∅. ±
```
```
*29. Consider the following putative theorem.
```
```
Theorem? ∀x∈R∃y∈R(xy^2 ±= y−x).
```
```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```

```
Existence and Uniqueness Proofs 153
Proof. Letxbe an arbitrary real number.
Case 1.x= 0. Lety= 1. Thenxy^2 = 0 andy− x= 1 − 0 = 1, so
xy^2 ±= y−x.
Case 2.x±= 0. Lety= 0. Thenxy^2 = 0 andy− x= −x±= 0, so
xy^2 ±= y−x.
Since these cases are exhaustive, we have shown that∃y∈R(xy^2 ±=
y− x). Sincexwas arbitrary, this shows that∀x∈R∃y ∈R(xy^2 ±=
y−x). ±
```
30. Prove that if∀xP (x) → ∃xQ(x) then∃x(P (x) → Q(x)). (Hint:
    Remember thatP→Qis equivalent to ¬P ∨Q.)
*31. Consider the following putative theorem.

```
Theorem? Suppose A , B , and C are sets and A⊆B∪C. Then either
A⊆B or A⊆C.
```
```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```
```
Proof. Letxbe an arbitrary element ofA. SinceA⊆B∪C, it follows
that eitherx∈Borx∈C.
Case 1.x∈B. Sincexwas an arbitrary element ofA, it follows that
∀x∈A(x ∈B), which means thatA⊆B.
Case 2.x∈C. Similarly, sincexwas an arbitrary element ofA, we
can conclude thatA⊆C.
Thus, eitherA⊆BorA⊆C. ±
PD32. SupposeA,B, andCare sets andA⊆B∪C. Prove that eitherA⊆B
orA∩C±= ∅.
```
33. Prove∃x(P (x) → ∀yP (y)). (Note: Assume the universe of discourse
    is not the empty set.)

## 3.6 Existence and Uniqueness Proofs

In this section we consider proofs in which the goal has the form∃!xP (x).
Recall that this formula means “there is exactly onexsuch thatP (x),” and as
we saw in Section 2.2, it can be thought of as an abbreviation for the formula
∃x(P (x)∧ ¬∃y(P (y) ∧y±= x)). According to the proof strategies discussed
in previous sections, we could therefore prove this goal by finding a particular
value ofxfor which we could prove bothP (x)and ¬∃y(P (y) ∧y ±= x).


154 _Proofs_

The last part of this proof would involve proving a negated statement, but we
can reexpress it as an equivalent positive statement:

```
¬∃y(P (y) ∧y±= x)
is equivalent to∀y¬(P (y)∧y±= x) (quantifier negation law),
which is equivalent to∀y(¬P (y)∨y= x) (De Morgan’s law),
which is equivalent to∀y(P (y) →y= x) (conditional law).
```
Thus, we see that∃!xP (x)could also be written as∃x(P (x)∧∀y(P (y) →
y= x)). In fact, as the next example shows, several other formulas are also
equivalent to∃!xP (x), and they suggest other approaches to proving goals of
this form.

**Example 3. 6. 1.** Prove that the following formulas are all equivalent:

1. ∃x(P (x)∧ ∀y(P (y) →y= x)).
2. ∃x∀y(P (y)↔y= x).
3. ∃xP (x)∧ ∀y∀z((P (y) ∧P (z))→y= z).

_Scratch work_

If we prove directly that each of these statements is equivalent to each of
the others, then we will have three biconditionals to prove: statement 1 iff
statement 2, statement 1 iff statement 3, and statement 2 iff statement 3. If we
prove each biconditional by the methods of Section 3.4, then each will involve
two conditional proofs, so we will need a total of six conditional proofs.
Fortunately, there is an easier way. We will prove that statement 1 implies
statement 2, statement 2 implies statement 3, and statement 3 implies state-
ment 1 – just three conditionals. Although we will not give a separate proof
that statement 2 implies statement 1, it will follow from the fact that statement
2 implies statement 3 and statement 3 implies statement 1. Similarly, the other
two conditionals follow from the three we will prove. Mathematicians almost
always use some such shortcut when proving that several statements are all
equivalent. Because we’ll be proving three conditional statements, our proof
will have three parts, which we will label 1 → 2, 2 → 3, and 3 → 1. We’ll
need to work out our strategy for the three parts separately.
1 → 2. We assume statement 1 and prove statement 2. Because statement 1
starts with an existential quantifier, we choose a name, sayx 0 , for some object
for which bothP (x 0 )and∀y(P (y) →y= x 0 )are true. Thus, we now have
the following situation:


```
Existence and Uniqueness Proofs 155
Givens Goal
P (x 0 )
∀y(P (y) →y= x 0 )
```
```
∃x∀y(P (y) ↔y=x)
```
Our goal also starts with an existential quantifier, so to prove it we should
try to find a value ofxthat makes the rest of the statement come out true. Of
course, the obvious choice isx = x 0. Plugging inx 0 forx, we see that we
must now prove∀y(P (y) ↔ y= x 0 ). We letybe arbitrary and prove both
directions of the biconditional. The → direction is clear by the second given.
For the ← direction, supposey = x 0. We also haveP (x 0 )as a given, and
plugging inyforx 0 in this given we getP (y).
2 → 3. Statement 2 is an existential statement, so we letx 0 be some object
such that∀y(P (y) ↔y= x 0 ). The goal, statement 3, is a conjunction, so we
treat it as two separate goals.

_Givens Goals_
∀y(P (y) ↔y= x 0 ) ∃xP (x)
∀y∀z((P (y) ∧P (z)) →y= z)
To prove the first goal we must choose a value forx, and of course the
obvious value isx= x 0 again. Thus, we must proveP (x 0 ). The natural way
to use our only given is to plug in something fory; and to prove the goalP (x 0 ),
the obvious thing to plug in isx 0. This gives usP (x 0 )↔x 0 = x 0. Of course,
x 0 = x 0 is true, so by the ← direction of the biconditional, we getP (x 0 ).
For the second goal, we lety andzbe arbitrary, assumeP (y)andP (z),
and try to provey= z.

```
Givens Goal
∀y(P (y) ↔y= x 0 )
P (y)
P (z)
```
```
y= z
```
Plugging in each ofy andzin the first given we getP (y) ↔ y = x 0 and
P (z) ↔z= x 0. Since we’ve assumedP (y)andP (z), this time we use the
→ directions of these biconditionals to conclude thaty= x 0 andz= x 0. Our
goaly= zclearly follows.
3 → 1. Because statement 3 is a conjunction, we treat it as two separate
givens. The first is an existential statement, so we letx 0 stand for some object
such thatP (x 0 )is true. To prove statement 1 we again letx= x 0 , so we have
this situation:

```
Givens Goal
P (x 0 )
∀y∀z((P (y) ∧P (z))→y= z)
```
```
P (x 0 )∧ ∀y(P (y)→y= x 0 )
```

156 _Proofs_

We already know the first half of the goal, so we only need to prove the sec-
ond. For this we letybe arbitrary, assumeP (y), and makey= x 0 our goal.

```
Givens Goal
P (x 0 )
∀y∀z((P (y)∧P (z))→y= z)
P (y)
```
```
y= x 0
```
But now we know bothP (y)andP (x 0 ), so the goaly= x 0 follows from the
second given.

_Solution_

**Theorem.** _The following are equivalent:_

_1._ ∃x(P (x)∧ ∀y(P (y) →y= x))_.
2._ ∃x∀y(P (y)↔y= x)_.
3._ ∃xP (x)∧ ∀y∀z((P (y) ∧P (z))→y= z)_._

_Proof._ 1 → 2. By statement 1, we can letx 0 be some object such that
P (x 0 )and∀y(P (y) → y = x 0 ). To prove statement 2 we will show that
∀y(P (y) ↔y= x 0 ). Letybe arbitrary. We already know the → direction of
the biconditional. For the ← direction, supposey= x 0. Then since we know
P (x 0 ), we can concludeP (y).
2 → 3. By statement 2, choosex 0 such that∀y(P (y) ↔y= x 0 ). Then, in
particular,P (x 0 )↔x 0 = x 0 , and since clearlyx 0 = x 0 , it follows thatP (x 0 )
is true. Thus,∃xP (x). To prove the second half of statement 3, letyandzbe
arbitrary and supposeP (y)andP (z). Then by our choice ofx 0 (as something
for which∀y(P (y) ↔y= x 0 )is true), it follows thaty= x 0 andz= x 0 , so
y= z.
3 → 1. By the first half of statement 3, letx 0 be some object such that
P (x 0 ). Statement 1 will follow if we can show that∀y(P (y) →y= x 0 ), so
supposeP (y). Since we now have bothP (x 0 )andP (y), by the second half
of statement 3 we can conclude thaty= x 0 , as required. ±

Because all three of the statements in the theorem are equivalent to
∃!xP (x), we can prove a goal of this form by proving any of the three
statements in the theorem. Probably the most common technique for proving
a goal of the form∃!xP (x)is to prove statement 3 of the theorem.

**To prove a goal of the form** ∃!xP (x) **:**
Prove∃xP (x)and∀y∀z((P (y) ∧P (z)) →y= z). The first of these goals
shows that there exists anxsuch thatP (x)is true, and the second shows that it


```
Existence and Uniqueness Proofs 157
```
is unique. The two parts of the proof are therefore sometimes labeled _existence_
and _uniqueness_. Each part is proven using strategies discussed earlier.

_Form of final proof:_

```
Existence: [Proof of∃xP (x)goes here.]
Uniqueness: [Proof of∀y∀z((P (y) ∧P (z))→y=z)goes here.]
```
**Example 3. 6. 2.** Prove that there is a unique setAsuch that for every setB,
A∪B = B.

_Scratch work_

Our goal is∃!AP (A), whereP (A)is the statement∀B(A∪B= B). Accord-
ing to our strategy, we can prove this by proving existence and uniqueness
separately. For the existence half of the proof we must prove ∃AP (A), so
we try to find a value ofA that makesP (A) true. There is no formula for
finding this setA, but if you think about what the statementP (A)means,
you should realize that the right choice isA= ∅. Plugging this value in for
A, we see that to complete the existence half of the proof we must show that
∀B(∅∪B = B). This is clearly true. (If you’re not sure of this, work out the
proof!)
For the uniqueness half of the proof we prove∀C∀D((P (C) ∧P (D)) →
C = D). To do this, we letCandDbe arbitrary, assumeP (C)andP (D),
and proveC = D. Writing out what the statementsP (C)andP (D) mean,
we have the following givens and goal:

```
Givens Goal
∀B(C ∪B = B)
∀B(D ∪B= B)
```
### C= D

To use the givens, we should try to find something to plug in forBin each
of them. There is a clever choice that makes the rest of the proof easy: we
plug inDforB in the first given, andC forB in the second. This gives us
C∪D= DandD∪C= C. But clearlyC∪D= D∪C. (If you don’t see
why, prove it!) The goalC= Dfollows immediately.

_Solution_

**Theorem.** _There is a unique set_ A _such that for every set_ B _,_ A∪B = B_._

_Proof._ Existence: Clearly∀B(∅∪B = B), so∅has the required property.


158 _Proofs_

Uniqueness: Suppose∀B(C ∪B = B)and∀B(D ∪B = B). Applying
the first of these assumptions toDwe see thatC∪D= D, and applying the
second toCwe getD∪C= C. But clearlyC∪D= D∪C, soC=D. ±

Sometimes a statement of the form∃!xP (x)is proven by proving statement
1 from Example 3.6.1. This leads to the following proof strategy.

**To prove a goal of the form** ∃!xP (x) **:**
Prove∃x(P (x)∧ ∀y(P (y) → y = x)), using strategies from previous
sections.

**Example 3. 6. 3.** Prove that for every real numberx, ifx±= 2 then there is a
unique real numberysuch that 2y/(y + 1)=x.

_Scratch work_

Our goal is∀x(x ±= 2 → ∃!y( 2 y/(y + 1)= x)). We therefore letx be
arbitrary, assumex±= 2, and prove∃!y( 2 y/(y + 1)= x). According to the
preceding strategy, we can prove this goal by proving the equivalent statement

```
∃y
```
```
μ 2 y
```
```
y+ 1
```
```
= x∧ ∀z
```
```
μ 2 z
```
```
z+ 1
```
```
= x→z= y
```
### ¶¶

### .

We start by trying to find a value ofythat will make the equation 2y/(y + 1)
=xcome out true. In other words, we solve this equation fory:

```
2 y
y+ 1
```
```
= x⇒ 2 y= x(y+ 1)⇒y(2 −x)= x⇒y= x
2 − x
```
### .

Note that we havex±= 2 as a given, so the division by 2 −xin the last step
makes sense. Of course, these steps will not appear in the proof. We simply
lety= x/(2−x)and try to prove both 2y/(y + 1)= xand∀z( 2 z/(z + 1)=
x→z= y).

```
Givens Goals
x±= 2
y=
```
```
x
2 −x
```
```
2 y
y+ 1
```
```
= x
```
```
∀z
```
```
μ
2 z
z+ 1
```
```
= x→z= y
```
### ¶

The first goal is easy to verify by simply plugging inx/(2 −x)fory. For
the second, we letzbe arbitrary, assume 2z/(z + 1)= x, and provez= y:


```
Existence and Uniqueness Proofs 159
Givens Goal
x±= 2
y=
```
```
x
2 −x
2 z
z+ 1
```
```
= x
```
```
z= y
```
```
We can show thatz= ynow by solving forzin the third given:
2 z
z+ 1
```
```
= x⇒ 2 z= x(z+ 1)⇒z(2 −x)= x⇒z=
```
```
x
2 −x
```
```
= y.
```
Note that the steps we used here are exactly the same as the steps we used
earlier in solving fory. This is a common pattern in existence and uniqueness
proofs. Although the scratch work for figuring out an existence proof should
not appear in the proof, this scratch work, or reasoning similar to it, can
sometimes be used to prove that the object shown to exist is unique.

_Solution_

**Theorem.** _For every real number_ x _, if_ x ±= 2 _then there is a unique real
number_ y _such that_ 2 y/(y + 1)= x_._

_Proof._ Letxbe an arbitrary real number, and supposex±= 2. Lety=x/(2−x),
which is defined sincex±= 2. Then

```
2 y
y+ 1
```
### =

```
2 x
2−x
x
2−x+ 1
```
### =

```
2 x
2−x
2
2−x
```
### =

```
2 x
2
```
```
= x.
```
To see that this solution is unique, suppose 2z/(z + 1) = x. Then 2z =
x(z + 1), soz(2 −x)= x. Sincex±= 2 we can divide both sides by 2 − xto
getz= x/(2 −x)= y. ±

The theorem in Example 3.6.1 can also be used to formulate strategies for
using givens of the form∃!xP (x). Once again, statement 3 of the theorem is
the one used most often.

**To use a given of the form** ∃!xP (x) **:**
Treat this as two given statements,∃xP (x) and∀y∀z((P (y) ∧P (z)) →
y= z). To use the first statement you should probably choose a name, sayx 0 ,
to stand for some object such thatP (x 0 )is true. The second tells you that if
you ever come across two objectsyandzsuch thatP (y)andP (z)are both
true, you can conclude thaty= z.


160 _Proofs_

**Example 3. 6. 4.** SupposeA,B, andCare sets,AandB are not disjoint,A
andCare not disjoint, andAhas exactly one element. Prove thatBandCare
not disjoint.

_Scratch work_

```
Givens Goal
A∩B ±= ∅
A∩C±= ∅
∃!x(x ∈A)
```
### B∩C±= ∅

We treat the last given as two separate givens, as suggested by our strategy.
Writing out the meanings of the other givens and the goal, we have the
following situation:

```
Givens Goal
∃x(x ∈A∧x∈B)
∃x(x ∈A∧x∈C)
∃x(x ∈A)
∀y∀z((y ∈A∧z∈A)→y= z)
```
```
∃x(x ∈B∧x∈C)
```
To prove the goal, we must find something that is an element of bothB and
C. To do this, we turn to the givens. The first given tells us that we can choose
a name, sayb, for something such thatb∈Aandb∈B. Similarly, by the
second given we can letcbe something such thatc ∈Aandc ∈C. At this
point the third given is redundant. We already know that there’s something in
A, because in fact we already know thatb∈Aandc∈A. We may as well
skip to the last given, which says that if we ever come across two objects that
are elements ofA, we can conclude that they are equal. But as we have just
observed, we know thatb ∈Aandc∈A! We can therefore conclude that
b= c. Sinceb ∈B andb= c ∈C, we have found something that is an
element of bothBandC, as required to prove the goal.

_Solution_

**Theorem.** _Suppose_ A _,_ B _, and_ C _are sets,_ A _and_ B _are not disjoint,_ A _and_ C
_are not disjoint, and_ A _has exactly one element. Then_ B _and_ C _are not disjoint._

_Proof._ SinceAandB are not disjoint, we can letbbe something such that
b∈Aandb∈B. Similarly, sinceAandCare not disjoint, there is some
objectcsuch thatc∈Aandc∈C. SinceAhas only one element, we must
haveb= c. Thusb= c∈B∩Cand thereforeB andCare not disjoint. ±


```
Existence and Uniqueness Proofs 161
Exercises
```
```
*1. Prove that for every real numberxthere is a unique real numberysuch
thatx^2 y= x− y.
```
2. Prove that there is a unique real numberx such that for every real
    numbery,xy+ x− 4 = 4y.
3. Prove that for every real numberx, ifx±= 0 andx±= 1 then there is a
    unique real numberysuch thaty/x = y−x.
*4. Prove that for every real numberx, ifx±= 0 then there is a unique real
numberysuch that for every real numberz,zy= z/x.
5. Recall that ifFis a family of sets, then

### ́

```
F= {x| ∃A(A ∈F∧x∈
A)}. Suppose we define a new set
```
### ́

```
!Fby the formula
```
### ́

```
!F= {x |
∃!A(A ∈F∧x∈A)}.
(a) Prove that for any family of setsF,
```
### ́

### !F⊆

### ́

### F.

```
(b) A family of setsF is said to be pairwise disjoint if every pair of
distinct elements ofFare disjoint; that is,∀A ∈F∀B ∈F(A ±=
B → A∩B = ∅). Prove that for any family of setsF,
```
### ́

### ́ !F =

FiffFis pairwise disjoint.
PD*6. LetUbe any set.

```
(a) Prove that there is a uniqueA ∈P(U) such that for everyB ∈
P(U),A∪B = B.
(b) Prove that there is a uniqueA ∈P(U) such that for everyB ∈
P(U),A∪B = A.
PD7. LetUbe any set.
(a) Prove that there is a uniqueA ∈P(U) such that for everyB ∈
P(U),A∩B = B.
(b) Prove that there is a uniqueA ∈P(U) such that for everyB ∈
P(U),A∩B = A.
PD8. LetUbe any set.
(a) Prove that for everyA∈P(U)there is a uniqueB∈P(U) such
that for everyC∈P(U),C\A= C∩B.
(b) Prove that for everyA∈P(U)there is a uniqueB∈P(U) such
that for everyC∈P(U),C∩A= C\B.
PD9. Recall that you showed in exercise 14 of Section 1.4 that symmetric
difference is associative; in other words, for all setsA,B, andC,A³
(B³ C)= (A³ B)³ C. You may also find it useful in this problem to
note that symmetric difference is clearly commutative; in other words,
for all setsAandB,A³ B= B³ A.
```

162 _Proofs_
(a) Prove that there is a unique identity element for symmetric differ-
ence. In other words, there is a unique setXsuch that for every set
A,A³ X = A.
(b) Prove that every set has a unique inverse for the operation of
symmetric difference. In other words, for every setA there is a
unique setBsuch thatA³ B= X, whereXis the identity element
from part (a).
(c) Prove that for any setsAandB there is a unique setCsuch that
A³ C= B.
(d) Prove that for every setAthere is a unique setB ⊆Asuch that for
every setC⊆A,B³ C= A\C.
PD10. SupposeAis a set, and for every family of setsF, if ́F= Athen
A∈F. Prove thatAhas exactly one element.
PD*11. SupposeFis a family of sets that has the property that for everyG⊆F,
́
G ∈F. Prove that there is a unique setAsuch thatA ∈F and
∀B ∈F(B ⊆A).

12. (a) SupposeP (x)is a statement with a free variablex. Find a formula,
    using the logical symbols we have studied, that means “there are
    exactly two values ofxfor whichP (x)is true.”
(b) Based on your answer to part (a), design a proof strategy for
proving a statement of the form “there are exactly two values of
xfor whichP (x)is true.”
(c) Prove that there are exactly two solutions to the equationx^3 = x^2.
13. (a) Prove that there is a unique real numbercsuch that there is a unique
    real numberxsuch thatx^2 + 3x+ c= 0. (In other words, there is
    a unique real numbercsuch that the equationx^2 + 3x+c= 0 has
    exactly one solution.)
(b) Show that it is _not_ the case that there is a unique real numberxsuch
that there is a unique real numbercsuch thatx^2 + 3x+c= 0. (Hint:
You should be able to prove that for _every_ real numberxthere is a
unique real numbercsuch thatx^2 + 3x+ c= 0.)

## 3.7 More Examples of Proofs

```
So far, most of our proofs have involved fairly straightforward applications
of the proof techniques we’ve discussed. We end this chapter with a few
examples of somewhat more difficult proofs. These proofs use the techniques
of this chapter, but for various reasons they’re a little harder than most of our
```

```
More Examples of Proofs 163
```
earlier proofs. Some are simply longer, involving the application of more proof
strategies. Some require clever choices of which strategies to use. In some
cases it’s clear what strategy to use, but some insight is required to see exactly
how to use it. Our earlier examples, which were intended only to illustrate and
clarify the proof techniques, may have made proof writing seem mechanical
and dull. We hope that by studying these more difficult examples you will
begin to see that mathematical reasoning can also be surprising and beautiful.
Some proof techniques are particularly difficult to apply. For example, when
you’re proving a goal of the form∃xP (x), the obvious way to proceed is to try
to find a value ofxthat makes the statementP (x)true, but sometimes it will
not be obvious how to find that value ofx. Using a given of the form∀xP (x)
is similar. You’ll probably want to plug in a particular value forx, but to com-
plete the proof you may have to make a clever choice of what to plug in. Proofs
that must be broken down into cases are also sometimes difficult to figure out.
It is sometimes hard to know when to use cases and what cases to use.
We begin by looking again at the proofs from the introduction. Some aspects
of these proofs probably seemed somewhat mysterious when you read them
in the introduction. See if they make more sense to you now that you have a
better understanding of how proofs are constructed. We will present each proof
exactly as it appeared in the introduction and then follow it with a commentary
discussing the proof techniques used.

**Theorem 3. 7. 1.** _Suppose_ n _is an integer larger than 1 and_ n _is not prime.
Then_ 2 n− 1 _is not prime._

_Proof._ Sincenis not prime, there are positive integersaandbsuch thata < n,
b < n, andn = ab. Letx= 2b− 1 andy= 1 + 2b+ 2^2 b+ · · · + 2(a− 1)b.
Then

xy= ( 2 b− 1)·(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= 2b·(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)− (1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= ( 2 b+ 2^2 b+ 2^3 b+ · · · + 2ab)−(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)
= 2ab− 1
= 2n− 1.
Sinceb < n, we can conclude thatx = 2b− 1 < 2 n− 1. Also, since
ab = n > a, it follows thatb >1. Therefore,x = 2b− 1> 21 − 1 = 1,
soy < xy= 2n− 1. Thus, we have shown that 2n− 1 can be written as the
product of two positive integersxandy, both of which are smaller than 2n− 1,
so 2n− 1 is not prime. ±


164 _Proofs_

_Commentary._ We are given thatnis not prime, and we must prove that 2n− 1
is not prime. Both of these are negative statements, but fortunately it is easy to
reexpress them as positive statements. To say that an integer larger than 1 is not
prime means that it can be written as a product of two smaller positive integers.
Thus, the hypothesis thatnis not prime means∃a ∈ Z+∃b ∈ Z+(ab =
n∧a < n∧b < n), and what we must prove is that 2n− 1 is not prime, which
means∃x∈Z+∃y∈Z+(xy = 2n− 1∧x < 2 n− 1∧y < 2 n− 1). In the second
sentence of the proof we apply existential instantiation to the hypothesis that
nis not prime, and the rest of the proof is devoted to exhibiting numbersxand
ywith the properties required to prove that 2n− 1 is not prime.
As usual in proofs of existential statements, the proof doesn’t explain how
the values ofxandywere chosen, it simply demonstrates that these values
work. After the values ofxandyhave been given, the goal remaining to be
proven isxy= 2n− 1∧x < 2 n− 1∧y < 2 n− 1. Of course, this is treated as
three separate goals, which are proven one at a time. The proofs of these three
goals involve only elementary algebra.
One of the attractive features of this proof is the calculation used to show
thatxy = 2n− 1. The formulas forxandyare somewhat complicated, and at
first their product looks even more complicated. It is a pleasant surprise when
most of the terms in this product cancel and, as if by magic, the answer 2n− 1
appears. Of course, we can see with hindsight that it was this calculation that
motivated the choice ofxandy. There is, however, one aspect of this calcu-
lation that may bother you. The use of “· · ·” in the formulas indicates that the
proof depends on a pattern in the calculation that is not being spelled out. We’ll
give a more rigorous proof thatxy= 2n− 1 in Chapter 6, after we have intro-
duced the method of proof by mathematical induction (see Theorem 6.5.2).

**Theorem 3. 7. 2.** _There are infinitely many prime numbers._

_Proof._ Suppose there are only finitely many prime numbers. Letp 1 ,p 2 ,... ,
pnbe a list of all prime numbers. Letm= p 1 p 2 · · ·pn+ 1. Note thatmis not
divisible byp 1 , since dividingmbyp 1 gives a quotient ofp 2 p 3 · · ·pnand a
remainder of 1. Similarly,mis not divisible by any ofp 2 ,p 3 ,... ,pn.
We now use the fact that every integer larger than 1 is either prime or can
be written as a product of primes. (We’ll see a proof of this fact in Chapter
6 – see Theorem 6.4.2.) Clearlym is larger than 1, som is either prime or a
product of primes. Suppose first thatmis prime. Note thatmis larger than all
of the numbers in the listp 1 ,p 2 ,... ,pn, so we’ve found a prime number not
in this list. But this contradicts our assumption that this was a list of _all_ prime
numbers.


_More Examples of Proofs_ 165
Now supposem is a product of primes. Letq be one of the primes in
this product. Thenm is divisible byq. But we’ve already seen thatm is
not divisible by any of the numbers in the listp 1 ,p 2 ,... ,pn, so once again
we have a contradiction with the assumption that this list included all prime
numbers.
Since the assumption that there are finitely many prime numbers has led to
a contradiction, there must be infinitely many prime numbers. ±

_Commentary._ Because _infinite_ means _not finite_ , the statement of the theorem
might be considered to be a negative statement. It is therefore not surprising
that the proof proceeds by contradiction. The assumption that there are finitely
many primes means that there exists a natural numbernsuch that there aren
primes, and the statement that there arenprimes means that there is a list of
distinct numbersp 1 ,p 2 ,... ,pnsuch that every number in the list is prime,
and there are no primes that are not in the list. Thus, the second sentence of
the proof applies existential instantiation to introduce the numbersnandp 1 ,
p 2 ,... ,pninto the proof. At this point in the proof we have the following
situation:

```
Givens Goal
p 1 ,p 2 ,... ,pnare all prime
¬∃q(q is prime∧q ∈/ {p 1 ,p 2 ,.. .,pn})
```
```
Contradiction
```
The second given could be reexpressed as a positive statement, but since
we are doing a proof by contradiction, another reasonable approach would
be to try to reach a contradiction by proving that ∃q(q is prime∧q ∈/
{p 1 ,p 2 ,.. .,pn}). This is the strategy used in the proof. Thus, the goal for
the rest of the proof is to show that there is a prime number not in the listp 1 ,
p 2 ,... ,pn– an “unlisted prime.”
Because our goal is now an existential statement, it is not surprising that
the next step in the proof is to introduce the new numberm, without any
explanation of howm was chosen. What _is_ surprising is thatmmay or may
not be the unlisted prime we are looking for. The problem is thatmmight not
be prime. All we can be sure of is thatmis either prime or a product of primes.
Because this statement is a disjunction, it suggests proof by cases, and this is
the method used in the rest of the proof. Although the cases are not explicitly
labeled as cases in the proof, it is important to realize that the rest of the proof
has the form of a proof by cases. In case 1 we assume thatmis prime, and in
case 2 we assume that it is a product of primes. In both cases we are able to
produce an unlisted prime as required to complete the proof.

Our next proof uses factorial notation. Recall that for any positive integer
n,nfactorial is the numbern! = 1 · 2 ·3· · ·n.


166 _Proofs_

**Theorem 3. 7. 3.** _For every positive integer_ n _, there is a sequence of_ n
_consecutive positive integers containing no primes._

_Proof._ Supposenis a positive integer. Letx= (n+ 1)! + 2. We will show that
none of the numbersx,x+ 1,x+ 2,... ,x+(n− 1)is prime. Since this is a
sequence ofnconsecutive positive integers, this will prove the theorem.
To see thatxis not prime, note that

```
x= 1 · 2 · 3 ·4· · ·(n+ 1)+ 2
= 2 ·(1 ·3 · 4· · ·(n+ 1)+ 1).
```
Thus,xcan be written as a product of two smaller positive integers, sox is
not prime.
Similarly, we have

```
x+ 1 = 1 · 2 · 3 ·4· · ·(n+ 1)+ 3
= 3·(1 ·2 · 4· · ·(n+ 1)+ 1),
```
sox+ 1 is also not prime. In general, consider any numberx +i, where
0 ≤i≤ n− 1. Then we have

```
x+ i= 1 ·2 · 3 ·4 · · ·(n+ 1)+(i+ 2)
=(i+ 2)·(1 · 2 · 3· · ·(i+ 1)·(i+ 3)· · ·(n+ 1)+ 1),
```
sox+iis not prime. ±

_Commentary._ A sequence ofnconsecutive positive integers is a sequence of
the formx,x+ 1,x+ 2,... ,x+ (n− 1), wherexis a positive integer. Thus,
the logical form of the statement to be proven is∀n > 0 ∃x > 0 ∀i(0 ≤ i≤
n− 1 →x+iis not prime), where all variables range over the integers. The
overall plan of the proof is exactly what one would expect for a proof of a
statement of this form: we letn > 0 be arbitrary, specify a value forx, leti
be arbitrary, and then assume that 0 ≤ i≤ n− 1 and prove thatx+ iis not
prime. As in the proof of Theorem 3.7.1, to prove thatx+ iis not prime we
show how to write it as a product of two smaller positive integers.
Before the demonstration thatx+i is not prime, whereiis an arbitrary
integer between 0 andn− 1, the proof includes verifications thatxandx+ 1
are not prime. These are completely unnecessary and are only included to
make the proof easier to read.

**Example 3. 7. 4.** Prove that there is a unique real numbermwith the following
two properties:


```
More Examples of Proofs 167
```
1. For every real numberx,x^2 + 2x+ 3 ≥ m.
2. Ify is any real number with the property that for every real numberx,
    x^2 + 2x+ 3 ≥ y, thenm≥ y.

_Scratch work_

It will be convenient to have a name for property 1. We will say thatmis a
_lower bound_ for the expressionx^2 + 2x+ 3 if property 1 holds; that is, if
for every real numberx,x^2 + 2x+ 3 ≥ m. Property 2 then says that ify
is any lower bound forx^2 + 2x+ 3, thenm ≥ y. In other words, no lower
bound can be larger thanm, somis the _greatest_ lower bound. (We will have
more to say about lower bounds and greatest lower bounds in Section 4.4 of
Chapter 4.)
We will have to prove both existence and uniqueness of the numberm. For
the existence half of the proof, the hardest part is coming up with the right
value form. We can get a hint at how to choosemby completing the square:

```
x^2 + 2x+ 3 = x^2 + 2x+ 1 + 2 =(x+ 1)^2 + 2.
```
Since(x+ 1)^2 cannot be negative, for every real numberxwe will havex^2 +
2 x+ 3 = (x+ 1)^2 + 2 ≥ 2, som= 2 will work in property 1 – in other words,
2 is a lower bound forx^2 + 2x+ 3. Of course, any smaller number would also
be a lower bound, but property 2 requires thatmmust be the greatest lower
bound, somcan’t be smaller than 2. Perhapsm= 2 is the right choice. Let’s
see if we can prove property 2 with this choice ofm.
To prove that property 2 holds withm= 2, we must prove∀y[∀x(x^2 + 2x+
3 ≥ y)→ 2 ≥ y]. The obvious way to proceed is to letybe arbitrary, assume
∀x(x^2 + 2x+ 3 ≥ y), and then prove 2 ≥ y, which gives us the following
situation:

```
Givens Goal
∀x(x^2 + 2x+ 3 ≥ y) 2 ≥y
```
The natural way to use our given is to plug something in forx. Looking at the
goal, we see that if only there were a value ofxfor whichx^2 + 2x+ 3 = 2,
then plugging in this value ofxin the given would lead directly to the goal.
Solving the equationx^2 + 2x+ 3 = 2, we find that settingx = − 1 will
complete the proof.
We still have to prove uniqueness ofm. For this we should assume thatm 1
andm 2 are two numbers that have properties 1 and 2, and then provem 1 = m 2.
This gives us the following givens and goal:


168 _Proofs_

```
Givens Goal
∀x(x^2 + 2x+ 3 ≥m 1 )
∀x(x^2 + 2x+ 3 ≥m 2 )
∀y[∀x(x^2 + 2x+ 3 ≥y)→m 1 ≥ y]
∀y[∀x(x^2 + 2x+ 3 ≥y)→m 2 ≥ y]
```
```
m 1 = m 2
```
We should probably apply universal instantiation to one or more of the givens,
but which ones, and what values should we plug in? The key observation is
that the first two givens suggest that it would be useful to plug inm 1 orm 2 for
yin the third and fourth givens. In fact we will sety= m 2 in the third given
andy= m 1 in the fourth. (You might want to compare this to the strategy we
used for the uniqueness proof in Example 3.6.2.) This gives usm 1 ≥m 2 and
m 2 ≥ m 1 , and the goalm 1 = m 2 follows.

_Solution_

**Theorem.** _There is a unique real number_ m _with the following two properties:_

_1. For every real number_ x _,_ x^2 + 2x+ 3 ≥ m_.
2. If_ y _is any real number with the property that for every real number_ x _,_
    x^2 + 2x+ 3 ≥ y _, then_ m≥ y_._

_Proof._ Existence: Letm = 2. To prove property 1, letxbe an arbitrary real
number. Then

```
x^2 + 2x+ 3 = (x+ 1)^2 + 2 ≥ 2 =m,
```
as required. This shows that 2 is a lower bound forx^2 + 2x+ 3.
For property 2, letybe an arbitrary number with the property that for every
x,x^2 + 2x+ 3 ≥ y. In particular, settingx= − 1 we find that

```
y≤ (− 1)^2 + 2(− 1)+ 3 = 2 = m.
```
Sinceywas arbitrary, this proves property 2.
Uniqueness: Supposem 1 andm 2 both have properties 1 and 2. In other
words,m 1 andm 2 are both lower bounds forx^2 + 2x+ 3, and also ifyis any
lower bound, thenm 1 ≥ yandm 2 ≥ y. Applying this last fact to bothy= m 1
andy= m 2 we getm 1 ≥ m 2 andm 2 ≥m 1 , som 1 = m 2. ±

For readers who are familiar with the definition of limits from calculus, we
give one more example, showing how proofs involving limits can be worked
out using the techniques in this chapter. Readers who are not familiar with this
definition should skip this example.


```
More Examples of Proofs 169
```
**Example 3. 7. 5.** Show that

```
lim
x→3
```
```
2 x^2 − 5x− 3
x− 3
```
### = 7.

_Scratch work_

According to the definition of limits, our goal means that for every positive
number±there is a positive numberδsuch that ifxis any number such that
0 <|x− 3|< δ, then |( 2 x^2 − 5x− 3)/(x− 3)− 7|< ±. Translating this into
logical symbols, we have

```
∀± > 0 ∃δ > 0 ∀x
```
```
μ
0 <|x− 3|< δ→
```
### ··

```
··^2 x
```
(^2) − 5x− 3
x− 3

### − 7

### ··

### ··< ±

### ¶

### .

We therefore start by letting±be an arbitrary positive number and then try to
find a positive numberδfor which we can prove

```
∀x
```
```
μ
0 <|x− 3|< δ→
```
### ··

```
··^2 x
```
(^2) − 5x− 3
x− 3 − 7

### ··

### ··< ±

### ¶

### .

The scratch work involved in findingδwill not appear in the proof, of course.
In the final proof we’ll just write “Letδ= (some positive number)” and then
proceed to prove

```
∀x
```
```
μ
0 <|x− 3|< δ→
```
### ··

```
··^2 x
```
(^2) − 5x− 3
x− 3

### − 7

### ··

### ··< ±

### ¶

### .

Before working out the value ofδ, let’s figure out what the rest of the proof
will look like. Based on the form of the goal at this point, we should proceed
by lettingxbe arbitrary, assuming 0<|x− 3|< δ, and then proving |( 2 x^2 −
5 x− 3)/(x − 3)− 7|< ±. Thus, the entire proof will have the following form:

```
Let±be an arbitrary positive number.
Letδ= (some positive number).
Letxbe arbitrary.
Suppose 0<|x− 3|< δ.
[Proof of |( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±goes here.]
Therefore 0<|x− 3|< δ→ |( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±.
Sincexwas arbitrary, we can conclude that∀x( 0 < |x− 3|< δ→
|( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±).
Therefore∃δ > 0 ∀x( 0 <|x− 3|< δ→ |( 2 x^2 − 5x− 3)/(x− 3)− 7|< ±).
Since±was arbitrary, it follows that∀± > 0 ∃δ > 0 ∀x( 0 <|x− 3|< δ→
|( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±).
```

```
170 Proofs
Two steps remain to be worked out. We must decide what value to assign to
δ, and we must fill in the proof of |( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±. We’ll
work on the second of these steps first, and in the course of working out this
step it will become clear what value we should use forδ. The givens and goal
for this second step are as follows:
Givens Goal
± > 0
δ= (some positive number)
0 <|x− 3|< δ
```
### ··

### ·

### ·

```
2 x^2 − 5x− 3
x− 3
```
### − 7

### ··

### ·

### ·<^ ±

```
First of all, note that we have 0<|x− 3| as a given, sox±= 3 and therefore
the fraction( 2 x^2 − 5x− 3)/(x − 3)is defined. Factoring the numerator, we
find that
··
··^2 x
```
(^2) − 5x− 3
x− 3 − 7

### ··

### ··=

### ··

```
··(^2 x+ 1)(x − 3)
x− 3 − 7
```
### ··

### ··

```
= | 2x+ 1 − 7| = | 2x− 6| = 2|x− 3|.
Now we also have as a given that |x− 3|< δ, so 2|x− 3|< 2 δ. Combining
this with the previous equation, we get |( 2 x^2 − 5x− 3)/(x − 3)− 7|< 2 δ,
and our goal is |( 2 x^2 − 5x− 3)/(x − 3)− 7|< ±. Thus, if we choseδso that
2 δ= ±, we’d be done. In other words, we should letδ= ±/2. Note that since
± >0, this is a positive number, as required.
```
```
Solution
```
```
Theorem. xlim→3
```
```
2 x^2 − 5x− 3
x− 3
```
### = 7.

```
Proof. Suppose± >0. Letδ= ±/2, which is also clearly positive. Letxbe
an arbitrary real number, and suppose that 0<|x− 3|< δ. Then
··
··^2 x
```
(^2) − 5x− 3
x− 3

### − 7

### ··

### ··=

### ··

```
··(^2 x+ 1)(x− 3)
x− 3
```
### − 7

### ··

```
··= | 2x+ 1 − 7|
```
```
= | 2x− 6| = 2|x− 3|< 2 δ= 2
```
### ̧±

### 2

### ¹

### = ±. ±

```
Exercises
```
PD*1. SupposeFis a family of sets. Prove that there is a unique setAthat has

```
the following two properties:
(a)F⊆P(A).
```

```
More Examples of Proofs 171
(b) ∀B(F⊆P(B) →A⊆B).
(Hint: First try an example. LetF = {{1, 2, 3},{2, 3, 4},{3, 4, 5}}. Can
you find the setAthat has properties (a) and (b)?)
```
2. Prove that there is a unique positive real numbermthat has the following
    two properties:
    (a) For every positive real numberx,x+ 1x < m.
    (b) Ify is any positive real number with the property that for every
       positive real numberx,x+ 1x < y, thenm≤y.
PD3. SupposeAandBare sets. What can you prove aboutP(A\B)\(P(A)\
P(B))? (No, it’s not equal to∅. Try some examples and see what you
get.)
PD4. Suppose thatA,B, andCare sets. Prove that the following statements
are equivalent:
(a) (A³ C)∩(B ³ C)= ∅.
(b) A∩B ⊆C⊆A∪B. (Note: This is a shorthand way of saying that
A∩B⊆CandC⊆A∪B.)
(c) A³ C⊆A³ B.
*5. Suppose {Ai| i∈I} is a family of sets. Prove that ifP(

### ́

```
́ i∈IAi)⊆
i∈IP(Ai), then there is somei∈Isuch that∀j∈I (Aj⊆Ai).
```
6. SupposeFis a nonempty family of sets. LetI =

### ́

```
FandJ =
```
### ³

### F.

```
Suppose also thatJ±= ∅, and notice that it follows that for everyX∈F,
X ±= ∅, and also thatI ±= ∅. Finally, suppose that {Ai| i ∈I} is an
indexed family of sets.
(a) Prove that
```
### ́

```
i∈IAi=
```
### ́

```
X∈F(
```
### ́

```
i∈XAi).
(b) Prove that
```
### ³

```
i∈IAi=
```
### ³

```
X∈F(
```
### ³

```
i∈XAi).
(c) Prove that
```
### ́

```
i∈JAi⊆
```
### ³

```
X∈F(
```
### ́

```
́ i∈XAi). Is it always the case that
i∈JAi=
```
### ³

```
X∈F(
```
### ́

```
i∈XAi)? Give either a proof or a counterex-
ample to justify your answer.
(d) Discover and prove a theorem relating
```
### ³

```
i∈JAiand
```
### ́

```
X∈F(
```
### ³

```
i∈XAi).
```
7. Prove that limx→2^3 xx^2 − 2− 12= 12.
*8. Prove that if limx→cf (x) = LandL >0, then there is some number
δ >0 such that for allx, if 0<|x−c|< δthenf (x) >0.
9. Prove that if limx→cf (x)= Lthen limx→c 7 f (x)= 7L.

*10. Consider the following putative theorem.

```
Theorem? There are irrational numbers a and b such that ab is
rational.
```

172 _Proofs_

```
Is the following proof correct? If so, what proof strategies does it
use? If not, can it be fixed? Is the theorem correct? (Note: The proof
uses the fact that
```
### √

```
2 is irrational, which we’ll prove in Chapter 6 – see
Theorem 6.4.5.)
```
```
Proof. Either
```
### √

### 2

```
√ 2
is rational or it’s irrational.
Case 1.
```
### √

### 2

```
√
```
(^2) is rational. Leta= b=√2. Thenaandbare irrational,
andab=

### √

### 2

```
√
```
(^2) , which we are assuming in this case is rational.
Case 2.

### √

### 2

```
√ 2
is irrational. Leta =
```
### √

### 2

```
√ 2
andb =
```
### √

2. Thena is
irrational by assumption, and we know thatbis also irrational. Also,

```
ab=
```
### ̧√

### 2

```
√
2 ¹
```
```
√ 2
=
```
### √

### 2

```
(
```
```
√
2·
```
```
√
2 )
= (
```
### √

### 2 )^2 = 2,

```
which is rational. ±
```

## 4 Relations

## 4.1 Ordered Pairs and Cartesian Products

In Chapter 1 we discussed truth sets for statements containing a single free
variable. In this chapter we extend this idea to include statements with more
than one free variable.
For example, supposeP (x,y) is a statement with two free variables x
andy. We can’t speak of this statement as being true or false until we have
specified two values – one forxand one fory. Thus, if we want the truth set
to identify which assignments of values to free variables make the statement
come out true, then the truth set will have to contain not individual values,
but pairs of values. We will specify a pair of values by writing the two
values in parentheses separated by a comma. For example, letD(x,y)mean
“xdividesy.” ThenD(6, 18)is true, since 6 | 18, so the pair of values(6, 18)
is an assignment of values to the variablesxandythat makes the statement
D(x,y)come out true. Note that 18 does not divide 6, so the pair of values
(18, 6) makes the statementD(x,y) false. We must therefore distinguish
between the pairs(18, 6)and(6, 18). Because the order of the values in the
pair makes a difference, we will refer to a pair(a,b)as an _ordered pair_ , with
_first coordinate_ aand _second coordinate_ b.
You have probably seen ordered pairs before when studying points in the
xy-plane. The use ofxandycoordinates to identify points in the plane works
by assigning to each point in the plane an ordered pair, whose coordinates
are thexandycoordinates of the point. The pairs must be ordered because,
for example, the points(2, 5)and(5, 2)are different points in the plane. In
this case the coordinates of the ordered pairs are real numbers, but ordered
pairs can have anything at all as their coordinates. For example, suppose
we letC(x,y)stand for the statement “x hasychildren.” In this statement
the variablex ranges over the set of all people, andy ranges over the

```
173
```

174 _Relations_

set of all natural numbers. Thus, the only ordered pairs it makes sense to
consider when discussing assignments of values to the variablesxandyin
this statement are pairs in which the first coordinate is a person and the second
is a natural number. For example, the assignment (Prince Charles, 2) makes
the statementC(x,y)come out true, because Prince Charles does have two
children, whereas the assignment (Angelina Jolie, 37) makes the statement
false. Note that the assignment (2, Prince Charles) makes no sense, because it
would lead to the nonsensical statement “2 has Prince Charles children.”
In general, ifP (x,y)is a statement in whichxranges over some setAand
yranges over a setB, then the only assignments of values toxandythat will
make sense inP (x,y)will be ordered pairs in which the first coordinate is an
element ofAand the second comes fromB. We therefore make the following
definition:

**Definition 4.1.1.** SupposeA andB are sets. Then the _Cartesian product_ of
AandB, denotedA× B, is the set of all ordered pairs in which the first
coordinate is an element ofA and the second is an element ofB. In other
words,

```
A× B= {(a,b) |a∈Aandb∈B}.
```
**Example 4.1.2.**

1. IfA= {red, green} andB = {2, 3, 5} then

```
A×B = {(red, 2),(red, 3),(red, 5),(green, 2),(green, 3),(green, 5)}.
```
2. IfP = the set of all people then

```
P×N= {(p,n)|pis a person andnis a natural number}
= {(Prince Charles, 0),(Prince Charles, 1),(Prince Charles, 2),.. .,
(Angelina Jolie, 0),(Angelina Jolie, 1),.. .}.
These are the ordered pairs that make sense as assignments of values to the
free variablesxandyin the statementC(x,y).
```
3. R× R= {(x,y) | xandyare real numbers}. These are the coordinates
    of all the points in the plane. For obvious reasons, this set is sometimes
    writtenR^2.

The introduction of a new mathematical concept gives us an opportunity
to practice our proof-writing techniques by proving some basic properties of
the new concept. Here’s a theorem giving some basic properties of Cartesian
products.


```
Ordered Pairs and Cartesian Products 175
```
**Theorem 4. 1. 3.** _Suppose_ A _,_ B _,_ C _, and_ D _are sets._

_1._ A× (B∩C)= (A×B)∩(A× C)_._

_2._ A× (B∪C)= (A×B)∪(A× C)_._

_3._ (A× B)∩(C×D)= (A∩C)× (B∩D)_._

_4._ (A× B)∪(C×D)⊆(A∪C)× (B∪D)_._

_5._ A× ∅= ∅×A= ∅_._

_Proof of 1._ Letpbe an arbitrary element ofA×(B∩C). Then by the definition
of Cartesian product,pmust be an ordered pair whose first coordinate is an
element ofAand second coordinate is an element ofB∩C. In other words,
p= (x,y)for somex∈Aandy∈B∩C. Sincey∈B∩C,y∈Bandy∈C.
Sincex∈Aandy∈B,p= (x,y)∈A×B, and similarlyp∈A×C. Thus,
p∈(A×B)∩(A× C). Sincepwas an arbitrary element ofA×(B∩C), it
follows thatA×(B ∩C)⊆(A×B)∩(A×C).
Now letpbe an arbitrary element of(A×B)∩(A×C). Thenp∈A×B,
sop = (x,y)for somex ∈Aandy ∈B. Also,(x,y)= p ∈A× C, so
y∈C. Sincey∈Bandy∈C,y∈B∩C. Thus,p= (x,y)∈A×(B∩C).
Sincepwas an arbitrary element of(A×B)∩(A× C)we can conclude that
(A×B)∩(A×C)⊆A×(B∩C), soA×(B∩C) = (A×B)∩(A×C). ±

_Commentary._ Before continuing with the proofs of the other parts, we give a
brief commentary on the proof just given. Statement 1 is an equation between
two sets, so as we saw in Example 3.4.5, there are two natural approaches
we could take to prove it. We could prove ∀p[p ∈A× (B ∩C) ↔ p ∈
(A×B)∩(A×C)] or we could prove bothA×(B∩C)⊆(A×B)∩(A×C)
and(A×B)∩(A×C)⊆A×(B∩C). In this proof, we have taken the second
approach. The first paragraph gives the proof thatA×(B ∩C)⊆(A×B)∩
(A×C), and the second gives the proof that(A×B)∩(A×C)⊆A×(B∩C).
In the first of these proofs we take the usual approach of lettingpbe an
arbitrary element ofA×(B∩C)and then provingp∈(A×B)∩(A×C).
Becausep∈A× (B ∩C)means∃x∃y(x ∈A∧y∈B∩C∧p= (x,y)),
we immediately introduce the variablesx andyby existential instantiation.
The rest of the proof involves simply working out the definitions of the set
theory operations involved. The proof of the opposite inclusion in the second
paragraph is similar.
Note that in both parts of this proof we introduced an arbitrary objectp
that turned out to be an ordered pair, and we were therefore able to say that
p = (x,y) for some objectsx andy. In most proofs involving Cartesian
products mathematicians suppress this step. If it is clear from the beginning


176 _Relations_
that an object will turn out to be an ordered pair, it is usually just called(x,y)
from the outset. We will follow this practice in our proofs.
We leave the proofs of statements 2 and 3 as exercises (see exercise 5).
_Proof of 4._ Let(x,y)be an arbitrary element of(A× B)∪(C× D). Then
either(x,y)∈A× Bor(x,y)∈C×D.
Case 1.(x,y)∈A×B. Thenx∈Aandy∈B, so clearlyx∈A∪Cand
y∈B∪D. Therefore(x,y)∈(A∪C)×(B ∪D).
Case 2.(x,y)∈C×D. A similar argument shows that(x,y)∈(A∪C)×
(B∪D).
Since(x,y)was an arbitrary element of(A×B)∪(C×D), it follows that
(A× B)∪(C× D)⊆(A∪C)×(B ∪D). ±
_Proof of 5._ SupposeA×∅±= ∅. ThenA×∅has at least one element, and by
the definition of Cartesian product this element must be an ordered pair(x,y)
for somex∈Aandy∈∅. But this is impossible, because∅has no elements.
Thus,A×∅= ∅. The proof that∅×A= ∅is similar. ±
_Commentary._ Statement 4 says that one set is a subset of another, and the
proof follows the usual pattern for statements of this form: we start with an
arbitrary element of the first set and then prove that it’s an element of the
second. It is clear that the arbitrary element of the first set must be an ordered
pair, so we have written it as an ordered pair from the beginning.
Thus, for the rest of the proof we have(x,y) ∈(A× B)∪(C× D)as a
given, and the goal is to prove that(x,y)∈(A∪C)× (B ∪D). The given
means(x,y)∈A×B∨(x,y)∈C×D, so proof by cases is an appropriate
strategy. In each case it is easy to prove the goal.
Statement 5 meansA×∅= ∅∧∅×A= ∅, so we treat this as two goals
and proveA×∅= ∅and∅×A= ∅separately. To say that a set equals the
empty set is actually a negative statement, although it may not look like it on
the surface, because it means that the set does _not_ have any elements. Thus,
it is not surprising that the proof thatA× ∅= ∅proceeds by contradiction.
The assumption thatA×∅±= ∅means∃p(p ∈A× ∅), so our next step is
to introduce a name for an element ofA× ∅. Once again, it is clear that the
new object being introduced in the proof is an ordered pair, so we have written
it as an ordered pair(x,y)from the beginning. Writing out the meaning of
(x,y)∈A× ∅leads immediately to a contradiction.
The proof that∅× A= ∅is similar, but simply _saying_ this doesn’t _prove_
it. Thus, the claim in the proof that this part of the proof is similar is really
an indication that the second half of the proof is being left as an exercise. You
should work through the details of this proof in your head (or if necessary
write them out on paper) to make sure that a proof similar to the proof in the
first half will really work.


_Ordered Pairs and Cartesian Products_ 177
Because the order of the coordinates in an ordered pair matters,A×Band
B× Amean different things. Does it ever happen thatA×B =B×A? Well,
one way this could happen is ifA = B. Clearly ifA = B thenA× B =
A×A=B ×A. Are there any other possibilities?
Here’s an incorrect proof that A× B = B × A only ifA = B: The
first coordinates of the ordered pairs inA× B come fromA, and the first
coordinates of the ordered pairs inB×Acome fromB. But ifA×B= B×A,
then the first coordinates in these two sets must be the same, soA= B.
This is a good example of why it’s important to stick to the rules of
proof writing we’ve studied rather than allowing yourself to be convinced by
any reasoning that looks plausible. The informal reasoning in the preceding
paragraph is incorrect, and we can find the error by trying to reformulate this
reasoning as a formal proof. SupposeA× B = B× A. To prove thatA= B
we could letx be arbitrary and then try to provex ∈ A → x ∈B and
x ∈B → x ∈A. For the first of these we assumex ∈A and try to prove
x∈B. Now the incorrect proof suggests that we should try to show thatxis
the first coordinate of some ordered pair inA× B and then use the fact that
A× B = B × A. We could do this by trying to find some objecty ∈B and
then forming the ordered pair(x,y). Then we would have(x,y)∈A×Band
A×B = B×A, and it would follow that(x,y)∈B×Aand thereforex∈B.
But how can we find an objecty∈B? We don’t have any given information
aboutB, other than the fact thatA× B = B× A. In fact,B _could be the
empty set!_ This is the flaw in the proof. IfB = ∅, then it will be impossible to
choosey∈B, and the proof will fall apart. For similar reasons, the other half
of the proof won’t work ifA=∅.
Not only have we found the flaw in the proof, but we can now figure out
what to do about it. We must take into account the possibility thatA orB
might be the empty set.

**Theorem 4. 1. 4.** _Suppose_ A _and_ B _are sets. Then_ A×B = B ×A _iff either_
A= ∅ _,_ B = ∅ _, or_ A=B_._

_Proof._ (→)SupposeA× B = B× A. If eitherA= ∅orB = ∅, then there
is nothing more to prove, so supposeA±= ∅andB ±= ∅. We will show that
A= B. Letxbe arbitrary, and supposex∈A. SinceB ±= ∅we can choose
somey∈B. Then(x,y)∈A×B = B×A, sox∈B.
Now supposex∈B. SinceA ±= ∅we can choose somez∈A. Therefore
(x,z)∈B×A= A× B, sox∈A. ThusA= B, as required.
(←)Suppose eitherA= ∅,B = ∅, orA= B.
Case 1.A= ∅. ThenA× B= ∅×B = ∅= B×∅= B×A.
Case 2.B = ∅. Similar to case 1.
Case 3.A= B. ThenA×B = A×A= B×A. ±


178 _Relations_

_Commentary._ Of course, the statement to be proven is an iff statement, so
we prove both directions separately. For the → direction, our goal isA =
∅∨B =∅∨A= B, which could be written as(A =∅∨B= ∅)∨A= B,
so by one of our strategies for disjunctions from Chapter 3 we can assume
¬(A = ∅∨B = ∅)and proveA = B. Note that by one of De Morgan’s
laws, ¬(A = ∅∨B = ∅)is equivalent toA ±= ∅∧B ±= ∅, so we treat
this as two assumptions,A ±= ∅andB ±= ∅. Of course we could also
have proceeded differently, for example by assumingA ±= B andB ±= ∅
and then provingA = ∅. But recall from the commentary on part 5 of
Theorem 4.1.3 thatA = ∅andB = ∅are actually negative statements, so
because it is generally better to work with positive than negative statements,
we’re better off negating both of them to get the assumptionsA ±= ∅and
B ±= ∅and then proving the positive statement A = B. The assumptions
A ±= ∅and B ±= ∅are existential statements, so they are used in the
proof to justify the introduction ofy andz. The proof thatA= B proceeds
in the obvious way, by introducing an arbitrary objectx and then proving
x∈A↔x∈B.
For the ← direction of the proof, we haveA = ∅∨B = ∅∨A = B as
a given, so it is natural to use proof by cases. In each case, the goal is easy to
prove.

This theorem is a better illustration of how mathematics is really done than
most of the examples we’ve seen so far. Usually when you’re trying to find
the answer to a mathematical question you won’t know in advance what the
answer is going to be. You might be able to take a guess at the answer and
you might have an idea for how the proof might go, but your guess might
be wrong and your idea for the proof might be flawed. It is only by turning
your idea into a formal proof, according to the rules in Chapter 3, that you
can be sure your answer is right. Often in the course of trying to construct a
formal proof you will discover a flaw in your reasoning, as we did earlier, and
you may have to revise your ideas to overcome the flaw. The final theorem
and proof are often the result of repeated mistakes and corrections. Of course,
when mathematicians write up their theorems and proofs, they follow our rule
that proofs are for justifying theorems, not for explaining thought processes,
and so they don’t describe all the mistakes they made. But just because
mathematicians don’t explain their mistakes in their proofs, you shouldn’t be
fooled into thinking they don’t make any!
Now that we know how to use ordered pairs and Cartesian products to talk
about assigning values to free variables, we’re ready to define truth sets for
statements containing two free variables.


```
Ordered Pairs and Cartesian Products 179
```
**Definition 4.1.5.** SupposeP (x,y)is a statement with two free variables in
whichxranges over a setAandyranges over another setB. ThenA×B is
the set of all assignments of values toxandythat make sense in the statement
P (x,y). The _truth set_ ofP (x,y)is the subset ofA× B consisting of those
assignments that make the statement come out true. In other words, the truth
set ofP (x,y)is the set {(a,b) ∈A×B |P (a,b)}.

**Example 4.1.6.** What are the truth sets of the following statements?

1. “xhasychildren,” wherexranges over the setPof all people andyranges
    overN.
2. “xis located iny,” wherexranges over the setCof all cities andyranges
    over the setNof all countries.
3. “y= 2x− 3,” wherexandyrange overR.

_Solutions_

1. {(p,n)∈P×N| the personphasnchildren} = {(Prince Charles, 2),.. .}.
2. {(c,n) ∈C× N | the citycis located in the countryn} = {(New York,
    United States), (Tokyo, Japan), (Paris, France),... }.
3. {(x,y)∈R×R| y = 2x− 3} = {(0,− 3),(1, −1),(2, 1),.. .}. You are
    probably already familiar with the fact that the ordered pairs in this set are
    the coordinates of points in the plane that lie along a certain straight line,
    called the _graph_ of the equationy = 2x− 3. Thus, you can think of the
    graph of the equation as a picture of its truth set!

Many of the facts about truth sets for statements with one free variable that
we discussed in Chapter 1 carry over to truth sets for statements with two
free variables. For example, supposeT is the truth set of a statementP (x,y),
wherex ranges over some setAandy ranges overB. Then for anya ∈A
andb∈B the statement(a,b)∈T means the same thing asP (a,b). Also, if
P (x,y)is true for everyx∈Aandy∈B, thenT = A× B, and ifP (x,y)is
false for everyx∈Aandy∈B, thenT = ∅. IfS is the truth set of another
statementQ(x,y), then the truth set of the statementP (x,y)∧Q(x,y) is
T∩S, and the truth set ofP (x,y)∨Q(x,y)isT ∪S.
Although we’ll be concentrating on ordered pairs for the rest of this chapter,
it is possible to work with ordered triples, ordered quadruples, and so on.
These might be used to talk about truth sets for statements containing three
or more free variables. For example, letL(x,y,z) be the statement “x has
lived inyforzyears,” wherexranges over the setP of all people,yranges
over the setCof all cities, andzranges overN. Then the assignments of values


180 _Relations_

to the free variables that make sense in this statement would be ordered triples
(p,c,n), wherepis a person,cis a city, andnis a natural number. The set of
all such ordered triples would be writtenP ×C×N, and the truth set of the
statementL(x,y,z)would be the set {(p,c,n)∈P × C× N| the personp
has lived in the citycfornyears}.

```
Exercises
```
```
*1. What are the truth sets of the following statements? List a few elements
of each truth set.
(a) “xis a parent ofy,” wherexandyboth range over the setP of all
people.
(b) “There is someone who lives inxand attendsy,” wherexranges
over the setC of all cities andy ranges over the setU of all
universities.
```
2. What are the truth sets of the following statements? List a few elements
    of each truth set.
(a) “xlives iny,” wherex ranges over the setP of all people andy
ranges over the setCof all cities.
(b) “The population ofxisy,” wherexranges over the setCof all
cities andyranges overN.
3. The truth sets of the following statements are subsets ofR^2. List a few
    elements of each truth set. Draw a picture showing all the points in the
    plane whose coordinates are in the truth set.
(a) y= x^2 −x− 2.
(b) y < x.
(c) Eithery= x^2 −x− 2 ory= 3x− 2.
(d) y < x, and eithery= x^2 − x− 2 ory= 3x− 2.
*4. LetA = {1, 2, 3},B = {1, 4},C = {3, 4}, andD = {5}. Compute
all the sets mentioned in Theorem 4.1.3 and verify that all parts of the
theorem are true.
5. Prove parts 2 and 3 of Theorem 4.1.3.
*6. What’s wrong with the following proof that for any setsA,B,C, and
D,(A∪C)× (B∪D)⊆(A×B)∪(C× D)? (Note that this is the
reverse of the inclusion in part 4 of Theorem 4.1.3.)

```
Proof. Suppose(x,y) ∈(A∪C)× (B ∪D). Thenx ∈A∪C and
y∈B∪D, so eitherx∈Aorx∈C, and eithery∈B ory∈D. We
consider these cases separately.
```

```
Ordered Pairs and Cartesian Products 181
Case 1.x∈Aandy∈B. Then(x,y)∈A×B.
Case 2.x∈Candy∈D. Then(x,y)∈C×D.
Thus, either (x,y) ∈ A× B or (x,y) ∈ C × D, so(x,y) ∈
(A×B)∪(C×D). ±
```
7. IfAhasmelements andB hasnelements, how many elements does
    A× Bhave?
PD*8. Is it true that for any setsA,B, andC,A×(B\C)= (A×B)\(A×C)?
Give either a proof or a counterexample to justify your answer.
PD9. Prove that for any setsA,B, andC,A×(B² C)= (A×B)² (A×C).

PD*10. Prove that for any setsA,B,C, andD,(A\C)×(B\D)⊆(A×B)\

```
(C× D).
PD11. Prove that for any setsA,B,C, andD,(A × B)\(C× D) = [A×
(B\D)]∪[(A\C)×B].
PD12. Prove that for any setsA,B,C, andD, ifA×BandC×Dare disjoint,
then eitherAandCare disjoint orBandDare disjoint.
```
13. SupposeI±= ∅. Prove that for any indexed family of sets {Ai|i∈I}
    and any setB,(

### ±

```
i∈IAi)× B =
```
### ±

```
i∈I(Ai× B). Where in the proof
does the assumption thatI±= ∅get used?
```
14. Suppose {Ai|i∈I}and {Bi|i∈I}are indexed families of sets.
    (a) Prove that

### ²

```
i∈I(Ai×Bi)⊆(
```
### ²

```
i∈IAi)×(
```
### ²

```
i∈IBi).
(b) For each(i,j) ∈I× I letC(i,j)= Ai× Bj, and letP = I× I.
Prove that
```
### ²

```
p∈PCp= (
```
### ²

```
i∈IAi)× (
```
### ²

```
i∈IBi).
*15. This problem was suggested by Professor Alan Taylor of Union
College, NY. Consider the following putative theorem.
```
```
Theorem? For any sets A , B , C , and D , if A× B ⊆ C× D then
A⊆C and B ⊆D.
```
```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```
```
Proof. SupposeA× B ⊆C× D. Letabe an arbitrary element ofA
and letbbe an arbitrary element ofB. Then(a,b) ∈A×B, so since
A×B⊆C×D,(a,b)∈C×D. Thereforea∈Candb∈D. Sincea
andbwere arbitrary elements ofAandB, respectively, this shows that
A⊆CandB ⊆D. ±
```

182 _Relations_

## 4.2 Relations

SupposeP (x,y)is a statement with two free variablesx andy. Often such
a statement can be thought of as expressing a _relationship_ betweenx andy.
The truth set of the statementP (x,y)is a set of ordered pairs that records
when this relationship holds. In fact, it is often useful to think of any set of
ordered pairs in this way, as a record of when some relationship holds. This is
the motivation behind the following definition.

**Definition 4.2.1.** SupposeAandBare sets. Then a setR⊆A× Bis called
a _relation from_ A _to_ B.

Ifxranges overA andyranges overB, then clearly the truth set of any
statementP (x,y)will be a relation fromAtoB. However, note that Definition
4.2.1 does not require that a set of ordered pairs be defined as the truth set of
some statement for the set to be a relation. Although thinking about truth sets
was the motivation for this definition, the definition says nothing explicitly
about truth sets. According to the definition, _any_ subset ofA× B is to be
called a relation fromAtoB.

**Example 4.2.2.** Here are some examples of relations from one set to another.

1. LetA= {1, 2, 3},B = {3, 4, 5}, andR= {(1, 3),(1, 5),(3, 3)}. ThenR⊆
    A× B, soRis a relation fromAtoB.
2. LetG= {(x,y)∈R× R|x > y}. ThenGis a relation fromRtoR.
3. LetA= {1, 2} andB = P(A) = {∅,{1}, {2}, {1, 2}}. LetE = {(x,y) ∈
    A× B | x ∈y}. ThenE is a relation fromAtoB. In this case,E =
    {(1, {1}),(1,{1, 2}),(2, {2}),(2,{1, 2})}.
For the next three examples, letS be the set of all students at your school,
Rthe set of all dorm rooms,P the set of all professors, andCthe set of all
courses.
4. LetL= {(s,r)∈S× R| the studentslives in the dorm roomr}. ThenL
    is a relation fromStoR.
5. LetE= {(s,c)∈S×C | the studentsis enrolled in the coursec}. Then
    Eis a relation fromStoC.
6. LetT = {(c,p)∈C×P | the coursecis taught by the professorp}. Then
    T is a relation fromCtoP.

So far we have concentrated mostly on developing your proof-writing skills.
Another important skill in mathematics is the ability to understand and apply


```
Relations 183
```
new definitions. Here are the definitions for several new concepts involving
relations. We’ll soon give examples illustrating these concepts, but first see if
you can understand the concepts based on their definitions.

**Definition 4.2.3.** SupposeRis a relation fromAtoB. Then the _domain_ ofR
is the set

```
Dom(R)= {a∈A| ∃b∈B((a,b)∈R)}.
```
The _range_ ofRis the set

```
Ran(R) = {b∈B | ∃a∈A((a,b) ∈R)}.
```
The _inverse_ ofRis the relationR− 1fromB toAdefined as follows:

```
R− 1= {(b,a)∈B×A|(a,b)∈R}.
```
Finally, supposeRis a relation fromAtoB andSis a relation fromB toC.
Then the _composition_ ofSandRis the relationS◦RfromAtoCdefined as
follows:

```
S◦R= {(a,c)∈A× C| ∃b∈B((a,b) ∈Rand(b,c)∈S)}.
```
Notice that we have assumed that the second coordinates of pairs inRand the
first coordinates of pairs inSboth come from the same setB, because that is
the situation in which we will most often be interested inS◦R. However, this
restriction is not really necessary, as we ask you to show in exercise 15.

According to Definition 4.2.3, the domain of a relation fromAtoB is the
set containing all the first coordinates of ordered pairs in the relation. This
will in general be a subset ofA, but it need not be all ofA. For example,
consider the relationLfrom part 4 of Example 4.2.2, which pairs up students
with the dorm rooms in which they live. The domain ofLwould contain all
students who appear as the first coordinate in some ordered pair inL– in other
words, all students who live in some dorm room – but would not contain, for
example, students who live in apartments off campus. Working it out more
carefully from the definition as stated, we have

```
Dom(L)= {s∈S| ∃r∈R((s,r)∈L)}
= {s∈S| ∃r∈R(the studentslives in the dorm roomr)}
= {s∈S| the studentslives in some dorm room}.
```
Similarly, the range of a relation is the set containing all the second coordinates
of its ordered pairs. For example, the range of the relationLwould be the


184 _Relations_
set of all dorm rooms in which some student lives. Any dorm rooms that are
unoccupied would not be in the range ofL.
The inverse of a relation contains exactly the same ordered pairs as the
original relation, but with the order of the coordinates of each pair reversed.
Thus, in the case of the relationL, if Joe Smith lives in room 213 Davis Hall,
then(Joe Smith, 213 Davis Hall)∈Land(213 Davis Hall, Joe Smith)∈L− 1.
In general, for any studentsand dorm roomr, we would have(r,s) ∈L− 1
iff(s,r) ∈L. For another example, consider the relationGfrom part 2 of
Example 4.2.2. It contains all ordered pairs of real numbers(x,y)in whichx
is greater thany. We might call it the “greater-than” relation. Its inverse is
G− 1= {(x,y)∈R× R|(y,x)∈G}
= {(x,y)∈R× R|y > x}
= {(x,y)∈R× R|x < y}.
In other words, the inverse of the greater-than relation is the less-than
relation!
The most difficult concept introduced in Definition 4.2.3 is the concept of
the composition of two relations. For an example of this concept, consider the
relationsE andT from parts 5 and 6 of Example 4.2.2. Recall thatE is a
relation from the setSof all students to the setCof all courses, andT is a
relation fromCto the setP of all professors. According to Definition 4.2.3,
the compositionT ◦Eis the relation fromStoPdefined as follows:
T ◦E= {(s,p)∈S×P | ∃c∈C((s,c)∈Eand(c,p)∈T )}
= {(s,p)∈S×P | ∃c∈C(the studentsis enrolled in the coursec
and the coursecis taught by the professorp)}
= {(s,p)∈S×P | the studentsis enrolled in some course taught
by the professorp}.
Thus, if Joe Smith is enrolled in Biology 12 and Biology 12 is taught by Prof.
Evans, then(Joe Smith, Biology 12)∈E and(Biology 12, Prof. Evans)∈T,
and therefore(Joe Smith, Prof. Evans) ∈ T ◦ E. In general, ifs is some
particular student andpis a particular professor, then(s,p)∈T ◦Eiff there
is some coursecsuch that(s,c)∈Eand(c,p)∈T. This notation may seem
backward at first. If(s,c)∈Eand(c,p) ∈T, then you might be tempted to
write(s,p) ∈E◦T, but according to our definition, the proper notation is
(s,p) ∈T ◦E. The reason we’ve chosen to write compositions of relations
in this way will become clear in Chapter 5. For the moment, you’ll just have
to be careful about this notational detail when working with compositions of
relations.


```
Relations 185
```
**Example 4. 2. 4.** LetS,R,C, andP be the sets of students, dorm rooms,
courses, and professors at your school, as before, and letL,E, andT be
the relations defined in parts 4–6 of Example 4.2.2. Describe the following
relations.

1. E− 1.
2. E◦L− 1.
3. E− 1◦E.
4. E◦E− 1.
5. T ◦(E◦L− 1).
6. (T ◦E)◦L− 1.

_Solutions_

1. E− 1= {(c,s)∈C× S |(s,c) ∈E} = {(c,s)∈C× S| the studentsis
    enrolled in the coursec}. For example, if Joe Smith is enrolled in Biology
    12, then(Joe Smith, Biology 12)∈Eand(Biology 12, Joe Smith)∈E− 1.
2. BecauseL− 1is a relation fromR toS andEis a relation fromS toC,
    E◦L− 1will be the relation fromRtoCdefined as follows.

```
E◦L− 1= {(r,c)∈R×C| ∃s∈S((r,s)∈L− 1and(s,c)∈E)}
= {(r,c)∈R×C| ∃s∈S((s,r)∈Land(s,c)∈E)}
= {(r,c)∈R×C| ∃s∈S(the studentslives in the dorm
roomrand is enrolled in the coursec)}
= {(r,c)∈R×C| some student who lives in the roomr
is enrolled in the coursec}.
```
```
Returning to our favorite student Joe Smith, who is enrolled in Biology
12 and lives in room 213 Davis Hall, we have(213 Davis Hall, Joe Smith)∈
L− 1 and(Joe Smith, Biology 12) ∈ E. According to the definition of
composition, it follows that(213 Davis Hall, Biology 12)∈E◦L− 1.
```
3. BecauseE is a relation fromStoCandE− 1is a relation fromCtoS,
    E− 1◦Eis the relation fromStoSdefined as follows.

```
E− 1◦E= {(s,t)∈S×S| ∃c∈C((s,c)∈Eand(c,t)∈E− 1)}
= {(s,t)∈S×S| ∃c∈C(the studentsis enrolled in the
coursec, and so is the studentt)}
= {(s,t)∈S×S| there is some course that the studentss
andtare both enrolled in}.
```

186 _Relations_

```
(Note that an arbitrary element ofS×Sis written(s,t), not(s,s), because
we don’t want to assume that the two coordinates are equal.)
```
4. This is not the same as the last example! BecauseE− 1is a relation fromC
    toSandEis a relation fromStoC,E◦E− 1is a relation fromCtoC. It
    is defined as follows.
       E◦E− 1= {(c,d)∈C×C| ∃s∈S((c,s)∈E− 1and(s,d)∈E)}
          = {(c,d)∈C×C| ∃s∈S(the studentsis enrolled in the
             coursec, and he or she is also enrolled in the coursed)}
= {(c,d)∈C×C| there is some student who is enrolled in
both of the coursescandd}.
5. We saw in part 2 thatE◦L− 1is a relation fromRtoC, andT is a relation
    fromCtoP, soT◦(E◦L− 1)is the relation fromRtoPdefined as follows.
    T ◦(E◦L− 1)= {(r,p)∈R× P | ∃c∈C((r,c)∈E◦L− 1and
       (c,p)∈T )}
= {(r,p)∈R× P | ∃c∈C(some student who lives in the
roomris enrolled in the coursec, andcis taught by
the professorp)}
= {(r,p)∈R× P | some student who lives in the roomr
is enrolled in some course taught by the professorp}.
6. (T ◦E)◦L− 1= {(r,p)∈R×P | ∃s∈S((r,s)∈L− 1and

```
(s,p)∈T ◦E)}
= {(r,p)∈R×P | ∃s∈S(the studentslives in the
roomr, and is enrolled in some course taught by
the professorp)}
= {(r,p)∈R×P | some student who lives in the roomr
is enrolled in some course taught by the professorp}.
```
Notice that our answers for parts 3 and 4 of Example 4.2.4 were different, so
composition of relations is not commutative. However, our answers for parts
5 and 6 turned out to be the same. Is this a coincidence, or is it true in general
that composition of relations is associative? Often, looking at examples of a
new concept will suggest general rules that might apply to it. Although one
counterexample is enough to show that a rule is incorrect, we should never
accept a rule as correct without a proof. The next theorem summarizes some
of the basic properties of the new concepts we have introduced.


```
Relations 187
```
**Theorem 4. 2. 5.** _Suppose_ R _is a relation from_ A _to_ B _,_ S _is a relation from_ B
_to_ C _, and_ T _is a relation from_ C _to D. Then:_

_1._ (R− 1)− 1= R_.
2._ Dom(R− 1)= Ran(R)_.
3._ Ran(R− 1)= Dom(R)_.
4._ T ◦(S◦R)= (T ◦S)◦R_.
5._ (S◦R)− 1= R− 1◦S− 1_._

_Proof._ We will prove 1, 2, and half of 4, and leave the rest as exercises. (See
exercise 7.)

1. First of all, note thatR− 1is a relation fromBtoA, so(R− 1)− 1is a relation
    fromAtoB, just likeR. To see that(R− 1)− 1= R, let(a,b)be an arbitrary
    ordered pair inA×B. Then
       (a,b)∈(R− 1)− 1iff(b,a)∈R− 1iff(a,b)∈R.
2. First note that Dom(R− 1)and Ran(R)are both subsets ofB. Now letbbe
    an arbitrary element ofB. Then
       b∈Dom(R− 1)iff∃a∈A((b,a) ∈R− 1)
          iff∃a∈A((a,b) ∈R)iffb∈Ran(R).
4. ClearlyT ◦(S◦R)and(T ◦S) ◦Rare both relations fromAtoD. Let
    (a,d)be an arbitrary element ofA×D.
       First, suppose(a,d)∈T◦(S◦R). By the definition of composition, this
    means that we can choose somec∈Csuch that(a,c)∈S◦Rand(c,d)∈
    T. Since(a,c) ∈S◦R, we can again use the definition of composition
    and choose someb∈B such that(a,b) ∈Rand(b,c) ∈S. Now since
    (b,c)∈Sand(c,d)∈T, we can conclude that(b,d)∈T ◦S. Similarly,
    since(a,b) ∈Rand(b,d)∈T ◦S, it follows that(a,d)∈(T ◦S)◦R.
       Now suppose(a,d)∈(T◦S)◦R. A similar argument, which is left to
    the reader, shows that(a,d)∈T◦(S◦R). Thus,T◦(S◦R)= (T◦S)◦R.
       ±

_Commentary._ Statement 1 means∀p(p ∈(R− 1)− 1↔p∈R), so the proof
should proceed by introducing an arbitrary objectpand then provingp ∈
(R− 1)− 1 ↔p ∈R. But becauseRand(R− 1)− 1are both relations fromA
toB, we could think of the universe over whichpranges as beingA×B, so
pmust be an ordered pair. Thus, in the preceding proof we’ve written it as
an ordered pair(a,b) from the start. The proof of the biconditional statement
(a,b) ∈(R− 1)− 1 ↔ (a,b) ∈R uses the method, introduced in Example
3.4.5, of stringing together a sequence of equivalences.


188 _Relations_

The proofs of statements 2 and 4 are similar, except that the biconditional
proof for statement 4 cannot easily be done by stringing together equivalences,
so we prove the two directions separately. Only one direction was proven. The
key to this proof is to recognize that the given(a,d) ∈T◦(S◦R)is an exis-
tential statement, since it means∃c∈C((a,c)∈S◦Rand(c,d) ∈T ), so we
should introduce a new variablecinto the proof to stand for some element ofC
such that(a,c)∈S◦Rand(c,d)∈T. Similarly,(a,c)∈S◦Ris an existential
statement, so it suggests introducing the variableb. Once these new variables
have been introduced, it is easy to prove the goal(a,d)∈(T ◦S)◦R.

Statement 5 of Theorem 4.2.5 perhaps deserves some comment. First of all,
notice that the right-hand side of the equation isR− 1◦S− 1, _not_ S− 1◦R− 1; the
order of the relations has been reversed. You are asked to prove statement 5 in
exercise 7, but it might be worthwhile to try an example first. We’ve already
seen that, for the relationsEandT from parts 5 and 6 of Example 4.2.2,

```
T ◦E= {(s,p)∈S×P | the studentsis enrolled in some course
taught by the professorp}.
```
It follows that

(T ◦E)− 1= {(p,s)∈P ×S| the studentsis enrolled in some course
taught by the professorp}.
To computeE− 1◦T− 1, first note thatT− 1is a relation fromP toCand
E− 1is a relation fromCtoS, soE− 1◦T− 1is a relation fromP toS. Now,
applying the definition of composition, we get

```
E− 1◦T− 1= {(p,s)∈P×S | ∃c∈C((p,c)∈T− 1and(c,s)∈E− 1)}
= {(p,s)∈P×S | ∃c∈C((c,p)∈T and(s,c)∈E)}
= {(p,s)∈P×S | ∃c∈C(the coursecis taught by the
professorpand the studentsis enrolled in the coursec)}
= {(p,s)∈P×S | the studentsis enrolled in some course
taught by the professorp}.
```
Thus,(T ◦E)− 1= E− 1◦T− 1.

```
Exercises
```
```
*1. Find the domains and ranges of the following relations.
(a) {(p,q)∈P ×P | the personpis a parent of the personq}, where
P is the set of all living people.
(b) {(x,y)∈R^2 |y > x^2 }.
```

```
Relations 189
```
2. Find the domains and ranges of the following relations.
    (a) {(p,q)∈P×P | the personpis a brother of the personq},
       wherePis the set of all living people.
    (b) {(x,y)∈R^2 |y^2 = 1 − 2/(x^2 + 1)}.
3. LetLandEbe the relations defined in parts 4 and 5 of Example 4.2.2.
    Describe the following relations:
    (a) L− 1◦L.
    (b) E◦(L− 1◦L).
4. LetEandT be the relations defined in parts 5 and 6 of Example 4.2.2.
    Also, as in that example, letCbe the set of all courses at your school,
    and let D = {Monday, Tuesday, Wednesday, Thursday, Friday }. Let
    M = {(c,d) ∈C× D | the coursecmeets on the dayd}. Describe
    the following relations:
    (a) M◦E.
    (b) M◦T− 1.
*5. Suppose thatA= {1, 2, 3},B = {4, 5, 6},R= {(1, 4),(1, 5),(2, 5),(3, 6)},
andS= {(4, 5),(4, 6),(5, 4),(6, 6)}. Note thatRis a relation fromAto
B andSis a relation fromB toB. Find the following relations:
(a) S◦R.
(b) S◦S− 1.
6. Suppose thatA= {1, 2, 3},B = {4, 5},C= {6, 7, 8},R= {(1, 7),(3, 6),
    (3, 7)}, andS = {(4, 7),(4, 8),(5, 6)}. Note thatRis a relation fromA
    toCandSis a relation fromBtoC. Find the following relations:
    (a) S− 1◦R.
    (b) R− 1◦S.
7. (a) Prove part 3 of Theorem 4.2.5 by imitating the proof of part 2 in the
    text.
    (b) Give an alternative proof of part 3 of Theorem 4.2.5 by showing that
       it follows from parts 1 and 2.
    (c) Complete the proof of part 4 of Theorem 4.2.5.
    (d) Prove part 5 of Theorem 4.2.5.
*8. LetE = {(p,q) ∈P × P | the personpis an enemy of the person
q}, andF = {(p,q) ∈ P × P | the personp is a friend of the
personq}, whereP is the set of all people. What does the saying “an
enemy of one’s enemy is one’s friend” mean about the relations E
andF?
9. SupposeRis a relation fromAtoBandSis a relation fromB toC.
    (a) Prove that Dom(S◦R)⊆Dom(R).
    (b) Prove that if Ran(R) ⊆Dom(S)then Dom(S◦R)= Dom(R).
    (c) Formulate and prove similar theorems about Ran(S◦R).


```
190 Relations
```
10. SupposeRandSare relations fromAtoB. Must the following state-
    ments be true? Justify your answers with proofs or counterexamples.
    (a)R⊆Dom(R)× Ran(R).
(b) IfR⊆SthenR− 1⊆S− 1.
(c)(R∪S)− 1= R− 1∪S− 1.
*11. SupposeRis a relation fromAtoB andSis a relation fromB toC.
Prove thatS◦R= ∅iff Ran(R) and Dom(S)are disjoint.
PD12. SupposeRis a relation fromAtoB andSandT are relations fromB

```
toC.
(a) Prove that(S◦R)\ (T◦R)⊆(S\T )◦R.
(b) What’s wrong with the following proof that(S\T )◦R⊆(S◦R)\
(T ◦R)?
Proof. Suppose(a,c) ∈(S \ T )◦R. Then we can choose some
b ∈B such that(a,b) ∈R and(b,c) ∈S \ T, so(b,c) ∈S
and(b,c) /∈T. Since(a,b) ∈R and(b,c) ∈S,(a,c) ∈S ◦R.
Similarly, since(a,b)∈Rand(b,c) /∈T,(a,c) /∈T ◦R. Therefore
(a,c)∈(S◦R)\(T ◦R). Since(a,c)was arbitrary, this shows that
(S\T )◦R⊆(S◦R)\(T ◦R). ±
(c) Must it be true that(S\ T )◦R⊆ (S◦R)\ (T ◦R)? Justify your
answer with either a proof or a counterexample.
```
13. SupposeRandSare relations fromAtoB andT is a relation fromB
    toC. Must the following statements be true? Justify your answers with
    proofs or counterexamples.
    (a) IfRandSare disjoint, then so areR− 1andS− 1.
(b) IfRandSare disjoint, then so areT ◦RandT ◦S.
(c) IfT ◦RandT◦Sare disjoint, then so areRandS.
PD14. SupposeRis a relation fromAtoB, andSandT are relations fromB

```
toC. Must the following statements be true? Justify your answers with
proofs or counterexamples.
(a) IfS ⊆T thenS◦R⊆T◦R.
(b) (S∩T )◦R⊆(S◦R)∩(T ◦R).
(c)(S∩T )◦R=(S◦R)∩(T ◦R).
(d) (S∪T )◦R=(S◦R)∪(T ◦R).
```
15. SupposeRis a relation fromAtoB andS is a relation fromCtoD.
    Show that there is a setEsuch thatRis a relation fromAtoEandSis a
    relation fromEtoD, and therefore the definition ofS◦Rin Definition
    4.2.3 can be applied. Furthermore, the definition gives the same result
    no matter which such setEis used.


```
More About Relations 191
```
## 4.3 More About Relations

Although we have defined relations to be sets of ordered pairs, it is sometimes
useful to be able to think about them in other ways. Often even a small change
in notation can help us see things differently. One alternative notation that
mathematicians sometimes use with relations is motivated by the fact that in
mathematics we often express a relationship between two objectsxandyby
putting some symbol between them. For example, the notationsx= y,x < y,
x∈y, andx⊆yexpress four important mathematical relationships between
xandy. Imitating these notations, ifRis a relation fromAtoB,x ∈A, and
y∈B, mathematicians sometimes writexRy to mean(x,y)∈R.
For example, ifLis the relation defined in part 4 of Example 4.2.2, then
for any studentsand dorm roomr,sLr means(s,r) ∈L, or in other words,
the studentslives in the dorm roomr. Similarly, ifEandT are the relations
defined in parts 5 and 6 of Example 4.2.2, thensEc means that the students
is enrolled in the coursec, andcTp means that the coursecis taught by the
professorp. The definition of composition of relations could have been stated
by saying that ifRis a relation fromAtoB andSis a relation fromB toC,
thenS◦R= {(a,c)∈A× C| ∃b∈B(aRb andbSc)}.
Another way to think about relations is to draw pictures of them. Figure 4.1
shows a picture of the relationR = {(1, 3),(1, 5),(3, 3)} from part 1 of
Example 4.2.2. Recall that this was a relation from the setA= {1, 2, 3} to the
setB = {3, 4, 5}. In the figure, each of these sets is represented by an oval, with
the elements of the set represented by dots inside the oval. Each ordered pair
(a,b) ∈Ris represented by an arrow from the dot representingato the dot
representingb. For example, there is an arrow from the dot insideAlabeled 1
to the dot insideBlabeled 5 because the ordered pair(1, 5)is an element ofR.
In general, any relationRfrom a setAto a setBcan be represented by such
a picture. The dots representing the elements ofA andB in such a picture
are called _vertices_ , and the arrows representing the ordered pairs inR are
called _edges_. It doesn’t matter exactly how the vertices representing elements
ofA andB are arranged on the page; what’s important is that the edges
correspond precisely to the ordered pairs inR. Drawing these pictures may
help you understand the concepts discussed in the last section. For example,
you should be able to convince yourself that you could find the domain of
Rby locating those vertices inAthat have edges pointing away from them.
Similarly, the range ofRwould consist of those elements ofBwhose vertices
have edges pointing toward them. For the relationRshown in Figure 4.1, we
have Dom(R) = {1, 3} and Ran(R) = {3, 5}. A picture ofR− 1would look
just like a picture ofRbut with the directions of all the arrows reversed.


192 _Relations_

```
Figure 4.1.
```
Pictures illustrating the composition of two relations are a little harder to
understand. For example, consider again the relationsEandT from parts
5 and 6 of Example 4.2.2. Figure 4.2 shows what part of both relations
might look like. (The complete picture might be quite large if there are many
students, courses, and professors at your school.) We can see in this picture
that, for example, Joe Smith is taking Biology 12 and Math 21, that Biology
12 is taught by Prof. Evans, and that Math 21 is taught by Prof. Andrews.
Thus, applying the definition of composition, we can see that the pairs (Joe
Smith, Prof. Evans) and (Joe Smith, Prof. Andrews) are both elements of the
relationT◦E.

```
Joe Smith
```
### S

### E

### C P

### T

```
Biology 12 Prof. Evans
```
```
Prof. Lewis
Prof. Andrews
```
```
English 24
Math 21
```
```
Math 13
```
```
Peter Jones
```
Mary Edwards

```
Figure 4.2.
```
To see more clearly how the compositionT◦Eis represented in this picture,
first note that for any students, coursec, and professorp, there is an arrow


```
More About Relations 193
```
fromstociffsEc, and there is an arrow fromctopiffcT p. Thus, according
to the definition of composition,

```
T ◦E= {(s,p)∈S×P | ∃c∈C(sEc andcT p)}
= {(s,p)∈S×P | ∃c∈C(in Figure 4.2, there is an arrow
fromstocand an arrow fromctop)}
= {(s,p)∈S×P | in Figure 4.2, you can get fromstopin
two steps by following the arrows}.
```
For example, starting at the vertex labeled Mary Edwards, we can get to Prof.
Andrews in two steps (going by way of either Math 21 or Math 13), so we can
conclude that(Mary Edwards, Prof. Andrews)∈T ◦E.
In some situations we draw pictures of relations in a slightly different way.
For example, ifAis a set andR⊆A×A, then according to Definition 4.2.1,
Rwould be called a relation fromAtoA. Such a relation is also sometimes
called a _relation on_ A(or a _binary relation on_ A). Relations of this type come
up often in mathematics; in fact, we have already seen a few of them. For
example, we described the relationGin part 2 of Example 4.2.2 as a relation
fromRtoR, but in our new terminology we could call it a relation (or a binary
relation) onR. The relationE− 1◦Efrom Example 4.2.4 was a relation on the
setS, andE◦E− 1was a relation onC.

**Example 4. 3. 1.** Here are some more examples of relations on sets.

1. LetA = {1, 2} andB = P(A) = {∅,{1}, {2}, {1, 2}}as in part 3 of
    Example 4.2.2. Let
       S= {(x,y)∈B× B|x⊆y}
          = {(∅,∅),(∅,{1}),(∅,{2}),(∅, {1, 2}),({1},{1}),({1},{1, 2}),
             ({2},{2}),({2}, {1, 2}),({1, 2},{1, 2})}.
    ThenSis a relation onB.
2. SupposeAis a set. LetiA = {(x,y) ∈A× A | x = y}. TheniAis
    a relation onA. (It is called the _identity relation_ onA.) For example, if
    A = {1, 2, 3}, theniA= {(1, 1),(2, 2),(3, 3)}. Note thatiAcould also be
    defined by writingiA= {(x,x)|x∈A}.
3. For each positive real numberr, letDr= {(x,y)∈R×R|xandydiffer
    by less thanr, or in other words |x−y|< r}. ThenDris a relation onR.

SupposeRis a relation on a setA. If we used the method described earlier
to draw a picture ofR, then we would have to draw two copies of the setA


194 _Relations_

and then draw edges from one copy ofAto the other to represent the ordered
pairs inR. An easier way to draw the picture would be to draw just one copy
ofAand then connect the vertices representing the elements ofAwith edges
to represent the ordered pairs inR. For example,Figure 4.3 shows a picture of
the relationSfrom part 1 of Example 4.3.1. Pictures like the one in Figure 4.3
are called _directed graphs_.

```
Figure 4.3.
```
Note that in this directed graph there is an edge from∅to itself, because
(∅,∅)∈S. Edges such as this one that go from a vertex to itself are called
_loops_. In fact, in Figure 4.3 there is a loop at every vertex, becauseShas the
property that∀x∈B((x,x)∈S). We describe this situation by saying thatS
is _reflexive_.

**Definition 4.3.2.** SupposeRis a relation onA.

1. Ris said to be _reflexive on_ A(or just _reflexive_ , ifAis clear from context) if
    ∀x∈A(xRx), or in other words∀x∈A((x,x)∈R).
2. Ris _symmetric_ if∀x∈A∀y∈A(xRy →yRx).
3. Ris _transitive_ if∀x∈A∀y∈A∀z∈A((xRy ∧yRz) →xRz).

As we saw in Example 4.3.1, ifRis reflexive onA, then the directed graph
representingRwill have loops at all vertices. IfRis symmetric, then whenever
there is an edge fromxtoy, there will also be an edge fromytox. Ifxand
yare distinct, it follows that there will be two edges connectingxandy, one
pointing in each direction. Thus, ifRis symmetric, then all edges except loops


```
More About Relations 195
```
will come in such pairs. IfRis transitive, then whenever there is an edge from
xtoyandytoz, there is also an edge fromxtoz.

**Example 4. 3. 3.** Is the relationGfrom part 2 of Example 4.2.2 reflexive?
Is it symmetric? Transitive? Are the relations in Example 4.3.1 reflexive,
symmetric, or transitive?

_Solution_

Recall that the relationGfrom Example 4.2.2 is a relation onRand that for
any real numbersxandy,xGy meansx > y. Thus, to say thatGis reflexive
would mean that∀x∈R(xGx), or in other words∀x∈R(x > x), and this is
clearly false. To say thatGis symmetric would mean that∀x∈R∀y∈R(x >
y→ y > x), and this is also clearly false. Finally, to say thatGis transitive
would mean that∀x∈R∀y∈R∀z∈R((x > y∧y > z)→x > z), and this
is true. Thus,Gis transitive, but not reflexive or symmetric.
The analysis of the relations in Example 4.3.1 is similar. For the relation
Sin part 1 we use the fact that for anyxandyinB,xSy meansx ⊆y. As
we have already observed,Sis reflexive, since∀x ∈B(x ⊆x), but it is not
true that∀x ∈B∀y∈B(x ⊆y → y ⊆x). For example, {1} ⊆ {1, 2}, but
{1, 2}±{1}. You can see this in Figure 4.3 by noting that there is an edge from
{1}to {1, 2}but not from {1, 2}to {1}. Thus,Sis not symmetric.Sis transitive,
because the statement∀x∈B∀y∈B∀z∈B((x ⊆y∧y⊆z)→x⊆z)is
true.
For any setA the identity relationiAwill be reflexive, symmetric, and
transitive, because the statements∀x∈A(x = x),∀x∈A∀y∈A(x = y→
y= x), and∀x∈A∀y∈A∀z∈A((x =y∧y= z)→x= z)are all clearly
true. Finally, supposeris a positive real number and consider the relationDr.
For any real numberx, |x−x| = 0< r, so(x,x)∈Dr. Thus,Dris reflexive.
Also, for any real numbersxandy, |x−y| = |y−x|, so if |x− y|< rthen
|y−x|< r. Therefore, if(x,y)∈Drthen(y,x)∈Dr, soDris symmetric.
ButDris not transitive. To see why, letxbe any real number. Lety= x+ 2r/ 3
andz= y+ 2r/3 = x+ 4r/3. Then |x−y| = 2r/ 3 < rand |y−z| = 2r/ 3 < r,
but |x − z| = 4r/ 3 > r. Thus, (x,y) ∈ Dr and (y,z) ∈ Dr, but
(x,z) ∈/Dr.

Perhaps you’ve already guessed that the properties of relations defined in
Definition 4.3.2 are related to the operations defined in Definition 4.2.3. To
say that a relationRis symmetric involves reversing the roles of two variables
in a way that may remind you of the definition ofR− 1. The definition of


196 _Relations_

transitivity of a relation involves stringing together two ordered pairs, just as
the definition of composition of relations does. The following theorem spells
these connections out more carefully.

**Theorem 4. 3. 4.** _Suppose_ R _is a relation on a set_ A_._

_1._ R _is reflexive iff_ iA⊆R _, where as before_ iA _is the identity relation on_ A_.
2._ R _is symmetric iff_ R= R− 1_.
3._ R _is transitive iff_ R◦R⊆R_._

_Proof._ We will prove 2 and leave the proofs of 1 and 3 as exercises (see
exercises 7 and 8).
2.(→) SupposeR is symmetric. Let(x,y)be an arbitrary element of
R. ThenxRy, so sinceR is symmetric,yRx. Thus,(y,x) ∈R, so by the
definition ofR− 1,(x,y) ∈R− 1. Since(x,y)was arbitrary, it follows that
R⊆R− 1.
Now suppose(x,y) ∈R− 1. Then(y,x) ∈R, so sinceRis symmetric,
(x,y)∈R. Thus,R− 1⊆R, soR= R− 1.
(←)SupposeR= R− 1, and letxandybe arbitrary elements ofA. Suppose
xRy. Then(x,y)∈R, so sinceR= R− 1,(x,y)∈R− 1. By the definition of
R− 1this means(y,x)∈R, soyRx. Thus,∀x∈A∀y∈A(xRy →yRx), so
Ris symmetric. ±

_Commentary._ This proof is fairly straightforward. The statement to be proven
is an iff statement, so we prove both directions separately. In the → half we
must prove thatR = R− 1, and this is done by proving bothR ⊆ R− 1and
R− 1⊆R. Each of these goals is proven by taking an arbitrary element of the
first set and showing that it is in the second set. In the ← half we must prove
thatRis symmetric, which means∀x∈A∀y∈A(xRy →yRx). We use the
obvious strategy of lettingxandybe arbitrary elements ofA, assumingxRy,
and provingyRx.

```
Exercises
```
```
*1. LetL = {a, b, c, d, e} andW = {bad, bed, cab}. LetR = {(l,w) ∈
L×W | the letterloccurs in the wordw}. Draw a diagram (like the one
in Figure 4.1) ofR.
```
2. LetA = {cat, dog, bird, rat}, and letR = {(x,y) ∈A× A | there
    is at least one letter that occurs in both of the wordsx andy}. Draw


```
More About Relations 197
a directed graph (like the one in Figure 4.3) for the relationR. IsR
reflexive? Symmetric? Transitive?
*3. LetA = {1, 2, 3, 4}. Draw a directed graph foriA, the identity relation
onA.
```
4. List the ordered pairs in the relations represented by the directed graphs
    in Figure 4.4. Determine whether each relation is reflexive, symmetric,
    or transitive.

```
Figure 4.4.
```
```
*5. Figure 4.5 shows two relationsRandS. FindS◦R.
```
6. Supposerandsare two positive real numbers. LetDrandDsbe defined
    as in part 3 of Example 4.3.1. What isDr◦Ds? Justify your answer with
    a proof. (Hint: In your proof, you may find it helpful to use the triangle
    inequality; see exercise 13(c) of Section 3.5.)
*7. Prove part 1 of Theorem 4.3.4.
8. Prove part 3 of Theorem 4.3.4.
9. SupposeAandB are sets.
(a) Show that for every relationRfromAtoB,R◦iA=R.
(b) Show that for every relationRfromAtoB,iB◦R=R.
*10. SupposeSis a relation onA. LetD= Dom(S)andR= Ran(S). Prove
thatiD⊆S− 1◦SandiR⊆S◦S− 1.
11. SupposeRis a relation onA. Prove that ifRis reflexive thenR⊆R◦R.


198 _Relations_

```
Figure 4.5.
```
12. SupposeRis a relation onA.
    (a) Prove that ifRis reflexive, then so isR− 1
(b) Prove that ifRis symmetric, then so isR− 1.
(c) Prove that ifRis transitive, then so isR− 1.
*13. SupposeR 1 andR 2 are relations onA. For each part, give either a proof
or a counterexample to justify your answer.
(a) IfR 1 andR 2 are reflexive, mustR 1 ∪R 2 be reflexive?
(b) IfR 1 andR 2 are symmetric, mustR 1 ∪R 2 be symmetric?
(c) IfR 1 andR 2 are transitive, mustR 1 ∪R 2 be transitive?
14. SupposeR 1 andR 2 are relations onA. For each part, give either a proof
    or a counterexample to justify your answer.
    (a) IfR 1 andR 2 are reflexive, mustR 1 ∩R 2 be reflexive?
(b) IfR 1 andR 2 are symmetric, mustR 1 ∩R 2 be symmetric?
(c) IfR 1 andR 2 are transitive, mustR 1 ∩R 2 be transitive?
15. SupposeR 1 andR 2 are relations onA. For each part, give either a proof
    or a counterexample to justify your answer.
    (a) IfR 1 andR 2 are reflexive, mustR 1 \R 2 be reflexive?
(b) IfR 1 andR 2 are symmetric, mustR 1 \R 2 be symmetric?
(c) IfR 1 andR 2 are transitive, mustR 1 \R 2 be transitive?
16. SupposeRandSare reflexive relations onA. Prove thatR◦Sis reflexive.
*17. SupposeR andS are symmetric relations onA. Prove thatR◦S is
symmetric iffR◦S = S◦R.
18. SupposeRandSare transitive relations onA. Prove that ifS◦R⊆R◦S
    thenR◦Sis transitive.
19. Consider the following putative theorem.


```
More About Relations 199
Theorem? Suppose R is a relation on A , and define a relation S on
P(A) as follows:
S= {(X,Y)∈P(A)× P(A) | ∃x∈X∃y∈Y(xRy)}.
If R is transitive, then so is S.
```
(a) What’s wrong with the following proof of the theorem?
_Proof._ SupposeRis transitive. Suppose(X,Y)∈Sand(Y,Z)∈S.
Then by the definition ofS,xRy andyRz, wherex ∈X,y ∈Y,
andz∈Z. SincexRy,yRz, andRis transitive,xRz. But then since
x∈Xandz∈Z, it follows from the definition ofSthat(X,Z)∈S.
Thus,Sis transitive. ±
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
*20. SupposeRis a relation onA. LetB = {X ∈P(A) | X ±= ∅}, and
define a relationSonBas follows:
S= {(X,Y)∈B ×B | ∀x∈X∀y∈Y(xRy)}.
Prove that ifRis transitive, then so isS. Why did the empty set have to
be excluded from the setBto make this proof work?

21. SupposeR is a relation on A, and define a relationS onP(A) as
    follows:
       S = {(X,Y)∈P(A)×P(A) | ∀x∈X∃y∈Y(xRy)}.
    For each part, give either a proof or a counterexample to justify your
    answer.
    (a) IfRis reflexive, mustSbe reflexive?
    (b) IfRis symmetric, mustSbe symmetric?
    (c) ifRis transitive, mustSbe transitive?
22. Consider the following putative theorem:

```
Theorem? Suppose R is a relation on A. If R is symmetric and
transitive, then R is reflexive.
```
```
Is the following proof correct? If so, what proof strategies does it use? If
not, can it be fixed? Is the theorem correct?
Proof. Letxbe an arbitrary element ofA. Letybe any element ofA
such thatxRy. SinceRis symmetric, it follows thatyRx. But then by
transitivity, sincexRy andyRx we can conclude thatxRx. Sincexwas
arbitrary, we have shown that∀x∈A(xRx) , soRis reflexive. ±
```

200 _Relations_

*23. This problem was suggested by Professor William Zwicker of Union
College, NY. SupposeAis a set, andF ⊆P(A). LetR = {(a,b) ∈
A×A | for everyX ⊆A\ {a,b}, ifX∪ {a} ∈FthenX∪ {b} ∈F}.
Show thatRis transitive.

24. LetR= {(m,n)∈N×N| |m−n| ≤ 1}, which is a relation onN. Note
    thatR⊆Z×Z, soRis also a relation onZ. This exercise will illustrate
    why, in part 1 of Definition 4.3.2, we defined the phrase “Ris reflexive
    onA,” rather than simply “Ris reflexive.”
    (a) IsRreflexive onN?
(b) IsRreflexive onZ?

## 4.4 Ordering Relations

Consider the relationL= {(x,y) ∈R× R|x≤ y}. You should be able to
check for yourself that it is reflexive and transitive, but not symmetric. It fails
to be symmetric in a rather extreme way because there are many pairs(x,y)
such thatxLy is true butyLx is false. In fact, the only wayxLy andyLx can
both be true is ifx≤ yandy≤ x, and thusx= y. We therefore say thatLis
_antisymmetric_. Here is the general definition.

**Definition 4.4.1.** SupposeRis a relation on a setA. ThenRis said to be
_antisymmetric_ if∀x∈A∀y∈A((xRy ∧yRx) →x= y).

We have already seen a relation with many of the same properties asL.
Look again at the relationSdefined in part 1 of Example 4.3.1. Recall that in
that example we letA= {1, 2},B = P(A), andS= {(x,y)∈B×B |x⊆
y}. Thus, ifxandyare elements ofB, thenxSy meansx⊆y. We checked in
the last section thatSis reflexive and transitive, but not symmetric. In fact,S
is also antisymmetric, because for any setsxandy, ifx⊆yandy⊆xthen
x= y. You may find it useful to look back at Figure 4.3 in the last section,
which shows the directed graph representingS.
Intuitively,L andS are both relations that have something to do with
comparing the sizes of two objects. Each of the statementsx≤ yandx⊆y
can be thought of as saying that, in some sense,yis “at least as large as”x.
You might say that each of these statements specifies what _order_ xandycome
in. This motivates the following definition.

**Definition 4.4.2.** SupposeRis a relation on a setA. ThenRis called a _partial
order on_ A(or just a _partial order_ ifAis clear from context) if it is reflexive,


```
Ordering Relations 201
```
transitive, and antisymmetric. It is called a _total order on_ A(or just a _total
order_ ) if it is a partial order, and in addition it has the following property:

```
∀x∈A∀y∈A(xRy ∨yRx).
```
The relationsLandSjust considered are both partial orders.Sis not a total
order, because it is not true that∀x∈B∀y∈B(x ⊆y∨y⊆x). For example,
if we letx = {1} andy= {2}, thenx±yandy±x. Thus, although we can
think of the relationSas indicating a sense in which one element ofBmight
be at least as large as another, it does not give us a way of comparing _every_
pair of elements ofB. For some pairs, such as {1}and {2},Sdoesn’t pick out
either one as being at least as large as the other. This is the sense in which the
ordering is _partial_. On the other hand,Lis a total order, because ifxandy
are any two real numbers, then eitherx≤ yory≤ x. Thus,Ldoes give us a
way of comparing _any_ two real numbers.

**Example 4. 4. 3.** Which of the following relations are partial orders? Which
are total orders?

1. LetAbe any set, and letB = P(A)andS= {(x,y)∈B ×B |x⊆y}.
2. LetA= {1, 2}andB = P(A) as before. Let

```
R= {(x,y)∈B×B |yhas at least as many elements asx}
= {(∅,∅),(∅, {1}),(∅,{2}),(∅,{1, 2}),({1},{1}),({1}, {2}),
({1},{1, 2}),({2},{1}),({2},{2}),({2}, {1, 2}),({1, 2},{1, 2})}.
```
3. D= {(x,y)∈Z+×Z+ |xdividesy}.
4. G= {(x,y)∈R× R|x≥ y}.

_Solutions_

1. This is just a generalization of one of the examples discussed earlier, and
    it is easy to check that it is a partial order. As long asAhas at least two
    elements, it will not be a total order. To see why, just note that ifaandb
    are distinct elements ofA, then {a} and {b} are elements ofB for which
    {a}±{b}and {b}±{a}.
2. Note that({1},{2})∈Rand({2}, {1})∈R, but of course {1} ±= {2}. Thus,
    Ris not antisymmetric, so it is not a partial order. AlthoughRwas defined
    by picking out pairs(x,y)in whichyis, in a certain sense, at least as large
    asx, it does not satisfy the definition of partial order. This example shows
    that our description of partial orders as relations that indicate a sense in
    which one object is at least as large as another should not be taken too


202 _Relations_

```
seriously. This was the motivation for the definition of partial order, but it
is not the definition itself.
```
3. Clearly every positive integer is divisible by itself, soDis reflexive. Also,
    as we showed in Theorem 3.3.7, ifx | yandy | zthenx | z. Thus, if
    (x,y) ∈Dand(y,z) ∈Dthen(x,z) ∈D, soDis transitive. Finally,
    suppose(x,y)∈Dand(y,x)∈D. Thenx| yandy| x, and becausex
    andyare positive it follows thatx≤ yandy≤ x, sox= y. Thus,Dis
    antisymmetric, so it is a partial order. It is easy to find examples illustrating
    thatDis not a total order. For example,(3, 5) ∈/Dand(5, 3) ∈/D.
       Perhaps you were surprised to discover thatDis a partial order. It doesn’t
    seem to involve comparing the sizes of things, like the other partial orders
    we’ve seen. But we have shown that it does share with these other relations
    the important properties of reflexivity, transitivity, and antisymmetry. In
    fact, this is one of the reasons for formulating definitions such as Definition
    4.4.2. They help us to see similarities between things that, on the surface,
    might not seem similar at all.
4. You should be able to check for yourself thatGis a total order. Notice
    that in this case it seems more reasonable to think ofxGy as meaning
    thatyis as least as _small_ asxrather than at least as _large_. The definition
    of partial order, though motivated by thinking about orderings that go in
    one direction, actually applies to orderings in either direction. In fact, this
    example might lead you to conjecture that ifRis a partial order onA, then
    so isR− 1. You are asked to prove this conjecture in exercise 13.

So far we have always used letters as the names for our relations, but some-
times mathematicians represent relations with symbols rather than letters. For
example, in part 4 of Example 4.4.3 we used the letterGas the name for a
relation. But in that example, for all real numbersx andy,xGy meant the
same thing asx ≥ y. This suggests that we didn’t really need to introduce
the letterG; we could simply have treated the symbol ≥ as the name for the
relation. Using this notation, we could say that ≥ is a total order onR.
Here’s another example of a partial order. LetA be the set of all words
in English, and letR = {(x,y) ∈ A× A | all the letters in the wordx
appear, consecutively and in the right order, in the wordy}. For example, (can,
cannot), (tar, start), and (ball, ball) are all elements ofR, but (can, anchor)
and (can, carnival) are not. You should be able to check thatRis reflexive,
transitive, and antisymmetric, soR is a partial order. Now consider the set
B = {me, men, tame, mental} ⊆A. Clearly many ordered pairs of words in
Bare in the relationR, but note in particular that the ordered pairs (me, me),
(me, men), (me, tame), and (me, mental) are all inR. If we think ofxRy as


```
Ordering Relations 203
```
meaning thatyis in some sense at least as large asx, then we could say that
the wordmeis the _smallest_ element ofB, in the sense that it is smaller than
everything else in the set.
Not every set of words will have an element that is smallest in this sense.
For example, consider the setC = {a, me, men, tame, mental} ⊆A. Each of
the words _men_ , _tame_ , and _mental_ is larger than at least one other word in the
set, but neither _a_ nor _me_ is larger than anything else in the set. We’ll call _a_
and _me minimal_ elements ofC. But note that neitheranormeis the smallest
element ofCin the sense described in the last paragraph, because neither is
smaller than the other. The setChas two minimal elements but no smallest
element.
These examples might raise a number of questions in your mind about
smallest and minimal elements. The setChas two minimal elements, butB
has only one smallest element. Can a set ever have more than one smallest
element? Until we have settled this question, we should only talk about an
object being _a_ smallest element of a set, rather than _the_ smallest element. If
a set has only one minimal element, must it be a smallest element? Can a set
have a smallest element and a minimal element that are different? Would the
answers to these questions be different if we restricted our attention to _total_
orders rather than all partial orders? Before we try to answer any of these
questions, we should state the definitions of the terms _smallest_ and _minimal_
more carefully.

**Definition 4.4.4.** SupposeRis a partial order on a setA,B ⊆A, andb∈B.
Thenbis called anR- _smallest_ element ofB(or just a _smallest_ element ifRis
clear from the context) if∀x∈B(bRx). It is called anR- _minimal_ element (or
just a _minimal_ element) if ¬∃x∈B(xRb ∧x±=b).

**Example 4.4.5.**

1. LetL= {(x,y) ∈R× R|x≤ y}, as before. LetB = {x ∈R|x ≥ 7}.
    DoesB have anyL-smallest orL-minimal elements? What about the set
    C= {x∈R|x >7}? As mentioned earlier, we could do without the letter
    Lhere and ask for ≤ -smallest or ≤ -minimal elements ofBandC.
2. Let D be the divisibility relation defined in part 3 of Example 4.4.3.
    LetB = {3, 4, 5, 6, 7, 8, 9}. DoesB have anyD-smallest orD-minimal
    elements?
3. LetS = {(X,Y ) ∈P(N)× P(N)| X ⊆Y}, which is a partial order
    on the setP(N). LetF= {X ∈P(N)| 2∈X and 3∈X}. Note that
    the elements ofF are not natural numbers, but _sets_ of natural numbers.


204 _Relations_

```
For example, {1, 2, 3} and {n ∈N| n is prime} are both elements ofF.
DoesFhave anyS-smallest orS-minimal elements? What about the set
G= {X∈P(N)| either 2∈Xor 3∈X}?
```
_Solutions_

1. Clearly 7 ≤ x for everyx ∈B, so∀x ∈B( 7 Lx) and therefore 7 is a
    smallest element ofB. It is also a minimal element, since nothing inB is
    smaller than 7, so ¬∃x∈B(xL 7 ∧x±= 7). There are no other smallest or
    minimal elements. Note that 7 is _not_ a smallest or minimal element ofC,
    since 7∈/C. According to Definition 4.4.4, a smallest or minimal element
    of a set must actually be an element of the set. In fact,Chas no smallest or
    minimal elements.
2. First of all, note that 6 and 9 are not minimal because both are divisible by
    3, and 8 is not minimal because it is divisible by 4. All the other elements
    ofBare minimal elements, but none is a smallest element.
3. The set {2, 3} is a smallest element ofF, since 2 and 3 are elements of
    every set inF, and therefore∀X ∈F({2, 3} ⊆X). It is also a minimal
    element, since no other element ofF is a subset of it, and there are no
    other smallest or minimal elements. The setGhas two minimal elements,
    {2}and {3}. Every other set inGmust contain one of these two as a subset,
    so no other set can be minimal. Neither set is smallest, since neither is a
    subset of the other.

We are now ready to answer some of the questions we raised before
Definition 4.4.4.

**Theorem 4. 4. 6.** _Suppose_ R _is a partial order on a set_ A _, and_ B ⊆A_._

_1. If_ B _has a smallest element, then this smallest element is unique. Thus, we_
    _can speak of_ **the** _smallest element of_ B _rather than_ **a** _smallest element.
2. Suppose_ b _is the smallest element of B. Then_ b _is also a minimal element of_
    B _, and it is the only minimal element.
3. If_ R _is a total order and_ b _is a minimal element of_ B _, then_ b _is the smallest_
    _element of_ B_._

_Scratch work_

These proofs are somewhat harder than earlier ones in this chapter, so we do
some scratch work before the proofs.


```
Ordering Relations 205
```
1. Of course, we start by assuming thatBhas a smallest element, and because
    this is an existential statement, we immediately introduce a name, sayb, for
    a smallest element ofB. We must prove thatbis the only smallest element.
    As we saw in Section 3.6, this can be written∀c(c is a smallest element of
    B →b= c), so our next step should be to letcbe arbitrary, assume it is
    also a smallest element, and proveb= c.
       At this point, we don’t know much aboutbandc. We know they’re both
    elements ofB, but we don’t even know what kinds of objects are inB –
    whether they’re numbers, or sets, or some other type of object – so this
    doesn’t help us much in deciding how to prove thatb= c. The only other
    fact we know aboutbandcis that they are both smallest elements ofB,
    which means∀x∈B(bRx) and∀x∈B(cRx). The most promising way to
    use these statements is to plug something in forxin each statement. What
    we plug in should be an element ofB, and we only know of two elements
    ofBat this point,bandc. Plugging in both of them in both statements, we
    getbRb,bRc,cRb, andcRc. Of course, we already knewbRb andcRc,
    sinceRis reflexive. But when you see thatbRc andcRb, you should think
    of antisymmetry. SinceR is a partial order, it is antisymmetric, so from
    bRc andcRb it follows thatb= c.
2. Our first goal is to prove thatbis a minimal element ofB, which means
    ¬∃x∈B(xRb ∧x±= b). Because this is a negative statement, it might help
    to reexpress it as an equivalent positive statement:

```
¬∃x∈B(xRb ∧x±= b)iff∀x∈B¬(xRb ∧x±= b)
iff∀x∈B(¬xRb ∨x= b)
iff∀x∈B(xRb →x= b).
```
```
Thus, to prove thatbis minimal we could letxbe an arbitrary element of
B, assume thatxRb, and provex=b.
Once again, it’s a good idea to take stock of what we know at this point
aboutbandx. We knowxRb, and we know thatbis the smallest element
ofB, which means∀x∈B(bRx). If we apply this last fact to our arbitrary
x, then as in part 1 we can use antisymmetry to complete the proof.
We still must prove thatbis the only minimal element, and as in part
1 this means∀c(c is a minimal element ofB → b= c). So we letcbe
arbitrary and assume thatcis a minimal element ofB, and we must prove
thatb= c. The assumption thatcis a minimal element ofB means that
c∈Band ¬∃x∈B(xRc ∧x±= c), but as before, we can reexpress this last
statement in the equivalent positive form∀x∈B(xRc →x= c). To use
this statement we should plug in something forx, and because our goal is
```

206 _Relations_

```
to show thatb= c, plugging inbforxseems like a good idea. This gives
usbRc →b= c, so if only we could showbRc, we could complete the
proof by using modus ponens to conclude thatb= c. But we knowbis the
smallest element ofB, so of coursebRc is true.
```
3. Of course, we start by assuming thatRis a total order andbis a minimal
    element ofB. We must prove thatbis the smallest element ofB, which
    means∀x ∈B(bRx), so we letxbe an arbitrary element ofB and try to
    provebRx.
       We know from examples we’ve looked at that minimal elements in
    _partial_ orders are not always smallest elements, so the assumption that
    Ris a _total_ order must be crucial. The assumption thatRis total means
    ∀x ∈A∀y ∈A(xRy ∨yRx), so to use it we should plug in something
    forxandy. The only likely candidates for what to plug in areband our
    arbitrary objectx, and plugging these in we getxRb ∨bRx. Our goal is
    bRx, so this certainly looks like progress. If only we could rule out the
    possibility thatxRb, we’d be done. So let’s see if we can prove ¬xRb.
       Because this is a negative statement, we try proof by contradiction.
    SupposexRb. What given statement can we contradict? The only given
    we haven’t used yet is the fact thatbis minimal, and since this is a negative
    statement, it is the natural place to look for a contradiction. To contradict
    the fact thatbis minimal, we should try to show that∃x∈B(xRb ∧x±= b).
    But we’ve already assumedxRb, so if we could showx±=bwe’d be done.
       You should try provingx ±= bat this point. You won’t get anywhere.
    The fact is, we started out by lettingxbe an arbitrary element ofB, and
    this means that it could be any element ofB, includingb. We then assumed
    thatxRb, but sinceRis reflexive, this still doesn’t rule out the possibility
    thatx= b. There really isn’t any hope of provingx ±= b. We seem to be
    stuck.
       Let’s review our overall plan for the proof. We needed to show ∀x ∈
    B(bRx) , so we letxbe an arbitrary element ofB, and we’re trying to show
    bRx. We’ve now run into problems because of the possibility thatx= b.
    But if our ultimate goal is to provebRx, then the possibility thatx = b
    really isn’t a problem after all. SinceRis reflexive, ifx= bthen of course
    bRx will be true!
       Now, how should we structure the final write-up of the proof? It appears
    that our reasoning to establishbRx will have to be different depending on
    whether or notx= b. This suggests _proof by cases_. In case 1 we assume
    thatx= b, and use the fact thatRis reflexive to complete the proof. In case
    2 we assume thatx ±= b, and then we can use our original line of attack,
    starting with the fact thatRis total.


```
Ordering Relations 207
```
_Proof._

1. Supposebis a smallest element ofB, and supposecis also a smallest
    element ofB. Sincebis a smallest element,∀x∈B(bRx) , so in particular
    bRc. Similarly, sincec is a smallest element,cRb. But now sinceR is
    a partial order, it must be antisymmetric, so from bRc andcRb we can
    concludeb= c.
2. Letxbe an arbitrary element ofBand suppose thatxRb. Sincebis the
    smallest element ofB, we must havebRx, and now by antisymmetry it
    follows thatx= b. Thus, there can be nox∈Bsuch thatxRb andx±= b,
    sobis a minimal element.
       To see that it is the only one, supposecis also a minimal element. Since
    bis the smallest element ofB,bRc. But then sincecis minimal we must
    haveb= c. Thusbis the only minimal element ofB.
3. SupposeRis a total order andbis a minimal element ofB. Letx be an
    arbitrary element ofB. Ifx = b, then sinceR is reflexive,bRx. Now
    supposex±= b. SinceRis a total order, we know that eitherxRb orbRx.
    ButxRb can’t be true, since by combiningxRb with our assumption that
    x ±= bwe could conclude thatbis not minimal, thereby contradicting
    our assumption that it is minimal. Thus,bRx must be true. Sincexwas
    arbitrary, we can conclude that∀x∈B(bRx), sobis the smallest element
    ofB. ±
When comparing subsets of some set A, mathematicians often use the
partial orderS = {(X,Y)∈P(A) × P(A) |X ⊆Y}, although this is not
always made explicit. Recall that ifF ⊆P(A) andX ∈F, then according
to Definition 4.4.4,X is theS-smallest element ofFiff∀Y ∈F(X ⊆Y). In
other words, to say that an element ofFis the smallest element means that it is
a subset of every element ofF. Similarly, mathematicians sometimes talk of a
set being the smallest one with a certain property. Generally this means that the
set has the property in question, and furthermore it is a subset of every set that
has the property. For example, we might describe our conclusion in part 3 of
Example 4.4.5 by saying that {2, 3}is the smallest setX⊆Nwith the property
that 2∈Xand 3∈X. We will see more examples of this idea in later chapters.

**Example 4. 4. 7.**

1. Find the smallest set of real numbersX such that 5∈X and for all real
    numbersxandy, ifx∈Xandx < ytheny∈X.
2. Find the smallest set of real numbersXsuch thatX ±= ∅and for all real
    numbersxandy, ifx∈Xandx < ytheny∈X.


208 _Relations_

_Solutions_

1. Another way to phrase the question would be to say that we are looking
    for the smallest element of the family of setsF= {X ⊆R| 5∈X and
    ∀x∀y((x ∈X∧x < y)→y∈X)}, where it is understood that _smallest_
    means smallest with respect to the subset partial order. Now for any set
    X∈Fwe know that 5∈X, and we know that∀x∀y((x ∈X∧x < y)→
    y∈X). In particular, since 5∈Xwe can say that∀y( 5 < y→ y∈X).
    Thus, if we letA = {y∈R| 5 ≤ y}, then we can conclude that∀X ∈
    F(A ⊆X). But it is easy to see thatA ∈F, soAis the smallest element
    ofF.
2. We must find the smallest element of the family of setsF= {X⊆R|X±=
    ∅and∀x∀y((x ∈X∧x < y)→y∈X)}. The setA= {y ∈R| 5 ≤ y}
    from part 1 is an element ofF, but it is not the smallest element, or even
    a minimal element, because the setA³= {y∈R| 6 ≤ y} is smaller – in
    other words,A³⊆AandA³±= A. ButA³is also not the smallest element,
    sinceA³³= {y ∈R| 7 ≤ y} is still smaller. In fact, this family has no
    smallest, or even minimal, element. You’re asked to verify this in exercise
    12. This example shows that we must be careful when talking about the
    smallest set with some property. There may be no such smallest set!

You have probably already guessed how to define maximal and largest
elements in partially ordered sets. SupposeRis a partial order onA,B ⊆A,
andb∈B. We say thatbis the _largest_ element ofB if∀x ∈B(xRb) , and
it is a _maximal_ element ofB if ¬∃x ∈B(bRx ∧b ±= x). Of course, these
definitions are quite similar to the ones in Definition 4.4.4. You are asked in
exercise 14 to work out some of the connections among these ideas. Another
useful related idea is the concept of an upper or lower bound for a set.

**Definition 4.4.8.** SupposeRis a partial order onA,B⊆A, anda∈A. Then
ais called a _lower bound_ forB if∀x ∈B(aRx). Similarly, it is an _upper
bound_ forBif∀x∈B(xRa).

Note that a lower bound forBneed not be an element ofB. This is the only
difference between lower bounds and smallest elements. A smallest element
ofB is just a lower bound that is also an element ofB. For example, in part
1 of Example 4.4.5, we concluded that 7 was not a smallest element of the set
C= {x∈R|x >7}because 7∈/C. But 7 _is_ a lower bound forC. In fact, so
is every real number smaller than 7, but not any number larger than 7. Thus,
the set of all lower bounds ofCis the set {x∈R|x≤ 7}, and 7 is its largest
element. We say that 7 is the _greatest lower bound_ of the setC.


```
Ordering Relations 209
```
**Definition 4.4.9.** SupposeRis a partial order onAandB ⊆A. LetUbe the
set of all upper bounds forB, and letLbe the set of all lower bounds. IfUhas
a smallest element, then this smallest element is called the _least upper bound_
ofB. IfLhas a largest element, then this largest element is called the _greatest
lower bound_ ofB. The phrases _least upper bound_ and _greatest lower bound_
are sometimes abbreviated _l.u.b._ and _g.l.b._

**Example 4.4.10.**

1. LetL= {(x,y)∈R× R|x≤ y}, a total order onR. LetB= {1/n|n∈
    Z+} = {1, 1/2, 1/3, 1/4, 1/5,.. .} ⊆R. DoesB have any upper or lower
    bounds? Does it have a least upper bound or greatest lower bound?
2. LetAbe the set of all English words, and letRbe the partial order onA
    described after Example 4.4.3. LetB= {hold, up}. DoesBhave any upper
    or lower bounds? Does it have a least upper bound or a greatest lower
    bound?

_Solutions_

1. Clearly the largest element ofBis 1. It is also an upper bound forB, as is
    any number larger than 1. By definition, an upper bound forB must be at
    least as large as every element ofB, so in particular it must be at least as
    large as 1. Thus, no number smaller than 1 is an upper bound forB, so the
    set of upper bounds forB is {x∈R|x≥ 1}. Clearly the smallest element
    of this set is 1, so 1 is the l.u.b. ofB.
       Clearly 0 is a lower bound forB, as is any negative number. On the other
    hand, supposeais a positive number. Then for a large enough integernwe
    will have 1/n < a. (You should convince yourself that any integernlarger
    than 1/a would do.) Thus, it is not the case that∀x ∈B(a ≤ x), and
    thereforeais not a lower bound forB. So the set of all lower bounds forB
    is {x∈R|x≤ 0}, and the g.l.b. ofBis 0.
2. Clearly _holdup_ and _uphold_ are upper bounds forB. In fact, no shorter word
    could be an upper bound, so they are both minimal elements of the set of
    all upper bounds. According to part 2 of Theorem 4.4.6, a set that has more
    than one minimal element can have no smallest element, so the set of all
    upper bounds forB does not have a smallest element, and thereforeB
    doesn’t have a least upper bound.
       The words _hold_ and _up_ have no letters in common, soB has no lower
    bounds.

Notice that in part 1 of Example 4.4.10, the largest element ofBalso turned
out to be its least upper bound. You might wonder whether largest elements are


210 _Relations_

always least upper bounds and whether smallest elements are always greatest
lower bounds. You are asked to prove that they are in exercise 20. Another
interesting fact about this example is that, althoughB did not have a smallest
element, it did have a greatest lower bound. This was not a coincidence. It
is an important fact about the real numbers that _every_ nonempty set of real
numbers that has a lower bound has a greatest lower bound and, similarly,
every nonempty set of real numbers that has an upper bound has a least
upper bound. The proof of this fact is beyond the scope of this book, but it
is important to realize that it is a special fact about the real numbers; it does
not apply to all partial orders or even to all total orders. For example, the set
Bin the second part of Example 4.4.10 had upper bounds but no least upper
bound.
We end this section by looking once again at how these new concepts apply
to the subset partial order onP(A), for any setA. It turns out that in this
partial order, least upper bounds and greatest lower bounds are our old friends
unions and intersections.

**Theorem 4. 4. 11.** _Suppose_ A _is a set,_ F⊆P(A) _, and_ F±= ∅_. Then the least
upper bound of_ F _(in the subset partial order) is_

### ²

F _and the greatest lower
bound of_ F _is_

### ±

### F.

_Proof._ See exercise 23. ±

```
Exercises
```
```
*1. In each case, say whether or notRis a partial order onA. If so, is it a
total order?
(a)A= {a,b,c},R= {(a,a),(b,a),(b,b),(b,c),(c,c)}.
(b) A= R,R= {(x,y)∈R×R| |x| ≤ |y|}.
(c)A= R,R= {(x,y)∈R×R| |x|<|y| orx= y}.
```
2. In each case, say whether or notRis a partial order onA. If so, is it a
    total order?
    (a)A= the set of all words of English,R= {(x,y)∈A×A| the word
       yoccurs at least as late in alphabetical order as the wordx}.
(b) A= the set of all words of English,R= {(x,y)∈A×A| the first
letter of the wordyoccurs at least as late in the alphabet as the first
letter of the wordx}.


```
Ordering Relations 211
(c) A= the set of all countries in the world,R= {(x,y)∈A× A| the
population of the countryyis at least as large as the population of
the countryx}.
```
3. In each case find all minimal and maximal elements ofB. Also find, if
    they exist, the largest and smallest elements ofB, and the least upper
    bound and greatest lower bound ofB.
    (a) R = the relation shown in the directed graph in Figure 4.6,B =
       {2, 3, 4}.

```
Figure 4.6.
```
```
(b) R= {(x,y)∈R× R|x≤ y},B = {x∈R| 1 ≤ x <2}.
(c) R= {(x,y)∈P(N)×P(N)|x⊆y},B = {x∈P(N)|xhas at
most 5 elements}.
```
*4. SupposeRis a relation onA. You might think thatRcould not be both
antisymmetric and symmetric, but this isn’t true. Prove thatRis both
antisymmetric and symmetric iffR⊆iA.

5. SupposeRis a partial order onAandB ⊆A. Prove thatR∩(B× B)
    is a partial order onB.
6. SupposeR 1 andR 2 are partial orders onA. For each part, give either a
    proof or a counterexample to justify your answer.
    (a) MustR 1 ∩R 2 be a partial order onA?
    (b) MustR 1 ∪R 2 be a partial order onA?
7. SupposeR 1 is a partial order onA 1 ,R 2 is a partial order onA 2 , and
    A 1 ∩A 2 = ∅.
    (a) Prove thatR 1 ∪R 2 is a partial order onA 1 ∪A 2.
    (b) Prove thatR 1 ∪R 2 ∪(A 1 × A 2 )is a partial order onA 1 ∪A 2.
    (c) Suppose thatR 1 andR 2 are total orders. Are the partial orders in
       parts (a) and (b) also total orders?


212 _Relations_

```
*8. SupposeRis a partial order onAandSis a partial order onB. Define
a relationT onA× B as follows:T = {((a,b),(a³,b³)) ∈(A× B)×
(A× B)|aRa³andbSb³}. Show thatT is a partial order onA× B. If
bothRandSare total orders, willT also be a total order?
```
9. SupposeRis a partial order onAandSis a partial order onB. Define
    a relationLonA× B as follows:L= {((a,b),(a³,b³)) ∈(A× B)×
    (A×B)|aRa³, and ifa= a³thenbSb³}. Show thatLis a partial order
    onA× B. If bothRandSare total orders, willLalso be a total order?
10. SupposeRis a partial order onA. For eachx∈A, letPx = {a∈A|
aRx}. Prove that∀x∈A∀y∈A(xRy ↔Px⊆Py).
*11. LetDbe the divisibility relation defined in part 3 of Example 4.4.3. Let
B = {x∈Z|x >1}. DoesB have any minimal elements? If so, what
are they? DoesBhave a smallest element? If so, what is it?
12. Show that, as was stated in part 2 of Example 4.4.7, {X ⊆R|X ±= ∅
and∀x∀y((x ∈X∧x < y)→y∈X)} has no minimal element.
13. SupposeRis a partial order onA. Prove thatR− 1is also a partial order
onA. IfRis a total order, willR− 1also be a total order?
*14. SupposeRis a partial order onA,B⊆A, andb∈B. Exercise 13 shows
thatR− 1is also a partial order onA.
(a) Prove thatbis theR-largest element ofB iff it is theR− 1-smallest
element ofB.
(b) Prove thatbis anR-maximal element ofBiff it is anR− 1-minimal
element ofB.
15. SupposeR 1 andR 2 are partial orders onA,R 1 ⊆ R 2 ,B ⊆ A, and
b∈B.
(a) Prove that ifbis theR 1 -smallest element ofB, then it is also the
R 2 -smallest element ofB.
(b) Prove that ifbis anR 2 -minimal element ofB, then it is also an
R 1 -minimal element ofB.
16. SupposeRis a partial order onA,B ⊆A, andb∈B. Prove that ifbis
the largest element ofB, thenbis also a maximal element ofB, and it’s
the only maximal element.
*17. If a subset of a partially ordered set has exactly one minimal element,
must that element be a smallest element? Give either a proof or a
counterexample to justify your answer.
18. SupposeRis a partial order onA,B 1 ⊆ A,B 2 ⊆ A,∀x ∈B 1 ∃y ∈
B 2 (xRy), and∀x∈B 2 ∃y∈B 1 (xRy).
(a) Prove that for allx∈A,xis an upper bound ofB 1 iffxis an upper
bound ofB 2.


```
Ordering Relations 213
(b) Prove that ifB 1 andB 2 are disjoint then neither of them has a
maximal element.
```
19. Consider the following putative theorem.

```
Theorem? Suppose R is a total order on A and B ⊆A. Then every
element of B is either the smallest element of B or the largest element
of B.
```
```
(a) What’s wrong with the following proof of the theorem?
Proof. Supposeb∈B. Letxbe an arbitrary element ofB. SinceR
is a total order, eitherbRx orxRb.
Case 1.bRx. Sincexwas arbitrary, we can conclude that∀x ∈
B(bRx), sobis the smallest element ofR.
Case 2.xRb. Sincexwas arbitrary, we can conclude that∀x ∈
B(xRb), sobis the largest element ofR.
Thus,bis either the smallest element ofB or the largest element
ofB. Sincebwas arbitrary, every element ofBis either its smallest
element or its largest element. ±
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
```
20. SupposeRis a partial order onA,B⊆A, andb∈B.
    (a) Prove that ifbis the smallest element ofB, then it is also the greatest
       lower bound ofB.
    (b) Prove that ifbis the largest element ofB, then it is also the least
       upper bound ofB.
*21. SupposeRis a partial order onAandB ⊆A. LetUbe the set of all
upper bounds forB.
(a) Prove thatUis _closed upward_ ; that is, prove that ifx∈UandxRy,
theny∈U.
(b) Prove that every element ofBis a lower bound forU.
(c) Prove that ifxis the greatest lower bound ofU, thenxis the least
upper bound ofB.
22. Suppose thatRis a partial order onA,B 1 ⊆A,B 2 ⊆A,x 1 is the least
    upper bound ofB 1 , andx 2 is the least upper bound ofB 2. Prove that if
    B 1 ⊆B 2 thenx 1 Rx 2.
23. Prove Theorem 4.4.11.
*24. SupposeRis a relation onA. LetS = R∪R− 1.
(a) Show thatSis a symmetric relation onAandR⊆S.
(b) Show that ifT is a symmetric relation onAandR⊆T thenS⊆T.


214 _Relations_

```
Note that this exercise shows thatS is the smallest element of the set
F= {T ⊆A×A | R⊆T andT is symmetric}; in other words, it is
the smallest symmetric relation onAthat containsRas a subset. The
relationSis called the symmetric closure ofR.
```
25. Suppose thatR is a relation onA. LetF = {T ⊆ A× A | R ⊆
    T andT is transitive}.
    (a) Show thatF±= ∅.
(b) Show that

### ±

```
Fis a transitive relation onAandR⊆
```
### ±

### F.

```
(c) Show that
```
### ±

```
Fis the smallest transitive relation onAthat contains
Ras a subset. The relation
```
### ±

```
Fis called the transitive closure ofR.
```
26. SupposeR 1 andR 2 are relations onAandR 1 ⊆R 2.
    (a) LetS 1 andS 2 be the symmetric closures ofR 1 andR 2 , respectively.
       Prove thatS 1 ⊆S 2. (See exercise 24 for the definition of symmetric
       closure.)
(b) LetT 1 andT 2 be the transitive closures ofR 1 andR 2 , respectively.
Prove thatT 1 ⊆ T 2. (See exercise 25 for the definition of transitive
closure.)
*27. SupposeR 1 andR 2 are relations onA, and letR= R 1 ∪R 2.
(a) LetS 1 ,S 2 , andS be the symmetric closures ofR 1 ,R 2 , andR,
respectively. Prove that S 1 ∪S 2 = S. (See exercise 24 for the
definition of symmetric closure.)
(b) Let T 1 ,T 2 , and T be the transitive closures ofR 1 ,R 2 , and R,
respectively. Prove thatT 1 ∪T 2 ⊆T, and give an example to show
that it may happen thatT 1 ∪T 2 ±= T. (See exercise 25 for the
definition of transitive closure.)
28. SupposeAis a set.
    (a) Prove that ifA has at least two elements then there is no largest
       antisymmetric relation onA. In other words, there is no relationRon
       Asuch thatRis antisymmetric, and for every antisymmetric relation
       SonA,S⊆R.
(b) SupposeR is a total order onA. Prove thatRis a maximal anti-
symmetric relation onA. In other words, there is no antisymmetric
relationSonAsuch thatR⊆SandR±= S.
29. SupposeR is a relation onA. We say thatR is _irreflexive_ if∀x ∈
    A((x,x) ∈/ R).Ris called a _strict partial order_ onAif it is irreflexive
    and transitive. It is called a _strict total order_ if it is a strict partial order
    and in addition∀x ∈A∀y ∈A(xRy ∨yRx ∨x= y). (Note that the
    terminology here is somewhat misleading, because a strict partial order
    isn’t a special kind of partial order. It’s not a partial order at all, since it’s
    not reflexive!)


```
Equivalence Relations 215
(a) LetL= {(x,y)∈R×R|x < y}. Show thatLis a strict total order
onR.
(b) Show that ifRis a partial order onA, thenR\ iAis a strict partial
order onA, and ifRis a total order onA, thenR\iAis a strict total
order onA.
(c) Show that ifRis a strict partial order onA, thenR∪iAis a partial
order onA, and ifRis a strict total order onA, thenR∪iAis a total
order onA.
```
30. SupposeR is a relation onA, and letT be the transitive closure of
    R. Prove that ifR is symmetric, then so isT. (Hint: Assume thatR
    is symmetric. Prove thatR ⊆ T− 1andT− 1 is transitive. What can
    you conclude aboutT andT− 1? See exercise 25 for the definition of
    transitive closure.)

## 4.5 Equivalence Relations

We saw in Example 4.3.3 that the identity relationiA on any setA is
always reflexive, symmetric, and transitive. Relations with this combination
of properties come up often in mathematics, and they have some important
properties that we will investigate in this section. These relations are called
_equivalence relations_.

**Definition 4.5.1.** Suppose Ris a relation on a setA. ThenR is called an
_equivalence relation on_ A(or just an _equivalence relation_ ifAis clear from
context) if it is reflexive, symmetric, and transitive.

As we observed earlier, the identity relationiAon a setAis an equivalence
relation. For another example, letT be the set of all triangles, and letCbe the
relation of congruence of triangles. In other words,C= {(s,t)∈T×T | the
trianglesis congruent to the trianglet}. (Recall that a triangle is congruent
to another if it can be moved without distorting it so that it coincides with the
other.) Clearly every triangle is congruent to itself, soCis reflexive. Also, if
trianglesis congruent to trianglet, thentis congruent tos, soCis symmetric;
and ifris congruent tosandsis congruent tot, thenris congruent tot, soC
is transitive. Thus,Cis an equivalence relation onT.
As another example, letP be the set of all people, and letB = {(p,q) ∈
P × P | the personphas the same birthday as the personq}. (By “same
birthday” we mean same month and day, but not necessarily the same year.)


216 _Relations_

Everyone has the same birthday as himself or herself, soBis reflexive. Ifphas
the same birthday asq, thenqhas the same birthday asp, soB is symmetric.
And ifphas the same birthday asqandqhas the same birthday asr, thenp
has the same birthday asr, soB is transitive. ThereforeB is an equivalence
relation.
It may be instructive to look at the relationB more closely. We can think
of this relation as splitting the setP of all people into 366 categories, one for
each possible birthday. (Remember, some people were born on February 29!)
An ordered pair of people will be an element ofB if the people come from
the same category, but will not be an element ofB if the people come from
different categories. We could think of these categories as forming a family of
subsets ofP, which we could write as an indexed family as follows. First of all,
letDbe the set of all possible birthdays. In other words,D= {Jan. 1, Jan. 2,
Jan. 3,... , Dec. 30, Dec. 31}. Now for eachd ∈D, letPd= {p∈P | the
personpwas born on the dayd}. Then the familyF = {Pd | d ∈D} is
an indexed family of subsets ofP. The elements ofFare called _equivalence
classes_ for the relationB, and every person is an element of exactly one of
these equivalence classes. The relationBconsists of those pairs(p,q)∈P×
P such that the peoplepandqare in the same equivalence class. In other
words,

```
B = {(p,q)∈P ×P | ∃d∈D(p ∈Pdandq∈Pd)}
= {(p,q)∈P×P | ∃d∈D((p,q)∈Pd×Pd)}
=
```
### ³

```
d∈D
```
```
(Pd× Pd).
```
We will call the familyF a _partition_ ofP because it breaks the setP
into disjoint pieces. It turns out that every equivalence relation on a setA
determines a partition ofA, whose elements are the equivalence classes for
the equivalence relation. But before we can work out the details of why this is
true, we must define the terms _partition_ and _equivalence class_ more carefully.

**Definition 4.5.2.** SupposeAis a set andF ⊆P(A). We will say thatFis
_pairwise disjoint_ if every pair of distinct elements ofFare disjoint, or in other
words∀X∈F∀Y ∈F(X ±= Y →X∩Y = ∅). (This concept was discussed
in exercise 5 of Section 3.6.)Fis called a _partition_ ofAif it has the following
properties:

1.

### ²

### F= A.

2. Fis pairwise disjoint.
3. ∀X∈F(X ±= ∅).


```
Equivalence Relations 217
```
²For example, supposeA = {1, 2, 3, 4} and F = {{2},{1, 3},{4}}. Then
F= {2}∪{1, 3}∪{4} = {1, 2, 3, 4} =A, soFsatisfies the first clause in the
definition of partition. Also, no two sets inFhave any elements in common,
soFis pairwise disjoint, and clearly all the sets inFare nonempty. Thus,F
is a partition ofA. On the other hand, the familyG= {{1, 2}, {1, 3}, {4}}is not
pairwise disjoint, because {1, 2} ∩ {1, 3} = {1} ±= ∅, so it is not a partition of
A. The familyH= {∅,{2},{1, 3}, {4}}is also not a partition ofA, because it
fails on the third requirement in the definition.

**Definition 4.5.3.** SupposeRis an equivalence relation on a setA, andx∈A.
Then the _equivalence class of_ x _with respect to_ Ris the set

```
[x]R= {y∈A|yRx}.
```
IfRis clear from context, then we just write [x] instead of [x]R. The set of
all equivalence classes of elements ofAis calledA _modulo_ R, and is denoted
A/R. Thus,

```
A/R = {[x]R|x∈A} = {X⊆A| ∃x∈A(X = [x]R)}.
```
In the case of the same-birthday relation B, if p is any person, then
according to Definition 4.5.3,

```
[p]B= {q∈P |qBp}
= {q∈P | the personqhas the same birthday as the personp}.
```
For example, if John was born on August 10, then

```
[John]B= {q∈P | the personqhas the same birthday as John}
= {q∈P | the personqwas born on August 10}.
```
In the notation we introduced earlier, this is just the setPd, ford= August

10. In fact, it should be clear now that for any personp, if we letdbep’s
birthday, then [p]B = Pd. This is in agreement with our earlier statement
that the setsPd are the equivalence classes for the equivalence relationB.
According to Definition 4.5.3, the set of all of these equivalence classes is
calledP moduloB:

```
P/B = {[p]B|p∈P} = {Pd|d∈D}.
```
You are asked to give a more careful proof of this equation in exercise 6. As
we observed before, this family is a partition ofP.


218 _Relations_

Let’s consider one more example. LetS be the relation onRdefined as
follows:

```
S= {(x,y)∈R×R|x− y∈Z}.
```
For example,(5.73, 2.73)∈Sand(− 1.27, 2.73)∈S, since 5.73− 2.73 = 3∈
Zand − 1.27 − 2.73 = − 4∈Z, but(1.27, 2.73) ∈/ S, since 1.27 − 2.73 =
− 1.46∈/Z. Clearly for anyx∈R,x−x= 0∈Z, so(x,x)∈S, and therefore
Sis reflexive. To see thatSis symmetric, suppose(x,y)∈S. By the definition
ofS, this means thatx− y ∈Z. But theny− x= −(x− y)∈Ztoo, since
the negative of any integer is also an integer, so(y,x) ∈S. Because(x,y)
was an arbitrary element ofS, this shows thatSis symmetric. Finally, to see
thatSis transitive, suppose that(x,y) ∈S and(y,z)∈S. Thenx− y ∈Z
andy− z∈Z. Because the sum of any two integers is an integer, it follows
thatx−z= (x−y)+(y−z)∈Z, so(x,z)∈S, as required. Thus,Sis an
equivalence relation onR.
What do the equivalence classes for this equivalence relation look like? We
have already observed that(5.73, 2.73)∈Sand(−1.27, 2.73)∈S, so 5.73∈
[2.73] and − 1.27∈[2.73]. In fact, it is not hard to see what the other elements
of this equivalence class will be:

```
[2.73] = {.. .,− 1.27, − 0.27, 0.73, 1.73, 2.73, 3.73, 4.73, 5.73,.. .}.
```
In other words, the equivalence class contains all positive real numbers of the
form “ .73” and all negative real numbers of the form “− .27.” In general,
for any real numberx, the equivalence class ofxwill contain all real numbers
that differ fromxby an integer amount:

```
[x] = {.. .,x− 3,x− 2,x− 1,x,x+ 1,x+ 2,x+ 3,.. .}.
```
Here are a few facts about these equivalence classes that you might try to
prove to yourself. As you can see in the last equation,xis always an element
of [x]. If we choose any numberx∈[2.73], then [x] will be exactly the same
as [2.73]. For example, takingx= 4.73 we find that

```
[4.73] = {.. .,− 1.27, − 0.27, 0.73, 1.73, 2.73, 3.73, 4.73, 5.73,.. .} = [2.73].
```
Thus, [4.73] and [2.73] are just two different names for the same set. But if we
choosex ∈/[2.73], then [x] will be different from [2.73]. For example,

```
[1.3] = {.. .,− 1.7,− 0.7, 0.3, 1.3, 2.3, 3.3, 4.3,.. .}.
```
In fact, you can see from these equations that [1.3] and [2.73] have no elements
in common. In other words, [1.3] is actually _disjoint_ from [2.73]. In general,
for any two real numbersx andy, the equivalence classes [x] and [y] are


```
Equivalence Relations 219
```
either identical or disjoint. Each equivalence class has many different names,
but different equivalence classes are disjoint. Because [x] always containsx
as an element, every equivalence class is nonempty, and every real numberx
is in exactly one equivalence class, namely [x]. In other words, the set of all
of the equivalence classes,R/S, is a partition ofR. This is another illustration
of the fact that the equivalence classes determined by an equivalence relation
always form a partition.

**Theorem 4. 5. 4.** _Suppose_ R _is an equivalence relation on a set_ A_. Then_ A/R
_is a partition of_ A_._

The proof of Theorem 4.5.4 will be easier to understand if we first prove
a few facts about equivalence classes. Facts that are proven primarily for the
purpose of using them to prove a theorem are usually called _lemmas_.

**Lemma 4. 5. 5.** _Suppose_ R _is an equivalence relation on_ A_. Then:_

_1. For every_ x∈A _,_ x∈[x]_.
2. For every_ x∈A _and_ y∈A _,_ y∈[x] _iff_ [y] = [x]_._

_Proof._

1. Letx ∈ A be arbitrary. Since R is reflexive,xRx. Therefore, by the
    definition of equivalence class,x∈[x].
2. (→)Supposey ∈[x]. Then by the definition of equivalence class,yRx.
    Now supposez∈[y]. ThenzRy. SincezRy andyRx, by transitivity of
    Rwe can conclude thatzRx, soz∈[x]. Sincezwas arbitrary, this shows
    that [y]⊆[x].
       Now supposez ∈[x], sozRx. We already knowyRx, and sinceRis
    symmetric we can conclude thatxRy. Applying transitivity tozRx and
    xRy, we can conclude thatzRy, soz ∈[y]. Therefore [x] ⊆ [y], so
    [x]= [y].
       (←) Suppose [y] = [x]. By part 1 we know thaty ∈ [y], so since
    [y] = [x], it follows thaty∈[x]. ±

_Commentary._

1. According to the definition of equivalence classes,x ∈[x] meansxRx.
    This is what leads us to apply the fact thatRis reflexive.
2. Of course, the iff form of the goal leads us to prove both directions
    separately. For the → direction, the goal is [y] = [x], and, since [y] and [x]
    are sets, we can prove this by proving [y]⊆[x] and [x]⊆[y]. We prove


220 _Relations_

```
each of these statements by the usual method of taking an arbitrary element
of one set and proving that it is in the other. Throughout the proof we use
the definition of equivalence classes repeatedly, as we did in the proof of
statement 1.
```
_Proof of Theorem 4.5.4._ To prove thatA/R is a partition ofA, we must prove
the three properties in Definition 4.5.2. For the first, we must show that²
(A/R) = A, or in other words that

### ²

x∈A[x] = A. Now every equivalence
class inA/R is a subset ofA, so it should be clear that their union is also a
subset ofA. Thus,

### ²

(A/R) ⊆A, so all we need to show to finish the proof
is thatA⊆

### ²

(A/R). To prove this, supposex ∈A. Then by Lemma 4.5.5,
x∈[x], and of course [x]∈A/R, sox∈

### ²

```
(A/R). Thus,
```
### ²

### (A/R) = A.

To see thatA/R is pairwise disjoint, suppose thatXandYare two elements
ofA/R, andX∩Y ±= ∅. By definition ofA/R,XandY are equivalence
classes, so we must haveX = [x] andY = [y] for somex,y ∈A. Since
X∩Y ±= ∅, we can choose somezsuch thatz ∈X∩Y = [x] ∩ [y]. Now
by Lemma 4.5.5, sincez ∈[x] andz∈[y], it follows that [x] = [z] = [y].
Thus,X= Y. This shows that ifX±= Y thenX∩Y = ∅, soA/R is pairwise
disjoint.
Finally, for the last clause of the definition of partition, supposeX∈A/R.
As before, this means thatX = [x] for somex∈A. Now by Lemma 4.5.5,
x∈[x] = X, soX±= ∅, as required. ±

_Commentary._ We have given an intuitive reason why

### ²

(A/R) ⊆ A, but if
you’re not sure why this is correct, you should write out a formal proof. (You
might also want to look at exercise 16 in Section 3.3.) The proof that² A ⊆
(A/R) is straightforward.
The definition of pairwise disjoint suggests that to prove thatA/R is
pairwise disjoint we should letX andY be arbitrary elements ofA/R and
then proveX±= Y →X∩Y =∅. Recall that the statement that a set is empty
is really a negative statement, so both the antecedent and the consequent of
this conditional are negative. This suggests that it will probably be easier to
prove the contrapositive, so we assumeX∩Y ±= ∅and proveX = Y. The
givensX ∈A/R,Y ∈A/R, andX∩Y ±= ∅are all existential statements,
so we use them to introduce the variablesx,y, andz. Lemma 4.5.5 now takes
care of the proof thatX = Y as well as the proof of the final clause in the
definition of partition.

Theorem 4.5.4 shows that ifRis an equivalence relation onAthenA/R is
a partition ofA. In fact, it turns out that _every_ partition ofAarises in this way.


```
Equivalence Relations 221
```
**Theorem 4. 5. 6.** _Suppose_ A _is a set and_ F _is a partition of_ A_. Then there is an
equivalence relation_ R _on_ A _such that_ A/R = F_._

Before proving this theorem, it might be worthwhile to discuss the strategy
for the proof briefly. Because the conclusion of the theorem is an existential
statement, we should try to find an equivalence relationRsuch thatA/R = F.
Clearly for different choices ofFwe will need to chooseRdifferently, so
the definition ofR should depend onFin some way. Looking back at the
same-birthday example at the start of this section may help you see how to
proceed. Recall that in that example the equivalence relationBconsisted of all
pairs of people(p,q)such thatpandqwere in the same set in the partition
{Pd | d ∈D}. In fact, we found that we could also express this by saying
thatB =

### ²

d∈D(Pd× Pd). This suggests that in the proof of Theorem 4.5.6
we should letRbe the set of all pairs(x,y) ∈A× Asuch thatxandyare
in the same set in the partitionF. An alternative way to write this would be
R=

### ²

### X∈F(X×X).

For example, consider again the example of a partition given afterDefinition
4.5.2. In that example we hadA= {1, 2, 3, 4}andF= {{2}, {1, 3}, {4}}. Now
let’s define a relationRonAas suggested in the last paragraph. This gives us:

### R=

### ³

```
X∈F
```
### (X×X)

### = ({2} × {2})∪({1, 3} × {1, 3})∪({4} × {4})

### = {(2, 2)} ∪ {(1, 1),(1, 3),(3, 1),(3, 3)} ∪ {(4, 4)}

### = {(2, 2),(1, 1),(1, 3),(3, 1),(3, 3),(4, 4)}.

The directed graph for this relation is shown in Figure 4.7. We will let you
check thatRis an equivalence relation and that the equivalence classes are

### [2] = {2}, [1] = [3] = {1, 3}, [4] = {4}.

Thus, the set of all equivalence classes isA/R = {{2},{1, 3},{4}}, which is
precisely the same as the partitionFwe started with.
Of course, the reasoning that led us to the formulaR=

### ²

X∈F(X×X)will
not be part of the proof of Theorem 4.5.6. When we write the proof, we can
simply defineRin this way and then verify that it is an equivalence relation
onAand thatA/R = F. It may make the proof easier to follow if we once
again prove some lemmas first.


222 _Relations_

```
Figure 4.7.
```
**L** ² **emma 4. 5. 7.** _Suppose_ A _is a set and_ F _is a partition of_ A_. Let_ R =

X∈F(X× X)_. Then_ R _is an equivalence relation on_ A_. We will call_ R _the_
equivalence relation determined byF_._

_Proof._ We’ll prove thatR is reflexive and leave the rest for you to do in
exercise 8. Let² xbe an arbitrary element ofA. SinceF is a partition ofA,
F= A, sox ∈

### ²

F. Thus, we can choose someX∈Fsuch thatx∈X.
But then(x,x) ∈X× X, so(x,x) ∈

### ²

X∈F(X× X) = R. Therefore,Ris
reflexive. ±

_Commentary._ After lettingxbe an arbitrary element ofA, we must prove
(x,x)∈R. BecauseR =

### ²

X∈F(X × X), this means we must prove∃X ∈
F((x,x) ∈X×X), or in other words∃X ∈F(x ∈X). But this just means
x∈

### ²

F, so this suggests using the first clause in the definition of partition,
which says that

### ²

### F= A.

**Lemma 4. 5. 8.** _Suppose_ A _is a set and_ F _is a partition of_ A_. Let_ R _be the
equivalence relation determined by_ F_. Suppose_ X ∈F _and_ x ∈X_. Then_
[x]R= X_._

_Proof._ Supposey ∈[x]R. Then(y,x) ∈R, so by the definition ofRthere
must be someY ∈F such that(y,x) ∈Y × Y, and thereforey ∈Y and
x∈Y. Sincex∈Xandx∈Y,X∩Y ±= ∅, and sinceFis pairwise disjoint
it follows thatX = Y. Thus, sincey ∈Y,y ∈X. Sinceywas an arbitrary
element of [x]R, we can conclude that [x]R⊆X.
Now supposey ∈X. Then(y,x) ∈X× X, so(y,x)∈Rand therefore
y∈[x]R. ThusX⊆[x]R, so [x]R= X. ±


```
Equivalence Relations 223
```
_Commentary._ To prove [x]R = X we prove [x]R ⊆ XandX ⊆[x]R. For
the first we start with an arbitraryy ∈[x]Rand provey ∈X. Writing out
the definition of [² x]R we get(y,x) ∈ R, and sinceR was defined to be

Y∈F(Y × Y), this means∃Y ∈F((y,x) ∈Y × Y). Of course, since this
is an existential statement we immediately introduce the new variableY by
existential instantiation. Since this gives usy∈Y and our goal isy∈X, it is
not surprising that the proof is completed by provingY = X.
The proof thatX ⊆[x]Ralso uses the definitions of [x]RandR, but is more
straightforward.

_Proof of Theorem 4.5.6._ LetR=

### ²

X∈F(X ×X). We have already seen that
Ris an equivalence relation, so we need only check thatA/R = F. To see
this, supposeX∈A/R. This means thatX = [x] for somex∈A. SinceF
is a partition, we know that

### ²

```
F = A, sox ∈
```
### ²

F, and therefore we can
choose someY ∈F such thatx ∈Y. But then by Lemma 4.6.8, [x] = Y.
ThusX = Y ∈F, soA/R ⊆F.
Now supposeX∈F. Then sinceFis a partition,X ±= ∅, so we can choose
somex ∈X. Therefore by Lemma 4.6.8,X = [x]∈A/R, soF ⊆ A/R.
Thus,A/R = F. ±

_Commentary._ We prove thatA/R = Fby proving thatA/R ⊆FandF ⊆
A/R. For the first, we take an arbitraryX ∈A/R and prove thatX ∈F.
BecauseX ∈A/R means∃x∈A(X = [x]), we immediately introduce the
new variablexto stand for an element ofAsuch thatX= [x]. The proof that
X ∈Fnow proceeds by the slightly roundabout route of finding a setY ∈F
such thatX= Y. This is motivated by Lemma 4.5.8, which suggests a way of
showing that an element ofFis equal to [x] = X. The proof thatF⊆A/R
also relies on Lemma 4.5.8.

We have seen how an equivalence relationR on a setA can be used to
define a partitionA/R ofA and also how a partitionF ofA can be used
to define an equivalence relation

### ²

X∈F(X×X)onA. The proof of Theorem
4.5.6 demonstrates an interesting relationship between these operations. If you
start with a partition² F ofA, useFto define the equivalence relationR =

X∈F(X × X), and then useRto define a partitionA/R, then you end up
back where you started. In other words, the final partitionA/R is the same
as the original partitionF. You might wonder if the same idea would work in
the other order. In other words, suppose you start with an equivalence relation
RonA, useRto define a partitionF= A/R, and then useFto define an
equivalence relationS =

### ²

X∈F(X×X). Would the final equivalence relation
Sbe the same as the original equivalence relationR? You are asked in exercise
10 to show that the answer is yes.


224 _Relations_

We end this section by considering a few more examples of equivalence
relations. A very useful family of equivalence relations is given by the next
definition.

**Definition 4.5.9.** Supposem is a positive integer. For any integersxandy,
we will say thatxis _congruent to_ y _modulo_ m if∃k ∈Z(x− y = km). In
other words,xis congruent toymodulom iffm | (x− y). We will use the
notationx≡ y (modm)to mean thatxis congruent toymodulom.

For example, 12 ≡ 27(mod 5), since 12− 27 = − 15 =(− 3)·5. Now for
any positive integermwe can consider the relation {(x,y)∈Z× Z|x ≡ y
(modm)}. As we mentioned in the last section, mathematicians sometimes
use symbols rather than letters as names of relations. In this case, motivated
by the notation in Definition 4.5.9, we will use the symbol ≡mas our name
for this relation. Thus, for any integersxandy,x≡mymeans the same thing
asx ≡ y (modm). It turns out that this relation is another example of an
equivalence relation.

**Theorem 4.5.10.** _For every positive integer_ m _,_ ≡m _is an equivalence relation
on_ Z_._

_Proof._ We will check transitivity for ≡mand let you check reflexivity and
symmetry in exercise 11. To see that ≡mis transitive, suppose thatx≡my
andy≡mz. This means thatx≡ y (modm)andy≡z (modm), or in other
wordsm | (x− y)andm | (y− z). Therefore, by exercise 18(a) in Section
3.3,m| [(x−y)+(y−z)]. But(x−y)+ (y−z)= x−z, so it follows that
m|(x−z), and thereforex≡mz. ±

We will have more to say about these equivalence relations later in this
book, especially in Chapter 7.
Equivalence relations often come up when we want to group together
elements of a set that have something in common. For example, if you’ve
studied vectors in a previous math course or perhaps in a physics course,
then you may have been told that vectors can be thought of as arrows. But
you were probably also told that different arrows that point in the same
direction and have the same length must be thought of as representing the same
vector. Here’s a more lucid explanation of the relationship between vectors and
arrows. LetAbe the set of all arrows, and letR= {(x,y)∈A×A| the arrows
xandypoint in the same direction and have the same length}. We will let you
check for yourself thatR is an equivalence relation onA. Each equivalence
class consists of arrows that all have the same length and point in the same


```
Equivalence Relations 225
```
direction. We can now think of vectors as being represented, not by arrows,
but by equivalence classes of arrows.
Students who are familiar with computer programming may be interested
in our next example. Suppose we letP be the set of all computer programs,
and for any computer programspandqwe say thatpandqare _equivalent_
if they always produce the same output when given the same input. LetR=
{(p,q)∈P×P | the programspandqare equivalent}. It is not hard to check
thatRis an equivalence relation onP. The equivalence classes group together
programs that produce the same output when given the same input.

```
Exercises
```
```
*1. Find all partitions of the setA= {1, 2, 3}.
```
2. Find all equivalence relations on the setA= {1, 2, 3}.
*3. LetW = the set of all words in the English language. Which of the
following relations onW are equivalence relations? For those that are
equivalence relations, what are the equivalence classes?
(a) R = {(x,y) ∈W × W | the wordsx andy start with the same
letter}.
(b) S= {(x,y)∈W ×W | the wordsxandyhave at least one letter in
common}.
(c) T = {(x,y)∈W ×W | the wordsxandyhave the same number of
letters}.
4. Which of the following relations onRare equivalence relations? For
    those that are equivalence relations, what are the equivalence classes?
    (a) R= {(x,y)∈R× R|x− y∈N}.
    (b) S= {(x,y)∈R×R|x−y∈Q}.
    (c) T = {(x,y)∈R× R| ∃n∈Z(y= x·10n)}.
5. LetL be the set of all nonvertical lines in the plane. Which of the
    following relations onLare equivalence relations? For those that are
    equivalence relations, what are the equivalence classes?
    (a) R= {(k,l)∈L× L| the lineskandlhave the same slope}.
    (b) S= {(k,l)∈L×L| the lineskandlare perpendicular}.
    (c) T = {(k,l)∈L× L| k∩x= l∩xandk∩y= l∩y}, wherex
       andyare thex-axis and they-axis. (We are treating lines as sets of
       points here.)
*6. In the discussion of the same-birthday equivalence relationB following
Definition 4.5.3, we claimed thatP/B = {Pd | d ∈ D}. Give a


226 _Relations_

```
careful proof of this claim. You will find when you work out the proof
that there is an assumption you must make about people’s birthdays
(a very reasonable assumption) to make the proof work. What is this
assumption?
```
7. LetT be the set of all triangles, and letS = {(s,t) ∈T × T | the
    trianglessandtare similar}. (Recall that two triangles are similar if the
    angles of one triangle are equal to corresponding angles of the other.)
    Verify thatSis an equivalence relation.
8. Complete the proof of Lemma 4.5.7.
9. SupposeRandSare equivalence relations onAandA/R = A/S. Prove
    thatR= S.
*10. SupposeR is an equivalence relation onA. LetF = A/R, and let
S²be the equivalence relation determined byF. In other words,S =
X∈F(X×X). Prove thatS= R.
11. Let ≡mbe the “congruence modulom” relation defined in the text, for a
positive integerm.
(a) Complete the proof of Theorem 4.5.10 by showing that ≡m is
reflexive and symmetric.
(b) Find all the equivalence classes for ≡ 2 and ≡ 3. How many equiva-
lence classes are there in each case? In general how many equiva-
lence classes do you think there are for ≡m?
12. Prove that for every integer n, eithern^2 ≡ 0(mod 4)or n^2 ≡ 1
(mod 4).
*13. Supposemis a positive integer. Prove that for all integersa,a³,b, andb³,
ifa³≡ a (modm)andb³≡ b (modm)thena³+ b³≡a+b (modm)
anda³b³≡ ab (modm).
14. Suppose thatRis an equivalence relation onAandB ⊆ A. LetS =
R∩(B×B).
(a) Prove thatSis an equivalence relation onB.
(b) Prove that for allx∈B, [x]S= [x]R∩B.
15. SupposeB ⊆A, and define a relationRonP(A) as follows:

R= {(X,Y ) ∈P(A)× P(A) |X² Y ⊆B}.
(a) Prove thatRis an equivalence relation onP(A).
(b) Prove that for everyX∈P(A) there is exactly oneY ∈[X]Rsuch
thatY∩B = ∅.
*16. SupposeFis a partition ofA,Gis a partition ofB, andA andB are
disjoint. Prove thatF∪Gis a partition ofA∪B.

17. SupposeRis an equivalence relation onA,Sis an equivalence relation
    onB, andAandB are disjoint.


```
Equivalence Relations 227
(a) Prove thatR∪Sis an equivalence relation onA∪B.
(b) Prove that for allx∈A, [x]R∪S= [x]R, and for ally∈B, [y]R∪S=
[y]S.
(c) Prove that(A∪B)/(R ∪S)= (A/R) ∪(B/S).
```
18. SupposeFandGare partitions of a setA. We define a new family of
    setsF·Gas follows:
       F·G= {Z∈P(A) |Z±= ∅and∃X∈F∃Y ∈G(Z = X∩Y )}.
    Prove thatF·Gis a partition ofA.
19. LetF= {R−,R+,{0}}andG= {Z,R\Z}, and note that bothFandG
    are partitions ofR. List the elements ofF·G. (See exercise 18 for the
    meaning of the notation used here.)
*20. SupposeRandSare equivalence relations on a setA. LetT = R∩S.
(a) Prove thatT is an equivalence relation onA.
(b) Prove that for allx∈A, [x]T= [x]R∩[x]S.
(c) Prove thatA/T = (A/R) ·(A/S). (See exercise 18 for the meaning
of the notation used here.)
21. SupposeFis a partition ofAandGis a partition ofB. We define a new
    family of setsF⊗Gas follows:
       F⊗G= {Z∈P(A× B)| ∃X∈F∃Y∈G(Z = X×Y )}.

Prove thatF⊗Gis a partition ofA×B.
*22. LetF= {R−,R+,{0}}, which is a partition ofR. List the elements of
F⊗F, and describe them geometrically as subsets of thexy-plane. (See
exercise 21 for the meaning of the notation used here.)

23. SupposeR is an equivalence relation onA andS is an equivalence
    relation onB. Define a relationT onA×B as follows:

T = {((a,b),(a³,b³))∈(A×B)× (A×B)|aRa³andbSb³}.
(a) Prove thatT is an equivalence relation onA×B.
(b) Prove that ifa∈Aandb∈Bthen [(a,b)]T= [a]R× [b]S.
(c) Prove that(A ×B)/T = (A/R) ⊗(B/S). (See exercise 21 for the
meaning of the notation used here.)
*24. SupposeR and S are relations on a setA, andS is an equivalence
relation. We will say thatRis _compatible_ withSif for allx,y,x³, and
y³inA, ifxSx³andySy³thenxRy iffx³Ry³.
(a) Prove that ifRis compatible withS, then there is a unique relation
T onA/S such that for allxandyinA, [x]ST[y]SiffxRy.
(b) SupposeT is a relation onA/S and for allxandyinA, [x]ST[y]S
iffxRy. Prove thatRis compatible withS.


228 _Relations_

25. SupposeRis a relation onAandRis reflexive and transitive. (Such a
    relation is called a _preorder_ onA.) LetS= R∩R− 1.
    (a) Prove thatSis an equivalence relation onA.
(b) Prove that there is a unique relationTonA/S such that for allxand
yinA, [x]ST[y]SiffxRy. (Hint: Use exercise 24.)
    (c) Prove thatT is a partial order onA/S, whereT is the relation from
       part (b).
26. LetI= {1, 2,.. ., 100},A= P(I), andR= {(X,Y)∈A×A|Yhas
    at least as many elements asX}.
    (a) Prove thatRis a preorder onA. (See exercise 25 for the definition
       of _preorder_ .)
(b) LetS andT be defined as in exercise 25. Describe the elements of
A/S and the partial orderT. How many elements doesA/S have? Is
T a total order?
27. SupposeAis a set. IfFandGare partitions ofA, then we’ll say thatF
    _refines_ Gif∀X ∈F∃Y ∈G(X ⊆Y). LetPbe the set of all partitions of
    A, and letR= {(F,G)∈P× P|FrefinesG}.
    (a) Prove thatRis a partial order onP.
(b) Suppose thatSandT are equivalence relations onA. LetF= A/S
andG= A/T. Prove thatS⊆T iffFrefinesG.
    (c) SupposeFandGare partitions ofA. Prove thatF·Gis the greatest
       lower bound of the set {F,G}in the partial orderR. (See exercise 18
       for the meaning of the notation used here.)


## 5

Functions

## 5.1 Functions

SupposeP is the set of all people, and letH = {(p,n)∈P× N| the person
phasnchildren}. ThenHis a relation fromP toN, and it has the following
important property. For everyp ∈P, there is _exactly one_ n ∈Nsuch that
(p,n) ∈H. Mathematicians express this by saying thatH is a _function_ from
P toN.

**Definition 5.1.1.** SupposeF is a relation fromA toB. ThenF is called a
_function from_ A _to_ B if for everya∈Athere is exactly oneb∈B such that
(a,b)∈F. In other words, to say thatF is a function fromAtoBmeans:

```
∀a∈A∃!b∈B((a,b)∈F ).
```
To indicate thatF is a function fromAtoB, we will writeF :A→B.

**Example 5.1.2.**

1. LetA = {1, 2, 3},B = {4, 5, 6}, andF = {(1, 5),(2, 4),(3, 5)}. IsF a
    function fromAtoB?
2. LetA = {1, 2, 3},B = {4, 5, 6}, andG = {(1, 5),(2, 4),(1, 6)}. IsGa
    function fromAtoB?
3. LetCbe the set of all cities andN the set of all countries, and letL =
    {(c,n) ∈C× N | the citycis in the countryn}. IsLa function fromC
    toN?
4. LetP be the set of all people, and letC= {(p,q) ∈P×P | the personp
    is a parent of the personq}. IsCa function fromPtoP?
5. LetP be the set of all people, and letD= {(p,x)∈P×P(P )|x= the
    set of all children ofp}. IsDa function fromP toP(P )?

```
229
```

230 _Functions_

6. LetAbe any set. Recall thatiA= {(a,a) |a ∈A} is called the identity
    relation onA. Is it a function fromAtoA?
7. Letf = {(x,y)∈R×R|y= x^2 }. Isfa function fromRtoR?

_Solutions_

1. Yes. Note that 1 is paired with 5 in the relationF, but it is not paired with
    any other element ofB. Similarly, 2 is paired only with 4, and 3 with 5. In
    other words, each element ofAappears as the first coordinate of exactly
    one ordered pair inF. ThereforeF is a function fromAtoB. Note that
    the definition of function does _not_ require that each element ofBbe paired
    with exactly one element ofA. Thus, it doesn’t matter that 5 occurs as the
    second coordinate of two different pairs inF and that 6 doesn’t occur in
    any ordered pairs at all.
2. No.Gfails to be a function fromAtoB for two reasons. First of all, 3
    isn’t paired with any element ofB in the relationG, which violates the
    requirement that every element ofAmust be paired with some element of
    B. Second, 1 is paired with two different elements ofB, 5 and 6, which
    violates the requirement that each element ofAbe paired with _only one_
    element ofB.
3. If we make the reasonable assumption that every city is in exactly one
    country, thenLis a function fromCtoN.
4. Because some people have no children and some people have more than
    one child,Cis not a function fromP toP.
5. Yes,Dis a function fromPtoP(P ). Each personpis paired with exactly
    one setx⊆P, namely the set of all children ofp. Note that in the relation
    D, a personpis paired with the set consisting of all ofp’s children, _not_
    with the children themselves. Even ifpdoes not have exactly one child, it
    is still true that there is exactly one set that contains precisely the children
    ofpand nothing else.
6. Yes. Eacha∈Ais paired in the relationiAwith exactly one element of
    A, namelya itself. In other words,(a,a) ∈ iA, but for everya±²= a,
    (a,a±) /∈iA. Thus, we can calliAthe identity _function_ onA.
7. Yes. For each real numberxthere is exactly one value ofy, namelyy= x^2 ,
    such that(x,y)∈f.

Supposef :A → B. Ifa ∈A, then we know that there is exactly one
b∈B such that(a,b) ∈f. This uniquebis called “the value off ata,” or
“the image ofaunderf,” or “the result of applyingf toa,” or just “f ofa,”
and it is writtenf (a). In other words, for everya ∈Aandb∈B,b= f (a)


```
Functions 231
```
iff(a,b) ∈f. For example, for the functionF = {(1, 5),(2, 4),(3, 5)} in part
1 of Example 5.1.2, we could say thatF ( 1 )= 5, since(1, 5)∈F. Similarly,
F ( 2 )= 4 andF ( 3 )= 5. IfLis the function in part 3 andcis any city, then
L(c) would be the unique countryn such that(c,n) ∈L. In other words,
L(c) = the country in whichcis located. For example,L(Paris)= France.
For the functionD in part 5, we could say that for any personp,D(p) =
the set of all children ofp. IfAis any set anda ∈A, then(a,a) ∈iA, so
iA(a) = a. And iff is the function in part 7, then for every real number
x,f (x)= x^2.
A functionf from a setAto another setB is often specified by giving a
rule that can be used to determinef (a)for anya∈A. For example, ifAis
the set of all people andB = R+, then we could define a functionf fromAto
Bby the rule that for everya∈A,f (a)= a’s height in inches. Although this
definition doesn’t say explicitly which ordered pairs are elements off, we can
determine this by using our rule that for alla∈Aandb∈B,(a,b) ∈f iff
b= f (a). Thus,

```
f = {(a,b)∈A×B |b= f (a)}
= {(a,b)∈A×B |b= a’s height in inches}.
```
For example, if Joe Smith is 68 inches tall, then(Joe Smith, 68) ∈f and
f (Joe Smith)= 68.
It is often useful to think of a functionf fromAtoBas representing a rule
that associates, with eacha∈A, some corresponding objectb= f (a)∈B.
However, it is important to remember that although a function can be defined
by giving such a rule, it need not be defined in this way. Any subset ofA× B
that satisfies the requirements given in Definition 5.1.1 is a function fromA
toB.

**Example 5. 1. 3.** Here are some more examples of functions defined by rules.

1. Suppose every student is assigned an academic advisor who is a professor.
    LetSbe the set of students andPthe set of professors. Then we can define
    a functionf fromStoP by the rule that for every students,f (s)= the
    advisor ofs. In other words,
       f = {(s,p)∈S×P |p= f (s)}
          = {(s,p)∈S×P | the professorpis the academic advisor of
             the students}.
2. We can define a functiongfromZtoRby the rule that for everyx ∈Z,
    g(x) = 2x+ 3. Then


232 _Functions_

```
g= {(x,y)∈Z×R|y= g(x)}
= {(x,y)∈Z×R|y= 2x+ 3}
= {.. .,(− 2, − 1),(− 1, 1),(0, 3),(1, 5),(2, 7),.. .}.
```
3. Lethbe the function fromRtoRdefined by the rule that for everyx∈R,
    h(x) = 2x+ 3. Note that the formula forh(x) is the same as the formula
    forg(x) in part 2. However,handgare _not_ the same function. You can
    see this by noting that, for example,(π, 2π+ 3)∈hbut(π, 2π+ 3) /∈
    g, sinceπ /∈ Z. (For more on the relationship betweeng andh, see
    exercise 7(c).)

Notice that when a functionf fromAtoB is specified by giving a rule
for findingf (a), the rule must determine the value off (a)for _every_ a ∈
A. Sometimes when mathematicians are stating such a rule they don’t say
explicitly that the rule applies to alla ∈A. For example, a mathematician
might say “letf be the function fromRtoRdefined by the formulaf (x) =
x^2 + 7.” It is understood in this case that the equationf (x)=x^2 + 7 applies to
allx∈Reven though it hasn’t been said explicitly. This means that you can
plug in any real number forxin this equation, and the resulting equation will
be true. For example, you can conclude thatf ( 3 )= 3^2 + 7 = 16. Similarly, if
wis a real number, then you can writef (w) = w^2 + 7, or evenf ( 2 w− 3)=
( 2 w− 3)^2 + 7 = 4w^2 − 12w+ 16.
Because a functionf fromAtoBis completely determined by the rule for
findingf (a), two functions that are defined by equivalent rules must be equal.
More precisely, we have the following theorem:

**Theorem 5. 1. 4.** _Suppose_ f _and_ g _are functions from_ A _to_ B_. If_ ∀a ∈
A(f (a)= g(a)) _, then_ f = g_._

_Proof._ Suppose∀a∈A(f (a) = g(a)), and let(a,b)be an arbitrary element
off. Thenb = f (a). But by our assumptionf (a) = g(a), sob = g(a)
and therefore(a,b) ∈g. Thus,f ⊆g. A similar argument showsg⊆f, so
f = g. ±

_Commentary._ Becausef andgare sets, we provef = gby provingf ⊆g
andg⊆f. Each of these goals is proven by showing that an arbitrary element
of one set must be an element of the other. Note that, now that we have proven
Theorem 5.1.4, we have another method for proving that two functionsf and
gfrom a setAto another setB are equal. In the future, to provef = gwe
will usually prove∀a∈A(f (a) = g(a)) and then apply Theorem 5.1.4.


_Functions_ 233
Because functions are just relations of a special kind, the concepts intro-
duced in Chapter 4 for relations can be applied to functions as well. For
example, supposef :A→B. Thenf is a relation fromAtoB, so it makes
sense to talk about the domain off, which is a subset ofA, and the range
off, which is a subset ofB. According to the definition of function, every
element ofAmust appear as the first coordinate of some (in fact, exactly one)
ordered pair inf, so the domain off must actually be all ofA. But the range
off need not be all ofB. The elements of the range off will be the second
coordinates of all the ordered pairs inf, and the second coordinate of an
ordered pair infis what we have called the image of its first coordinate. Thus,
the range offcould also be described as the set of all images of elements ofA
underf:

```
Ran(f )= {f (a)|a∈A}.
```
For example, for the functionfdefined in part 1 of Example 5.1.3, Ran(f )=
{f (s)|s∈S} = the set of all advisors of students.
We can draw diagrams of functions in exactly the same way we drew
diagrams for relations in Chapter 4. Iff : A → B, then as before, every
ordered pair(a,b) ∈ f would be represented in the diagram by an edge
connectingatob. By the definition of function, everya ∈Aoccurs as the
first coordinate of exactly one ordered pair inf, and the second coordinate of
this ordered pair isf (a). Thus, for everya∈Athere will be exactly one edge
coming froma, and it will connectatof (a). For example, Figure 5.1 shows
what the diagram for the functionLdefined in part 3 of Example 5.1.2 would
look like.

```
Figure 5.1.
```

234 _Functions_

The definition of composition of relations can also be applied to functions.
Iff :A→ B andg :B → C, thenf is a relation fromAtoB andgis a
relation fromBtoC, sog◦f will be a relation fromAtoC. In fact, it turns
out thatg◦f is a function fromAtoC, as the next theorem shows.

**Theorem 5. 1. 5.** _Suppose_ f :A→B _and_ g:B →C_. Then_ g◦f :A→C _,
and for any_ a∈A _, the value of_ g◦f _at_ a _is given by the formula_ (g◦f )(a)=
g(f (a))_._

_Scratch work_

Before proving this theorem, it might be helpful to discuss the scratch work for
the proof. According to the definition of function, to show thatg◦f :A→C
we must prove that∀a ∈A∃!c ∈C((a,c) ∈g ◦f ), so we will start out
by lettingabe an arbitrary element ofA and then try to prove that∃!c ∈
C((a,c)∈g◦f ). As we saw in Section 3.6, we can prove this statement by
proving existence and uniqueness separately. To prove existence, we should
try to find ac∈Csuch that(a,c)∈g◦f. For uniqueness, we should assume
that(a,c 1 )∈g◦f and(a,c 2 )∈g◦f, and then try to prove thatc 1 = c 2.

_Proof._ Letabe an arbitrary element ofA. We must show that there is a unique
c∈Csuch that(a,c)∈g◦f.
Existence: Letb= f (a) ∈B. Letc = g(b) ∈C. Then(a,b) ∈f and
(b,c) ∈g, so by the definition of composition of relations,(a,c) ∈g◦f.
Thus,∃c∈C((a,c)∈g◦f ).
Uniqueness: Suppose(a,c 1 ) ∈g◦f and(a,c 2 )∈g◦f. Then by the
definition of composition, we can chooseb 1 ∈B such that(a,b 1 )∈f and
(b 1 ,c 1 ) ∈g, and we can also chooseb 2 ∈B such that(a,b 2 ) ∈f and
(b 2 ,c 2 )∈g. Sincef is a function, there can be only oneb ∈B such that
(a,b) ∈f. Thus, since(a,b 1 )and(a,b 2 )are both elements off, it follows
thatb 1 = b 2. But now applying the same reasoning tog, since(b 1 ,c 1 )∈g
and(b 1 ,c 2 )= (b 2 ,c 2 )∈g, it follows thatc 1 = c 2 , as required.
This completes the proof thatg◦f is a function fromAtoC. Finally, to
derive the formula for(g ◦f )(a), note that we showed in the existence half
of the proof that for anya ∈A, if we letb = f (a) andc = g(b), then
(a,c)∈g◦f. Thus,

```
(g◦f )(a)= c= g(b) = g(f (a)). ±
```
When we first introduced the idea of the composition of two relations
in Chapter 4, we pointed out that the notation was somewhat peculiar and
promised to explain the reason for the notation in this chapter. We can


```
Functions 235
```
now provide this explanation. The reason for the notation we’ve used for
composition of relations is that it leads to the convenient formula(g◦f )(x)=
g(f (x)) derived in Theorem 5.1.5. Note that because functions are just
relations of a special kind, everything we have proven about composition of
relations applies to composition of functions. In particular, by Theorem 4.2.5,
we know that composition of functions is associative.

**Example 5. 1. 6.** Here are some examples of compositions of functions.

1. LetCandN be the sets of all cities and countries, respectively, and let
    L:C→ N be the function defined in part 3 of Example 5.1.2. Thus, for
    every cityc,L(c) = the country in whichc is located. LetB be the set
    of all buildings located in cities, and defineF : B → Cby the formula
    F(b) = the city in which the buildingbis located. ThenL◦F :B →N.
    For example,F(Eiffel Tower)= Paris, so according to the formula derived
    in Theorem 5.1.5,

```
(L◦F)(Eiffel Tower)= L(F(Eiffel Tower))
= L(Paris)= France.
```
```
In general for every buildingb∈B,
```
```
(L◦F)(b) =L(F(b)) = L(the city in whichbis located)
= the country in whichbis located.
```
```
A diagram of this function is shown in Figure 5.2.
```
```
Figure 5.2.
```

236 _Functions_

2. Letg:Z→ Rbe the function from part 2 of Example 5.1.3, which was
    defined by the formulag(x) = 2x+ 3. Letf :Z→ Zbe defined by
    the formulaf (n) = n^2 − 3n+ 1. Theng◦f :Z→ R. For example,
    f ( 2 )= 2^2 − 3 · 2 + 1 = − 1, so(g ◦f )( 2 )= g(f ( 2 ))= g(− 1)= 1. In
    general for everyn∈Z,

```
(g◦f )(n)= g(f (n)) = g(n^2 − 3n+ 1)= 2(n^2 − 3n+ 1)+ 3
= 2n^2 − 6n+ 5.
```
```
Exercises
```
```
*1. (a) LetA = {1, 2, 3},B = {4}, andf = {(1, 4),(2, 4),(3, 4)}. Isf a
function fromAtoB?
(b) LetA = {1},B = {2, 3, 4}, andf = {(1, 2),(1, 3),(1, 4)}. Isf a
function fromAtoB?
(c) LetCbe the set of all cars registered in your state, and letSbe the set
of all finite sequences of letters and digits. LetL= {(c,s)∈C×S|
the license plate number of the carciss}. IsLa function fromC
toS?
```
2. (a) Letf be the relation represented by the graph in Figure 5.3. Isf a
    function fromAtoB?

```
Figure 5.3.
```
```
(b) LetW be the set of all words of English, and letAbe the set of all
letters of the alphabet. Letf = {(w,a)∈W×A| the letteraoccurs
in the wordw}, and letg= {(w,a)∈W×A| the letterais the first
letter of the wordw}. Isfa function fromW toA? How aboutg?
```

```
Functions 237
(c) John, Mary, Susan, and Fred go out to dinner and sit at a round table.
LetP = {John, Mary, Susan, Fred}, and letR= {(p,q)∈P×P |
the personpis sitting immediately to the right of the personq}. Is
Ra function fromP toP?
*3. (a) LetA = {a,b,c},B = {a,b}, andf = {(a,b),(b,b),(c,a)}. Then
f :A→B. What aref (a),f (b), andf (c)?
(b) Letf : R→ Rbe the function defined by the formulaf (x) =
x^2 − 2x. What isf ( 2 )?
(c) Letf = {(x,n)∈R×Z|n≤ x < n+ 1}. Thenf :R→Z. What
isf (π)? What isf (−π)?
```
4. (a) LetN be the set of all countries andCthe set of all cities. LetH :
    N →Cbe the function defined by the rule that for every countryn,
    H (n) = the capital of the countryn. What isH (Italy)?
(b) LetA = {1, 2, 3} andB = P(A). LetF :B →B be the function
defined by the formulaF (X) = A\X. What isF ({1, 3})?
(c) Letf :R→R× Rbe the function defined by the formulaf (x) =
(x+ 1,x− 1). What isf ( 2 )?
*5. LetLbe the function defined in part 3 of Example 5.1.2 and letH be the
function defined in exercise 4(a). DescribeL◦H andH◦L.
6. Letf andgbe functions fromRtoRdefined by the following formulas:

```
f (x)=
```
### 1

```
x^2 + 2
```
```
, g(x) = 2x− 1.
```
```
Find formulas for(f◦g)(x) and(g◦f )(x).
*7. Supposef :A→BandC⊆A. The setf∩(C×B), which is a relation
fromCtoB, is called the restriction offtoC, and is sometimes denoted
f ²C. In other words,
f ²C= f∩(C× B).
```
```
(a) Prove thatf ²Cis a function fromCtoB and that for allc ∈C,
f (c)=(f ²C)(c).
(b) Supposeg:C→B. Prove thatg= f ²Ciffg⊆f.
(c) Letgandhbe the functions defined in parts 2 and 3 of Example
5.1.3. Show thatg= h²Z.
```
8. Supposef :A→B andg ⊆f. Prove that there is a setA±⊆Asuch
    thatg:A±→B.
9. Supposef:A→B,B ²= ∅, andA⊆A±. Prove that there is a function
    g:A±→Bsuch thatf ⊆g.
*10. Suppose thatf andgare functions fromAtoBandf ²= g. Show that
f ³ gis not a function.


238 _Functions_

11. SupposeAis a set. Show thatiAis the only relation onAthat is both an
    equivalence relation onAand also a function fromAtoA.
12. Supposef :A→Candg:B →C.
    (a) Prove that ifAandBare disjoint, thenf ∪g:A∪B →C.
(b) Prove thatf∪g:A∪B→Cifff ²(A∩B)= g²(A∩B). (See
exercise 7 for the meaning of the notation used here.)
*13. SupposeR is a relation fromA toB,S is a relation fromB toC,
Ran(R) = Dom(S)= B, andS◦R:A→C.
(a) Prove thatS:B→C.
(b) Give an example to show that it need not be the case thatR:A→B.
14. Supposef :A→B andSis a relation onB. Define a relationRonA
    as follows:
       R= {(x,y)∈A×A|(f (x),f (y))∈S}.

(a) Prove that ifSis reflexive, then so isR.
(b) Prove that ifSis symmetric, then so isR.
(c) Prove that ifSis transitive, then so isR.
*15. Supposef :A→B andRis a relation onA. Define a relationSonB
as follows:

```
S= {(x,y)∈B×B | ∃u∈A∃v∈A(f (u) = x∧f (v)= y∧(u,v)∈R)}.
```
```
Justify your answers to the following questions with either proofs or
counterexamples.
(a) IfRis reflexive, must it be the case thatSis reflexive?
(b) IfRis symmetric, must it be the case thatSis symmetric?
(c) IfRis transitive, must it be the case thatSis transitive?
```
16. SupposeAandBare sets, and letF= {f |f :A→B}. Also, suppose
    Ris a relation onB, and define a relationSonFas follows:

```
S= {(f,g)∈F×F| ∀x∈A((f (x),g(x)) ∈R)}.
```
```
Justify your answers to the following questions with either proofs or
counterexamples.
(a) IfRis reflexive, must it be the case thatSis reflexive?
(b) IfRis symmetric, must it be the case thatSis symmetric?
(c) IfRis transitive, must it be the case thatSis transitive?
```
17. SupposeAis a nonempty set andf :A→A.
    (a) Suppose there is somea∈Asuch that∀x∈A(f (x) = a). (In this
       case,f is called a _constant_ function.) Prove that for allg:A→A,
       f ◦g= f.


```
Functions 239
(b) Suppose that for allg:A→A,f◦g= f. Prove thatfis a constant
function. (Hint: What happens ifgis a constant function?)
```
18. LetF= {f |f :R→R}. LetR= {(f,g) ∈F×F| ∃a ∈R∀x >
    a(f (x) = g(x))}.
    (a) Letf :R → Randg :R→ Rbe the functions defined by the
       formulasf (x)= |x| andg(x) = x. Show that(f,g)∈R.
    (b) Prove thatRis an equivalence relation.
*19. LetF= {f | f : Z+ → R}. Forg ∈F, we define the setO(g) as
follows:

```
O(g) = {f ∈F| ∃a∈Z+∃c∈R+∀x > a(|f (x)| ≤ c|g(x)|)}.
```
```
(Iff ∈O(g), then mathematicians say that “fis big-oh ofg.”)
(a) Letf : Z+ → Randg : Z+ → Rbe defined by the formulas
f (x)= 7x+ 3 andg(x) = x^2. Prove thatf ∈O(g), butg /∈O(f ).
(b) LetS= {(f,g)∈F×F|f ∈O(g)}. Prove thatSis a preorder, but
not a partial order. (See exercise 25 of Section 4.5 for the definition
of preorder .)
(c) Supposef 1 ∈O(g) andf 2 ∈O(g), andsandtare real numbers.
Define a functionf :Z+ → Rby the formulaf (x) = sf 1 (x) +
tf 2 (x). Prove thatf ∈ O(g). (Hint: You may find the triangle
inequality helpful. See exercise 13(c) of Section 3.5.)
```
20. (a) Supposeg:A→B and letR= {(x,y)∈A× A|g(x) = g(y)}.
    Show thatRis an equivalence relation onA.
(b) SupposeRis an equivalence relation onAand letg :A → A/R
be the function defined by the formulag(x) = [x]R. Show thatR=
{(x,y)∈A×A|g(x) = g(y)}.
*21. Supposef :A→B andRis an equivalence relation onA. We will say
thatf is _compatible_ withRif∀x∈A∀y∈A(xRy →f (x) = f (y)).
(You might want to compare this exercise to exercise 24 of Section 4.5.)
(a) Suppose f is compatible with R. Prove that there is a unique
functionh:A/R →B such that for allx∈A,h([x]R)= f (x).
(b) Supposeh:A/R →B and for allx∈A,h([x]R)= f (x). Prove
thatf is compatible withR.
22. LetR = {(x,y) ∈N× N | x ≡ y (mod 5)}. Note that by Theorem
    4.5.10 and exercise 14 in Section 4.5,Ris an equivalence relation onN.
    (a) Show that there is a unique functionh:N/R → N/Rsuch that for
       every natural numberx,h([x]R)= [x^2 ]R. (Hint: Use exercise 21.)
    (b) Show that there is no functionh:N/R →N/R such that for every
       natural numberx,h([x]R)= [2x]R.


240 _Functions_

## 5.2 One-to-One and Onto

In the last section we saw that the composition of two functions is again a
function. What about inverses of functions? Iff :A→B, thenf is a relation
fromAtoB, sof− 1is a relation fromB toA. Is it a function fromB toA?
We’ll answer this question in the next section. As we will see, the answer
hinges on the following two properties of functions.

**Definition 5.2.1.** Supposef :A→B. We will say thatf is _one-to-one_ if

```
¬∃a 1 ∈A∃a 2 ∈A(f (a 1 )= f (a 2 )∧a 1 ²= a 2 ).
```
We say thatf _maps onto_ B (or just _is onto_ ifBis clear from context) if

```
∀b∈B∃a∈A(f (a) = b).
```
One-to-one functions are sometimes also called _injections_ , and onto functions
are sometimes called _surjections_.

Note that our definition of one-to-one starts with the negation symbol ¬. In
other words, to say thatfis one-to-one means that a certain situation does _not_
occur. The situation that must not occur is that there are two different elements
of the domain off,a 1 anda 2 , such thatf (a 1 ) = f (a 2 ). This situation is
illustrated in Figure 5.4(a). Thus, the function in Figure 5.4(a) is not one-to-
one. Figure 5.4(b) shows a function that is one-to-one.

```
(a)f is not one-to-one. (b)f is one-to-one.
```
```
Figure 5.4.
```

_One-to-One and Onto_ 241
Iff :A → B, then to say thatf is onto means that every element ofB
is the image underf of some element ofA. In other words, in the diagram
off, every element ofB has an edge pointing to it. Neither of the functions
in Figure 5.4 is onto, because in both cases there are elements ofB without
edges pointing to them. Figure 5.5 shows two functions that are onto.

```
(a)fis onto but not one-to-one. (b)f is both one-to-one and onto.
```
```
Figure 5.5.
```
**Example 5. 2. 2.** Are the following functions one-to-one? Are they onto?

1. The functionF from part 1 of Example 5.1.2.
2. The functionLfrom part 3 of Example 5.1.2.
3. The identity functioniA, for any setA.
4. The functiongfrom part 2 of Example 5.1.3.
5. The functionhfrom part 3 of Example 5.1.3.

_Solutions_

1. F is not one-to-one becauseF ( 1 )= 5 = F ( 3 ). It is also not onto, because
    6 ∈Bbut there is noa∈Asuch thatF (a) = 6.
2. Lis not one-to-one because there are many pairs of different citiesc 1 and
    c 2 for whichL(c 1 )= L(c 2 ). For example,L(Chicago)= United States =
    L(Seattle). To say thatLis onto means that∀n∈N∃c∈C(L(c) = n), or
    in other words, for every countrynthere is a citycsuch that the citycis
    located in the countryn. This is probably true, since it is unlikely that there
    is a country that contains no cities at all. Thus,Lis probably onto.


242 _Functions_

3. To decide whetheriAis one-to-one we must determine whether there are
    two elementsa 1 anda 2 ofAsuch thatiA(a 1 )= iA(a 2 )anda 1 ²= a 2. But
    as we saw in Section 5.1, for everya∈A,iA(a) = a, soiA(a 1 )= iA(a 2 )
    meansa 1 = a 2. Thus, there cannot be elementsa 1 anda 2 ofAsuch that
    iA(a 1 )= iA(a 2 )anda 1 ²= a 2 , soiAis one-to-one.
       To say thatiAis onto means that for everya∈A,a = iA(b)for some
    b∈A. This is clearly true because, in fact,a= iA(a). ThusiAis also onto.
4. As in solution 3, to decide whetherg is one-to-one, we must determine
    whether there are integersn 1 andn 2 such thatg(n 1 )= g(n 2 )andn 1 ²= n 2.
    According to the definition ofg, we have

```
g(n 1 )= g(n 2 )iff 2n 1 + 3 = 2n 2 + 3
iff 2n 1 = 2n 2
iffn 1 = n 2.
```
```
Thus there can be no integersn 1 andn 2 for whichg(n 1 )= g(n 2 )andn 1 ²=
n 2. In other words,gis one-to-one. However,gis not onto because, for
example, there is no integernfor whichg(n) = 0. To see why, supposen
is an integer andg(n)= 0. Then by the definition ofgwe have 2n+ 3 = 0,
son= − 3/2. But this contradicts the fact thatnis an integer. Note that the
domain ofgisZ, so forgto be onto it must be the case that for every real
numberythere is an integer nsuch thatg(n) = y. Since we have seen that
there is no integernsuch thatg(n) = 0, we can conclude thatgis not onto.
```
5. This function is both one-to-one and onto. The verification thathis one-to-
    one is very similar to the verification in solution 4 thatgis one-to-one, and
    it is left to the reader. To see thathis onto, we must show that∀y∈R∃x∈
    R(h(x) = y). Here is a brief proof of this statement. Letybe an arbitrary
    real number. Letx= (y− 3)/2. Theng(x) = 2x+ 3 = 2·((y− 3)/ 2 )+ 3 =
    y− 3 + 3 =y. Thus,∀y∈R∃x∈R(h(x) = y), sohis onto.

Although the definition of one-to-one is easiest to understand when it is
stated as a negative statement, as in Definition 5.2.1, we know from Chapter
3 that the definition will be easier to use in proofs if we reexpress it as an
equivalent positive statement. The following theorem shows how to do this. It
also gives a useful equivalence for the definition of onto.

**Theorem 5. 2. 3.** _Suppose_ f :A→B_._

_1._ f _is one-to-one iff_ ∀a 1 ∈A∀a 2 ∈A(f (a 1 )= f (a 2 )→a 1 = a 2 )_._

_2._ f _is onto iff_ Ran(f )= B_._


```
One-to-One and Onto 243
```
_Proof._

1. We use the rules from Chapters 1 and 2 for reexpressing negative state-
    ments as positive ones.
       f is one-to-one iff ¬∃a 1 ∈A∃a 2 ∈A(f (a 1 )= f (a 2 )∧a 1 ²=a 2 )
          iff∀a 1 ∈A∀a 2 ∈A¬(f (a 1 )= f (a 2 )∧a 1 ²= a 2 )
          iff∀a 1 ∈A∀a 2 ∈A(f (a 1 )²= f (a 2 )∨a 1 = a 2 )
          iff∀a 1 ∈A∀a 2 ∈A(f (a 1 )= f (a 2 )→a 1 = a 2 ).
2. First we relate the definition of onto to the definition of range.

```
f is onto iff∀b∈B∃a∈A(f (a) = b)
iff∀b∈B∃a∈A((a,b)∈f )
iff∀b∈B(b ∈Ran(f ))
iffB ⊆Ran(f ).
Now we are ready to prove part 2 of the theorem.
(→)Supposef is onto. By the equivalence just derived we haveB ⊆
Ran(f ), and by the definition of range we have Ran(f ) ⊆ B. Thus, it
follows that Ran(f )= B.
(←) Suppose Ran(f ) = B. Then certainlyB ⊆ Ran(f ), so by the
equivalence,fis onto. ±
```
_Commentary._ It is often most efficient to write the proof of an iff statement as
a string of equivalences, if this can be done. In the case of statement 1 this is
easy, using rules of logic. For statement 2 this strategy doesn’t quite work, but
it does give us an equivalence that turns out to be useful in the proof.

**Example 5. 2. 4.** LetA=R\ {− 1}, and definef :A→Rby the formula

```
f (a)=
```
```
2 a
a+ 1
```
### .

Prove thatf is one-to-one but not onto.

_Scratch work_

By part 1 of Theorem 5.2.3, we can prove thatf is one-to-one by proving the
equivalent statement∀a 1 ∈A∀a 2 ∈A(f (a 1 )= f (a 2 )→ a 1 = a 2 ). Thus,
we leta 1 anda 2 be arbitrary elements ofA, assumef (a 1 )= f (a 2 ), and then
provea 1 = a 2. This is the strategy that is almost always used when proving
that a function is one-to-one. The remaining details of the proof involve only
simple algebra and are given later.


244 _Functions_

To show thatf is not onto we must prove ¬∀x ∈R∃a∈A(f (a) = x).
Reexpressing this as a positive statement, we see that we must prove∃x ∈
R∀a∈A(f (a) ²= x), so we should try to find a particular real numberxsuch
that∀a ∈A(f (a) ²= x). Unfortunately, it is not at all clear what value we
should use forx. We’ll use a somewhat unusual procedure to overcome this
difficulty. Instead of trying to prove thatf is not onto, let’s try to prove that
itis onto! Of course, we’re expecting that this proof won’t work, but maybe
seeing _why_ it won’t work will help us figure out what value ofxto use in the
proof thatf is _not_ onto.
To prove thatf is onto we would have to prove∀x∈R∃a∈A(f (a) = x),
so we should letxbe an arbitrary real number and try to find somea∈Asuch
thatf (a)= x. Filling in the definition off, we see that we must finda∈A
such that

```
2 a
a+ 1
```
```
= x.
```
To find this value ofa, we simply solve the equation fora:

```
2 a
a+ 1
```
```
= x ⇒ 2 a= ax+x ⇒ a(2 −x)= x ⇒ a=
```
```
x
2 −x
```
### .

Aha! The last step in this derivation wouldn’t work ifx= 2, because then
we would be dividing by 0. This is the only value ofx that seems to cause
trouble when we try to find a value ofafor whichf (a) = x. Perhapsx= 2
is the value to use in the proof thatfis _not_ onto.
Let’s return now to the proof thatf is not onto. If we letx = 2, then to
complete the proof we must show that∀a∈A(f (a) ²= 2). We’ll do this by
lettingabe an arbitrary element ofA, assumingf (a)= 2, and then trying to
derive a contradiction. The remaining details of the proof are not hard.

_Solution_

_Proof._ To see thatf is one-to-one, leta 1 anda 2 be arbitrary elements ofA
and assume thatf (a 1 )= f (a 2 ). Applying the definition off, it follows that
2 a 1 /(a 1 + 1)= 2a 2 /(a 2 + 1). Thus, 2a 1 (a 2 + 1)= 2a 2 (a 1 + 1). Multiplying
out both sides gives us 2a 1 a 2 + 2a 1 = 2a 1 a 2 + 2a 2 , so 2a 1 = 2a 2 and therefore
a 1 = a 2.
To show thatf is not onto we will prove that∀a∈A(f (a) ²= 2). Suppose
a ∈Aandf (a) = 2. Applying the definition off, we get 2a/(a + 1) =

2. Thus, 2a = 2a+ 2, which is clearly impossible. Thus, 2 ∈/ Ran(f ), so
Ran(f )²= Rand thereforef is not onto. ±


_One-to-One and Onto_ 245
As we saw in the preceding example, when proving that a functionf is one-
to-one it is usually easiest to prove the equivalent statement∀a 1 ∈A∀a 2 ∈
A(f (a 1 )= f (a 2 )→ a 1 = a 2 )given in part 1 of Theorem 5.2.3. Of course,
this is just an example of the fact that it is generally easier to prove a positive
statement than a negative one. This equivalence is also often used in proofs in
which we are _given_ that a function is one-to-one, as you will see in the proof
of part 1 of the following theorem.

**Theorem 5. 2. 5.** _Suppose_ f :A→B _and_ g:B →C_. As we saw inTheorem
5.1.5 , it follows that_ g◦f :A→C_._

_1. If_ f _and_ g _are both one-to-one, then so is_ g◦f_.
2. If_ f _and_ g _are both onto, then so is_ g◦f_._

_Proof._

1. Supposef andgare both one-to-one. Leta 1 anda 2 be arbitrary elements
    ofAand suppose that(g ◦f )(a 1 )= (g ◦f )(a 2 ). By Theorem 5.1.5 this
    means thatg(f (a 1 )) = g(f (a 2 )). Sincegis one-to-one it follows that
    f (a 1 )= f (a 2 ), and similarly sincef is one-to-one we can then conclude
    thata 1 = a 2. Thus,g◦f is one-to-one.
2. Supposef andgare both onto, and letcbe an arbitrary element ofC. Since
    gis onto, we can find someb∈B such thatg(b) = c. Similarly, sincef
    is onto, there is somea ∈A such thatf (a) = b. Then(g ◦ f )(a) =
    g(f (a)) = g(b) = c. Thus,g◦f is onto. ±

_Commentary._

1. As in Example 5.2.4, we prove thatg◦ f is one-to-one by proving that
    ∀a 1 ∈A∀a 2 ∈A((g ◦f )(a 1 )= (g◦f )(a 2 )→a 1 = a 2 ). Thus, we leta 1
    anda 2 be arbitrary elements ofA, assume that(g◦f )(a 1 )= (g◦f )(a 2 ),
    which meansg(f (a 1 )) = g(f (a 2 )), and then prove thata 1 = a 2. The
    next sentence of the proof says that the assumption thatgis one-to-one is
    being used, but it might not be clear _how_ it is being used. To understand
    this step, let’s write out what it means to say that g is one-to-one. As
    we observed before, rather than using the original definition, which is a
    negative statement, we are probably better off using the equivalent positive
    statement∀b 1 ∈B∀b 2 ∈B(g(b 1 )= g(b 2 )→b 1 = b 2 ). The natural way
    to use a given of this form is to plug something in forb 1 andb 2. Plugging
    inf (a 1 )andf (a 2 ), we getg(f (a 1 )) = g(f (a 2 )) → f (a 1 ) = f (a 2 ),
    and since we knowg(f (a 1 )) = g(f (a 2 )), it follows by modus ponens
    thatf (a 1 )= f (a 2 ). None of this was explained in the proof; readers of the


246 _Functions_

```
proof are expected to work it out for themselves. Make sure you understand
how, using similar reasoning, you can get fromf (a 1 )= f (a 2 )toa 1 = a 2
by applying the fact thatf is one-to-one.
```
2. After the assumption thatf andgare both onto, the form of the rest of the
    proof is entirely guided by the logical form of the goal of proving thatg◦f
    is onto. Because this means∀c∈C∃a∈A((g ◦f )(a)= c), we letcbe an
    arbitrary element ofCand then find somea ∈Afor which we can prove
    (g◦f )(a)= c.

Functions that are both one-to-one and onto are particularly important
in mathematics. Such functions are sometimes called _one-to-one corre-
spondences_ or _bijections_. Figure 5.5(b) shows an example of a one-to-one
correspondence. Notice that in this figure bothAandBhave four elements. In
fact, you should be able to convince yourself that if there is a one-to-one cor-
respondence between two finite sets, then the sets must have the same number
of elements. This is one of the reasons why one-to-one correspondences are so
important. We will discuss one-to-one correspondences between infinite sets
in Chapter 8.
Here’s another example of a one-to-one correspondence. SupposeAis the
set of all members of the audience at a sold-out concert andSis the set of all
seats in the concert hall. Letf :A→Sbe the function defined by the rule

```
f (a)= the seat in whichais sitting.
```
Because different people would not be sitting in the same seat,f is one-to-
one. Because the concert is sold out, every seat is taken, sof is onto. Thus,
fis a one-to-one correspondence. Even without counting people or seats, we
can tell that the number of people in the audience must be the same as the
number of seats in the concert hall.

```
Exercises
```
1. Which of the functions in exercise 1 of Section 5.1 are one-to-one?
    Which are onto?
*2. Which of the functions in exercise 2 of Section 5.1 are one-to-one?
Which are onto?
3. Which of the functions in exercise 3 of Section 5.1 are one-to-one?
    Which are onto?
4. Which of the functions in exercise 4 of Section 5.1 are one-to-one?
    Which are onto?


```
One-to-One and Onto 247
*5. LetA= R\ {1}, and letf :A→Abe defined as follows:
```
```
f (x)=
```
```
x+ 1
x− 1
```
### .

```
(a) Show thatf is one-to-one and onto.
(b) Show thatf ◦f = iA.
```
6. Supposeaandbare real numbers anda²= 0. Definef :R→Rby the
    formulaf (x)= ax+b. Show thatf is one-to-one and onto.
7. Definef :R+ →Rby the formulaf (x)= 1/x−x.
    (a) Show thatf is one-to-one. (Hint: You may find it useful to prove
       first that if 0< a < bthenf (a) > f (b).)
    (b) Show thatf is onto.
    (c) Defineg :R+ → Rby the formulag(x) = 1/x + x. Isgone-to-
       one? Is it onto?
8. LetA = P(R). Definef :R→Aby the formulaf (x) = {y ∈R|
    y^2 < x}.
    (a) Findf ( 2 ).
    (b) Isf one-to-one? Is it onto?
*9. LetA= P(R)andB = P(A). Definef :B → Aby the formula
f (F)=

### ±

### F.

```
(a) Findf ({{1, 2}, {3, 4}}).
(b) Isf one-to-one? Is it onto?
```
10. Supposef :A→B andg:B→C.
    (a) Prove that ifg◦f is onto thengis onto.
    (b) Prove that ifg◦f is one-to-one thenf is one-to-one.
11. Supposef :A→B andg:B→C.
    (a) Prove that iff is onto andg is not one-to-one, theng◦f is not
       one-to-one.
    (b) Prove that iff is not onto andgis one-to-one, theng◦f is not onto.
12. Supposef :A→B. Define a functiong:B →P(A)by the formula
    g(b) = {a∈A|f (a)= b}. Prove that iff is onto thengis one-to-one.
    What iff is not onto?
*13. Supposef :A→BandC⊆A. In exercise 7 of Section 5.1 we defined
f ²C(the restriction offtoC), and you showed thatf ²C:C→B.
(a) Prove that iff is one-to-one, then so isf ²C.
(b) Prove that iff ²Cis onto, then so isf.
(c) Give examples to show that the converses of parts (a) and (b) are not
always true.
14. Supposef :A→B, and there is someb∈Bsuch that∀x∈A(f (x)=b).
    (Thus,f is a _constant_ function.)


248 _Functions_

```
(a) Prove that ifAhas more than one element thenf is not one-to-one.
(b) Prove that ifBhas more than one element thenf is not onto.
```
15. Supposef :A→C,g:B →C, andAandB are disjoint. In exercise
    12(a) of Section 5.1 you proved thatf∪g:A∪B →C. Now suppose
    thatf andg are both one-to-one. Prove thatf ∪g is one-to-one iff
    Ran(f )and Ran(g)are disjoint.
16. SupposeR is a relation fromA toB,S is a relation fromB toC,
    Ran(R) = Dom(S) = B, andS◦R : A → C. In exercise 13(a) of
    Section 5.1 you proved thatS:B →C. Now prove that ifSis one-to-
    one thenR:A→B.
*17. Supposef :A → B andRis a relation onA. As in exercise 15 of
Section 5.1, define a relationSonBas follows:

```
S= {(x,y)∈B×B| ∃u∈A∃v∈A(f (u) = x∧f (v)=y∧(u,v)∈R)}.
```
```
(a) Prove that ifRis reflexive andf is onto thenSis reflexive.
(b) Prove that ifRis transitive andf is one-to-one thenSis transitive.
```
18. SupposeRis an equivalence relation onA, and letg :A → A/R be
    defined by the formulag(x) = [x]R, as in exercise 20(b) in Section 5.1.
    (a) Show thatgis onto.
(b) Show thatgis one-to-one iffR= iA.
19. Supposef : A → B,R is an equivalence relation onA, andf is
    compatible withR. (See exercise 21 of Section 5.1 for the definition of
    _compatible_ .) In exercise 21(a) of Section 5.1 you proved that there is a
    unique functionh:A/R →Bsuch that for allx∈A,h([x]R)= f (x).
    Now prove thathis one-to-one iff∀x ∈A∀y ∈A(f (x) = f (y)→
    xRy).
*20. SupposeA,B, andCare sets andf :A→B.
(a) Prove that iff is onto,g:B→C,h:B→C, andg◦f = h◦f,
theng= h.
(b) Suppose thatChas at least two elements, and for all functionsgand
hfromBtoC, ifg◦f = h◦f theng= h. Prove thatfis onto.
21. SupposeA,B, andCare sets andf :B→C.
    (a) Prove that iff is one-to-one,g:A→B,h:A→B, andf ◦g=
       f◦h, theng= h.
(b) Suppose thatA²= ∅, and for all functionsgandhfromAtoB, if
f◦g= f◦htheng= h. Prove thatf is one-to-one.
22. LetF= {f |f :R→R}, and define a relationRonFas follows:

```
R= {(f,g)∈F×F| ∃h∈F(f = h◦g)}.
```

```
Inverses of Functions 249
(a) Letf,g, andhbe the functions fromRtoRdefined by the formulas
f (x)= x^2 + 1,g(x) = x^3 + 1, andh(x) = x^4 + 1. Prove thathRf ,
but it is not the case thatgRf.
(b) Prove thatRis a preorder. (See exercise 25 of Section 4.5 for the
definition of preorder .)
(c) Prove that for allf ∈F,f RiR.
(d) Prove that for allf ∈F,iRRf ifff is one-to-one. (Hint for right-
to-left direction: Supposef is one-to-one. LetA = Ran(f ), and
leth = f− 1∪((R\ A)× {0}). Now prove thath :R→ Rand
iR= h◦f.)
(e) Suppose thatg∈Fis a constant function; in other words, there is
some real numbercsuch that∀x∈R(g(x) = c). Prove that for all
f ∈F,gRf. (Hint: See exercise 17 of Section 5.1.)
(f) Suppose thatg∈Fis a constant function. Prove that for allf ∈F,
f Rgifff is a constant function.
(g) As in exercise 25 of Section 4.5, if we letS= R∩R− 1, thenSis an
equivalence relation onF. Also, there is a unique relationT onF/S
such that for allfandginF, [f]ST[g]Sifff Rg, andT is a partial
order onF/S. Prove that the set of all one-to-one functions fromR
toRis the largest element ofF/S in the partial orderT, and the set
of all constant functions fromRtoRis the smallest element.
```
23. Letf :N→Nbe defined by the formulaf (n)= n. Note that we could
    also say thatf :N→Z. This exercise will illustrate why, in Definition
    5.2.1, we defined the phrase “f maps ontoB,” rather than simply “f is
    onto.”
    (a) Doesfmap ontoN?
    (b) Doesfmap ontoZ?

## 5.3 Inverses of Functions

We are now ready to return to the question of whether the inverse of a function
fromAtoB is always a function fromBtoA. Consider again the functionF
from part 1 of Example 5.1.2. Recall that in that example we hadA= {1, 2, 3},
B = {4, 5, 6}, andF = {(1, 5),(2, 4),(3, 5)}. As we saw in Example 5.1.2,F
is a function fromA toB. According to the definition of the inverse of a
relation,F− 1 = {(5, 1),(4, 2),(5, 3)}, which is clearly a relation fromB to
A. ButF− 1fails to be a function fromB toAfor two reasons. First of all,
6 ∈B, but 6 isn’t paired with any element ofAin the relationF− 1. Second, 5


250 _Functions_

is paired with two different elements ofA, 1 and 3. Thus, this example shows
that the inverse of a function fromAtoB is not always a function fromB toA.
You may have noticed that the reasons whyF− 1isn’t a function fromBto
Aare related to the reasons whyF is neither one-to-one nor onto, which were
discussed in part 1 of Example 5.2.2. This suggests the following theorem.

**Theorem 5. 3. 1.** _Suppose_ f : A → B_. If_ f _is one-to-one and onto, then_
f− 1:B→A_._

_Proof._ Supposef is one-to-one and onto, and letbbe an arbitrary element of
B. To show thatf− 1is a function fromB toA, we must prove that∃!a ∈
A((b,a)∈f− 1), so we prove existence and uniqueness separately.
Existence: Sincef is onto, there is somea∈Asuch thatf (a)= b. Thus,
(a,b) ∈f, so(b,a)∈f− 1.
Uniqueness: Suppose(b,a 1 )∈f− 1and(b,a 2 )∈f− 1for somea 1 ,a 2 ∈A.
Then(a 1 ,b) ∈f and(a 2 ,b) ∈f, sof (a 1 )= b= f (a 2 ). Sincef is one-to-
one, it follows thata 1 = a 2. ±

_Commentary._ The form of the proof is guided by the logical form of the
statement thatf− 1:B →A. Because this means∀b ∈B∃!a∈A((b,a) ∈
f− 1), we letbbe an arbitrary element ofB and then prove existence and
uniqueness for the requireda∈Aseparately. Note that the assumption thatf
is onto is the key to the existence half of the proof, and the assumption thatf
is one-to-one is the key to the uniqueness half.

Supposef is any function from a setAto a setB. Theorem 5.3.1 says
that a sufficient condition forf− 1to be a function fromB toAis thatf
be one-to-one and onto. Is it also a necessary condition? In other words, is
the converse of Theorem 5.3.1 true? (If you don’t remember what the words
_sufficient_ , _necessary_ , and _converse_ mean, you should review Section 1.5!) We
will show in Theorem 5.3.4 that the answer to this question is yes. In other
words, iff− 1is a function fromB toA, thenf must be one-to-one and onto.
Iff− 1:B →Athen, by the definition of function, for everyb∈Bthere
is exactly onea∈Asuch that(b,a)∈f− 1, and

```
f− 1(b) = the uniquea∈Asuch that(b,a)∈f− 1
= the uniquea∈Asuch that(a,b) ∈f
= the uniquea∈Asuch thatf (a)= b.
```
This gives another useful way to think aboutf− 1. Iff− 1is a function from
BtoA, then it is the function that assigns, to eachb∈B, the uniquea ∈A


```
Inverses of Functions 251
```
such thatf (a) = b. The assumption in Theorem 5.3.1 thatf is one-to-one
and onto guarantees that there is exactly one sucha.
As an example, consider again the functionf that assigns, to each person
in the audience at a sold-out concert, the seat in which that person is sitting.
As we saw at the end of the last section,f is a one-to-one, onto function from
the setAof all members of the audience to the setSof all seats in the concert
hall. Thus,f− 1must be a function fromStoA, and for eachs∈S,

```
f− 1(s) = the uniquea∈Asuch thatf (a)= s
= the unique personasuch that the seat in whichais sitting iss
= the person who is sitting in the seats.
```
In other words, the functionf assigns to each person the seat in which that
person is sitting, and the functionf− 1assigns to each seat the person sitting
in that seat.
Becausef :A→ Sandf− 1:S→A, it follows by Theorem 5.1.5 that
f− 1◦f : A → A andf ◦f− 1 :S → S. What are these functions? To
figure out what the first function is, let’s letabe an arbitrary element ofAand
compute(f− 1◦f )(a).

```
(f− 1◦f )(a)= f− 1(f (a))
= f− 1(the seat in whichais sitting)
= the person sitting in the seat in whichais sitting
= a.
```
But recall that for everya∈A,iA(a) = a. Thus, we have shown that∀a ∈
A((f − 1◦f )(a)= iA(a)), so by Theorem 5.1.4,f− 1◦f = iA. Similarly, you
should be able to check thatf ◦f− 1=iS.
When mathematicians find an unusual phenomenon like this in an example,
they always wonder whether it’s just a coincidence or if it’s part of a more
general pattern. In other words, can we prove a theorem that says that what
happened in this example will happen in other examples too? In this case, it
turns out that we can.

**Theorem 5. 3. 2.** _Suppose_ f _is a function from_ A _to_ B _, and suppose that_ f− 1
_is a function from_ B _to A. Then_ f− 1◦f = iA _and_ f ◦f− 1= iB_._

_Proof._ Letabe an arbitrary element ofA. Letb= f (a)∈B. Then(a,b) ∈
f, so(b,a)∈f− 1and thereforef− 1(b)= a. Thus,

```
(f− 1◦f )(a)= f− 1(f (a)) = f− 1(b) = a= iA(a).
```

252 _Functions_

Sinceawas arbitrary, we have shown that∀a∈A((f− 1◦f )(a)= iA(a)), so
f− 1◦f = iA. The proof of the second half of the theorem is similar and is
left as an exercise (see exercise 8). ±

_Commentary._ To prove that two functions are equal, we usually apply Theo-
rem 5.1.4. Thus, sincef− 1◦f andiAare both functions fromAtoA, to prove
that they are equal we prove that∀a∈A((f − 1◦f )(a) = iA(a)).

Theorem 5.3.2 says that iff : A → B andf− 1 : B → A, then each
function undoes the effect of the other. For anya∈A, applying the function
f gives usf (a) ∈B. According to Theorem 5.3.2,f− 1(f (a)) = (f− 1◦
f )(a)= iA(a)= a. Thus, applyingf− 1tof (a)undoes the effect of applying
f, giving us back the original elementa. Similarly, for anyb∈B, applying
f− 1we getf− 1(b) ∈A, and we can undo the effect of applyingf− 1 by
applyingf, sincef (f− 1(b)) = b.
For example, letf :R→ Rbe defined by the formulaf (x) = 2x. You
should be able to check thatf is one-to-one and onto, sof− 1:R→R, and
for anyx∈R,

```
f− 1(x) = the uniqueysuch thatf (y)= x.
```
Becausef− 1(x) is the unique solution foryin the equationf (y) = x, we
can find a formula forf− 1(x) by solving this equation fory. Filling in the
definition off in the equation gives us 2y = x, soy= x/2. Thus, for every
x ∈R,f− 1(x) = x/2. Notice that applyingf to any number doubles the
number and applyingf− 1halves the number, and each of these operations
undoes the effect of the other. In other words, if you double a number and then
halve the result, you get back the number you started with. Similarly, halving
any number and then doubling the result gives you back the original number.
Are there other circumstances in which the composition of two functions
is equal to the identity function? Investigation of this question leads to the
following theorem.

**Theorem 5. 3. 3.** _Suppose_ f :A→B_._

_1. If there is a function_ g:B →A _such that_ g◦f = iA _then_ f _is one-to-one.
2. If there is a function_ g:B→A _such that_ f◦g= iB _then_ f _is onto._

_Proof._

1. Supposeg:B →Aandg◦f = iA. Leta 1 anda 2 be arbitrary elements
    ofA, and suppose thatf (a 1 )= f (a 2 ). Applyingg to both sides of this


```
Inverses of Functions 253
equation we getg(f (a 1 )) = g(f (a 2 )). Butg(f (a 1 )) = (g◦f )(a 1 )=
iA(a 1 )= a 1 , and similarly,g(f (a 2 )) = a 2. Thus, we can conclude that
a 1 = a 2 , and thereforef is one-to-one.
```
2. See exercise 9. ±

_Commentary._ The assumption that there is ag:B →Asuch thatg◦f =
iAis an existential statement, so we immediately imagine that a particular
functionghas been chosen. The proof thatf is one-to-one follows the usual
pattern for such proofs, based on Theorem 5.2.3.

We have come full circle. In Theorem 5.3.1 we found that iff is a one-to-
one, onto function fromAtoB, thenf− 1is a function fromBtoA. From this
conclusion it follows, as we showed in Theorem 5.3.2, that the composition
off with its inverse must be the identity function. And in Theorem 5.3.3 we
found that when the composition of two functions is the identity function, we
are led back to the properties one-to-one and onto! Thus, combining Theorems
5.3.1–5.3.3, we get the following theorem.

**Theorem 5. 3. 4.** _Suppose_ f :A → B_. Then the following statements are
equivalent._

_1._ f _is one-to-one and onto.
2._ f− 1:B →A_.
3. There is a function_ g:B →A _such that_ g◦f = iA _and_ f ◦g= iB_._

_Proof._ 1 → 2. This is precisely what Theorem 5.3.1 says.
2 → 3. Supposef− 1:B→A. Letg= f− 1and apply Theorem 5.3.2.
3 → 1. Apply Theorem 5.3.3. ±

_Commentary._ As we saw in Section 3.6, the easiest way to prove that several
statements are equivalent is to prove a circle of implications. In this case we
have proven the circle 1 → 2 → 3 → 1. Note that the proofs of these
implications are quite sketchy. You should make sure you know how to fill in
all the details.

For example, letf andgbe functions fromRtoRdefined by the following
formulas:

```
f (x)=
```
```
x+ 7
5
```
```
, g(x) = 5x− 7.
```
Then for any real numberx,

```
(g ◦f )(x)= g(f (x)) = g
```
```
²x+ 7
```
```
5
```
### ³

### = 5 ·

```
x+ 7
5
```
```
− 7 = x+ 7 − 7 =x.
```

254 _Functions_

Thus,g◦f = iR. A similar computation shows thatf ◦g = iR. Thus,
it follows from Theorem 5.3.4 thatf must be one-to-one and onto, andf− 1
must also be a function fromRtoR. What isf− 1? Of course, a logical guess
would be thatf− 1= g, but this doesn’t actually follow from the theorems
we’ve proven. You could check it directly by solving forf− 1(x), using the
fact thatf− 1(x)must be the unique solution foryin the equationf (y)= x.
However, there is no need to check. The next theorem shows thatf− 1must be
equal tog.

**Theorem 5. 3. 5.** _Suppose_ f :A→B _,_ g:B →A _,_ g◦f = iA _, and_ f◦g= iB_.
Then_ g=f− 1_._

_Proof._ By Theorem 5.3.4,f− 1:B→A. Therefore, by Theorem 5.3.2,f− 1◦
f = iA. Thus,

```
g= iA◦g (exercise 9 of Section 4.3)
= (f− 1◦f )◦g
= f− 1◦(f ◦g) (Theorem 4.2.5)
= f− 1◦iB
= f− 1 (exercise 9 of Section 4.3). ±
```
_Commentary._ This proof gets the desired conclusion quickly by clever use of
previous theorems and exercises. For a more direct but somewhat longer proof,
see exercise 10.

**Example 5. 3. 6.** In each part, determine whether or notf is one-to-one and
onto. If it is, findf− 1.

1. LetA= R\ {0}andB= R\ {2}, and definef :A→Bby the formula

```
f (x)=
```
### 1

```
x
```
### + 2.

```
(Note that for allx ∈A, 1/x is defined and nonzero, sof (x) ²= 2 and
thereforef (x)∈B.)
```
2. LetA = RandB = {x ∈R| x ≥ 0}, and definef :A → B by the
    formula
       f (x)= x^2.

_Solutions_

1. You can check directly thatf is one-to-one and onto, but we won’t bother
    to check. Instead, we’ll simply try to find a functiong :B→ Asuch that


```
Inverses of Functions 255
g◦f = iAandf ◦g= iB. We know by Theorems 5.3.4 and 5.3.5 that if
we find such ag, then we can conclude thatf is one-to-one and onto and
g= f− 1.
Because we’re hoping to haveg= f− 1, we know that for anyx∈B =
R\ {2},g(x) must be the uniquey∈Asuch thatf (y)= x. Thus, to find
a formula forg(x), we solve foryin the equationf (y)= x. Filling in the
definition off, we see that the equation we must solve is
1
y
```
```
+ 2 = x.
```
```
Solving this equation we get
1
y
```
```
+ 2 = x ⇒
```
### 1

```
y
```
```
= x− 2 ⇒ y=
```
### 1

```
x− 2
```
### .

```
Thus, we defineg:B →Aby the formula
```
```
g(x) =^1
x− 2
```
### .

```
(Note that for allx∈B,x²= 2, so 1/(x − 2)is defined and nonzero, and
thereforeg(x) ∈A.) Let’s check thatghas the required properties. For any
x∈A, we have
```
```
g(f (x)) = g
```
### ² 1

```
x
```
### + 2

### ³

### =

### 1

```
1 /x+ 2 − 2
```
### =

### 1

```
1 /x
```
```
= x.
```
```
Thus,g◦f = iA. Similarly, for anyx∈B,
```
```
f (g(x)) = f
```
### ²

### 1

```
x− 2
```
### ³

### =

### 1

```
1 /(x − 2)+ 2 = x− 2 + 2 = x,
sof◦g= iB. Therefore, as we observed earlier,f must be one-to-one and
onto, andg=f− 1.
```
2. Imitating the solution to part 1, let’s try to find a functiong:B→Asuch
    thatg◦f = iAandf◦g= iB. Because applyingf to a number squares the
    number and we wantgto undo the effect off, a reasonable guess would
    be to letg(x) =

### √

```
x. Let’s see if this works.
For anyx∈Bwe have
f (g(x)) = f (
```
### √

```
x)= (
```
### √

```
x)^2 = x,
sof ◦g= iB. But forx∈Awe have
```
```
g(f (x)) = g(x^2 )=
```
### ́

```
x^2 ,
and this is not always equal tox. For example,g(f (− 3))=
```
### ́

### √ (− 3)^2 =

```
9 = 3 ²= − 3. Thus,g◦f ²= iA. This example illustrates that you must
```

256 _Functions_

```
check both f◦g= iB and g◦f = iA. It is possible for one to work but
not the other.
What went wrong? We know that iff− 1is a function fromB toA, then
for anyx ∈B,f− 1(x) must be the unique solution foryin the equation
f (y)= x. Applying the definition off gives usy^2 = x, soy = ́
```
### √

```
x.
Thus, there is not a unique solution foryin the equationf (y)= x; there
are two solutions. For example, whenx = 9 we gety = ́ 3. In other
words,f ( 3 )= f (− 3)= 9. But this means thatf is not one-to-one! Thus,
f− 1is not a function fromBtoA.
```
Functions that undo each other come up often in mathematics. For example,
if you are familiar with logarithms, then you will recognize the formulas
10 logx= xand log 10x= x. (We are using base-10 logarithms here.) We can
rephrase these formulas in the language of this section by defining functions
f :R→R+andg:R+ →Ras follows:

```
f (x)= 10x, g(x) = logx.
```
Then for anyx∈Rwe haveg(f (x)) = log 10x = x, and for anyx∈R+,
f (g(x)) = 10logx = x. Thus,g◦f = iRandf ◦g = iR+, sog= f− 1.
In other words, the logarithm function is the inverse of the “raise 10 to the
power” function.
We saw another example of functions that undo each other in Section 4.5.
SupposeAis any set, letEbe the set of all equivalence relations onA, and
letPbe the set of all partitions ofA. Define a functionf :E →Pby the
formulaf (R)= A/R, and define another functiong:P→Eby the formula

```
g(F)= the equivalence relation determined byF
=
```
```
μ
```
```
X∈F
```
### (X ×X).

You should verify that the proof of Theorem 4.5.6 shows thatf◦g=iP, and
exercise 10 in Section 4.5 shows thatg◦f = iE. Thus,f is one-to-one and
onto, andg= f− 1. One interesting consequence of this is that ifAhas a finite
number of elements, then we can say that the number of equivalence relations
onAis exactly the same as the number of partitions ofA, even though we
don’t know what this number is.


```
Inverses of Functions 257
Exercises
```
*1. LetRbe the function defined in exercise 2(c) of Section 5.1. In exercise
2 of Section 5.2, you showed thatR is one-to-one and onto, soR− 1 :
P →P. Ifp∈P, what isR− 1(p)?

2. LetF be the function defined in exercise 4(b) of Section 5.1. In exercise
    4 of Section 5.2, you showed thatF is one-to-one and onto, soF− 1 :
    B →B. IfX∈B, what isF− 1(X)?
*3. Letf :R→Rbe defined by the formula

```
f (x)=
```
```
2 x+ 5
3
```
### .

```
Show thatfis one-to-one and onto, and find a formula forf− 1(x). (You
may want to imitate the method used in the example after Theorem 5.3.2,
or in Example 5.3.6.)
```
4. Letf :R→Rbe defined by the formulaf (x)= 2x^3 − 3. Show thatf
    is one-to-one and onto, and find a formula forf− 1(x).
*5. Letf :R→R+be defined by the formulaf (x)= 102−x. Show thatf
is one-to-one and onto, and find a formula forf− 1(x).
6. LetA= R\ {2}, and letf be the function with domainAdefined by the
    formula
       f (x)=

```
3 x
x− 2
```
### .

```
(a) Show thatfis a one-to-one, onto function fromAtoBfor some set
B⊆R. What is the setB?
(b) Find a formula forf− 1(x).
```
7. In the example after Theorem 5.3.4, we hadf (x)= (x+ 7)/5 and found
    thatf− 1(x)= 5x− 7. Letf 1 andf 2 be functions fromRtoRdefined
    by the formulas

```
f 1 (x)= x+ 7, f 2 (x)=
```
```
x
5
```
### .

```
(a) Show thatf = f 2 ◦f 1.
(b) According to part 5 of Theorem 4.2.5,f− 1=(f 2 ◦f 1 )− 1= f 1 − 1◦
f 2 − 1. Verify that this is true by computingf 1 − 1◦f 2 − 1directly.
```
8. (a) Prove the second half of Theorem 5.3.2 by imitating the proof of the
    first half.
(b) Give an alternative proof of the second half of Theorem 5.3.2 by
applying the first half tof− 1.
*9. Prove part 2 of Theorem 5.3.3.


258 _Functions_

10. Use the following strategy to give an alternative proof of Theorem 5.3.5:
    Let(b,a)be an arbitrary element ofB×A. Assume(b,a)∈gand prove
    (b,a)∈f− 1. Then assume(b,a)∈f− 1and prove(b,a)∈g.
*11. Supposef :A→B andg:B →A.
(a) Prove that iffis one-to-one andf◦g= iB, theng= f− 1.
(b) Prove that iffis onto andg◦f = iA, theng= f− 1.
(c) Prove that iff ◦g = iB butg◦ f ²= iA, thenf is onto but not
one-to-one, andgis one-to-one but not onto.
12. Supposef :A →B andf is one-to-one. Prove that there is some set
    B±⊆Bsuch thatf− 1:B±→A.
13. Supposef :A→B andf is onto. LetR= {(x,y)∈A×A|f (x)=
    f (y)}. By exercise 20(a) of Section 5.1,R is an equivalence relation
    onA.
    (a) Prove that there is a functionh:A/R →Bsuch that for allx∈A,
       h([x]R)= f (x). (Hint: See exercise 21 of Section 5.1.)
(b) Prove thath is one-to-one and onto. (Hint: See exercise 19 of
Section 5.2.)
    (c) It follows from part (b) thath− 1 : B → A/R. Prove that for all
       b∈B,h− 1(b) = {x∈A|f (x)= b}.
(d) Supposeg :B → A. Prove thatf ◦g = iB iff∀b ∈B(g(b) ∈
h− 1(b)).
*14. Supposef :A→B,g:B →A, andf◦g= iB. LetA±= Ran(g)⊆A.
(a) Prove that for allx∈A±,(g◦f )(x)= x.
(b) Prove thatf ²A±is a one-to-one, onto function fromA±toB and
g= (f ²A±)− 1. (See exercise 7 of Section 5.1 for the meaning of
the notation used here.)
15. LetB = {x ∈R | x ≥ 0}. Letf :R → B andg :B → Rbe
    defined by the formulasf (x)= x^2 andg(x) =

### √

x. As we saw in part
2 of Example 5.3.6,g ²= f− 1. Show thatg = (f ²B)− 1. (Hint: See
exercise 14.)
*16. Letf :R→ Rbe defined by the formulaf (x) = 4x− x^2. LetB =
Ran(f ).
(a) FindB.
(b) Find a setA⊆Rsuch thatf ²Ais a one-to-one, onto function from
AtoB, and find a formula for(f ²A)− 1(x). (Hint: See exercise 14.)

17. SupposeAis a set, and letF= {f |f :A→A}andP= {f ∈F|f
    is one-to-one and onto}. Define a relationRonFas follows:

```
R= {(f,g)∈F×F| ∃h∈P(f = h− 1◦g◦h)}.
```

_Closures_ 259
(a) Prove thatRis an equivalence relation.
(b) Prove that iff Rgthen(f ◦f )R(g◦g).
(c) For anyf ∈Fanda∈A, iff (a)= athen we say thatais a _fixed
point_ off. Prove that iff has a fixed point andf Rg, theng also
has a fixed point.
*18. Supposef :A→C,g :B → C, andgis one-to-one and onto. Prove
that there is a functionh:A→Bsuch thatg◦h= f.

## 5.4 Closures

Often in mathematics we work with a function from a set to itself. In that
situation, the following concept can be useful.

**Definition 5.4.1.** Supposef :A→ AandC ⊆ A. We will say thatC is
_closed under_ f if∀x∈C(f (x) ∈C).

**Example 5.4.2.**

1. LetA= {a,b,c,d}andf = {(a,c),(b,b),(c,d),(d,c)}. Thenf :A→A.
    LetC 1 = {a,c,d}andC 2 = {a,b}. IsC 1 closed underf? IsC 2?
2. Letf :R→Randg:R→Rbe defined by the formulasf (x) =x+ 1
    andg(x) = x− 1. IsNclosed underf? Is it closed underg?
3. Letf :R→Rbe defined by the formulaf (x) = x^2. LetC 1 = {x∈R|
    0 < x <1}andC 2 = {x∈R| 0< x <2}. IsC 1 closed underf? IsC 2?

_Solutions_

1. The setC 1 is closed underf, becausef (a)= f (d)= c∈C 1 andf (c)=
    d ∈C 1. However,C 2 is not closed underf, becausea∈C 2 butf (a) =
    c /∈C 2.
2. For every natural numbern,n+ 1 is also a natural number, soNis closed
    underf. However,Nis not closed underg, because 0 ∈Nbutg( 0 )=
    − 1∈/N.
3. For every real numberx, if 0< x < 1 then 0< x^2 < 1 (see Example
    3.1.2), soC 1 is closed underf. But 1.5∈C 2 andf (1.5)= 1.5^2 = 2.25∈/
    C 2 , soC 2 is not closed underf.

We saw in part 2 of Example 5.4.2 thatNis not closed under the function
g :R → Rdefined by the formulag(x) = x− 1. Suppose we wanted to


260 _Functions_

add elements toNto get a set that is closed underg. Since 0∈N, we’d need
to addg( 0 )= − 1. But if − 1 were added to the set, then it would also have
to containg(− 1)= − 2, and if we threw in −2 then we’d also have to add
g(− 2)= − 3. Continuing in this way, it should be clear that we’d have to add
all of the negative integers toN, giving us the set of all integers,Z. But notice
thatZis closed underg, because for every integern,n− 1 is also an integer.
So we have succeeded in our task of enlargingNto get a set closed underg.
When we enlargedNtoZ, the numbers we added – the negative integers –
were numbers that _had_ to be added if we wanted the resulting set to be closed
underg. It follows thatZis the smallest set containingNthat is closed under
g. We are using the word _smallest_ here in exactly the way we defined it in
Section 4.4. If we letF = {C⊆R|N⊆CandCis closed underg}, then
Zis the smallest element ofF, where as usual it is understood that we mean
smallest in the sense of the subset partial order. In other words,Zis an element
ofF, and it’s a subset of every element ofF. We will say thatZis the _closure_
ofNunderg.

**Definition 5.4.3.** Supposef :A→ AandB ⊆A. Then the _closure_ ofB
underf is the smallest setC⊆Asuch thatB ⊆CandCis closed underf,
if there is such a smallest set. In other words, a setC⊆Ais the closure ofB
underf if it has the following properties:

1. B⊆C.
2. Cis closed underf.
3. For every setD⊆A, ifB ⊆DandDis closed underfthenC⊆D.

According to Theorem 4.4.6, if a set has a smallest element, then it can
have only one smallest element. Thus, if a setBhas a closure under a function
f, then this closure must be unique, so it makes sense to call it _the_ closure
rather than _a_ closure. However, as we saw in Example 4.4.7, some families of
sets don’t have smallest elements, so it is not immediately clear if sets always
have closures under functions. In fact they do, as we will show in our proof of
Theorem 5.4.5 below. But first let’s look at a few more examples of closures.

**Example 5.4.4.**

1. In part 1 of Example 5.4.2, the setC 2 = {a,b} was not closed underf.
    What is the closure ofC 2 underf?
2. Letf :R→Rbe defined by the formulaf (x)= x+ 1, and letB = {0}.
    What is the closure ofBunderf?


```
Closures 261
```
_Solutions_

1. Sincea∈C 2 , to get a set closed underf we will need to add inf (a)= c.
    But then we’ll also have to addf (c) = d, giving us the entire setA =
    {a,b,c,d}. ClearlyAis closed underf, so the closure ofC 2 underf isA.
2. Since 0∈B, the closure ofBunderf will have to containf ( 0 )= 1. But
    then it must also containf ( 1 )= 2,f ( 2 )= 3,f ( 3 )= 4, and in fact all
    positive integers. Adding all the positive integers toB gives us the setN,
    which we already know from part 2 of Example 5.4.2 is closed underf.
    Thus the closure of {0} underf isN.

Here’s an example that illustrates the usefulness of the concepts we have
been discussing. LetP be a set of people, and suppose that each person in
the setP has a best friend who is also inP. Then we can define a function
f :P →P by letf (p)= p’s best friend. Suppose that whenever someone in
the setP hears a piece of gossip, he or she tells it to his or her best friend (but
no one else). Now consider any setC⊆P, and suppose thatCis closed under
f. Then for any personp∈C,p’s best friend is also inC. Thus, if any person
inChears a piece of gossip, the only person he or she will tell the gossip to
is also inC. No one inCwill ever transmit gossip to a person who is not in
C. Thus, if we tell some people inC a bit of gossip, it may spread to other
people inC, but it will never leaveC. If you want to track the spread of gossip
in this population, you should be interested in recognizing which subsets ofP
are closed underf.
Suppose we tell a piece of gossip to all of the people in some setB⊆P.
How will the gossip spread? The people inB will tell their best friends,
and then they will tell their best friends, who will tell their best friends, and
so on. Based on our previous examples, you might guess that the setH of
people who eventually hear the gossip will be the closure ofB underf. Let’s
see if we can give a careful proof thatH has the three properties listed in
Definition 5.4.3.
ClearlyB ⊆H, since the people inBhear the gossip right at the start of the
process. This confirms property 1 of Definition 5.4.3. Ifpis any element of
H, thenpeventually hears the gossip. But as soon asphears the gossip, he or
she will tellf (p), sof (p) ∈Has well. ThusH is closed underf, as required
by property 2 of the definition. Finally, supposeB ⊆C⊆P andCis closed
underf. Then as we observed earlier, any gossip that is told to the people inB
may spread to others inC, but it will never leaveC. Thus, everyone who ever
hears the gossip must belong toC, which means thatH ⊆C. This confirms
property 3, soH is indeed the closure ofBunderf.


262 _Functions_

We turn now to the proof that closures always exist. Supposef :A→ A
andB ⊆A. One way to try to prove the existence of the closure ofBunderf
is to add toB those elements that must be added to make it closed underf,
as we did in earlier examples, and then prove that the result is closed under
f. Although this can be done, a careful treatment of the details of this proof
would require the method of mathematical induction, which we have not yet
discussed. We will present this proof in Section 6.5, after we’ve discussed
mathematical induction. But there is another approach to the proof that uses
only ideas that we have already studied. We know that the closure ofBunder
f, if it exists, must be the smallest element of the familyF= {C ⊆ A |
B⊆CandCis closed underf}. According to exercise 20 of Section 4.4, the
smallest element of a set is also always the greatest lower bound of the set,
and by Theorem 4.4.11, the g.l.b. of any nonempty family of setsFis

### ¶

### F.

This is the motivation for our next proof.

**Theorem 5. 4. 5.** _Suppose that_ f :A→A _and_ B ⊆A_. Then_ B _has a closure
under_ f_._

_Proof._ LetF= {C ⊆A| B ⊆CandCis closed underf}. You should be
able to check thatA∈F, and thereforeF ²= ∅. Thus, we can letC=

### ¶

### F,

and by exercise 9 of Section 3.3,C⊆A. We will show thatCis the closure
ofB underfby proving the three properties in Definition 5.4.3.
To prove the first property, supposex∈B. LetDbe an arbitrary element
ofF. Then by the definition ofF,B ⊆D, sox∈D. SinceDwas arbitrary,
this shows that∀D∈F(x ∈D), sox∈

### ¶

F= C. Thus,B ⊆C.
Next, supposex ∈Cand again letD be an arbitrary element ofF. Then
sincex ∈C =

### ¶

F,x ∈D. But sinceD ∈F,D is closed underf, so
f (x)∈D. SinceDwas arbitrary, we can conclude that∀D∈F(f (x)∈D),
sof (x)∈

### ¶

F= C. Thus, we have shown thatCis closed underf, which
is the second property in Definition 5.4.3.
Finally, to prove the third property, supposeB ⊆D⊆ AandDis closed
underf. ThenD ∈F, and applying exercise 9 of Section 3.3 again we can
conclude thatC=

### ¶

### F⊆D. ±

_Commentary._ Our goal is∃C(C is the closure ofBunderf ), so we should
begin by definingC. However, the definitionC =

### ¶

F doesn’t make sense
unless we knowF²= ∅, so we must prove this first. BecauseF²= ∅means
∃D(D ∈F), we prove it by giving an example of an element ofF. The
example isA, so we must proveA∈F. The statement in the proof that “you
should be able to check” thatA ∈F really does mean that you should do


```
Closures 263
```
the checking. According to the definition ofF, to say thatA∈Fmeans that
A⊆A,B ⊆A, andAis closed underf. You should make sure you see why
all three of these statements are true.
Having definedCand verified thatC ⊆A, we must prove thatChas the
three properties in the definition of the closure ofBunderf. To prove the first
statement,B ⊆ C, we letxbe an arbitrary element ofB and provex∈C.
SinceC =

### ¶

F, the goalx ∈C means∀D ∈F(x ∈D), so to prove it
we letD be an arbitrary element ofFand provex ∈D. To prove thatCis
closed underf, we assume thatx∈Cand provef (x) ∈C. Once again, by
the definition ofCthis goal means∀D ∈F(f (x) ∈D), so we letDbe an
arbitrary element ofFand provef (x) ∈D. Finally, to prove the third goal
we assume thatD⊆A,B ⊆D, andDis closed underf and proveC⊆D.
Fortunately, an exercise from an earlier section takes care of this proof.

Closed sets and closures also come up in the study of functions of more than
one variable. Iff :A×A→A, thenf is called a _function of two variables_.
An element of the domain off would be an ordered pair(x,y), wherex,y∈
A. The result of applyingf to this pair should be writtenf ((x,y)), but it is
customary to leave out one pair of parentheses and just writef (x,y).

**Definition 5.4.6.** Supposef :A×A→AandC⊆A. We will say thatCis
_closed under_ f if∀x∈C∀y∈C(f (x,y)∈C).

**Example 5.4.7.**

1. Letf :R+× R+ → R+ andg :R+× R+ → R+ be defined by the
    formulasf (x,y) = x/y andg(x,y) = xy. IsQ+ closed underf? Is it
    closed underg?
2. Letf :P(N)× P(N) → P(N)andg : P(N)× P(N) → P(N)
    be defined by the formulasf (X,Y ) = X∪Y andg(X,Y )= X∩Y. Let
    I= {X∈P(N)|Xis infinite}. IsIclosed underf? Is it closed underg?

_Solutions_

1. Ifx,y ∈ Q+, then there are positive integersp,q,r, ands such that
    x= p/q andy= r/s. Therefore

```
f (x,y)=
```
```
x
y
```
### =

```
p/q
r/s
```
### =

```
p
q
```
### ·

```
s
r
```
### =

```
ps
qr
```
### ∈Q+.

```
This shows thatQ+ is closed underf. However, 2 and 1/2 are elements of
Q+ andg(2, 1/ 2 )= 2^1 /^2 =
```
### √

```
2 ∈/ Q+ (see Theorem 6.4.5), soQ+is not
closed underg.
```

264 _Functions_

2. IfX andY are infinite sets of natural numbers, thenf (X,Y)= X∪Y is
    also infinite, soIis closed underf. On the other hand, letEbe the set of
    even natural numbers and letP be the set of prime numbers. ThenEand
    Pare both infinite, butg(E,P )= E∩P = {2}, which is finite. Therefore
    Iis not closed underg.

As before, we can define the closure of a set under a function of two
variables to be the smallest closed set containing it, and we can prove that
such closures always exist.

**Definition 5.4.8.** Supposef :A×A→AandB ⊆A. Then the _closure of_
B _under_ f is the smallest setC⊆Asuch thatB ⊆CandCis closed under
f, if there is such a smallest set. In other words, a setC⊆Ais the closure of
Bunderf if it has the following properties:

1. B⊆C.
2. Cis closed underf.
3. For every setD⊆A, ifB ⊆DandDis closed underfthenC⊆D.

**Theorem 5.4.9.** _Suppose that_ f :A× A → A _and_ B ⊆ A_. Then_ B _has a
closure under_ f_._

_Proof._ See exercise 11. ±

A function fromA×AtoAcould be thought of as an operation that can be
applied to a pair of objects(x,y)∈A× Ato produce another element ofA.
Often in mathematics an operation to be performed on a pair of mathematical
objects(x,y)is represented by a symbol that we write betweenxandy. For
example, ifxandyare real numbers thenx+ydenotes another number, and
ifx andy are sets thenx∪yis another set. Imitating this notation, when
mathematicians define a function fromA× AtoAthey sometimes represent
it with a symbol rather than a letter, and they write the result of applying the
function to a pair(x,y)by putting the symbol betweenxandy, rather than by
putting a letter before(x,y). When a function fromA× AtoAis written in
this way, it is usually called a _binary operation on_ A.
For example, in part 2 of Example 5.4.7 we definedg:P(N)× P(N)→
P(N)by the formulag(X,Y)= X∩Y. Instead of introducing the namegfor
this function, we could have talked about ∩ as a binary operation onP(N).
We showed in the example that the setIof all infinite subsets ofNis not
closed underg. Another way to say this is thatIis not closed under the binary
operation∩. What is the closure ofIunder ∩? For the answer, see exercise 16.


_Closures_ 265
Here’s another example. We could define a binary operation ∗onZby
saying that for any integersxandy,x∗y= x^2 −y^2. Is the set {0, 1} closed
under the binary operation∗? The answer is no, because 0∗1 = 0^2 − 1^2 =
− 1/∈ {0, 1}. Thus, the closure of {0, 1} under∗must include − 1. But as you
can easily check, {−1, 0, 1} is closed under∗. Therefore the closure of {0, 1}
under∗is {−1, 0, 1}.

```
Exercises
```
```
*1. Letf :R→ Rbe defined by the formulaf (x)= (x+ 1)/2. Are the
following sets closed underf?
(a) Z.
(b) Q.
(c) {x∈R| 0 ≤x <4}.
(d) {x∈R| 2 ≤x <4}.
```
2. Letf :P(N)→ P(N)be defined by the formulaf (X)= X∪ {17}.
    Are the following sets closed underf?
    (a) {X⊆N|Xis infinite}.
    (b) {X⊆N|Xis finite}.
    (c) {X⊆N|Xhas at most 100 elements}.
    (d) {X⊆N| 16∈X}.
*3. Letf : Z→ Zbe defined by the formulaf (n) = n^2 − n. Find the
closure of {−1, 1}underf.
4. For any setA, the set of all relations onAisP(A×A). Letf :P(A×
    A) →P(A× A)be defined by the formulaf (R)= R− 1. Is the set of
    reflexive relations onAclosed underf? What about the set of symmetric
    relations and the set of transitive relations? (Hint: See exercise 12 of
    Section 4.3.)
5. Supposef :A→A. Is∅closed underf?
6. Supposef :A→A.
    (a) Prove that if Ran(f )⊆C⊆AthenCis closed underf.
    (b) Prove that for every setB⊆A, the closure ofBunderf is a subset
       ofB∪Ran(f ).
*7. Supposef :A →Aandf is one-to-one and onto. Then by Theorem
5.3.1,f− 1:A→A. Prove that ifC⊆AandCis closed underf, then
A\Cis closed underf− 1.
8. Supposef :A→AandC⊆A. Prove thatCis closed underf iff the
    closure ofCunderf isC.


266 _Functions_

```
*9. Supposef :A → AandC 1 andC 2 are subsets ofAthat are closed
underf.
(a) Prove thatC 1 ∪C 2 is closed underf.
(b) MustC 1 ∩C 2 be closed underf? Justify your answer.
(c) MustC 1 \ C 2 be closed underf? Justify your answer.
```
10. Supposef :A→A,B 1 ⊆A, andB 2 ⊆A. LetC 1 be the closure ofB 1
    underf, and letC 2 be the closure ofB 2.
    (a) Prove that ifB 1 ⊆B 2 thenC 1 ⊆C 2.
(b) Prove that the closure ofB 1 ∪B 2 underf isC 1 ∪C 2.
(c) Must the closure ofB 1 ∩B 2 beC 1 ∩C 2? Justify your answer.
(d) Must the closure ofB 1 \ B 2 beC 1 \C 2? Justify your answer.
11. Prove Theorem 5.4.9.
*12. IfFis a set of functions fromAtoAandC⊆A, then we will say that
Cis _closed under_ Fif∀f ∈F∀x∈C(f (x) ∈C). In other words,Cis
closed underFiff for allf ∈F,Cis closed underf. IfB ⊆A, then
the _closure_ ofBunderFis the smallest setC⊆Asuch thatB⊆Cand
Cis closed underF. (You are asked to prove in the next exercise that the
closure always exists.)
(a) Letf andgbe the functions fromRtoRdefined by the formulas
f (x)= x+ 1 andg(x) = x− 1. Find the closure of {0}under {f,g}.
(b) For each natural numbern, letfn:P(N)→P(N)be defined by
the formulafn(X) = X∪ {n}, and letF= {fn| n∈N}. Find the
closure of {∅}underF.
13. SupposeFis a set of functions fromAtoAandB ⊆A. See the previous
    exercise for the definition of the closure ofB underF.
    (a) Prove thatBhas a closure underF.
    For eachf ∈F, letCfbe the closure ofB underf, and letCbe the
    closure ofB underF.
(b) Prove that

### ±

```
f∈FCf⊆C.
(c) Must
```
### ±

```
f∈FCfbe closed underF? Justify your answer with either
a proof or a counterexample.
(d) Must
```
### ±

f∈FCf = C? Justify your answer with either a proof or a
counterexample.
*14. Letf :R× R→Rbe defined by the formulaf (x,y)= x−y. What
is the closure ofNunderf?

15. Letf :R+ × R+ → R+ be defined by the formulaf (x,y) = x/y.
    What is the closure ofZ+ underf?
16. As in part 2 of Example 5.4.7, letI= {X∈P(N)|Xis infinite}.
    (a) Prove that for every setX ⊆ Nthere are setsY,Z ∈Isuch that
       Y∩Z= X.


_Closures_ 267
(b) What is the closure ofIunder the binary operation ∩?
*17. LetF= {f |f :R→R}. Then for anyf,g∈F,f ◦g∈F, so ◦ is a
binary operation onF. Are the following sets closed under ◦?
(a) {f ∈F|f is one-to-one}. (Hint: See Theorem 5.2.5.)
(b) {f ∈F|f is onto}.
(c) {f ∈F|f is strictly increasing}. (A functionf :R→Ris _strictly
increasing_ if∀x∈R∀y∈R(x < y→f (x) < f (y)).)
(d) {f ∈F|fis strictly decreasing}. (A functionf :R→Ris _strictly
decreasing_ if∀x∈R∀y∈R(x < y→f (x) > f (y)).)

18. LetF = {f |f :R→ R}. Iff,g∈F, then we define the function
    f +g:R→Rby the formula(f +g)(x) = f (x)+g(x). Note that +
    is a binary operation onF. Are the following sets closed under +?
    (a) {f ∈F|f is one-to-one}.
    (b) {f ∈F|f is onto}.
    (c) {f ∈F|fis strictly increasing}. (See the previous exercise for the
       definition of strictly increasing.)
    (d) {f ∈F|f is strictly decreasing}. (See the previous exercise for the
       definition of strictly decreasing.)
19. For any setA, the set of all relations onAisP(A × A), and ◦ is a
    binary operation onP(A × A). Is the set of reflexive relations onA
    closed under ◦? What about the set of symmetric relations and the set of
    transitive relations?
*20. Division is not a binary operation onR, because you can’t divide by 0.
But we can fix this problem. We begin by adding a new element toR.
We will call the new element “NaN” (for “Not a Number”). LetR =
R∪ {NaN}, and definef :R× R→Ras follows:

```
f (x,y)=
```
### ·

```
x/y, ifx,y∈Randy²= 0,
NaN, otherwise.
```
```
This notation means that ifx,y∈Randy²= 0 thenf (x,y)= x/y, and
otherwisef (x,y)= NaN. Thus, for example,f (3, 7)= 3/7,f (3, 0)=
NaN, andf (NaN, 7) = NaN. Which of the following sets are closed
underf?
(a) R.
(b) R+.
(c) R−.
(d) Q.
(e) Q∪ {NaN}.
```

268 _Functions_

21. IfFis a set of functions fromA× AtoAandC⊆A, then we will say
    thatC is _closed under_ Fif∀f ∈F∀x ∈C∀y ∈C(f (x,y) ∈C). In
    other words,Cis closed underFiff for allf ∈F,Cis closed under
    f. IfB ⊆A, then the _closure_ ofB underFis the smallest setC⊆ A
    such thatB ⊆CandCis closed underF, if there is such a smallest set.
    (Compare these definitions to the definitions in exercise 12.)
    (a) Prove that the closure ofB underFexists.
(b) Letf :R×R→Randg:R×R→Rbe defined by the formulas
f (x,y)= x+yandg(x,y)= xy. Prove that the closure ofQ∪{

### √

### 2}

```
under {f,g} is the set {a+ b
```
### √

```
2 |a,b ∈Q}. (This set is calledQ
with
```
### √

```
2 adjoined , and is denotedQ(
```
### √

### 2 ).)

```
(c) Withfandgdefined as in part (b), what is the closure ofQ∪ {^3
```
### √

### 2}

```
under {f,g}?
```
## 5.5 Images and Inverse Images: A Research Project

Supposef :A→B. We have already seen that we can think offas matching
each element ofAwith exactly one element ofB. In this section we will see
thatfcan also be thought of as matching _subsets_ of A with subsets ofB and
vice-versa.

**Definition 5.5.1.** Supposef :A → B andX ⊆A. Then the _image_ ofX
underf is the setf (X) defined as follows:

```
f (X) = {f (x)|x∈X}
= {b∈B | ∃x∈X(f (x) = b)}.
```
(Note that the image of the whole domainAunderf is {f (a) |a∈A}, and
as we saw in Section 5.1 this is the same as the range off.)
IfY ⊆B, then the _inverse image_ ofY underf is the setf− 1(Y ) defined as
follows:

```
f− 1(Y )= {a∈A|f (a)∈Y}.
```
Note that the functionf in Definition 5.5.1 may fail to be one-to-one or
onto, and as a resultf− 1may not be a function fromBtoA, and fory∈B, the
notation “f− 1(y)” may be meaningless. However, even in this case Definition
5.5.1 still assigns a meaning to the notation “f− 1(Y )” forY ⊆B. If you find
this surprising, look again at the definition off− 1(Y ), and notice that it does


```
Images and Inverse Images: A Research Project 269
```
not treatf− 1as a function. The definition refers only to the results of applying
f to elements ofA, not the results of applyingf− 1to elements ofB.
For example, letLbe the function defined in part 3 of Example 5.1.2, which
assigns to each city the country in which that city is located. As in Example
5.1.2, letCbe the set of all cities andN the set of all countries. IfBis the set
of all cities with population at least one million, thenB is a subset ofC, and
the image ofBunderLwould be the set

```
L(B) = {L(b) |b∈B}
= {n∈N | ∃b∈B(L(b) = n)}
= {n∈N | there is some city with population at least
one million that is located in the countryn}.
```
Thus,L(B) is the set of all countries that contain a city with population at
least one million. Now letAbe the subset ofN consisting of all countries in
Africa. Then the inverse image ofAunderLis the set

```
L− 1(A) = {c∈C|L(c) ∈A}
= {c∈C| the country in whichcis located is in Africa}.
```
Thus,L− 1(A)is the set of all cities in African countries.
Let’s do one more example. Letf :R→ Rbe defined by the formula
f (x)= x^2 , and letX= {x∈R| 0 ≤x <2}. Then

```
f (X)= {f (x)|x∈X} = {x^2 | 0 ≤ x <2}.
```
Thus,f (X)is the set of all squares of real numbers between 0 and 2 (including
0 but not 2). A moment’s reflection should convince you that this set is {x ∈
R| 0 ≤ x < 4}. Now let’s letY = {x ∈R| 0 ≤ x < 4} and compute
f− 1(Y). According to the definition of inverse image,

f− 1(Y)= {x∈R|f (x)∈Y}
= {x∈R| 0 ≤ f (x) <4}
= {x∈R| 0 ≤ x^2 <4}
= {x∈R| − 2< x <2}.
By now you have had enough experience writing proofs that you should
be ready to put your proof-writing skills to work in answering mathematical
questions. Thus, most of this section will be devoted to a research project
in which you will discover for yourself the answers to basic mathematical
questions about images and inverse images. To get you started, we’ll work out
the answer to the first question.


270 _Functions_

Suppose f : A → B, and W and X are subsets ofA. A natural
question you might ask is whether or notf (W ∩X)must be the same as
f (W)∩f (X). It seems plausible that the answer is yes, so let’s see if we can
prove it. Thus, our goal will be to prove thatf (W ∩X) = f (W)∩f (X).
Because this is an equation between two sets, we proceed by taking an
arbitrary element of each set and trying to prove that it is an element of the
other.
Suppose first thatyis an arbitrary element off (W∩X). By the definition of
f (W∩X), this means thaty= f (x)for somex∈W∩X. Sincex∈W∩X,
it follows thatx ∈W andx ∈X. But now we havey = f (x)andx ∈W,
so we can conclude thaty∈f (W). Similarly, sincey= f (x)andx∈X, it
follows thaty∈f (X). Thus,y∈f (W)∩f (X). This completes the first half
of the proof.
Now suppose thaty ∈f (W)∩f (X). Theny ∈f (W), so there is some
w∈W such thatf (w)= y, and alsoy∈f (X), so there is somex∈Xsuch
thaty= f (x). If only we knew thatwandxwere equal, we could conclude
thatw = x ∈W ∩X, soy = f (x) ∈f (W∩X). But the best we can do
is to say thatf (w)= y= f (x). This should remind you of the definition of
one-to-one. If we knew thatf was one-to-one, we could conclude from the
fact thatf (w)= f (x)thatw= x, and the proof would be done. But without
this information we seem to be stuck.
Let’s summarize what we’ve discovered. First of all, the first half of the
proof worked fine, so we can certainly say that in generalf (W∩X)⊆f (W)∩
f (X). The second half worked _if_ we knew thatf was one-to-one, so we can
also say that iffis one-to-one, thenf (W∩X)= f (W)∩f (X). But what iff
isn’t one-to-one? There might be some way of fixing up the proof to show that
the equationf (W∩X)= f (W)∩f (X)is still true even iffisn’t one-to-one.
But by now you have probably come to suspect that perhapsf (W ∩X) and
f (W)∩f (X)are not always equal, so maybe we should devote some time to
trying to show that the proposed theorem is incorrect. In other words, let’s see
if we can find a counterexample – an example of a functionf and setsW and
Xfor whichf (W ∩X)²= f (W)∩f (X).
Fortunately, we can do better than just trying examples at random. Of
course, we know we’d better use a function that isn’t one-to-one, but by
examining our attempt at a proof, we can tell more than that. The attempted
proof thatf (W∩X) = f (W)∩f (X)ran into trouble only whenW andX
contained elementswandxsuch thatw²= xbutf (w)= f (x), so we should
choose an example in which this happens. In other words, not only should we
make suref isn’t one-to-one, we should also make sureW andX contain
elements that _show_ thatf isn’t one-to-one.


```
Images and Inverse Images: A Research Project 271
```
```
Figure 5.6.
```
The graph in Figure 5.6 shows a simple function that isn’t one-to-one.
Writing it as a set of ordered pairs, we could sayf = {(1, 4),(2, 5),(3, 5)}
andf :A→B, whereA= {1, 2, 3} andB = {4, 5, 6}. The two elements of
Athat show thatf is not one-to-one are 2 and 3, so these should be elements
ofW andX, respectively. Why not just try letting W = {2} andX = {3}?
With these choices we getf (W) = {f ( 2 )} = {5}andf (X)= {f ( 3 )} = {5},
sof (W)∩f (X) = {5} ∩ {5} = {5}. Butf (W ∩X) = f (∅) = ∅, so
f (W ∩X)²= f (W)∩f (X). (If you’re not sure whyf (∅)= ∅, work it out
using Definition 5.5.1!) If you want to see an example in whichW ∩X²= ∅,
tryW = {1, 2} andX= {1, 3}.
This example shows that it would be incorrect to state a theorem saying that
f (W ∩X)andf (W)∩f (X)are always equal. But our proof shows that the
following theorem is correct:

**Theorem 5. 5. 2.** _Suppose_ f :A→ B _, and_ W _and_ X _are subsets of_ A_. Then_
f (W∩X)⊆f (W)∩f (X)_. Furthermore, if_ f _is one-to-one, then_ f (W∩X)=
f (W)∩f (X)_._

Now, here are some questions for you to try to answer. In each case,
try to figure out as much as you can. Justify your answers with proofs and
counterexamples.

1. Supposef :A→BandW andXare subsets ofA.
    (a) Will it always be true thatf (W ∪X)= f (W)∪f (X)?
(b) Will it always be true thatf (W \X)=f (W)\f (X)?
(c) Will it always be true thatW ⊆X ↔f (W)⊆f (X)?


272 _Functions_

2. Supposef :A→BandYandZare subsets ofB.
    (a) Will it always be true thatf− 1(Y ∩Z)= f− 1(Y)∩f− 1(Z)?
(b) Will it always be true thatf− 1(Y ∪Z)= f− 1(Y)∪f− 1(Z)?
(c) Will it always be true thatf− 1(Y \Z)= f− 1(Y)\ f− 1(Z)?
(d) Will it always be true thatY ⊆Z↔f− 1(Y) ⊆f− 1(Z)?
3. Supposef :A→B andX ⊆A. Will it always be true thatf− 1(f (X))
    = X?
4. Supposef :A→ B andY ⊆B. Will it always be true thatf (f− 1(Y))
    = Y?
5. Supposef :A→AandC⊆A. Prove that the following statements are
    equivalent:
    (a)Cis closed underf.
(b) f (C)⊆C.
(c)C⊆f− 1(C).
6. Supposef : A → B andg : B → C. Can you prove any interesting
    theorems about images and inverse images of sets underg◦f?

Note: An observant reader may have noticed an ambiguity in our notation for
images and inverse images. Iff :A→B andY ⊆B, then we have used the
notationf− 1(Y)to stand for the inverse image ofY underf. But iff is one-
to-one and onto, then, as we saw in Section 5.3,f− 1is a function fromB toA.
Thus,f− 1(Y) could also be interpreted as the image ofY under the function
f− 1. Fortunately, this ambiguity is harmless, as the next problem shows.

7. Supposef :A→B,f is one-to-one and onto, andY ⊆B. Show that the
    inverse image ofY underfand the image ofYunderf− 1are equal. (Hint:
    First write out the definitions of the two sets carefully!)


## 6 Mathematical Induction

## 6.1 Proof by Mathematical Induction

In Chapter 3 we studied proof techniques that could be used in reason-
ing about any mathematical topic. In this chapter we’ll discuss one more
proof technique, called _mathematical induction_ , that is designed for proving
statements about what is perhaps the most fundamental of all mathematical
structures, the natural numbers. Recall that the set of all natural numbers is
N= {0, 1, 2, 3,.. .}.
Suppose you want to prove that every natural number has some property
P. In other words, you want to show that 0, 1, 2,... all have the propertyP.
Of course, there are infinitely many numbers in this list, so you can’t check
one-by-one that they all have propertyP. The key idea behind mathematical
induction is that to list all the natural numbers all you have to do is start with
0 and repeatedly add 1. Thus, you can show that every natural number has the
propertyP by showing that 0 has propertyP, and that whenever you add 1
to a number that has propertyP, the resulting number also has propertyP.
This would guarantee that, as you go through the list of all natural numbers,
starting with 0 and repeatedly adding 1, every number you encounter must
have propertyP. In other words, all natural numbers have propertyP. Here,
then, is how the method of mathematical induction works.

**To prove a goal of the form** ∀n∈NP (n) **:**
First proveP ( 0 ), and then prove∀n∈N(P (n) →P (n+ 1)). The first of
these proofs is sometimes called the _base case_ and the second the _induction
step_.

_Form of final proof:_

```
Base case: [Proof ofP ( 0 )goes here.]
Induction step: [Proof of∀n∈N(P (n)→P (n+ 1))goes here.]
273
```

274 _Mathematical Induction_

We’ll say more about the justification of the method of mathematical induc-
tion later, but first let’s look at an example of a proof that uses mathematical
induction. The following list of calculations suggests a surprising pattern:

```
20 = 1 = 2^1 − 1
20 + 2^1 = 1 + 2 = 3 = 2^2 − 1
20 + 2^1 + 2^2 = 1 + 2 + 4 = 7 = 2^3 − 1
20 + 2^1 + 2^2 + 2^3 = 1 + 2 + 4 + 8 = 15 = 2^4 − 1
```
The general pattern appears to be:

```
20 + 2^1 + · · · + 2n= 2n+ 1− 1.
```
Will this pattern hold for all values ofn? Let’s see if we can prove it.

**Example 6. 1. 1.** Prove that for every natural numbern, 2^0 + 2^1 + · · · + 2n=
2 n+ 1− 1.

_Scratch work_

Our goal is to prove the statement∀n∈NP (n), whereP (n)is the statement
20 + 2^1 + · · · + 2n= 2n+ 1− 1. According to our strategy, we can do this by
proving two other statements,P ( 0 )and∀n∈N(P (n) →P (n+ 1)).
Plugging in 0 forn, we see thatP ( 0 )is simply the statement 2^0 = 2^1 − 1,
the first statement in our list of calculations. The proof of this is easy – just do
the arithmetic to verify that both sides are equal to 1. Often the base case of an
induction proof is very easy, and the only hard work in figuring out the proof
is in carrying out the induction step.
For the induction step, we must prove∀n ∈N(P (n) → P (n+ 1)). Of
course, all of the proof techniques discussed in Chapter 3 can be used in
mathematical induction proofs, so we can do this by lettingnbe an arbitrary
natural number, assuming thatP (n)is true, and then proving thatP (n+ 1)
is true. In other words, we’ll letnbe an arbitrary natural number, assume that
20 + 2^1 + · · · + 2n= 2n+ 1− 1, and then prove that 2^0 + 2^1 + · · · + 2n+ 1=
2 n+ 2− 1. This gives us the following givens and goal:

```
Givens Goal
n∈N
20 + 2^1 + · · · + 2n= 2n+ 1− 1
```
```
20 + 2^1 + · · · + 2n+ 1= 2n+ 2− 1
```
Clearly the second given is similar to the goal. Is there some way to start
with the second given and derive the goal using algebraic steps? The key to the


```
Proof by Mathematical Induction 275
```
proof is to recognize that the left side of the equation in the goal is exactly the
same as the left side of the second given, but with the extra term 2n+ 1added
on. So let’s try adding 2n+ 1to both sides of the second given. This gives us

```
( 20 + 2^1 + · · · + 2n)+ 2n+ 1= ( 2 n+ 1− 1)+ 2n+ 1,
```
or in other words,

```
20 + 2^1 + · · · + 2n+ 1= 2 · 2n+ 1− 1 = 2n+ 2− 1.
```
This is the goal, so we are done!

_Solution_

**Theorem.** _For every natural number_ n _,_ 20 + 2^1 + · · · + 2n= 2n+ 1− 1_._

_Proof._ We use mathematical induction.
Base case: Settingn= 0, we get 2^0 = 1 = 2^1 − 1 as required.
Induction step: Let n be an arbitrary natural number and suppose that
20 + 2^1 + · · · + 2n= 2n+ 1− 1. Then

```
20 + 2^1 + · · · + 2n+ 1=
```
### ±

```
20 + 2^1 + · · · + 2n
```
### ²

```
+ 2n+ 1
```
```
=
```
### ±

```
2 n+ 1− 1
```
### ²

```
+ 2n+ 1
= 2 · 2n+ 1− 1
= 2n+ 2− 1. ±
```
Does the proof in Example 6.1.1 convince you that the equation 2^0 + 2^1
+ · · · + 2n = 2n+ 1− 1, which we calledP (n)in our scratch work, is true
for all natural numbersn? Well, certainlyP ( 0 )is true, since we checked that
explicitly in the base case of the proof. In the induction step we showed that
∀n∈N(P (n) → P (n+ 1)), so we know that for every natural numbern,
P (n) → P (n+ 1). For example, plugging inn = 0 we can conclude that
P ( 0 )→P ( 1 ). But now we know that bothP ( 0 )andP ( 0 )→P ( 1 )are true,
so applying modus ponens we can conclude thatP ( 1 )is true too. Similarly,
plugging inn = 1 in the induction step we getP ( 1 )→ P ( 2 ), so applying
modus ponens to the statementsP ( 1 )andP ( 1 )→P ( 2 )we can conclude that
P ( 2 )is true. Settingn= 2 in the induction step we getP ( 2 )→ P ( 3 ), so by
modus ponens,P ( 3 )is true. Continuing in this way, you should be able to see
that by repeatedly applying the induction step you can show thatP (n)must
be true for every natural numbern. In other words, the proof really does show
that∀n∈NP (n).


276 _Mathematical Induction_

As we saw in the last example, the hardest part of a proof by mathematical
induction is usually the induction step, in which you must prove the statement
∀n ∈N(P (n) → P (n+ 1)). It is usually best to do this by lettingnbe an
arbitrary natural number, assumingP (n)is true, and then proving thatP (n+1)
is true. The assumption thatP (n) is true is sometimes called the _inductive
hypothesis_ , and the key to the proof is usually to work out some relationship
between the inductive hypothesisP (n)and the goalP (n+ 1).
Here’s another example of a proof by mathematical induction.

**Example 6. 1. 2.** Prove that∀n∈N(3 |(n^3 −n)).

_Scratch work_

As usual, the base case is easy to check. The details are given in the following
proof. For the induction step, we letn be an arbitrary natural number and
assume that 3 |(n^3 −n), and we must prove that 3 | ((n + 1)^3 − (n+ 1)).
Filling in the definition of _divides_ , we can sum up our situation as follows:

```
Givens Goal
n∈N
∃k∈Z( 3 k= n^3 −n)
```
```
∃j∈Z( 3 j= (n+ 1)^3 −(n+ 1))
```
The second given is the inductive hypothesis, and we need to figure out how it
can be used to establish the goal.
According to our techniques for dealing with existential quantifiers in
proofs, the best thing to do first is to use the second given and letk stand
for a particular integer such that 3k = n^3 − n. To complete the proof we’ll
need to find an integerj (which will probably be related tokin some way)
such that 3j=(n+ 1)^3 −(n+ 1). We expand the right side of this equation,
looking for some way to relate it to the given equation 3k= n^3 −n:

```
(n+ 1)^3 −(n+ 1)= n^3 + 3n^2 + 3n+ 1 −n− 1
= (n^3 − n)+ 3n^2 + 3n
= 3k+ 3n^2 + 3n
= 3(k+n^2 +n).
```
It should now be clear that we can complete the proof by lettingj = k+n^2 +n.
As in similar earlier proofs, we don’t bother to mentionjin the proof.

_Solution_

**Theorem.** _For every natural number_ n _,_ 3 |(n^3 −n)_._


```
Proof by Mathematical Induction 277
```
_Proof._ We use mathematical induction.
Base case: Ifn= 0, thenn^3 −n= 0 = 3 ·0, so 3 |(n^3 − n).
Induction step: Let n be an arbitrary natural number and suppose
3|(n^3 − n). Then we can choose an integerk such that 3k = n^3 − n.
Thus,

```
(n+ 1)^3 − (n+ 1)= n^3 + 3n^2 + 3n+ 1 −n− 1
= (n^3 −n)+ 3n^2 + 3n
= 3k+ 3n^2 + 3n
= 3(k+n^2 +n).
```
Therefore 3 |((n+ 1)^3 −(n+ 1)), as required. ±

Once you understand why mathematical induction works, you should be
able to understand proofs that involve small variations on the method of
induction. The next example illustrates such a variation. In this example we’ll
try to figure out which is larger,n^2 or 2n. Let’s try out a few values ofn:

n n^22 n Which is larger?
0 0 1 2 n
1 1 2 2 n
2 4 4 tie
3 9 8 n^2
4 16 16 tie
5 25 32 2 n
6 36 64 2 n
It’s a close race at first, but starting withn = 5, it looks like 2nis taking
a decisive lead over n^2. Can we prove that it will stay ahead for larger
values ofn?

**Example 6. 1. 3.** Prove that∀n≥ 5( 2 n> n^2 ).

_Scratch work_

We are only interested in proving the inequality 2n> n^2 forn≥ 5. Thus, it
would make no sense to usen = 0 in the base case of our induction proof.
We’ll taken= 5 as the base case for our induction rather thann= 0. Once
we’ve checked that the inequality holds whenn= 5, the induction step will
show that the inequality must continue to hold if, starting withn = 5, we
repeatedly add 1 ton. Thus, it must also hold forn = 6, 7, 8,.. .. In other
words, we’ll be able to conclude that the inequality holds for alln≥ 5.


278 _Mathematical Induction_

The base casen= 5 has already been checked in the table. For the induction
step, we letn≥ 5 be arbitrary, assume 2n> n^2 , and try to prove that 2n+ 1>
(n+ 1)^2. How can we relate the inductive hypothesis to the goal? Perhaps the
simplest relationship involves the left sides of the two inequalities: 2n+ 1 =
2 ·2n. Thus, multiplying both sides of the inductive hypothesis 2n> n^2 by 2,
we can conclude that 2n+ 1> 2 n^2. Now compare this inequality to the goal,
2 n+ 1> (n+ 1)^2. If we could prove that 2n^2 ≥ (n+ 1)^2 , then the goal would
follow easily. So let’s forget about the original goal and see if we can prove
that 2n^2 ≥ (n+ 1)^2.
Multiplying out the right side of the new goal we see that we must prove
that 2n^2 ≥ n^2 + 2n+ 1, or in other wordsn^2 ≥ 2n+ 1. This isn’t hard to prove:
Since we’ve assumed thatn≥ 5, it follows thatn^2 ≥ 5n= 2n+ 3n > 2 n+ 1.

_Solution_

**Theorem.** _For every natural number_ n≥ 5 _,_ 2 n> n^2_._

_Proof._ By mathematical induction.
Base case: Whenn= 5 we have 2n= 32>25 =n^2.
Induction step: Letn≥ 5 be arbitrary, and suppose that 2n> n^2. Then

```
2 n+ 1= 2 ·2n
> 2 n^2 (inductive hypothesis)
=n^2 +n^2
≥n^2 + 5n (sincen≥ 5)
= n^2 + 2n+ 3n
> n^2 + 2n+ 1 = (n+ 1)^2. ±
```
```
Exercises
```
```
*1. Prove that for alln∈N, 0 + 1 + 2 + · · · + n=n(n+ 1)/2.
```
2. Prove that for alln∈N, 0^2 + 1^2 + 2^2 + · · · +n^2 = n(n+ 1)( 2 n+ 1)/6.
*3. Prove that for alln∈N, 0^3 + 1^3 + 2^3 + · · · + n^3 = [n(n + 1)/2]^2.
4. Find a formula for 1 + 3+ 5+ · · · + ( 2 n− 1), forn≥ 1, and prove that
your formula is correct. (Hint: First try some particular values ofnand
look for a pattern.)
5. Prove that for alln ∈N, 0 · 1 + 1 · 2 + 2 · 3 + · · · + n(n + 1) =
n(n + 1)(n+ 2)/3.


```
Proof by Mathematical Induction 279
```
6. Find a formula for 0 · 1· 2+ 1 ·2 ·3 + 2·3 ·4 + · · · + n(n+ 1)(n+ 2),
    forn ∈N, and prove that your formula is correct. (Hint: Compare this
    exercise to exercises 1 and 5, and try to guess the formula.)
*7. Find a formula for 3^0 + 3^1 + 3^2 +· · ·+ 3n, forn≥ 0, and prove that your
formula is correct. (Hint: Try to guess the formula, basing your guess on
Example 6.1.1. Then try out some values ofnand adjust your guess if
necessary.)
8. Prove that for alln≥ 1,

### 1−

### 1

### 2

### +

### 1

### 3

### −

### 1

### 4

### +· · ·+

### 1

```
2 n− 1
```
### −

### 1

```
2 n
```
### =

### 1

```
n+ 1
```
### +

### 1

```
n+ 2
```
### +

### 1

```
n+ 3
```
### +· · ·+

### 1

```
2 n
```
### .

9. (a) Prove that for alln∈N, 2 |(n^2 +n).
    (b) Prove that for alln∈N, 6 |(n^3 −n).

*10. Prove that for alln∈N, 64 |( 9 n− 8n− 1).

11. Prove that for alln∈N, 9 |( 4 n+ 6n− 1).

*12. (a) Prove that for alln∈N, 7n− 5nis even.

```
(b) Prove that for alln∈N, 24 |(2 · 7n− 3 · 5n+ 1).
```
13. Prove that for all integersaandband alln∈N,(a −b) |(an− bn).
    (Hint: Letaandbbe arbitrary integers and then prove by induction that
    ∀n ∈N[(a− b) | (an− bn)]. For the induction step, you must relate
    an+ 1−bn+ 1toan−bn. You might find it useful to start by completing
    the following equation:an+ 1− bn+ 1= a(an− bn)+ ?.)
14. Prove that for all integersa andband alln∈N,(a+ b) |(a^2 n+ 1+
    b^2 n+ 1).

*15. Prove that for alln≥ 10, 2n> n^3.

16. (a) Prove that for alln∈N, eithernis even ornis odd, but not both.
    (b) Prove that, as claimed in Section 3.4, every integer is either even or
       odd, but not both. (Hint: To prove that a negative integernis even or
       odd, but not both, apply part (a) to −n.)
17. Prove that for alln≥ 1, 2 ·2^1 + 3·2^2 + 4·2^3 +· · ·+(n+ 1) 2 n= n 2 n+ 1.
18. (a) What’s wrong with the following proof that for everyn∈N, 1·3^0 +
    3 ·3^1 + 5 · 3^2 + · · · +( 2 n+ 1) 3 n= n 3 n+ 1?

```
Proof. We use mathematical induction. Letnbe an arbitrary natural
number, and suppose 1·3^0 + 3·3^1 + 5·3^2 +· · ·+( 2 n+ 1) 3 n= n 3 n+ 1.
```

280 _Mathematical Induction_

```
Then
1 · 3^0 + 3 · 3^1 + 5 · 3^2 + · · · + ( 2 n+ 1) 3 n+( 2 n+ 3) 3 n+ 1
= n 3 n+ 1+( 2 n+ 3) 3 n+ 1
= ( 3 n+ 3) 3 n+ 1
= (n+ 1) 3 n+ 2,
```
```
as required. ±
(b) Find a formula for 1 · 3^0 + 3 · 3^1 + 5 · 3^2 + · · · + ( 2 n+ 1) 3 n, and
prove that your formula is correct.
```
19. Supposeais a real number anda <0. Prove that for alln∈N, ifnis
    even thenan> 0, and ifnis odd thenan<0.
*20. Supposeaandbare real numbers and 0< a < b.
(a) Prove that for alln≥ 1, 0< an< bn. (Notice that this generalizes
Example 3.1.2.)
(b) Prove that for alln≥ 2, 0< n

### √

```
a < n
```
### √

```
b.
(c) Prove that for alln≥ 1,abn+ ban< an+ 1+bn+ 1.
(d) Prove that for alln≥ 2,
³
a+ b
2
```
```
́n
<
```
```
an+bn
2
```
## 6.2 More Examples

We introduced mathematical induction in the last section as a method for prov-
ing that all natural numbers have some property. However, the applications of
mathematical induction extend far beyond the study of the natural numbers. In
this section we’ll look at some examples of proofs by mathematical induction
that illustrate the wide range of uses of induction.

**Example 6. 2. 1.** SupposeRis a partial order on a setA. Prove that every finite,
nonempty setB ⊆Ahas anR-minimal element.

_Scratch work_

You might think at first that mathematical induction is not appropriate for this
proof, because the goal doesn’t seem to have the form∀n ∈NP (n). In fact,
the goal doesn’t explicitly mention natural numbers at all! But we can see that
natural numbers enter into the problem when we recognize that to say thatB
is finite and nonempty means that it hasnelements, for somen∈N,n≥ 1.


```
More Examples 281
```
(We’ll give a more careful definition of the number of elements in a finite set
in Chapter 8. For the moment, an intuitive understanding of this concept will
suffice.) Thus, the goal means∀n≥ 1∀B ⊆A(B hasnelements →B has a
minimal element). We can now use induction to prove this statement.
In the base case we will haven= 1, so we must prove that ifBhas one
element, then it has a minimal element. It is easy to check that in this case the
one element ofB must be minimal.
For the induction step we letn ≥ 1 be arbitrary, assume that∀B ⊆ A(B
hasnelements →Bhas a minimal element), and try to prove that∀B ⊆A(B
hasn+ 1 elements →B has a minimal element). Guided by the form of the
goal, we letBbe an arbitrary subset ofA, assume thatBhasn+ 1 elements,
and try to prove thatBhas a minimal element.
How can we use the inductive hypothesis to reach our goal? The inductive
hypothesis tells us that if we had a subset ofAwithnelements, then it would
have a minimal element. To apply it, we need to find a subset ofAwithn
elements. Our arbitrary setBis a subset ofA, and we have assumed that it has
n+ 1 elements. Thus, a simple way to produce a subset ofAwithnelements
would be to remove one element fromB. It is not clear where this reasoning
will lead, but it seems to be the simplest way to make use of the inductive
hypothesis. Let’s give it a try.
Letbbe any element ofB, and letB±= B\ {b}. ThenB±is a subset of
Awithnelements, so by the inductive hypothesis,B±has a minimal element.
This is an existential statement, so we immediately introduce a new variable,
sayc, to stand for a minimal element ofB±.
Our goal is to prove thatB has a minimal element, which is also an
existential statement, so we should try to come up with a minimal element
ofB. We only know about two elements ofB at this point,bandc, so we
should probably try to prove that one of these is a minimal element ofB.
Which one? Well, it may depend on whether one of them is smaller than the
other according to the partial orderR. This suggests that we may need to use
proof by cases. In our proof we use the casesbRc and ¬bRc. In the first
case we prove thatbis a minimal element ofB, and in the second case we
prove thatcis a minimal element ofB. Note that to say that something is a
minimal element ofB is a negative statement, so in both cases we use proof
by contradiction.

_Solution_

**Theorem.** _Suppose_ R _is a partial order on a set_ A_. Then every finite,
nonempty set_ B⊆A _has an_ R _-minimal element._


282 _Mathematical Induction_

_Proof._ We will show by induction that for every natural numbern≥ 1, every
subset ofAwithnelements has a minimal element.
Base case:n= 1. SupposeB ⊆AandBhas one element. ThenB = {b}for
someb∈A. Clearly ¬∃x∈B(x ²= b), so certainly ¬∃x∈B(xRb ∧x²= b).
Thus,bis minimal.
Induction step: Supposen≥ 1, and suppose that every subset ofAwithn
elements has a minimal element. Now letB be an arbitrary subset ofAwith
n+ 1 elements. Letbbe any element ofB, and letB±= B\ {b}, a subset
ofAwithnelements. By the inductive hypothesis, we can choose a minimal
elementc∈B±.
Case 1.bRc. We claim thatb is a minimal element ofB. To see why,
suppose it isn’t. Then we can choose somex ∈Bsuch thatxRb andx²= b.
Sincex²= b,x∈B±. Also, sincexRb andbRc, by transitivity ofRit follows
thatxRc. Thus, sincecis a minimal element ofB±, we must havex= c. But
then sincexRb we havecRb, and we also knowbRc, so by antisymmetry of
Rit follows thatb = c. This is clearly impossible, sincec ∈B±= B\ {b}.
Thus,bmust be a minimal element ofB.
Case 2. ¬bRc. We claim in this case thatcis a minimal element ofB. To
see why, suppose it isn’t. Then we can choose somex ∈B such thatxRc
andx²= c. Sincecis a minimal element ofB±, we can’t havex∈B±, so the
only other possibility isx= b. But then sincexRc we must havebRc, which
contradicts our assumption that ¬bRc. Thus,cis a minimal element ofB. ±

Note that an infinite subset of a partially ordered set need not have a minimal
element, as we saw in part 1 of Example 4.4.5. Thus, the assumption that
B is finite was needed in our last theorem. This theorem can be used to
prove another interesting fact about partial orders, again using mathematical
induction:

**Example 6. 2. 2.** SupposeAis a finite set andRis a partial order onA. Prove
thatRcan be extended to a total order onA. In other words, prove that there
is a total orderT onAsuch thatR⊆T.

_Scratch work_

We’ll only outline the proof, leaving many details as exercises. The idea is to
prove by induction that∀n ∈N∀A∀R[(A hasnelements andRis a partial
order onA) → ∃T (T is a total order onAandR⊆T )]. The induction step
is similar to the induction step of the last example. IfRis a partial order on a
setAwithn+ 1 elements, then we remove one element, call ita, fromA, and


```
More Examples 283
```
apply the inductive hypothesis to the remaining setA±=A\{a}. This will give
us a total orderT±onA±, and to complete the proof we must somehow turn
this into a total orderT onAsuch thatR⊆T. The relationT±already tells us
how to compare any two elements ofA±, but it doesn’t tell us how to compare
ato the elements ofA±. This is what we must decide in order to defineT, and
the main difficulty in this step of the proof is that we must make this decision
in such a way that we end up withR⊆T. Our resolution of this difficulty in
the following proof involves choosingacarefully in the first place. We choose
ato be anR-minimal element ofA, and then when we defineT, we make
asmaller in theT ordering than every element ofA±. We use the theorem
in the last example, withB = A, to guarantee thatA has anR-minimal
element.

_Solution_

**Theorem.** _Suppose_ A _is a finite set and_ R _is a partial order on A. Then there
is a total order_ T _on_ A _such that_ R⊆T_._

_Proof._ We will show by induction onnthat every partial order on a set with
nelements can be extended to a total order. Clearly this suffices to prove the
theorem.
Base case:n= 0. SupposeRis a partial order onAandAhas 0 elements.
Then clearlyA= R= ∅. It is easy to check that∅is a total order onA(all
required properties hold vacuously), so we are done.
Induction step: Letnbe an arbitrary natural number, and suppose that every
partial order on a set withnelements can be extended to a total order. Now
suppose thatAhasn+ 1 elements andR is a partial order onA. By the
theorem in the last example, there must be somea ∈Asuch thatais anR-
minimal element ofA. LetA±= A\ {a} and letR±= R∩(A±× A±). You are
asked to show in exercise 1 thatR±is a partial order onA±. By the inductive
hypothesis, we can letT±be a total order onA±such thatR±⊆T±. Now let
T = T±∪({a} ×A). You are also asked to show in exercise 1 thatT is a total
order onAandR⊆T, as required. ±

The theorem in the last example can be extended to apply to partial orders
on infinite sets. For a step in this direction, see exercise 19 in Section 8.1.

**Example 6. 2. 3.** Prove that for alln ≥ 3, ifndistinct points on a circle are
connected in consecutive order with straight lines, then the interior angles of
the resulting polygon add up to(n− 2) 180 ◦.


284 _Mathematical Induction_

_Solution_

Figure 6.1 shows an example withn = 4. We won’t give the scratch work
separately for this proof.

```
Figure 6.1.α+β+γ+δ=(4 − 2) 180 ◦= 360◦.
```
**Theorem.** _For all_ n ≥ 3 _, if_ n _distinct points on a circle are connected in
consecutive order with straight lines, then the interior angles of the resulting
polygon add up to_ (n− 2) 180 ◦_._

_Proof._ We use induction onn.
Base case: Supposen = 3. Then the polygon is a triangle, and it is well
known that the interior angles of a triangle add up to 180◦.
Induction step: Letnbe an arbitrary natural number,n ≥ 3, and assume
the statement is true forn. Now consider the polygonPformed by connecting
somen+ 1 distinct pointsA 1 ,A 2 ,... ,An+ 1on a circle. If we skip the last
pointAn+ 1, then we get a polygonP±with onlynvertices, and by the inductive
hypothesis the interior angles of this polygon add up to(n− 2) 180 ◦. But now
as you can see in Figure 6.2, the sum of the interior angles ofP is equal to
the sum of the interior angles ofP±plus the sum of the interior angles of the
triangleA 1 AnAn+ 1. Since the sum of the interior angles of the triangle is 180◦,
we can conclude that the sum of the interior angles ofP is

```
(n− 2) 180 ◦+ 180◦= ((n+ 1)− 2) 180 ◦,
```
as required. ±


```
More Examples 285
```
```
Figure 6.2.
```
**Example 6. 2. 4.** Prove that for any positive integern, a 2n× 2nsquare grid
with any one square removed can be covered with L-shaped tiles that look like
this:.

_Scratch work_

Figure 6.3 shows an example for the casen = 2. In this case 2n= 4, so we
have a 4 × 4 grid, and the square that has been removed is shaded. The heavy
lines show how the remaining squares can be covered with five L-shaped tiles.

```
(a) 4 × 4 grid with one
square removed.
```
```
(b) Grid covered with
L-shaped tiles.
```
```
Figure 6.3.
```
We’ll use induction in our proof, and because we’re only interested in
positiven, the base case will ben = 1. In this case we have a 2 × 2 grid
with one square removed, and this can clearly be covered with one L-shaped
tile. (Draw a picture!)
For the induction step, we letnbe an arbitrary positive integer and assume
that a 2n× 2ngrid with any one square removed can be covered with L-shaped


286 _Mathematical Induction_

tiles. Now suppose we have a 2n+ 1× 2n+ 1grid with one square removed. To
use our inductive hypothesis we must somehow relate this to the 2n× 2ngrid.
Since 2n+ 1= 2n·2, the 2n+ 1× 2n+ 1grid is twice as wide and twice as high
as the 2n× 2ngrid. In other words, by dividing the 2n+ 1× 2n+ 1grid in half
both horizontally and vertically, we can split it into four 2n× 2n“subgrids.”
This is illustrated in Figure 6.4. The one square that has been removed will be
in one of the four subgrids; in Figure 6.4, it is in the upper right.

```
Figure 6.4.
```
The inductive hypothesis tells us that it is possible to cover the upper right
subgrid in Figure 6.4 with L-shaped tiles. But what about the other three
subgrids? It turns out that there is a clever way of placing one tile on the grid
so that the inductive hypothesis can then be used to show that the remaining
subgrids can be covered. See if you can figure it out before reading the answer
in the following proof.

_Solution_

**Theorem.** _For any positive integer_ n _, a_ 2 n× 2n _square grid with any one
square removed can be covered with L-shaped tiles._

_Proof._ We use induction onn.
Base case: Supposen = 1. Then the grid is a 2 × 2 grid with one square
removed, which can clearly be covered with one L-shaped tile.
Induction step: Letnbe an arbitrary positive integer, and suppose that a
2 n× 2ngrid with any one square removed can be covered with L-shaped tiles.
Now consider a 2n+ 1× 2n+ 1grid with one square removed. Cut the grid in
half both vertically and horizontally, splitting it into four 2n× 2nsubgrids.
The one square that has been removed comes from one of these subgrids, so
by the inductive hypothesis the rest of this subgrid can be covered with L-


```
More Examples 287
```
shaped tiles. To cover the other three subgrids, first place one L-shaped tile
in the center so that it covers one square from each of the three remaining
subgrids, as illustrated in Figure 6.5. The area remaining to be covered now
contains every square except one in each of the subgrids, so by applying the
inductive hypothesis to each subgrid we can see that this area can be covered
with tiles. ±

```
Figure 6.5.
```
It is interesting to note that this proof can actually be used to figure out how
to place tiles on a particular grid. For example, consider the 8 × 8 grid with
one square removed shown in Figure 6.6.

```
Figure 6.6.
```
According to the preceding proof, the first step in covering this grid with
tiles is to split it into four 4 × 4 subgrids and place one tile in the center,
covering one square from each subgrid except the upper left. This is illustrated
in Figure 6.7. The area remaining to be covered now consists of four 4 × 4
subgrids with one square removed from each of them.
How do we cover the remaining 4 × 4 subgrids? By the same method, of
course! For example, let’s cover the subgrid in the upper right of Figure 6.7.
We need to cover every square of this subgrid except the lower left corner,
which has already been covered. We start by cutting it into four 2 × 2 subgrids


288 _Mathematical Induction_

and put one tile in the middle, as in Figure 6.8. The area remaining to be
covered now consists of four 2 × 2 subgrids with one square removed from
each. Each of these can be covered with one tile, thus completing the upper
right subgrid of Figure 6.7.

```
Figure 6.7. Figure 6.8.
```
The remaining three quarters of Figure 6.7 are completed by a similar
procedure. The final solution is shown in Figure 6.9.

```
Figure 6.9.
```
The method we used in solving this problem is an example of a _recursive_
procedure. We solved the problem for an 8 × 8 grid by splitting it into four 4× 4
grid problems. To solve each of these, we split it into four 2× 2 problems, each
of which was easy to solve. If we had started with a larger grid, we might have
had to repeat the splitting many times before reaching easy 2 × 2 problems.
Recursion and its relationship to mathematical induction are the subject of our
next section.


```
More Examples 289
Exercises
```
*1. Complete the proof in Example 6.2.2 by doing the following proofs. (We
use the same notation here as in the example.)
(a) Prove thatR±is a partial order onA±.
(b) Prove thatT is a total order onAandR⊆T.

2. SupposeRis a partial order on a setA,B ⊆A, andB is finite. Prove
    that there is a partial orderT onAsuch thatR ⊆T and∀x ∈B∀y ∈
    A(xT y ∨yT x). Note that, in particular, ifAis finite we can letB = A,
    and the conclusion then means thatT is a total order onA. Thus, this
    gives an alternative approach to the proof of the theorem in Example
    6.2.2. (Hint: Use induction on the number of elements inB. For the
    induction step, assume the conclusion holds for any setB ⊆Awithn
    elements, and supposeB is a subset ofAwithn+ 1 elements. Letbbe
    any element ofBand letB±= B\{b}, a subset ofAwithnelements. By
    the inductive hypothesis, letT±be a partial order onAsuch thatR⊆T±
    and∀x∈B±∀y∈A(xT ±y∨yT±x). Now letA 1 = {x∈A|(x,b)∈T±}
    andA 2 = A\A 1 , and letT = T±∪(A 1 ×A 2 ). Prove thatT has all the
    required properties.)
3. SupposeRis a total order on a setA. Prove that every finite, nonempty
    setB ⊆Ahas anR-smallest element and anR-largest element.
*4. (a) SupposeRis a relation onA, and∀x ∈A∀y ∈A(xRy ∨yRx).
(Note that this implies thatRis reflexive.) Prove that for every finite,
nonempty setB⊆Athere is somex∈Bsuch that∀y∈B((x,y)∈
R◦R). (Hint: Imitate Example 6.2.1.)
    (b) Consider a tournament in which each contestant plays every other
       contestant exactly once, and one of them wins. We’ll say that a
       contestantx is _excellent_ if, for every other contestanty, eitherx
       beatsyor there is a third contestantzsuch thatxbeatszandzbeats
       y. Prove that there is at least one excellent contestant.
5. For eachn∈N, letFn= 2(^2 n)+ 1. (These numbers are called the _Fermat_
    numbers, after the French mathematician Pierre de Fermat (1601–1665).
    Fermat showed thatF 0 ,F 1 ,F 2 ,F 3 , andF 4 are prime, and conjectured
    that all of the Fermat numbers are prime. However, over 100 years later
    Euler showed thatF 5 is not prime. It is not known if there is anyn > 4
    for whichFnis prime.)
       Prove that for alln≥ 1,Fn= (F 0 ·F 1 ·F 2 · · ·Fn− 1)+ 2.
6. Prove that ifn≥ 1 anda 1 ,a 2 ,... ,anare any real numbers, then |a 1 +
    a 2 + · · · +an| ≤ |a 1 | + |a 2 | + · · · + |an|. (Note that this generalizes the
    triangle inequality; see exercise 13(c) of Section 3.5.)


290 _Mathematical Induction_

7. (a) Prove that ifaandbare positive real numbers, thena/b +b/a ≥ 2.
    (Hint: Start with the fact that(a− b)^2 ≥ 0.)
(b) Suppose thata,b, andc are real numbers and 0< a ≤ b ≤ c.
Prove thatb/c + c/a − b/a ≥ 1. (Hint: Start with the fact that
(c− a)(c −b)≥ 0.)
(c) Prove that ifn≥ 2 anda 1 ,a 2 ,... ,anare real numbers such that 0<
a 1 ≤a 2 ≤ · · · ≤ an, thena 1 /a 2 +a 2 /a 3 +· · ·+an− 1/an+an/a 1 ≥ n.
*8. Ifn ≥ 2 anda 1 ,a 2 ,... ,anis a list of positive real numbers, then
the number(a 1 + a 2 + · · · + an)/n is called the _arithmetic mean_ of
the numbersa 1 ,a 2 ,... ,an, and the number n

### √

```
a 1 a 2 · · ·an is called
their geometric mean. In this exercise you will prove the arithmetic
mean–geometric mean inequality , which says that the arithmetic mean
is always at least as large as the geometric mean.
(a) Prove that the arithmetic mean–geometric mean inequality holds for
lists of numbers of length 2. In other words, prove that for all positive
real numbersaandb,(a+ b)/2 ≥
```
### √

```
ab.
(b) Prove that the arithmetic mean–geometric mean inequality holds for
any list of numbers whose length is a power of 2. In other words,
prove that for alln ≥ 1, ifa 1 ,a 2 ,... ,a 2 nis a list of positive real
numbers, then
a 1 + a 2 + · · · +a 2 n
2 n
```
```
≥^2 n
```
### √

```
a 1 a 2 · · ·a 2 n.
```
```
(c) Suppose thatn 0 ≥ 2 and the arithmetic mean–geometric mean
inequality fails for some list of lengthn 0. In other words, there are
positive real numbersa 1 ,a 2 ,... ,an 0 such that
a 1 + a 2 + · · · + an 0
n 0
```
```
< n√^0 a 1 a 2 · · ·an 0.
```
```
Prove that for alln ≥ n 0 , the arithmetic mean–geometric mean
inequality fails for some list of lengthn.
(d) Prove that the arithmetic mean–geometric mean inequality always
holds.
```
9. Prove that ifn≥ 2 anda 1 ,a 2 ,... ,anis a list of positive real numbers,
    then
       n
1
a 1 +

```
1
a 2 + · · · +
```
```
1
an
```
```
≤ n
```
### √

```
a 1 a 2 · · ·an.
```
(Hint: Apply exercise 8. The number on the left side of the inequality
above is called the _harmonic mean_ of the numbersa 1 ,a 2 ,... ,an.)
*10. (a) Prove that ifa 1 ,a 2 ,b 1 , andb 2 are real numbers, witha 1 ≤ a 2 and
b 1 ≤b 2 , thena 1 b 2 +a 2 b 1 ≤a 1 b 1 +a 2 b 2.


_More Examples_ 291
(b) Suppose thatnis a positive integer,a 1 ,a 2 ,... ,anandb 1 ,b 2 ,... ,bn
are real numbers,a 1 ≤ a 2 ≤ · · · ≤ an,b 1 ≤ b 2 ≤ · · · ≤ bn, andfis
a one-to-one, onto function from {1, 2,.. .,n} to {1, 2,.. .,n}. Prove
thata 1 bf ( 1 )+a 2 bf ( 2 )+ · · · +anbf (n)≤ a 1 b 1 + a 2 b 2 + · · · +anbn.
(This fact is known as the _rearrangement inequality_ .)
*11. Prove that for every setA, ifA has n elements thenP(A) has 2n
elements.

12. IfAis a set, letP 2 (A)be the set of all subsets ofAthat have exactly two
    elements. Prove that for every setA, ifAhasnelements thenP 2 (A) has
    n(n − 1)/2 elements. (Hint: See the solution for exercise 11.)
13. Supposenis a positive integer. An equilateral triangle is cut into 4n
    congruent equilateral triangles by equally spaced line segments parallel
    to the sides of the triangle, and one corner is removed. (Figure 6.10
    shows an example in the case n = 2.) Show that the remaining area
    can be covered by trapezoidal tiles like this:.

```
Figure 6.10.
```
*14. Letnbe a positive integer. Supposenchords are drawn in a circle in such
a way that each chord intersects every other, but no three intersect at one
point. Prove that the chords cut the circle into(n^2 + n+ 2)/2 regions.
(Figure 6.11 shows an example in the casen = 4. Note that there are
( 42 + 4 + 2)/2 = 11 regions in this figure.)

```
Figure 6.11.
```
15. Letn be a positive integer, and suppose thatn chords are drawn in
    a circle in any way, cutting the circle into a number a regions. Prove
    that the regions can be colored with two colors in such a way that


292 _Mathematical Induction_

```
adjacent regions (that is, regions that share an edge) are different colors.
(Figure 6.12 shows an example in the casen= 4.)
```
```
Figure 6.12.
```
16. Prove that for every finite setAand every functionf : A → A, if
    f is one-to-one thenf is onto. (Hint: Use induction on the number of
    elements inA. For the induction step, assume the conclusion holds for
    any setAwithnelements, and suppose thatAhasn+ 1 elements and
    f :A →A. Supposef is one-to-one but not onto. Then there is some
    a∈Asuch thata /∈Ran(f ). LetA±= A\ {a}andf±= f∩(A±×A±).
    Show thatf±: A±→ A±,f±is one-to-one, andf±is not onto, which
    contradicts the inductive hypothesis.)
17. What’s wrong with the following proof that ifA ⊆Nand 0∈Athen
    A= N?
    _Proof._ We will prove by induction that∀n∈N(n∈A).
       Base case: Ifn= 0, thenn∈Aby assumption.
       Induction step: Letn∈Nbe arbitrary, and suppose thatn∈A. Since
    nwas arbitrary, it follows that every natural number is an element ofA,
    and therefore in particularn+ 1∈A. ±
18. Supposef :R→ R. What’s wrong with the following proof that for
    every finite, nonempty setA ⊆ Rthere is a real numbercsuch that
    ∀x∈A(f (x) = c)?
    _Proof._ We will prove by induction that for every n ≥ 1, ifA is any
    subset ofRwithnelements then∃c∈R∀x∈A(f (x) = c).
       Base case:n= 1. SupposeA⊆RandAhas one element. ThenA=
    {a}, for somea∈R. Letc= f (a). Then clearly∀x∈A(f (x) = c).
       Induction step: Supposen≥ 1, and for allA⊆R, ifAhasnelements
    then∃c∈R∀x ∈A(f (x) = c). Now supposeA⊆RandAhasn+ 1
    elements. Leta 1 be any element ofA, and letA 1 = A\ {a 1 }. ThenA 1
    hasnelements, so by the inductive hypothesis there is somec 1 ∈Rsuch
    that∀x∈A 1 (f (x) = c 1 ). If we can show thatf (a 1 )= c 1 then we will
    be done, since then it will follow that∀x∈A(f (x) = c 1 ).


```
Recursion 293
Leta 2 be an element ofAthat is different froma 1 , and letA 2 = A\
{a 2 }. Applying the inductive hypothesis again, we can choose a number
c 2 ∈Rsuch that∀x ∈A 2 (f (x) = c 2 ). Notice that sincea 1 ²= a 2 ,
a 1 ∈A 2 , sof (a 1 )= c 2. Now leta 3 be an element ofAthat is different
from botha 1 anda 2. Thena 3 ∈A 1 anda 3 ∈A 2 , sof (a 3 )= c 1 and
f (a 3 )= c 2. Thereforec 1 = c 2 , sof (a 1 )= c 1 , as required. ±
```
## 6.3 Recursion

In Chapter 3 we learned to prove statements of the form∀nP (n) by lettingn
be arbitrary and provingP (n). In this chapter we’ve learned another method
for proving such statements, whennranges over the natural numbers: prove
P ( 0 ), and then prove that for any natural numbern, ifP (n)is true then so is
P (n+ 1). Once we have proven these statements, we can run through all the
natural numbers in order and see thatPmust be true of all of them.
We can use a similar idea to introduce a new way of defining functions. In
Chapter 5, we usually defined a functionf by saying how to computef (n)for
anynin the domain off. If the domain offis the set of all natural numbers,
an alternative method to definef would be to say whatf ( 0 )is and then, for
any natural numbern, say how we could computef (n+ 1)if we already
knew the value off (n). Such a definition would enable us to run through all
the natural numbers in order computing the image of each one underf.
For example, we might use the following equations to define a functionf
with domainN:

```
f ( 0 )= 1;
for everyn∈N,f (n+ 1)= (n+ 1)·f (n).
```
The second equation tells us how to computef (n+ 1), but only if we already
know the value off (n). Thus, although we cannot use this equation to tell us
directly what the image of any number is underf, we _can_ use it to run through
all the natural numbers in order and compute their images.
We start withf ( 0 ), which we know from the first equation is equal to 1.
Plugging inn = 0 in the second equation, we see thatf ( 1 ) = 1 ·f ( 0 )=
1 · 1 = 1, so we’ve determined the value off ( 1 ). But now that we know that
f ( 1 )= 1, we can use the second equation again to computef ( 2 ). Plugging
inn= 1 in the second equation, we find thatf ( 2 )= 2 ·f ( 1 )= 2 · 1 = 2.
Similarly, settingn= 2 in the second equation we getf ( 3 )= 3·f ( 2 )= 3·2 =

6. Continuing in this way we can computef (n) for any natural numbern.
Thus, the two equations really do give us a rule that determines a unique value


294 _Mathematical Induction_

f (n)for each natural numbern, so they define a functionf with domainN.
Definitions of this kind are called _recursive_ definitions.
Sometimes we’ll work backwards when using a recursive definition to
evaluate a function. For example, suppose we want to computef ( 6 ), wheref
is the function just defined. According to the second equation in the definition
off,f ( 6 )= 6 ·f ( 5 ), so to complete the calculation we must computef ( 5 ).
Using the second equation again, we find thatf ( 5 )= 5 ·f ( 4 ), so we must
computef ( 4 ). Continuing in this way leads to the following calculation:

f ( 6 )= 6 ·f ( 5 )
= 6 · 5 ·f ( 4 )
= 6 · 5 ·4 ·f ( 3 )
= 6 · 5 ·4 · 3 ·f ( 2 )
= 6 · 5 ·4 · 3 ·2 ·f ( 1 )
= 6 · 5 ·4 · 3 ·2 · 1 ·f ( 0 )
= 6 · 5 ·4 · 3 ·2 · 1 · 1
= 720.
Perhaps now you recognize the functionf. For any positive integer n,
f (n)= n·(n− 1)·(n− 2)· · ·1, andf ( 0 )= 1. The numberf (n)is calledn
_factorial_ , and is denotedn!. (Recall that we used this notation in our proof of
Theorem 3.7.3.) For example, 6! = 720. Often, if a function can be written as
a formula with an ellipsis (... ) in it, then the use of the ellipsis can be avoided
by giving a recursive definition for the function. Such a definition is usually
easier to work with.
Many familiar functions are most easily defined using recursive definitions.
For example, for any numbera, we could definean with the following
recursive definition:

```
a^0 = 1;
for everyn∈N,an+ 1= an·a.
Using this definition, we would computea^4 like this:
a^4 = a^3 ·a
= a^2 ·a·a
= a^1 ·a·a·a
= a^0 ·a·a·a·a
= 1 ·a·a·a·a.
```

_Recursion_ 295
For another example, consider the sum 2^0 + 2^1 + 2^2 + · · · + 2n, which
appeared in the first example of this chapter. The ellipsis suggests that we
might be able to use a recursive definition. If we letf (n)= 2^0 + 2^1 + 2^2 +· · ·+
2 n, then notice that for everyn∈N,f (n+ 1)= 2^0 + 2^1 + 2^2 +· · ·+ 2n+ 2n+ 1=
f (n)+ 2n+ 1. Thus, we could definef recursively as follows:

```
f ( 0 )= 2^0 = 1;
for everyn∈N,f (n+ 1)= f (n)+ 2n+ 1.
```
As a check that this definition is right, let’s try it out in the casen= 3:

```
f ( 3 )= f ( 2 )+ 2^3
= f ( 1 )+ 2^2 + 2^3
= f ( 0 )+ 2^1 + 2^2 + 2^3
= 2^0 + 2^1 + 2^2 + 2^3
= 15.
```
Sums such as the one in the last example come up often enough that there
is a special notation for them. Ifa 0 ,a 1 ,... ,anis a list of numbers, then the
sum of these numbers is written

∑n
i= 0ai. This is read “the sum asigoes from
0 tonofai.” For example, we can use this notation to write the sum in the last
example:

```
μn
```
```
i= 0
```
```
2 i= 2^0 + 2^1 + 2^2 + · · · + 2n.
```
More generally, ifn≥m, then

```
μn
```
```
i=m
```
```
ai= am+am+ 1+ am+ 2+ · · · +an.
```
For example,

```
μ^6
```
```
i= 3
```
```
i^2 = 3^2 + 4^2 + 5^2 + 6^2 = 9 + 16 + 25 + 36 = 86.
```
The letteriin these formulas is a bound variable and therefore can be replaced
by a new variable without changing the meaning of the formula.
Now let’s try giving a recursive definition for this notation. We letmbe an
arbitrary integer, and then proceed by recursion onn. Just as the base case for
an induction proof need not ben = 0, the base for a recursive definition can


296 _Mathematical Induction_

also be a number other than 0. In this case we are only interested inn≥ m, so
we taken= mas the base for our recursion:

```
μm
```
```
i=m
```
```
ai= am;
```
```
for everyn≥m,
```
```
nμ+ 1
```
```
i=m
```
```
ai=
```
```
μn
```
```
i=m
```
```
ai+an+ 1.
```
Trying this definition out on the previous example, we get

```
μ^6
```
```
i= 3
```
```
i^2 =
```
```
μ^5
```
```
i= 3
```
```
i^2 + 6^2
```
### =

```
μ^4
```
```
i= 3
```
```
i^2 + 5^2 + 6^2
```
### =

```
μ^3
```
```
i= 3
```
```
i^2 + 4^2 + 5^2 + 6^2
```
### = 3^2 + 4^2 + 5^2 + 6^2 ,

just as we wanted.
Clearly induction and recursion are closely related, so it shouldn’t be
surprising that if a concept has been defined by recursion, then proofs
involving this concept are often best done by induction. For example, in
Section 6.1 we saw some proofs by induction that involved summations and
exponentiation, and now we have seen that summations and exponentiation
can be defined recursively. Because the factorial function can also be defined
recursively, proofs involving factorials also often use induction.

**Example 6. 3. 1.** Prove that for everyn≥ 4,n!> 2 n.

_Scratch work_

Because the problem involves factorial and exponentiation, both of which are
defined recursively, induction seems like a good method to use. The base case
will ben = 4, and it is just a matter of simple arithmetic to check that the
inequality is true in this case. For the induction step, our inductive hypothesis
will ben!> 2 n, and we must prove that(n+ 1)!> 2 n+ 1. Of course, the way
to relate the inductive hypothesis to the goal is to use the recursive definitions
of factorial and exponentiation, which tell us that(n+ 1)!= (n+ 1)·n!


```
Recursion 297
```
and 2n+ 1 = 2n· 2. Once these equations are plugged in, the rest is fairly
straightforward.

_Solution_

**Theorem.** _For every_ n≥ 4 _,_ n!> 2 n_._

_Proof._ By mathematical induction.
Base case: Whenn= 4 we haven! = 24>16 = 2n.
Induction step: Letn≥ 4 be arbitrary and suppose thatn!> 2 n. Then

```
(n+ 1)! = (n+ 1)·n!
> (n+ 1)· 2n (inductive hypothesis)
>2 · 2n= 2n+ 1. ±
```
**Example 6. 3. 2.** Prove that for every real numberaand all natural numbersm
andn,am+n= am·an.

_Scratch work_

There are three universal quantifiers here, and we’ll treat the first two differ-
ently from the third. We letaandmbe arbitrary and then use mathematical
induction to prove that∀n∈N(am+n= am·an). The key algebraic fact in the
induction step will be the formulaan+ 1= an·afrom the recursive definition
of exponentiation.

_Solution_

**Theorem.** _For every real number_ a _and all natural numbers_ m _and_ n _,_ am+n=
am·an_._

_Proof._ Letabe an arbitrary real number andman arbitrary natural number.
We now proceed by induction onn.
Base case: Whenn= 0, we haveam+n= am+ 0= am= am·1 = am·a^0 =
am·an.
Induction step. Supposeam+n= am·an. Then

```
am+(n+ 1)= a(m+n)+ 1
= am+n·a (definition of exponentiation)
= am·an·a (inductive hypothesis)
= am·an+ 1 (definition of exponentiation). ±
```

298 _Mathematical Induction_

**Example 6. 3. 3.** A sequence of numbersa 0 ,a 1 ,a 2 ,... is defined recursively
as follows:

```
a 0 = 0;
for everyn∈N,an+ 1= 2an+ 1.
```
Find a formula foranand prove that your formula is correct.

_Scratch work_

It’s probably a good idea to start out by computing the first few terms in the
sequence. We already knowa 0 = 0, so plugging inn = 0 in the second
equation we geta 1 = 2a 0 + 1 = 0 + 1 = 1. Thus, plugging inn= 1, we get
a 2 = 2a 1 + 1 = 2 + 1 = 3. Continuing in this way we get the following table
of values:

```
n 0 1 2 3 4 5 6 · · ·
an 0 1 3 7 15 31 63 · · ·
```
Aha! The numbers we’re getting are one less than the powers of 2. It
looks like the formula is probablyan = 2n− 1, but we can’t be sure this
is right unless we prove it. Fortunately, it is fairly easy to prove the formula by
induction.

_Solution_

**Theorem.** _If the sequence_ a 0 _,_ a 1 _,_ a 2 _,... is defined by the recursive definition
given earlier, then for every natural number_ n _,_ an= 2n− 1_._

_Proof._ By induction.
Base case:a 0 = 0 = 2^0 − 1.
Induction step: Supposean= 2n− 1. Then

```
an+ 1= 2an+ 1 (definition ofan+ 1)
= 2( 2 n− 1)+ 1 (inductive hypothesis)
= 2n+ 1− 2 + 1 = 2n+ 1− 1. ±
```
We end this section with a rather unusual example. We’ll prove that for
every real numberx >− 1 and every natural numbern,(1 + x)n> nx. A
natural way to proceed would be to letx > − 1 be arbitrary, and then use
induction onn. In the induction step we assume that(1 +x)n> nx, and then
try to prove that(1 + x)n+ 1 > (n+ 1)x. Because we’ve assumedx >− 1,


```
Recursion 299
```
we have 1 +x >0, so we can multiply both sides of the inductive hypothesis
(1 +x)n> nxby 1 +xto get

```
(1 +x)n+ 1= (1 +x)(1 +x)n
> (1 +x)nx
= nx+nx^2.
```
But the conclusion we need for the induction step is(1 +x)n+ 1> (n+ 1)x,
and it’s not clear how to get this conclusion from the inequality we’ve derived.
Our solution to this difficulty will be to replace our original problem with a
problem that appears to be harder but is actually easier. Instead of proving the
inequality(1 +x)n> nxdirectly, we’ll prove(1 +x)n≥ 1 + nx, and then
observe that since 1 +nx > nx, it follows immediately that(1 +x)n> nx.
You might think that if we had difficulty proving(1 +x)n> nx, we’ll surely
have more difficulty proving the stronger statement(1 + x)n≥ 1 +nx. But
it turns out that the approach we tried unsuccessfully on the original problem
works perfectly on the new problem!

**Theorem 6. 3. 4.** _For every_ x >− 1 _and every natural number_ n _,_ (1+x)n> nx_._

_Proof._ Letx > − 1 be arbitrary. We will prove by induction that for every
natural numbern,(1 + x)n ≥ 1 + nx, from which it clearly follows that
(1 +x)n> nx.
Base case: Ifn= 0, then(1 +x)n= (1 +x)^0 = 1 = 1 + 0 = 1 +nx.
Induction step: Suppose(1 +x)n≥ 1 +nx. Then

```
(1 +x)n+ 1= (1 +x)(1 +x)n
≥ (1 +x)(1 +nx) (inductive hypothesis)
= 1 +x+nx +nx^2
≥ 1 +(n+ 1)x (sincenx^2 ≥ 0). ±
```
```
Exercises
```
```
*1. Find a formula for
```
```
∑n
i= 1
```
```
1
i(i+ 1)and prove that your formula is correct.
```
2. Prove that for alln≥ 1,
    μn

```
i= 1
```
### 1

```
i(i+ 1)(i+ 2)
```
### =

```
n^2 + 3n
4 (n+ 1)(n+ 2)
```
### .


300 _Mathematical Induction_

3. Prove that for alln≥ 2,
    μn

```
i= 2
```
### 1

```
(i− 1)(i+ 1)
```
### =

```
3 n^2 − n− 2
4 n(n + 1)
```
### .

4. Prove that for alln∈N,
    μn

```
i= 0
```
```
( 2 i+ 1)^2 =
```
```
(n+ 1)( 2 n+ 1)( 2 n+ 3)
3
```
### .

5. Supposeris a real number andr²= 1. Prove that for alln∈N,
    μn

```
i= 0
```
```
ri=
```
```
rn+ 1− 1
r− 1
```
### .

```
(Note that this exercise generalizes Example 6.1.1 and exercise 7 of
Section 6.1.)
*6. Prove that for alln≥ 1,
μn
```
```
i= 1
```
### 1

```
i^2 ≤ 2 −
```
### 1

```
n.
```
7. (a) Supposea 0 ,a 1 ,a 2 ,... ,anandb 0 ,b 1 ,b 2 ,... ,bnare two sequences
    of real numbers. Prove that
       μn

```
i= 0
```
```
(ai+ bi)=
```
```
μn
```
```
i= 0
```
```
ai+
```
```
μn
```
```
i= 0
```
```
bi.
```
```
(b) Supposecis a real number anda 0 ,a 1 ,... ,anis a sequence of real
numbers. Prove that
```
```
c·
```
```
μn
```
```
i= 0
```
```
ai=
```
```
μn
```
```
i= 0
```
```
(c·ai).
```
```
*8. The harmonic numbers are the numbersHnforn ≥ 1 defined by the
formula
```
```
Hn=
```
```
μn
```
```
i= 1
```
### 1

```
i
```
### .

```
(a) Prove that for all natural numbersn andm, ifn ≥ m ≥ 1 then
Hn−Hm≥ (n−m)/n. (Hint: Letmbe an arbitrary natural number
withm≥ 1 and then proceed by induction onn, withn= mas the
base case of the induction.)
(b) Prove that for alln≥ 0,H 2 n≥ 1 + n/2.
```

```
Recursion 301
(c) (For those who have studied calculus.) Show that limn→∞ Hn= ∞ ,
so
```
### ∑∞

```
i= 1(^1 /i)diverges.
```
9. LetHnbe defined as in exercise 8. Prove that for alln≥ 2,
    nμ− 1

```
k= 1
```
```
Hk= nHn− n.
```
10. Find a formula for

```
∑n
i= 1(i·(i!))and prove that your formula is correct.
```
11. Find a formula for

∑n
i= 0(i/(i + 1)!)and prove that your formula is
correct.
*12. (a) Prove that for alln∈N, 2n> n.
(b) Prove that for alln≥ 9,n!≥ ( 2 n)^2.
(c) Prove that for alln∈N,n! ≤ 2(n

(^2) )
.

13. Supposekis a positive integer.
    (a) Prove that for alln∈N,(k^2 +n)! ≥ k^2 n.
    (b) Prove that for alln ≥ 2k^2 ,n!≥ kn. (Hint: Use induction, and for
       the base case use part (a). Note that in the language of exercise 19
       of Section 5.1, this shows that iff (n) = knandg(n) = n!, then
       f ∈O(g).)
14. Prove that for every real numbera and all natural numbersm andn,
    (am)n= amn.
*15. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:

```
a 0 = 0;
for everyn∈N,an+ 1= 2an+n.
Prove that for alln∈N,an= 2n− n− 1.
```
16. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:
    a 0 = 2;
    for everyn∈N,an+ 1= (an)^2.
Find a formula foranand prove that your formula is correct.
17. A sequencea 1 ,a 2 ,a 3 ,... is defined recursively as follows:

```
a 1 = 1;
for everyn≥ 1,an+ 1= an
an+ 1
```
### .

Find a formula foranand prove that your formula is correct.
*18. Forn≥k≥ 0, the quantity

```
(n
k
```
### )

```
is defined as follows:
³n
```
```
k
```
### ́

### =

```
n!
k! ·(n−k)!
```
### .


302 _Mathematical Induction_

```
(a) Prove that for alln∈N,
```
```
(n
0
```
### )

### =

```
(n
n
```
### )

### = 1.

```
(b) Prove that for all natural numbersnandk, ifn≥k >0 then
```
```
(n+ 1
k
```
### )

### ( =

```
n
k
```
### )

### +

```
(n
k− 1
```
### )

### .

```
(c) IfAis a set andk∈N, letPk(A) be the set of all subsets ofAthat
havek elements. Prove that ifAhasnelements andn ≥ k ≥ 0,
thenPk(A)has
```
```
(n
k
```
### )

```
elements. (Hint: Prove by induction that∀n ∈
N∀A[Ais a set withnelements → ∀k(n ≥ k≥ 0 →Pk(A)has
```
```
(n
k
```
### )

```
elements)]. Imitate exercises 11 and 12 of Section 6.2. In fact, this
exercise generalizes exercise 12 of Section 6.2. This exercise shows
that
```
```
(n
k
```
### )

```
is the number of ways of choosingkelements out of a set of
sizen, so it is sometimes calledn choose k.)
(d) Prove that for all real numbersxandyand every natural numbern,
```
```
(x+y)n=
```
```
μn
```
```
k= 0
```
### ³

```
n
k
```
### ́

```
xn−kyk.
```
```
(This is called the binomial theorem , so the numbers
```
```
(n
k
```
### )

```
are some-
times called binomial coefficients .)
Note: Parts (a) and (b) show that we can compute the numbers
```
```
(n
k
```
### )

```
conveniently by using a triangular array as in Figure 6.13. This array
is called Pascal’s triangle , after the French mathematician Blaise Pascal
(1623–1662). Each row of the triangle corresponds to a particular value
ofn, and it lists the values of
```
```
(n
k
```
### )

```
for allkfrom 0 ton. Part (a) shows that
the first and last numbers in every row are 1. Part (b) shows that every
other number is the sum of the two numbers above it. For example, the
lines in Figure 6.13 illustrate that
```
### ( 3

```
2
```
### )

```
= 3 is the sum of
```
### ( 2

```
1
```
### )

```
( = 2 and
2
2
```
### )

### = 1.

```
n = 0 : 1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
```
```
n = 1 :
n = 2 :
n = 3 :
n = 4 :
::
```
```
Figure 6.13. Pascal’s triangle.
```
19. For the meaning of the notation used in this exercise, see exercise 18.
    (a) Prove that for alln∈N,

```
∑n
k= 0
```
```
(n
k
```
### )

```
= 2n. (Hint: You can do this by
induction using parts (a) and (b) of exercise 18, or you can combine
```

```
Strong Induction 303
part (c) of exercise 18 with exercise 11 of Section 6.2, or you can
plug something in forxandyin part (d) of exercise 18.)
(b) Prove that for alln≥ 1,
```
```
∑n
k= 0(− 1)
```
```
k(n
k
```
### )

### = 0.

*20. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:

```
a 0 = 0;
```
```
for everyn∈N,an+ 1= (an)^2 +
```
### 1

### 4

```
Prove that for alln≥ 1, 0< an<1.
```
21. In this problem we will define, for each natural numbern, a function
    fn: Z+ → Z+. The sequence of functionsf 0 ,f 1 ,f 2 ,... is defined
    recursively as follows:

```
for everyx∈Z+,f 0 (x) = x;
for everyn∈Nand everyx∈Z+,fn+ 1(x) = 2fn(x).
```
```
(a) The first equation in this recursive definition gives a formula for
f 0 (x), namelyf 0 (x) = x. Find formulas forf 1 (x),f 2 (x), andf 3 (x).
(b) Prove that for all natural numbersnand all positive integersxand
y, ifx < ythenfn(x) < fn(y).
(c) Prove that for all natural numbersmandnand all positive integers
x, ifm < nthenfm(x) < fn(x).
(d) Prove that for every natural numbern,fn ∈O(fn+ 1)butfn+ 1 ∈/
O(fn). (See exercise 19 in Section 5.1 for the meaning of the
notation used here.)
Now defineg:Z+ →Z+by the formulag(x) = fx(x).
(e) Computeg( 1 ),g( 2 ), andg( 3 ). (Do not try to computeg( 4 ); the
answer would be a number with more than 6 × 10^19727 digits.)
(f) Prove that for every natural numbern,fn∈O(g) butg /∈O(fn).
```
22. Explain the paradox in the proof of Theorem 6.3.4, in which we made
    the proof easier by changing the goal to a statement that looked like it
    would be harder to prove.

## 6.4 Strong Induction

In the induction step of a proof by mathematical induction, we prove that a
natural number has some property based on the assumption that the previous
number has the same property. In some cases this assumption isn’t strong
enough to make the proof work, and we need to assume that _all_ smaller natural


304 _Mathematical Induction_

numbers have the property. This is the idea behind a variant of mathematical
induction sometimes called _strong induction_ :

**To prove a goal of the form** ∀n∈NP (n) **:**
Prove that∀n[(∀k < n P (k))→P (n)], where bothnandkrange over the
natural numbers in this statement. Of course, the most direct way to prove this
is to letnbe an arbitrary natural number, assume that∀k < n P (k), and then
proveP (n).

Note that no base case is necessary in a proof by strong induction. All that is
needed is a modified form of the induction step in which we prove that if every
natural number smaller thannhas the propertyP, thennhas the propertyP.
In a proof by strong induction, we refer to the assumption that every natural
number smaller thannhas the propertyP as the _inductive hypothesis_.
To see why strong induction works, it might help if we first review briefly
why ordinary induction works. Recall that a proof by ordinary induction
enables us to go through all the natural numbers in order and see that each
of them has some propertyP. The base case gets the process started, and
the induction step shows that the process can always be continued from one
number to the next. But note that in this process, by the time we check that
some natural numbernhas the propertyP, we’ve already checked that _all
smaller numbers_ have the property. In other words, we already know that
∀k < n P (k). The idea behind strong induction is that we should be allowed
to use this information in our proof ofP (n).
Let’s work out the details of this idea more carefully. Suppose that we have
followed the strong induction proof strategy, and we’ve proven the statement
∀n[(∀k < n P (k))→P (n)]. Then, plugging in 0 forn, we can conclude that
(∀k < 0 P (k)) → P ( 0 ). But because there are no natural numbers smaller
than 0, the statement∀k < 0 P (k) is vacuously true. Therefore, by modus
ponens,P ( 0 )is true. (This explains why the base case doesn’t have to be
checked separately in a proof by strong induction; the base caseP ( 0 )actually
follows from the modified form of the induction step used in strong induction.)
Similarly, plugging in 1 fornwe can conclude that(∀k < 1 P (k)) →P ( 1 ).
The only natural number smaller than 1 is 0, and we’ve just shown thatP ( 0 )is
true, so the statement∀k < 1 P (k)is true. Therefore, by modus ponens,P ( 1 )
is also true. Now plug in 2 fornto get the statement(∀k < 2 P (k))→P ( 2 ).
SinceP ( 0 )andP ( 1 )are both true, the statement∀k < 2 P (k)is true, and
therefore by modus ponens,P ( 2 )is true. Continuing in this way we can show
thatP (n)is true for every natural numbern, as required. For an alternative
justification of the method of strong induction, see exercise 1.


```
Strong Induction 305
As our first example of the method of strong induction, we prove an
important fact of number theory known as the division algorithm.^1
```
```
Theorem 6. 4. 1. (Division algorithm) For all natural numbers n and m , if
m > 0 then there are natural numbers q and r such that n = qm +r and
r < m. (The numbers q and r are called the quotient and remainder when n
is divided by m .)
```
```
Scratch work
We letm be an arbitrary positive integer and then use strong induction to
prove that∀n∃q∃r(n = qm + r∧r < m). According to the description
of strong induction, this means that we should letnbe an arbitrary natural
number, assume that∀k < n∃q∃r(k = qm +r∧r < m), and prove that
∃q∃r(n= qm+r∧r < m).
Our goal is an existential statement, so we should try to come up with values
ofqandrwith the required properties. Ifn < mthen this is easy because we
can just letq = 0 andr = n. But ifn ≥ m, then this won’t work, since
we must haver < m, so we must do something different in this case. As
usual in induction proofs, we look to the inductive hypothesis. The inductive
hypothesis starts with∀k < n, so to apply it we should plug in some natural
number smaller thannfork, but what should we plug in? The reference to
division in the statement of the theorem provides a hint. If we think of division
as repeated subtraction, then dividingnbyminvolves subtractingmfromn
repeatedly. The first step in this process would be to computen− m, which
is a natural number smaller thann. Perhaps we should plug inn− mfork.
It’s not entirely clear where this will lead, but it’s worth a try. In fact, as you’ll
see in the proof, once we take this step the desired conclusion follows almost
immediately.
Notice that we are using the fact that a quotient and remainder exist for some
natural number smaller thannto prove that they exist forn, but this smaller
number is notn− 1, it’sn−m. This is why we’re using strong induction rather
than ordinary induction for this proof.
Proof. We letm be an arbitrary positive integer and then proceed by strong
induction onn.
Supposen is a natural number, and for everyk < nthere are natural
numbersqandrsuch thatk= qm+randr < m.
```
(^1) The terminology here is somewhat unfortunate, since what we are calling the division algorithm
is actually a theorem and not an algorithm. Nevertheless, this terminology is common.


306 _Mathematical Induction_

Case 1.n < m. Letq= 0 andr= n. Then clearlyn= qm+randr < m.
Case 2.n ≥ m. Letk = n− m < nand note that sincen ≥ m,k is a
natural number. By the inductive hypothesis we can chooseq±andr±such that
k= q±m+r±andr±< m. Thenn− m= q±m+r±, son= q±m+r±+m =
(q±+ 1)m+r±. Thus, if we letq= q±+ 1 andr= r±, then we haven= qm+r
andr < m, as required. ±

The division algorithm can also be extended to negative integersn, and it
can be shown that for everymandnthe quotient and remainderqandrare
unique. For more on this, see exercise 14.
Our next example is another important theorem of number theory. We used
this theorem in our proof in the introduction that there are infinitely many
primes. We will have more to say about this theorem in Chapter 7.

**Theorem 6. 4. 2.** _Every integer_ n > 1 _is either prime or a product of two or
more primes._

_Scratch work_

We write the goal in the form∀n∈N[n >1 → (nis prime∨nis a product
of primes)] and then use strong induction. Thus, our inductive hypothesis is
∀k < n[k >1 →(kis prime∨kis a product of primes)], and we must prove
thatn > 1 →(n is prime∨n is a product of primes). Of course, we start
by assumingn >1, and according to our strategies for proving disjunctions,
a good way to complete the proof would be to assume thatn is not prime
and prove that it must be a product of primes. Because the assumption that
nis not prime means∃a∃b(n = ab ∧a < n∧b < n), we immediately
use existential instantiation to introduce the new variablesa andbinto the
proof. Applying the inductive hypothesis toaandbnow leads to the desired
conclusion.

_Proof._ We use strong induction. Supposen >1, and suppose that for every
integerk, if 1< k < nthenkis either prime or a product of primes. Of course,
ifnis prime then there is nothing to prove, so supposenis not prime. Then
we can choose positive integersaandbsuch thatn= ab,a < n, andb < n.
Note that sincea < n= ab, it follows thatb >1, and similarly we must have
a >1. Thus, by the inductive hypothesis, each ofaandbis either prime or a
product of primes. But then sincen=ab,nis a product of primes. ±

The method of recursion studied in the last section also has a strong form.
As an example of this, consider the following definition of a sequence of
numbers, called the _Fibonacci numbers_. These numbers were first studied by


```
Strong Induction 307
```
the Italian mathematician Leonardo of Pisa (circa 1170–circa 1250), who is
better known by the nickname Fibonacci.

```
F 0 = 0;
F 1 = 1;
for everyn≥ 2,Fn= Fn− 2+Fn− 1.
```
For example, plugging inn= 2 in the last equation we find thatF 2 = F 0 +
F 1 = 0 + 1 = 1. Similarly,F 3 =F 1 +F 2 = 1 + 1 = 2 andF 4 = F 2 + F 3 =
1 + 2 = 3. Continuing in this way leads to the following values:

n 0 1 2 3 4 5 6 7 8 · · ·
Fn 0 1 1 2 3 5 8 13 21 · · ·
Note that, starting withF 2 , each Fibonacci number is computed using, not
just the previous number in the sequence, but also the one before that. This is
the sense in which the recursion is strong. It shouldn’t be surprising, therefore,
that proofs involving the Fibonacci numbers often require strong induction
rather than ordinary induction.
To illustrate this we’ll prove the following remarkable formula for the
Fibonacci numbers:

```
Fn=
```
### ±1+√ 5

```
2
```
```
²n
−
```
### ±1−√ 5

```
2
```
```
²n
```
```
√
5
```
### .

It is hard at first to believe that this formula is right. After all, the Fibonacci
numbers are integers, and it is not at all clear that this formula will give
an integer value. And what do the Fibonacci numbers have to do with

### √

### 5?

Nevertheless, a proof by strong induction shows that the formula is correct.
(To see how this formula could be derived, see exercise 9.)

**Theorem 6. 4. 3.** _If_ Fn _is the_ n _th Fibonacci number, then_

```
Fn=
```
### ±

```
1+
```
```
√
5
2
```
```
²n
−
```
### ±

```
1−
```
```
√
5
2
```
```
²n
```
```
√
5
```
### .

_Scratch work_

BecauseF 0 andF 1 are defined separately fromFnforn ≥ 2, we check the
formula for these cases separately. Forn ≥ 2, the definition ofFnsuggests
that we should use the assumption that the formula is correct forFn− 2and
Fn− 1to prove that it is correct forFn. Because we need to know that the
formula works for _two_ previous cases, we must use strong induction rather


308 _Mathematical Induction_

than ordinary induction. The rest of the proof is straightforward, although the
algebra gets a little messy.

_Proof._ We use strong induction. Let nbe an arbitrary natural number, and
suppose that for allk < n,

```
Fk=
```
### ±1+√ 5

```
2
```
```
²k
−
```
### ±1−√ 5

```
2
```
```
²k
```
```
√
5
```
### .

```
Case 1.n= 0. Then
±1+√ 5
2
```
```
²n
−
```
### ±1−√ 5

```
2
```
```
²n
```
```
√
5
```
### =

### ±1+√ 5

```
2
```
### ² 0

### −

### ±1−√ 5

```
2
```
### ² 0

### √

### 5

### =

### 1 − 1

### √

### 5

### = 0 = F 0.

```
Case 2.n= 1. Then
±
1+
```
```
√
5
2
```
```
²n
−
```
### ±

```
1−
```
```
√
5
2
```
```
²n
```
```
√
5
```
### =

### ±

```
1+
```
```
√
5
2
```
### ² 1

### −

### ±

```
1−
```
```
√
5
2
```
### ² 1

### √

### 5

### =

### √

### 5

### √

### 5

### = 1 = F 1.

Case 3.n≥ 2. Then applying the inductive hypothesis ton− 2 andn− 1,
we get

```
Fn= Fn− 2+ Fn− 1
```
### =

### ±1+√ 5

```
2
```
```
²n− 2
−
```
### ±1−√ 5

```
2
```
```
²n− 2
```
```
√
5
```
### +

### ±1+√ 5

```
2
```
```
²n− 1
−
```
### ±1−√ 5

```
2
```
```
²n− 1
```
```
√
5
```
### =

### ¶±

```
1+√ 5
2
```
```
²n− 2
+
```
### ±

```
1+√ 5
2
```
```
²n− 1·
−
```
### ¶±

```
1−√ 5
2
```
```
²n− 2
+
```
### ±

```
1−√ 5
2
```
```
²n− 1·
```
```
√
5
```
### =

### ±

```
1+√ 5
2
```
```
²n− 2 ̧
1 + 1+
```
```
√ 5
2
```
### ¹

### −

### ±

```
1−√ 5
2
```
```
²n− 2 ̧
1 + 1−
```
```
√ 5
2
```
### ¹

### √

### 5

### .

```
Now note that
º
1 +
```
### √

### 5

### 2

### » 2

### =

### 1 + 2

### √

### 5 + 5

### 4

### =

### 6 + 2

### √

### 5

### 4

### =

### 3 +

### √

### 5

### 2

### = 1 +

### 1 +

### √

### 5

### 2

### ,

and similarly
º
1 −

### √

### 5

### 2

### » 2

### = 1 +

### 1 −

### √

### 5

### 2

### .


```
Strong Induction 309
```
Substituting into the formula forFn, we get

```
Fn=
```
### ±

```
1+
```
```
√
5
2
```
```
²n− 2±
1+
```
```
√
5
2
```
### ² 2

### −

### ±

```
1−
```
```
√
5
2
```
```
²n− 2±
1−
```
```
√
5
2
```
### ² 2

### √

### 5

### =

### ±

```
1+
```
```
√
5
2
```
```
²n
−
```
### ±

```
1−
```
```
√
5
2
```
```
²n
```
```
√
5
```
### . ±

Notice that in the proof of Theorem 6.4.3 we had to treat the casesn = 0
andn = 1 separately. The role that these cases play in the proof is similar to
the role played by the base case in a proof by ordinary mathematical induction.
Although we have said that proofs by strong induction don’t need base cases,
it is not uncommon to find some initial cases treated separately in such proofs.
An important property of the natural numbers that is related to mathematical
induction is the fact that every nonempty set of natural numbers has a smallest
element. This is sometimes called the _well-ordering principle_ , and we can
prove it using strong induction.

**Theorem 6. 4. 4.** (Well-ordering principle) _Every nonempty set of natural
numbers has a smallest element._

_Scratch work_

Our goal is∀S ⊆ N(S ²= ∅→ S has a smallest element). After lettingS
be an arbitrary subset ofN, we’ll prove the contrapositive of the conditional
statement. In other words, we will assume thatShas no smallest element and
prove thatS= ∅. The way induction comes into it is that, for a setS⊆N, to
say thatS = ∅is the same as saying that∀n∈N(n ∈/S). We’ll prove this last
statement by strong induction.

_Proof._ SupposeS⊆N, andSdoes not have a smallest element. We will prove
that∀n∈N(n ∈/S), soS= ∅. Thus, ifS ²= ∅thenSmust have a smallest
element.
To prove that∀n∈N(n ∈/ S), we use strong induction. Suppose thatn∈N
and∀k < n(k ∈/ S). Clearly ifn∈Sthennwould be the smallest element
ofS, and this would contradict the assumption thatShas no smallest element.
Thereforen ∈/S. ±

Sometimes, proofs that could be done by induction are written instead as
applications of the well-ordering principle. As an example of the use of the
well-ordering principle in a proof, we present a proof that

### √

2 is irrational.
See exercise 2 for an alternative approach to this proof using strong induction.


310 _Mathematical Induction_

**Theorem 6. 4. 5.**

### √

```
2 is irrational.
```
_Scratch work_

Because _irrational_ means “not rational,” our goal is a negative statement, so
proof by contradiction is a logical method to use. Thus, we assume

### √

2 is
rational and try to reach a contradiction. The assumption that

### √

2 is rational
means that there exist integerspandqsuch thatp/q =

### √

```
2, and since
```
### √

### 2

is positive, we may as well restrict our attention to positivepandq. Because
this is an existential statement, our next step should probably be to letpandq
stand for positive integers such thatp/q =

### √

2. As you will see in the proof,
simple algebraic manipulations with the equationp/q =

### √

2 do not lead to
any obvious contradictions, but they do lead to the conclusion thatpandq
must both be even. Thus, in the fractionp/q we can cancel a 2 from both
numerator and denominator, getting a new fraction with smaller numerator
and denominator that is equal to

### √

### 2.

How can we derive a contradiction from this conclusion? The key idea
is to note that our reasoning would apply to√ _any_ fraction that is equal to

2. Thus, in any such fraction we can cancel a factor of 2 from numerator
and denominator, and therefore there can be no smallest possible numerator
or denominator for such a fraction. But this would violate the well-ordering
principle! Thus, we have our contradiction.
This idea is spelled out more carefully in the following proof, in which
we’ve applied the well-ordering principle to the set of all possible denomina-
tors of fractions equal to

### √

2. We have chosen to put this application of the
well-ordering principle at the beginning of the proof, because this seems to
give the shortest and most direct proof. Readers of the proof might be puzzled
at first about why we’re using the well-ordering principle (unless they’ve read
this scratch work!), but after the algebraic manipulations with the equation
p/q =

### √

2 are completed, the contradiction appears almost immediately. This
is a good example of how a clever, carefully planned step early in a proof can
lead to a wonderful punch line at the end of the proof.

_Proof._ Suppose that

### √

√ 2 is rational. This means that∃q∈Z+∃p∈Z+(p/q =
2 ), so the setS= {q ∈Z+ | ∃p∈Z+(p/q =

### √

2 )} is nonempty. By the
well-ordering principle we can letqbe the smallest element ofS. Sinceq∈S,
we can choose somep∈Z+ such thatp/q =

### √

2. Thereforep^2 /q^2 = 2, so
p^2 = 2q^2 and thereforep^2 is even. We now apply the theorem from Example
3.4.3, which says that for any integerx,x is even iffx^2 is even. Sincep^2 is
even,pmust be even, so we can choose somep ∈Z+ such thatp = 2p.
Thereforep^2 = 4p^2 , and substituting this into the equationp^2 = 2q^2 we get


```
Strong Induction 311
```
4 p^2 = 2q^2 , so 2p^2 = q^2 and thereforeq^2 is even. Appealing to Example
3.4.3 again, this meansqmust be even, so we can choose someq∈Z+ such
thatq = 2q. But then

### √

2 = p/q = ( 2 p)/( 2 q)= p/q, soq ∈S. Clearly
q < q, so this contradicts the fact thatqwas chosen to be the _smallest_ element
ofS. Therefore

### √

```
2 is irrational. ±
```
```
Exercises
```
```
*1. This exercise gives an alternative way to justify the method of strong
induction. All variables in this exercise range overN. SupposeP (n)is
a statement about a natural numbern, and suppose that, following the
strong induction strategy, we have proven that ∀n[(∀k < n P (k))→
P (n)]. LetQ(n) be the statement∀k < n P (k).
(a) Prove∀nQ(n) ↔ ∀nP (n)without using induction.
(b) Prove∀nQ(n) by ordinary induction. Thus, by part (a),∀nP (n) is
true.
```
2. Rewrite the proof of Theorem 6.4.5 as a proof by strong induction that
    ∀q∈N[q >0 → ¬∃p∈Z+(p/q =

### √

### 2 )].

3. In this exercise you will give another proof that

### √

```
√ 2 is irrational. Suppose
2 is rational. As in the proof of Theorem 6.4.5, letS = {q ∈Z+ |
∃p∈Z+(p/q =
```
### √

```
2 )} ²= ∅, letqbe the smallest element ofS, and let
pbe a positive integer such thatp/q =
```
### √

2. Now get a contradiction by
showing thatp−q∈Sandp−q < q.
*4. (a) Prove that

### √

```
6 is irrational.
(b) Prove that
```
### √

### 2 +

### √

```
3 is irrational.
```
5. The Martian monetary system uses colored beads instead of coins. A
    blue bead is worth 3 Martian credits, and a red bead is worth 7 Martian
    credits. Thus, three blue beads are worth 9 credits, and a blue and red
    bead together are worth 10 credits, but no combination of blue and red
    beads is worth 11 credits. Prove that for all n ≥ 12, there is some
    combination of blue and red beads that is worthncredits.
6. Suppose thatxis a real number,x²= 0, andx+ 1/xis an integer. Prove
    that for alln≥ 1,xn+ 1/xnis an integer.
*7. LetFnbe thenth Fibonacci number. All variables in this exercise range
overN.
(a) Prove that for alln,

```
∑n
i= 0Fi= Fn+ 2− 1.
(b) Prove that for alln,
```
```
∑n
i= 0(Fi)
```
(^2) = FnFn+ 1.
(c) Prove that for alln,
∑n
i= 0F^2 i+ 1= F^2 n+ 2.
(d) Find a formula for
∑n
i= 0F^2 iand prove that your formula is correct.


312 _Mathematical Induction_

8. LetFnbe thenth Fibonacci number. All variables in this exercise range
    overN.
    (a) Prove that for allm≥ 1 and alln,Fm+n= Fm− 1Fn+FmFn+ 1.
(b) Prove that for allm ≥ 1 and alln ≥ 1,Fm+n = Fm+ 1Fn+ 1−
Fm− 1Fn− 1.
    (c) Prove that for alln,(Fn)^2 +(Fn+ 1)^2 = F 2 n+ 1and(Fn+ 2)^2 −(Fn)^2 =
       F 2 n+ 2.
(d) Prove that for allmandn, ifm|nthenFm|Fn.
(e) See exercise 18 in Section 6.3 for the meaning of the notation used
in this exercise. Prove that for alln≥ 1,

```
F 2 n− 1=
```
### ³

```
2 n− 2
0
```
### ́

### +

### ³

```
2 n− 3
1
```
### ́

### +

### ³

```
2 n− 4
2
```
### ́

### + · · · +

### ³

```
n− 1
n− 1
```
### ́

### =

```
nμ− 1
```
```
i= 0
```
### ³

```
2 n−i− 2
i
```
### ́

```
and
```
```
F 2 n=
```
### ³

```
2 n− 1
0
```
### ́

### +

### ³

```
2 n− 2
1
```
### ́

### +

### ³

```
2 n− 3
2
```
### ́

### + · · · +

### ³

```
n
n− 1
```
### ́

### =

```
nμ− 1
```
```
i= 0
```
### ³

```
2 n−i− 1
i
```
### ́

### .

```
*9. A sequence of numbersa 0 ,a 1 ,a 2 ,... is called a generalized Fibonacci
sequence , or a Gibonacci sequence for short, if for everyn ≥ 2,an=
an− 2+ an− 1. Thus, a Gibonacci sequence satisfies the same recurrence
relation as the Fibonacci numbers, but it may start out differently.
(a) Supposecis a real number and∀n ∈N(an= cn). Prove thata 0 ,
a 1 ,a 2 ,... is a Gibonacci sequence iff eitherc = (1 +
```
### √

```
5 )/2 or
c= (1 −
```
### √

### 5 )/2.

```
(b) Supposesandtare real numbers, and for alln∈N,
```
```
an= s
```
### º

### 1 +

### √

### 5

### 2

```
»n
+t
```
### º

### 1 −

### √

### 5

### 2

```
»n
.
```
```
Prove thata 0 ,a 1 ,a 2 ,... is a Gibonacci sequence.
(c) Supposea 0 ,a 1 ,a 2 ,... is a Gibonacci sequence. Prove that there are
real numberssandtsuch that for alln∈N,
```
```
an= s
```
### º

### 1 +

### √

### 5

### 2

```
»n
+t
```
### º

### 1 −

### √

### 5

### 2

```
»n
.
```

```
Strong Induction 313
(Hint: First show that there are real numberssandt such that the
formula above is correct fora 0 anda 1. Then show that with this
choice ofsandt, the formula is correct for alln.)
```
10. The _Lucas numbers_ (named for the French mathematician Edouard
    Lucas (1842–1891)) are the numbersL 0 ,L 1 ,L 2 ,... defined as follows:
       L 0 = 2;
       L 1 = 1;
       for everyn≥ 2,Ln= Ln− 2+ Ln− 1.
    Find a formula forLnand prove that your formula is correct. (Hint:
    Apply exercise 9.)
*11. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:

```
a 0 = − 1;
a 1 = 0;
for everyn≥ 2,an= 5an− 1− 6an− 2.
Find a formula foranand prove that your formula is correct. (Hint:
Imitate exercise 9.)
```
12. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:
    a 0 = 0;
    a 1 = 1;
    a 2 = 1;

```
for everyn≥ 3,an=
```
### 1

### 2

```
an− 3+
```
### 3

### 2

```
an− 2+
```
### 1

### 2

```
an− 1.
```
```
Prove that for alln∈N,an= Fn, thenth Fibonacci number.
```
13. For each positive integern, letAn= {1, 2,.. .,n}, and letPn= {X ∈
    P(An)| Xdoes not contain two consecutive integers}. For example,
    P 3 = {∅,{1}, {2},{3},{1, 3}};P 3 does not contain the sets {1, 2}, {2, 3},
    and {1, 2, 3} because each contains at least one pair of consecutive
    integers. Prove that for everyn, the number of elements inPnisFn+ 2,
    the(n+ 2)th Fibonacci number. (For example, the number of elements
    inP 3 is 5 = F 5. Hint: Which elements ofPncontainn? Which don’t?
    The answers to both questions are related to the elements ofPm, for
    certainm < n.)
14. Supposenandmare integers andm >0.
    (a) Prove that there are integersq andrsuch thatn = qm +r and
       0 ≤r < m. (Hint: Ifn≥ 0, then this follows from Theorem 6.4.1. If
       n <0, then start by applying Theorem 6.4.1 to −nandm. Another
       possibility is to apply Theorem 6.4.1 to −n− 1 andm.)


314 _Mathematical Induction_

```
(b) Prove that the integersqandrin part (a) are unique. In other words,
show that ifq±andr±are integers such that n = q±m + r±and
0 ≤ r±< m, thenq=q±andr= r±.
(c) Prove that for every integer n, exactly one of the following
statements is true:n≡ 0(mod 3),n≡ 1(mod 3),n≡ 2(mod 3).
(Recall that this notation was introduced in Definition 4.5.9.)
```
*15. Supposekis a positive integer. Prove that there is some positive integer
asuch that for alln > a, 2n ≥ nk. (In the language of exercise 19
of Section 5.1, this implies that iff (n) = nk andg(n) = 2n then
f ∈O(g). Hint: By the division algorithm, for any natural numbern
there are natural numbersqandrsuch thatn= qk+ rand 0 ≤r < k.
Therefore 2n≥ 2qk= ( 2 q)k. To choosea, figure out how largeqhas to
be to guarantee that 2q≥n. You may find Example 6.1.3 useful.)

16. (a) Supposekis a positive integer,a 1 ,a 2 ,... ,akare real numbers, and
    f 1 ,f 2 ,... ,fk, andgare all functions fromZ+ toR. Also, suppose
    thatf 1 ,f 2 ,... ,fk are all elements ofO(g). (See exercise 19 of
    Section 5.1 for the meaning of the notation used here.) Definef :
    Z+ →Rby the formulaf (n)= a 1 f 1 (n)+a 2 f 2 (n)+· · ·+akfk(n).
    Prove thatf ∈O(g). (Hint: Use induction onk, and exercise 19(c)
    of Section 5.1.)
(b) Letg :Z+ → Rbe defined by the formulag(n) = 2n. Suppose
a 0 ,a 1 ,a 2 ,... ,akare real numbers, and definef :Z+ →Rby the
formulaf (n)= a 0 +a 1 n+ a 2 n^2 + · · · + aknk. (Such a function is
called a _polynomial_ .) Prove thatf ∈O(g). (Hint: Use exercise 15
and part (a).)
17. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:

```
a 0 = 1;
```
```
for everyn∈N,an+ 1= 1 +
```
```
μn
```
```
i= 0
```
```
ai.
```
Find a formula foranand prove that your formula is correct.
*18. A sequencea 0 ,a 1 ,a 2 ,... is defined recursively as follows:

```
a 0 = 1;
```
```
for everyn∈N,an+ 1= 1 +
```
### 1

```
an.
```
```
Find a formula foranand prove that your formula is correct. (Hint:
These numbers are related to the Fibonacci numbers.)
```

```
Strong Induction 315
```
19. In this problem, you will prove that there are no positive integersa,b,c,
    anddsuch that

```
a^2 + 2b^2 = c^2 and 2a^2 +b^2 = d^2. (∗)
```
```
(a) Prove that for all integersmandn, if 3 |(m^2 + n^2 )then 3 |mand
3 | n. (Hint: By exercise 14(c), eitherm ≡ 0(mod 3)orm ≡ 1
(mod 3)orm≡ 2(mod 3), and also eithern≡ 0(mod 3)orn≡ 1
(mod 3)orn≡ 2(mod 3). This gives nine possibilities. Determine
which of these possibilities are compatible with the assumption that
3 |(m^2 +n^2 ).)
Now suppose there are positive integers satisfying(∗). Let
```
```
S= {d∈Z+|∃a∈Z+∃b∈Z+∃c∈Z+(a^2 + 2b^2 = c^2 ∧ 2 a^2 +b^2 = d^2 )}.
```
```
Then S ²= ∅, so by the well-ordering principle we can letd be the
smallest element ofS. Leta,b, andcbe positive integers satisfying(∗).
(b) Prove that 3 |cand 3 | d. (Hint: Add the two equations in(∗)and
then apply part (a).)
(c) Prove that 3 |aand 3 |b. (Hint: Add the two equations in(∗)and
then apply part (b).)
(d) Show that there is an element ofS that is smaller thand, which
contradicts our choice ofd. (Hint: Combine parts (b) and (c).)
```
20. The number(1 +

### √

```
5 )/2 that appears in the formula for the Fibonacci
numbers in Theorem 6.4.3 is called the golden ratio. It is usually
denotedφ, and it comes up in numerous contexts in mathematics, art,
and the natural world. In this exercise you will investigate a few of the
mathematical contexts in whichφarises.
(a) In Figure 6.14,AEFD is a square. Show that if the ratio of the
length of the longer side of rectangleBCFE to its shorter side is
the same as the ratio of the length of the longer side of rectangle
A B C D to its shorter side, then that ratio isφ.
(b) Show that cos( 36 ◦) = φ/2. (Hint: Letx = cos( 36 ◦). First show
that cos( 108 ◦)= − cos( 72 ◦). Then use trigonometric identities to
express cos( 108 ◦)and cos( 72 ◦)in terms ofx. Substitute into the
equation cos( 108 ◦)= − cos( 72 ◦)to get an equation involvingxand
then solve the equation.)
(c) In Figure 6.15,ABCDE is a regular pentagon with side length 1.
Show that the length of the diagonalAC isφ. (Hint: First find the
angles in triangleABC; you may find Example 6.2.3 helpful for
this. Then use part (b).)
```

316 _Mathematical Induction_

```
Figure 6.14. Figure 6.15.
```
*21. The commutative law for multiplication says that for any numbersaand
b,ab = ba. The associative law says that for any numbersa,b, and
c,(ab)c = a(bc). In this problem you will show that, although these
laws are stated for products of two or three numbers, they can be used
to justify reordering and regrouping the terms in a product of any list of
numbers in any way.
(a) Use the commutative and associative laws to show that for any
numbersa,b,c, andd,(ab)(cd) = c((ad)b).
(b) Let us say that the _left-grouped product_ of a list of numbers a 1 ,
a 2 ,... ,anis the product in which the terms are grouped as follows:
(· · ·(((a 1 a 2 )a 3 )a 4 )· · ·an− 1)an.
More precisely, we can define the left-grouped product recursively as
follows: For a list consisting of a single numbera 1 , the left-grouped
product isa 1. If the left-grouped product ofa 1 ,a 2 ,... ,anisp,
then the left-grouped product ofa 1 ,a 2 ,... ,an,an+ 1ispan+ 1. Use
the associative law to show that any product of a list of numbersa 1 ,
a 2 ,... ,an(with the terms in that order, but with parentheses inserted
to group the terms in any way) is equal to the left-grouped product.
(c) Use the commutative and associative laws to show that any two
products of the numbersa 1 ,a 2 ,... ,an, with the terms in any order
and grouped in any way, are equal.

## 6.5 Closures Again

In Section 5.4 we promised to use mathematical induction to give an alterna-
tive treatment of closures of sets under functions. In this section we fulfill this
promise.


_Closures Again_ 317
Recall that iff :A→AandB ⊆A, then the closure ofBunderf is the
smallest setC⊆Asuch thatB⊆CandCis closed underf. In this section
we’ll find this setCby starting withB and then adding only those elements
ofAthat _must_ be added if we want to end up with a set that is closed under
f. We begin with a sketchy description of how we’ll do this, motivated by the
examples in Section 5.4. Then we’ll use recursion and induction to make this
sketchy idea precise and prove that it works.
As we saw in the examples in Section 5.4, if we want to find a setC ⊆A
such thatB⊆CandCis closed underf, then for everyx∈B, we must have
f (x)∈C. In other words, {f (x)|x ∈B} ⊆C. Recall from Section 5.5 that
{f (x)|x∈B} is called the image ofBunderf, and is denotedf (B). So we
will need to havef (B)⊆C. But then similar reasoning implies that the image
off (B)underf must also be a subset ofC; in other words,f (f (B))⊆C.
Continuing in this way leads to a sequence of sets that must be contained
inC:B,f (B),f (f (B)), and so on. We will prove that putting these sets
together by taking their union will give us the closure ofB underf. In other
words, if we letB 0 = B,B 1 = f (B),B 2 = f (f (B)),... , then the closure
ofB underf isB 0 ∪B 1 ∪B 2 ∪ · · ·. The use of ellipses in our description
of this process suggests that to make it precise, we should use induction and
recursion. This is what we do in the statement and proof of our next theorem.

**Theorem 6. 5. 1.** _Suppose_ f :A→A _and_ B ⊆A_. Let the sets_ B 0 _,_ B 1 _,_ B 2 _,...
be defined recursively as follows:_

### B 0 = B;

```
for all n∈N , Bn+ 1= f (Bn).
```
_Then the closure of_ B _under_ f _is the set_

### ¼

```
n∈NBn.
```
_Proof._ LetC =

### ¼

n∈NBn. Sincef :A→ A, it is not hard to see that each
setBnis a subset ofA, and thereforeC ⊆A. According to the definition of
closure, we must check thatB ⊆C,Cis closed underf, and for every set
D⊆A, ifB ⊆DandDis closed underfthenC⊆D.
The first of these holds becauseB = B 0 ⊆

### ¼

n∈NBn= C. For the second,
suppose thatx∈C. Then by the definition ofC, we can choose somem∈N
such thatx∈Bm. But thenf (x)∈f (Bm)= Bm+ 1, sof (x)∈

### ¼

n∈NBn=
C. Sincexwas an arbitrary element ofC, this shows thatCis closed underf.
Finally, suppose thatB ⊆D⊆AandDis closed underf. We must show
thatC⊆D, and by the definition ofCit suffices to show that∀n∈N(Bn⊆
D). We prove this by induction onn.


318 _Mathematical Induction_

The base case holds because we haveB 0 = B⊆Dby assumption. For the
induction step, suppose thatn∈NandBn⊆D. Now supposex∈Bn+ 1. By
the definition ofBn+ 1this meansx ∈f (Bn), so there is someb∈Bnsuch
thatx=f (b). But by the inductive hypothesis,Bn⊆D, sob∈D, and since
Dis closed underf it follows thatx= f (b)∈D. Sincexwas an arbitrary
element ofBn+ 1, this shows thatBn+ 1⊆D. ±

_Commentary._ Because the proof must refer to the set

### ¼

n∈NBnoften, it is
convenient to give this set the nameCright at the beginning of the proof. The
proof claims that it is not hard to see that for everyn ∈N,Bn ⊆ A, and
thereforeC⊆A. As usual, if you don’t see why this is true you should work
out the details of the proof yourself. (You might try proving∀n∈N(Bn⊆A)
by mathematical induction.) The definition of closure then tells us that we
must prove three statements:B⊆C,Cis closed underf, and for allD⊆A,
ifB ⊆DandDis closed underf thenC ⊆D. Of course, we prove them
one at a time.
The proof of the first of these statements,B ⊆ C, is also not worked out
in detail. If you have trouble following it, see exercise 8 in Section 3.3. The
second statement we must prove says thatCis closed underf, and the proof
is based on the definition of closed: we letxbe arbitrary, assumex ∈C,
and prove thatf (x) ∈C. According to the definition ofC, the statement
x∈Cmeans∃n∈N(x ∈Bn), so we immediately introduce the variablem
to stand for a natural number such thatx∈Bm. The goalf (x)∈Cis also an
existential statement, so to prove it we must find a natural numberksuch that
f (x)∈Bk. The proof shows thatk= m+ 1 works.
Finally, to prove the third statement we use the natural strategy of lettingD
be an arbitrary set, assumingB⊆D ⊆AandDis closed underf, and then
proving thatC⊆D. Once again, if you don’t see why the conclusionC⊆D
follows from∀n∈N(Bn⊆D), as claimed in the proof, you should work out
the details of the proof yourself. This last statement is proven by induction, as
you might expect based on the recursive nature of the definition ofBn. For the
induction step, we letnbe an arbitrary natural number, assume thatBn⊆D,
and prove thatBn+ 1 ⊆ D. To prove thatBn+ 1 ⊆ Dwe take an arbitrary
element ofBn+ 1and prove that it must be an element ofD. Writing out the
recursive definition ofBn+ 1gives us a way to use the inductive hypothesis,
which, as usual, is the key to completing the induction step.

We end this chapter by returning once again to one of the proofs in the
introduction. Recall that in our first proof in the introduction we used the
formula

```
( 2 b− 1)·(1 + 2b+ 2^2 b+ · · · + 2(a− 1)b)= 2ab− 1.
```

```
Closures Again 319
```
We discussed this proof again in Section 3.7 and promised to give a more
careful proof of this formula after we had discussed mathematical induction.
We are ready now to give this more careful proof. Of course, we can also state
the formula more precisely now, using summation notation.

**Theorem 6. 5. 2.** _For all positive integers_ a _and_ b _,_

```
( 2 b− 1)·
```
```
aμ− 1
```
```
k= 0
```
```
2 kb= 2ab− 1.
```
_Proof._ We letbbe an arbitrary positive integer and then proceed by induction
ona.
Base case: Whena= 1 we have

```
( 2 b− 1)·
```
```
aμ− 1
```
```
k= 0
```
```
2 kb= ( 2 b− 1)·
```
```
μ^0
```
```
k= 0
```
```
2 kb
```
```
= ( 2 b− 1)·1
= 2ab− 1.
```
```
Induction step: Supposea≥ 1 and( 2 b− 1)·
```
```
∑a− 1
k= 0^2
```
```
kb= 2ab− 1. Then
```
```
( 2 b− 1)·
```
```
μa
```
```
k= 0
```
```
2 kb= ( 2 b− 1)·
```
```
ºa− 1
μ
```
```
k= 0
```
```
2 kb+ 2ab
```
### »

```
= ( 2 b− 1)·
```
```
aμ− 1
```
```
k= 0
```
```
2 kb+ 2b· 2ab− 2ab
```
```
= 2ab− 1 + 2b+ab− 2ab (inductive hypothesis)
= 2(a+ 1)b− 1. ±
```
```
Exercises
```
```
*1. Letf :R→Rbe defined by the formulaf (x)= x+ 1, and letB= {0}.
We saw in part 2 of Example 5.4.4 that the closure ofB underf isN.
What are the setsB 0 ,B 1 ,B 2 ,... defined in Theorem 6.5.1?
```
2. Letf :R→Rbe defined by the formulaf (x)= x− 1, and letB= N.
    We saw after Example 5.4.2 that the closure ofBunderfisZ. What are
    the setsB 0 ,B 1 ,B 2 ,... defined in Theorem 6.5.1?


320 _Mathematical Induction_

3. SupposeFis a set of functions fromAtoAandB ⊆A. In exercise 12
    of Section 5.4 we defined the closure ofBunderFto be the smallest set
    C⊆Asuch thatB ⊆Cand for everyf ∈F,Cis closed underf. Let
    the setsB 0 ,B 1 ,B 2 ,... be defined recursively as follows:

```
B 0 = B;
for alln∈N,Bn+ 1=
```
### ½

```
f∈F
```
```
f (Bn).
```
```
Prove that
```
### ¼

```
n∈NBnis the closure ofBunderF.
*4. For each natural numbern, letfn:P(N)→P(N)be defined by the
formulafn(X) = X∪ {n}, and letF= {fn|n∈N}. LetB = {∅}. In
part (b) of exercise 12 in Section 5.4 you showed that the closure ofB
underFis the set of all finite subsets ofN. What are the setsB 0 ,B 1 ,B 2 ,
```
... defined in exercise 3?
*5. Letf :N× N→Nbe defined by the formulaf (x,y)= xy. LetP be
the set of all prime numbers. What is the closure ofP underf?
6. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose f :A×A→A and B ⊆A. Let the sets
B 0 , B 1 , B 2 ,... be defined recursively as follows:
```
```
B 0 = B;
for all n∈N , Bn+ 1= f (Bn×Bn).
```
```
Then the closure of B under f is the set
```
### ¼

```
n∈NBn.
```
```
What’s wrong with the following proof of the theorem?
```
```
Proof. LetC =
```
### ¼

```
n∈NBn. It is not hard to see that each setBnis a
subset ofA, soC⊆A, andB= B 0 ⊆C.
To see thatC is closed underf, supposex,y ∈ C. Then by the
definition ofC, there is somem ∈Nsuch thatx,y ∈Bm. Therefore
f (x,y)∈f (Bm×Bm)= Bm+ 1, sof (x,y)∈
```
### ¼

```
n∈NBn= C.
Finally, supposeB ⊆D⊆AandDis closed underf. To prove that
C⊆D, it will suffice to prove that∀n∈N(Bn⊆D). We prove this by
induction. The base case holds becauseB 0 = B⊆Dby assumption. For
the induction step, supposeBn⊆ Dand letx∈Bn+ 1be arbitrary. By
the definition ofBn+ 1this means thatx= f (a,b)for somea,b∈Bn.
By the inductive hypothesis,Bn⊆D, soa,b∈D, and sinceDis closed
underf, it follows thatx= f (a,b)∈D. ThereforeBn+ 1⊆D. ±
```

```
Closures Again 321
*7. Letf :R× R→Rbe defined by the formulaf (x,y) = xy, and let
B = {x ∈R| − 2 ≤ x≤ 0}. In this problem you will show thatf and
B are a counterexample to the incorrect theorem in exercise 6.
(a) What are the setsB 0 ,B 1 ,B 2 ,... defined in the incorrect theorem?
(b) Show that
```
### ¼

```
n∈NBnis not the closure ofB underf. Which of the
three properties in the definition of closure (Definition 5.4.8) does
not hold?
(c) What is the closure ofBunderf?
```
8. Supposef :A× A →AandB ⊆ A. Let the setsB 0 ,B 1 ,B 2 ,... be
    defined recursively as follows:

```
B 0 = B;
for alln∈N,Bn+ 1= Bn∪f (Bn×Bn).
```
```
(a) Prove that for all natural numbersmandn, ifm≤nthenBm⊆Bn.
(Hint: Letmbe arbitrary and then use induction onn.)
(b) Prove that
```
### ¼

```
n∈NBnis the closure ofBunderf.
```
9. Supposef :A→Aandf is a constant function; in other words, there
    is somec ∈Asuch that for allx ∈A,f (x)= c. SupposeB ⊆ A.
    What are the setsB 0 ,B 1 ,B 2 ,... defined in Theorem 6.5.1? What is the
    closure ofBunderf?
*10. There is another proof in the introduction that could be written more
rigorously using induction. Recall that in the proof of Theorem 4
in the introduction we used the fact that if n is a positive integer,
x= (n+ 1)!+ 2, and 0 ≤ i≤ n− 1, then(i+ 2)|(x+i). Use induction
to prove this. (We used this fact to show thatx+iis not prime.)

The remaining exercises in this section will use the following definition.
SupposeR⊆A×A. LetR^1 ,R^2 ,R^3 ,... be defined recursively as follows:

```
R^1 = R;
for alln∈Z+,Rn+ 1= Rn◦R.
```
Clearly for every positive integern,Rnis a relation onA.

11. SupposeR ⊆ A× A. Prove that for all positive integersm andn,
    Rm+n= Rm◦Rn.
12. Supposef:A→A.
    (a) Prove that for every positive integern,fn:A→A.
(b) SupposeB ⊆ A, and let the setsB 0 ,B 1 ,B 2 ,... be defined as in
Theorem 6.5.1. Prove that for every positive integern,fn(B)= Bn.


322 _Mathematical Induction_

13. Supposef :A→Aanda∈A. We say thatais a _periodic point_ forf
    if there is some positive integernsuch thatfn(a)= a.
    (a) Show that ifais a periodic point forf then the closure of {a}under
       f is a finite set.
(b) Suppose the closure of {a} underf is a finite set. Musta be a
periodic point forf?
*14. SupposeR ⊆ A× A and letT =

### ¼

```
n∈Z+R
```
```
n. Prove thatT is the
transitive closure ofR. (See exercise 25 of Section 4.4 for the definition
of transitive closure.)
```
15. SupposeR andSare relations onAandR ⊆ S. Prove that for every
    positive integern,Rn⊆Sn.
*16. SupposeRandSare relations onAandnis a positive integer.
(a) What is the relationship betweenRn∩Snand(R∩S)n? Justify your
conclusions with proofs or counterexamples.
(b) What is the relationship betweenRn∪Snand(R∪S)n? Justify your
conclusions with proofs or counterexamples.
17. SupposeR is a relation onA andT is the transitive closure ofR. If
    (a,b) ∈T, then by exercise 14 there is some positive integernsuch
    that(a,b)∈Rn, and therefore by the well-ordering principle (Theorem
    6.4.4), there must be a smallest suchn. We define the _distance_ froma
    tobto be the smallest positive integernsuch that(a,b) ∈Rn, and we
    writed(a,b)to denote this distance.
    (a) Suppose that(a,b) ∈T and(b,c)∈T (and therefore(a,c) ∈T,
       sinceT is transitive). Prove thatd(a,c)≤ d(a,b)+d(b,c).
(b) Suppose(a,c)∈T and 0< m < d(a,c). Prove that there is some
b∈Asuch thatd(a,b)= mandd(b,c)= d(a,c)−m.
*18. SupposeR is a relation onA. For each positive integern, letJn =
{0, 1, 2,.. .,n}. Ifa ∈ A andb ∈ A, we will say that a function
f :Jn→Ais anR _-path from_ a _to_ b _of length_ niff ( 0 )= a,f (n)= b,
and for alli < n,(f (i),f (i+ 1))∈R.
(a) Prove that for alln∈Z+,Rn= {(a,b) ∈A×A| there is anR-path
fromatobof lengthn}.
(b) Prove that the transitive closure ofRis {(a,b)∈A×A| there is an
R-path fromatob(of any length)}.
19. SupposeR is a relation onA. In this problem we find a relationship
    between distance, as defined in exercise 17, andR-paths, which were
    discussed in exercise 18.
    (a) Supposed(a,b)= nanda²= b. Prove that iff is anR-path froma
       tobof lengthn, thenfis one-to-one.


```
Closures Again 323
(b) Supposed(a,a) = n. Prove that iff is anR-path fromatoaof
lengthn, then∀i < n∀j < n(f (i) = f (j) → i = j). (In other
words,f is one-to-one, except for the fact thatf ( 0 )= f (n)= a.)
```
20. SupposeRis a relation onA,T is the transitive closure ofR, andAhas
    melements. Prove that
       T = R∪R^2 ∪ · · · ∪Rm=

### ½

```
{Rn| 1 ≤n≤ m}.
```
```
(Hint: Use exercise 19.)
```

## 7 Number Theory

## 7.1 Greatest Common Divisors

In this chapter we will give an introduction to number theory: the study of the
positive integers 1, 2, 3,.... It may seem that these numbers are so easy to
understand that investigating them will not lead to any interesting discoveries.
But we will see in this chapter that simple questions about the positive integers
can be surprisingly difficult to resolve, and the answers sometimes reveal
subtle and unexpected patterns. Of course, the only way to be sure of the
answers to our questions will be to give proofs, using the methods we have
developed in earlier chapters of this book. By now, you should be fairly
proficient at reading and writing proofs, so we’ll give less discussion of the
strategy behind proofs and leave more proofs as exercises.
We begin with a concept that is fundamental to all of number theory, the
_greatest common divisor_ of a pair of positive integers.

**Definition 7.1.1.** Supposeais a positive integer. The _divisors_ ofaare the
positive integers that dividea. We will denote the set of divisors ofabyD(a).
Thus,

```
D(a) = {d∈Z+ |ddividesa} = {d∈Z+| ∃k∈Z(a= kd)}.
```
Ifaandbare two positive integers, thenD(a) ∩D(b) is the set of positive
integers that divide bothaandb– the _common divisors_ ofaandb. The largest
element of this set is called the _greatest common divisor_ ofaandb, and is
denoted gcd(a,b).

For example,D( 18 )= {1, 2, 3, 6, 9, 18} andD( 12 )= {1, 2, 3, 4, 6, 12}, so
the set of common divisors of 18 and 12 isD( 18 )∩D( 12 )= {1, 2, 3, 6}. The
largest of these common divisors is 6, so gcd(18, 12)= 6.

```
324
```

_Greatest Common Divisors_ 325
Notice that 1 andaare always elements ofD(a), andD(a) is a finite set,
sinceD(a) ⊆ {1, 2,.. .,a}. Thus, for any two positive integersaandb,D(a)∩
D(b) is a finite set that is nonempty (since it contains 1), so it has a largest
element (see exercise 3 in Section 6.2). In other words, gcd(a,b) is always
defined.
Given two positive integersaandb, how can we compute gcd(a,b)? One
possibility is to start by listing all elements ofD(a) andD(b), as we did when
we computed gcd(18, 12). But ifaandbare large then this may be impractical.
Fortunately, there is a better way.
SinceD(a) ∩D(b) = D(b) ∩D(a), gcd(a,b)= gcd(b,a). In other words,
in our notation for the greatest common divisor of two positive integers, it
doesn’t matter which integer we list first. We will often find it convenient to
list the larger integer first; in particular, when computing gcd(a,b), we will
assume thata≥b.
One helpful observation is that ifb|athen gcd(a,b) = b. This is because
bis the largest element ofD(b). Ifb|athenbis also an element ofD(a), so
it must be the largest element ofD(a) ∩D(b). This suggests that to compute
gcd(a,b), wherea≥ b, we could start by dividingabyb. According to the
division algorithm (Theorem 6.4.1), if we divideabybwe will find natural
numbersqandr(the quotient and remainder) such thata= qb+randr < b.
Ifr= 0, thena= qb, sob|aand therefore gcd(a,b) = b.
But what ifr >0? How can we compute gcd(a,b) in that case? We claim
that in that case,D(a) ∩D(b) = D(b) ∩D(r). Let’s prove this fact. Suppose
first thatd∈D(a) ∩D(b). Thend|aandd|b, so there are integersjandk
such thata= jdandb= kd. But then from the equationa= qb+ rwe get
r= a−qb = jd−qkd = (j−qk)d, sod|r. Therefored∈D(r), and since
we also haved∈D(b),d ∈D(b) ∩D(r). A similar argument shows that if
d∈D(b)∩D(r) thend∈D(a)∩D(b), soD(a)∩D(b) = D(b)∩D(r). By the
definition of greatest common divisor, it follows that gcd(a,b)= gcd(b,r).
Let’s summarize what we’ve learned with a theorem.

**Theorem 7. 1. 2.** _Suppose_ a _and_ b _are positive integers with_ a≥ b_. Let_ r _be
the remainder when we divide_ a _by_ b_. If_ r= 0 _then_ gcd(a,b)= b _, and if_ r > 0
_then_ gcd(a,b)= gcd(b,r)_._

Now, if r > 0, does this theorem help us to compute gcd(a,b)? One
reason to think it might is thatb ≤ aandr < b, so it is probably easier to
compute gcd(b,r)than gcd(a,b). Thus, the theorem allows us to replace our
original problem of computing gcd(a,b) with the potentially easier problem
of computing gcd(b,r).


326 _Number Theory_

This should remind you of our study of recursion in Chapter 6. A recursive
definition of a functionf with domainZ+gives us a method of findingf (n)
by using the values off (k) fork < n. By using this method repeatedly, we
are able to computef (n)for anyn. Perhaps if we apply our division method
repeatedly we will be able to compute gcd(a,b).
Before working out this idea in general, let’s try it out in an example.
Suppose we want to find gcd(672, 161). We begin by dividing a = 672 by
b= 161, which gives us a quotientq= 4 and remainderr= 28:

```
672 = 4 ·161 + 28.
```
ByTheorem 7.1.2, we conclude that gcd(672, 161)= gcd(a,b)= gcd(b,r)=
gcd(161, 28). So let’s try to compute gcd(161, 28), which seems like an easier
problem.
How do we solve this problem? By the same method, of course! We start
by dividing 161 by 28, to get a quotient of 5 and remainder of 21:

```
161 = 5 ·28 + 21.
```
Applying Theorem 7.1.2 again, we see that gcd(161, 28) = gcd(28, 21). To
compute gcd(28, 21)we divide 28 by 21:

```
28 = 1 ·21 + 7.
```
Thus gcd(28, 21)= gcd(21, 7). But 21 = 3 · 7 + 0, so 7 | 21 and therefore
gcd(21, 7)= 7. We conclude that this is the answer to our original problem:
gcd(672, 161)= 7.
We can summarize our calculations with the following list of equations:

```
672 = 4 ·161 + 28,
161 = 5 ·28 + 21,
28 = 1 ·21 + 7,
21 = 3 ·7 + 0.
```
These calculations produce a decreasing list of natural numbers: 672, 161, 28,
21, 7, 0. The first two numbers are our original positive integersaandb, and
after that every number is the remainder when dividing the previous number
into the one before that. The greatest common divisors of all adjacent pairs of
positive integers in the list are the same. The calculation ended when we got
a remainder of 0, and the last nonzero number in the list is 7 = gcd(21, 7)=
gcd(672, 161).
Now let’s generalize. Suppose we want to find gcd(a,b), whereaandb
are positive integers anda ≥ b. We define a sequence of natural numbers


```
Greatest Common Divisors 327
```
r 0 ,r 1 ,r 2 ,... recursively as follows. To start off the sequence, we letr 0 = a
andr 1 = b; notice thatr 0 ≥ r 1. Then we letq 2 andr 2 be the quotient and
remainder when we divider 0 byr 1 :

```
r 0 = q 2 ·r 1 + r 2 , 0 ≤ r 2 < r 1.
```
Ifr 2 ±= 0, then we divider 1 byr 2 to get a quotientq 3 and remainderr 3. In
general, having computedr 0 ,r 1 ,... ,rn, ifrn±= 0 then we dividern− 1byrn
to produce a quotient and remainder ofqn+ 1andrn+ 1:

```
rn− 1= qn+ 1·rn+ rn+ 1, 0 ≤ rn+ 1< rn.
```
The calculation stops when we reach a remainder of 0.
Are we sure that we will eventually have a remainder of 0? Well, if we don’t,
then the sequence of divisions will go on forever, and we will end up with an
infinite sequence of positive integersr 0 ,r 1 ,r 2 ,... withr 0 ≥ r 1 > r 2 > · · ·.
This is impossible, since {r 0 ,r 1 ,r 2 ,.. .} would be a nonempty set of natural
numbers with no smallest element, contradicting the well-ordering principle
(Theorem 6.4.4). Thus, we must eventually have a remainder of 0.
Supposemis the largest index for whichrm±= 0. Thenrm+ 1= 0, and there
aremdivisions, which can be summarized as follows:

```
r 0 = q 2 ·r 1 +r 2 ,
r 1 = q 3 ·r 2 +r 3 ,
..
.
rm− 1= qm+ 1·rm+ 0.
```
Applying Theorem 7.1.2 to each division, we conclude that

```
gcd(a,b) = gcd(r 0 ,r 1 )= gcd(r 1 ,r 2 )= · · · = gcd(rm− 1,rm)= rm.
```
Thus, gcd(a,b)is the last nonzero value in the sequencer 0 ,r 1 ,r 2 ,....
This method of computing the greatest common divisor of two positive
integers is called the _Euclidean algorithm_. It is named for Euclid, who
described it in Book VII of his _Elements_.

**Example 7. 1. 3.** Find the greatest common divisor of 444 and 1392.

_Solution_

We apply the Euclidean algorithm with a = 1392 andb = 444. The
calculations are shown in Figure 7.1. Each equation in the column “Division”
shows the division calculation that leads to the quotient and remainder in


328 _Number Theory_

the next row. Since the last nonzero remainder is 12, we conclude that
gcd(1392, 444)= 12.

```
n qn rn Division
0 1392
1 444 1392 = 3 ·444 + 60
2 3 60 444 = 7 ·60 + 24
3 7 24 60 = 2 ·24 + 12
4 2 12 24 = 2 ·12 + 0
5 2 0
```
```
Figure 7.1. Calculation of gcd(1392, 444)by Euclidean algorithm.
```
The inputs to the Euclidean algorithm in the last example werea= 1392
andb = 444. It is instructive to see how the remainders we computed are
related to these inputs. Rearranging the first equation in the “Division” column
in Figure 7.1, we see that

```
r 2 = 60 = 1392 − 3 · 444 =a− 3b.
```
Similarly, from the next equation we get

```
r 3 = 24 = 444 − 7 · 60 =b− 7r 2 = b− 7(a− 3b)= − 7a+ 22b,
```
and the third equation gives us

r 4 = 12 = 60 − 2 ·24 = r 2 − 2r 3 = (a− 3b)− 2(− 7a+ 22b)= 15a− 47b.

We see that each remainder can be written in the formsa+ tb, for some
integerssandt. We say that each remainder is a _linear combination_ ofa
andb. But the last nonzero remainder is the greatest common divisor ofa
andb, so we conclude that gcd(a,b) is a linear combination ofa and b:
gcd(a,b) = r 4 = 15a− 47b. Working out this reasoning in general proves
our next theorem.

**Theorem 7. 1. 4.** _For all positive integers_ a _and_ b _there are integers_ s _and_ t
_such that_ gcd(a,b)= sa+ tb_._

_Proof._ As usual, we may assumea ≥ b; if not, we can simply reverse the
values ofaandb. Letr 0 ,r 1 ,... ,rm+ 1be the sequence of numbers produced
by the Euclidean algorithm, whererm±= 0 andrm+ 1= 0. We claim that for


```
Greatest Common Divisors 329
```
every natural numbern ≤ m,rnis a linear combination ofaandb. In other
words, for every natural numbern, ifn≤ mthen there are integerssnandtn
such thatrn= sna+ tnb. We prove this statement by strong induction.
Supposenis a natural number andn ≤ m, and suppose also that for all
k < n,rkis a linear combination ofaandb. We now consider three cases.
Case 1:n= 0. Thenrn= r 0 = a= s 0 a+t 0 b, wheres 0 = 1 andt 0 = 0.
Case 2:n= 1. Thenrn= r 1 = b= s 1 a+t 1 b, wheres 1 = 0 andt 1 = 1.
Case 3:n≥ 2. Thenrnis the remainder whenrn− 2is divided byrn− 1:

```
rn− 2= qn·rn− 1+rn.
```
By the inductive hypothesis, there are integerssn− 1,sn− 2,tn− 1, andtn− 2
such that

```
rn− 1= sn− 1a+ tn− 1b, rn− 2= sn− 2a+tn− 2b.
```
Therefore

```
rn= rn− 2−qn·rn− 1= (sn− 2a+ tn− 2b)− qn(sn− 1a+tn− 1b)
= (sn− 2−qnsn− 1)a+(tn− 2− qntn− 1)b,
```
sorn= sna+ tnb, wheresn= sn− 2−qnsn− 1andtn= tn− 2− qntn− 1.
This completes the inductive proof that for everyn ≤ m,rnis a linear
combination ofa andb. Applying this statement in the casen = m, we
conclude that gcd(a,b) = rmis a linear combination ofaandb. ±

For an alternative proof of Theorem 7.1.4, see exercise 4. One advantage
of the proof we have given is that it provides us with a method to find
integerss and t such that gcd(a,b) = sa + tb. While carrying out the
Euclidean algorithm, we can compute numberssnandtnrecursively by using
the formulas:

```
s 0 = 1, t 0 = 0,
s 1 = 0, t 1 = 1,
forn≥ 2,sn= sn− 2−qnsn− 1, tn= tn− 2− qntn− 1.
```
Ifmis the largest index for whichrm±= 0, then gcd(a,b)= rm= sma+tmb.
The version of the Euclidean algorithm in which we keep track of these extra
numberssnandtnis called the _extended Euclidean algorithm_.

**Example 7. 1. 5.** Use the extended Euclidean algorithm to find gcd(574, 168)
and express it as a linear combination of 574 and 168.


330 _Number Theory_

_Solution_

The calculations are shown in Figure 7.2. We conclude that gcd(574, 168)=
14 = 5 · 574 − 17 · 168.

```
n qn rn sn tn Division
0 574 1 0
1 168 0 1 574 = 3 ·168 + 70
2 3 70 1 − 3 · 0 = 1 0 − 3 ·1 = − 3 168 = 2 · 70 + 28
3 2 28 0 − 2 ·1 = − 2 1 − 2 ·(− 3)= 7 70 = 2 · 28 + 14
4 2 14 1 − 2 ·(−2)= 5 −3 − 2 ·7 = − 17 28 = 2 · 14 + 0
5 2 0
```
```
Figure 7.2. Calculation of gcd(574, 168)by extended Euclidean algorithm.
```
As an immediate consequence of Theorem 7.1.4, we have the following
surprising fact.

**Theorem 7. 1. 6.** _For all positive integers_ a _,_ b _, and_ d _, if_ d |a _and_ d| b _then_
d| gcd(a,b)_._

_Proof._ Leta,b, anddbe arbitrary positive integers and suppose thatd|aand
d|b. Then there are integersjandksuch thata= jd andb= kd. Now by
Theorem 7.1.4 letsandtbe integers such that gcd(a,b)= sa+tb. Then

```
gcd(a,b) = sa+tb = sjd +tkd = (sj+ tk)d,
```
sod| gcd(a,b). ±

Recall from part 3 of Example 4.4.3 that the divisibility relation is a partial
order onZ+. We could interpret Theorem 7.1.6 as saying that gcd(a,b)is the
largest element ofD(a) ∩D(b) not only with respect to the usual ordering of
the positive integers, but also with respect to the divisibility partial order.

```
Exercises
```
1. Leta= 57 andb= 36.
    (a) FindD(a),D(b), andD(a) ∩D(b).
(b) Use the Euclidean algorithm to find gcd(a,b).
*2. Find gcd(a,b), and express it as a linear combination ofaandb.


```
Greatest Common Divisors 331
(a) a= 775,b= 682.
(b) a= 562,b= 243.
```
3. Find gcd(a,b), and express it as a linear combination ofaandb.
    (a) a= 2790,b= 1206.
    (b) a= 191,b= 156.
4. Complete the following alternative proof of Theorem 7.1.4. Supposea
    andbare positive integers. LetL = {n ∈Z+ | ∃s ∈Z∃t ∈Z(n =
    sa + tb)}. Show thatLhas a smallest element. Letd be the smallest
    element ofL. Now show thatd= gcd(a,b). (Hint: Show that when you
    divide eitheraorbbyd, the remainder cannot be positive.)
*5. Supposeaandbare positive integers, and letd= gcd(a,b). Show that
for every integern,nis a linear combination ofaandbiffd|n.
6. Prove that for all positive integersa,b, andc, gcd(a,b)= gcd(a+bc,b).
*7. Suppose thata,a²,b, andb²are positive integers.
(a) Ifa≤ a²andb≤b², must it be the case that gcd(a,b)≤ gcd(a²,b²)?
Justify your answer with either a proof or a counterexample.
(b) Ifa |a²andb |b², must it be the case that gcd(a,b) | gcd(a²,b²)?
Justify your answer with either a proof or a counterexample.
8. Prove that for every positive integera, gcd( 5 a+ 2, 13a+ 5)= 1.
*9. Prove that for all positive integersa andb, gcd( 2 a− 1, 2b− 1) =
2 gcd(a,b)− 1.
10. Prove that for all positive integersa,b, andn, gcd(na,nb) = ngcd(a,b).
11. Supposea,b, andcare positive integers.
(a) Prove thatD(gcd(a,b))= D(a) ∩D(b).
(b) Prove that gcd(gcd(a,b),c)is the largest element ofD(a) ∩D(b) ∩
D(c).

*12. (a) Use the Euclidean algorithm to find gcd(55, 34). Do you recognize
the numbers in the sequencer 0 ,r 1 ,...? (Hint: Look back at Section
6.4.) How many division steps are there?
(b) Supposen ≥ 2. What is gcd(Fn+ 1,Fn)? How many division steps
are there when using the Euclidean algorithm to find gcd(Fn+ 1,Fn)?
(Fnis thenth Fibonacci number.)

13. Supposeaandbare positive integers witha≥b. Letr 0 ,r 1 ,... ,rm+ 1be
    the sequence of numbers produced when using the Euclidean algorithm
    to compute gcd(a,b), whererm±= 0 andrm+ 1= 0. Note that this means
    that the algorithm requiredmdivisions.
    (a) Prove that∀k ∈N(k < m → rm−k ≥ Fk+ 2), whereFk+ 2is the
       (k+ 2)th Fibonacci number.


332 _Number Theory_

```
(b) Letφ= (1+
```
### √

```
5 )/2. (φis the golden ratio; see exercise 20 in Section
6.4.) Prove that for every positive integerk,Fk> φk/
```
### √

```
5− 1. (Hint:
Use Theorem 6.4.3.)
(c) Show that
```
```
m <
```
```
log(b+ 1)
logφ
```
### +

```
log 5
2 logφ
```
### − 1.

```
(You can use either base-10 logarithms or natural logarithms in this
formula.)
(d) Show that ifbhas at most 100 digits, then the number of divisions
when using the Euclidean algorithm to compute gcd(a,b) will be at
most 479.
```
14. (a) Prove the following alternative version of the division algorithm: For
    any positive integersaandb, there are natural numbersqandrsuch
    thatr≤ b/2 and eithera= qb+ rora= qb−r.
(b) Suppose thata,b, andrare positive integers,qis a natural number,
and eithera = qb+ r ora = qb − r. Prove that gcd(a,b) =
gcd(b,r).
(c) Supposeaandbare positive integers witha≥ b. Define a sequence
r 0 ,r 1 ,... recursively as follows:r 0 = a,r 1 = b, and for alln≥ 1,
ifrn ±= 0 then we use part (a) to find natural numbersqn+ 1 and
rn+ 1such thatrn+ 1 ≤ rn/2 and eitherrn− 1 = qn+ 1rn+ rn+ 1or
rn− 1= qn+ 1rn− rn+ 1. Prove that there is somemsuch thatrm±= 0
andrm+ 1= 0, and gcd(a,b) = rm. This gives us a new method of
computing greatest common divisors; it is called the _least absolute
remainder Euclidean algorithm_.
(d) Compute gcd(1515, 555)by both the Euclidean algorithm and the
least absolute remainder Euclidean algorithm. Which takes fewer
steps?

## 7.2 Prime Factorization

In Section 6.4 we saw that every integern >1 is either prime or can be written
as a product of prime numbers; we say thatnhas a _prime factorization_. In this
section we will show that this prime factorization is in a certain sense unique.
One important tool in this investigation will be greatest common divisors. In
particular, we will be interested in pairs of positive integers whose greatest
common divisor has the smallest possible value, 1.


```
Prime Factorization 333
```
**Definition 7.2.1.** Ifaandbare positive integers and gcd(a,b) = 1, then we
say thataandbare _relatively prime_.

Equivalently, we can say that aandb are relatively prime if their only
common divisor is 1. For example,D( 50 )= {1, 2, 5, 10, 25, 50} andD( 63 )=
{1, 3, 7, 9, 21, 63}, soD( 50 )∩D( 63 )= {1}. Therefore gcd(50, 63)= 1, so 50
and 63 are relatively prime.
One reason relatively prime integers are important is given by our next
theorem. The key to the proof of the theorem is the use of existential
instantiation to introduce names for integers that we know exist.

**Theorem 7.2.2.** _For all positive integers_ a _,_ b _, and_ c _, if_ c|ab _and_ gcd(a,c)= 1
_then_ c|b_._

_Proof._ Supposec |aband gcd(a,c)= 1. Then there is some integerjsuch
thatab = jc, and by Theorem 7.1.4, there are integerss andtsuch that
sa+tc= 1. Therefore

```
b= b· 1 = b·(sa+tc)= sab +tbc= sjc+ tbc = (sj+tb)c,
```
soc|b. ±

Notice that ifp is a prime number thenD(p) = {1,p}. Thus, for any
positive integera, the only possible values of gcd(a,p)are 1 andp. Ifp| a
then gcd(a,p) = p, and if not, then the only common divisor ofaandpis
1 and thereforeaandpare relatively prime. Combining this observation with
Theorem 7.2.2, we get the following important fact about prime divisors.

**Theorem 7.2.3.** _For all positive integers_ a _,_ b _, and_ p _, if_ p _is prime and_ p|ab
_then either_ p |a _or_ p|b_._

_Proof._ Supposepis prime andp|ab. As we observed earlier, ifp±athena
andpare relatively prime, and therefore by Theorem 7.2.2,p|b. Thus, either
p|aorp|b. ±

_Commentary._ Notice that to prove the disjunction(p |a)∨(p |b), we used
the strategy of assumingp±aand then provingp|b.

Using mathematical induction, we can extend this theorem to the case of a
prime number dividing a product of a list of positive integers.

**Theorem 7.2.4.** _Suppose_ p _is a prime number and_ a 1 _,_ a 2 _,... ,_ ak _are positive
integers. If_ p|(a 1 a 2 · · ·ak) _, then for some_ i∈ {1, 2,.. .,k} _,_ p|ai_._


334 _Number Theory_

_Proof._ We prove this theorem by induction onk. In other words, we will use
induction to prove the following statement: for everyk ≥ 1, ifpdivides the
product of any list ofkpositive integers, then it divides one of the integers in
the list.
Our base case isk = 1, and in that case the statement is clearly true: if
p|a 1 , then there is somei∈ {1} such thatp|ai, namely,i= 1.
Now suppose the statement holds for any list ofkpositive integers, and let
a 1 ,a 2 ,... ,ak+ 1be a list of positive integers such thatp|(a 1 a 2 · · ·akak+ 1).
Sincea 1 a 2 · · ·akak+ 1 = (a 1 a 2 · · ·ak)ak+ 1, by Theorem 7.2.3 eitherp |
(a 1 a 2 · · ·ak)orp | ak+ 1. In the first case, by the inductive hypothesis we
havep|aifor somei∈ {1, 2,.. .,k}, and in the second we havep|aiwhere
i= k+ 1. ±

We are now ready to address the issue of the uniqueness of prime factoriza-
tions. Consider, for example, the problem of writing 12 as a product of prime
numbers. There are actually three different ways to write 12 as a product of
prime numbers: 12 = 2 ·2 · 3 = 2 ·3 · 2 = 3 · 2 · 2. But of course in all three
cases we are multiplying the same three prime numbers, just in a different
order. To avoid counting these as three different prime factorizations of 12, we
will only consider factorizations in which the primes are listed from smallest
to largest. There is only one prime factorization of 12 that meets this additional
requirement: 12 = 2 ·2 · 3.
More generally, we will be interested in expressions of the form
p 1 p 2 · · ·pk, wherep 1 ,p 2 ,... ,pkare prime numbers andp 1 ≤ p 2 ≤ · · · ≤
pk. We will say that such an expression is the product of a _nondecreasing list
of prime numbers_. We will show that every integer larger than 1 can be written
as the product of a nondecreasing list of prime numbers in a unique way.
Recall that, to show that an object with some property is unique, we show
that any two objects with the property would have to be equal. Thus, the key
to proving the uniqueness of prime factorizations will be the following fact.

**Theorem 7. 2. 5.** _Suppose that_ p 1 _,_ p 2 _,... ,_ pk _and_ q 1 _,_ q 2 _,... ,_ qm _are prime
numbers,_ p 1 ≤ p 2 ≤ · · · ≤ pk _,_ q 1 ≤ q 2 ≤ · · · ≤ qm _, and_ p 1 p 2 · · ·pk =
q 1 q 2 · · ·qm_. Then_ k= m _and for all_ i∈ {1,.. .,k} _,_ pi= qi_._

_Proof._ The proof will be by induction onk. In other words, we use induction
to prove that for allk ≥ 1, if the product of some nondecreasing list ofk
prime numbers is equal to the product of another nondecreasing list of prime
numbers, then the two lists must be the same.
Whenk = 1, we havep 1 = q 1 q 2 · · ·qm. Ifm >1 then this contradicts the
fact thatp 1 is prime. Thereforem = 1 andp 1 = q 1.


_Prime Factorization_ 335
For the induction step, suppose the statement is true for products of
nondecreasing lists ofkprime numbers, and suppose thatp 1 ,p 2 ,... ,pk+ 1
andq 1 ,q 2 ,... ,qmare prime numbers,p 1 ≤ p 2 ≤ · · · ≤ pk+ 1,q 1 ≤ q 2
≤ · · · ≤ qm, andp 1 p 2 · · ·pk+ 1= q 1 q 2 · · ·qm. Notice that ifm = 1 then this
equation saysp 1 p 2 · · ·pk+ 1= q 1 , and as in the base case this contradicts the
fact thatq 1 is prime, som >1.
Clearlypk+ 1|(p 1 p 2 · · ·pk+ 1), sopk+ 1|(q 1 q 2 · · ·qm), and by Theorem
7.2.4 it follows thatpk+ 1 | qifor somei. Thereforepk+ 1 ≤ qi ≤ qm. A
similar argument shows thatqm | pjfor somej, soqm ≤ pj ≤ pk+ 1.
We conclude that pk+ 1 = qm. Canceling these factors from the equation
p 1 p 2 · · ·pk+ 1= q 1 q 2 · · ·qmgives usp 1 p 2 · · ·pk= q 1 q 2 · · ·qm− 1, and now
the inductive hypothesis tells us that the remaining factors on both sides of the
equation are the same, as required. ±

We now have in place everything we need to establish the existence and
uniqueness of prime factorizations. This theorem is so important it is known
as the fundamental theorem of arithmetic.

**Theorem 7. 2. 6.** (Fundamental theorem of arithmetic) _For every integer_ n > 1
_there are unique prime numbers_ p 1 _,_ p 2 _,... ,_ pk _such that_ p 1 ≤ p 2 ≤ · · · ≤ pk
_and_ n= p 1 p 2 · · ·pk_._

_Proof._ By Theorem 6.4.2, every integer greater than 1 is either prime or a
product of primes. Listing the primes from smallest to largest gives us the
required nondecreasing prime factorization. Uniqueness of the factorization
follows from Theorem 7.2.5. ±

If we write the product of the list of prime numbersp 1 ,p 2 ,... ,pkin
the form 1 ·p 1 p 2 · · ·pk, then it is natural to introduce the convention that
the product of the empty list is 1. With this convention we can extend the
fundamental theorem of arithmetic to say that every positive integer has a
unique prime factorization, where the factorization of the number 1 is the
product of the empty list of prime numbers.

**Example 7. 2. 7.** Find the prime factorizations of the following integers:

```
275, 276, 277.
```
_Solution_

The most straightforward way to find the prime factorization of a positive
integer is to search for its smallest prime divisor, factor it out, and repeat until


336 _Number Theory_

all factors are prime. This gives the following results. (Note that 277 is prime,
so the factoring process for 277 stops immediately.)

```
275 = 5 ·55 = 5 ·5 · 11,
276 = 2 ·138 = 2 · 2 · 69 = 2 · 2 ·3 · 23,
277 = 277.
```
When there are repeated primes in the prime factorization of an integer, we
often use exponent notation to write the prime factorization. For example, the
factorizations of 275 and 276 in the last example could be written in the form
275 = 5^2 · 11 and 276 = 2^2 · 3 · 23. More generally, we can write the prime
factorization of a positive integern in the formn = pe 11 pe 22 · · ·pkek, where
p 1 ,p 2 ,... ,pkare prime numbers,p 1 < p 2 < · · ·< pk, ande 1 ,e 2 ,... ,ek
are positive integers. Again, by the fundamental theorem of arithmetic, this
representation ofnis unique.
The fundamental theorem of arithmetic can provide insight into a number of
concepts of number theory. For example, supposenanddare positive integers
andd|n. Then there is some positive integercsuch thatcd = n. Now let the
prime factorizations ofcanddbec= p 1 p 2 · · ·pkandd= q 1 q 2 · · ·qm. Then
n= cd = p 1 p 2 · · ·pkq 1 q 2 · · ·qm. If we rearrange the primes in this product
into nondecreasing order, then this must be the unique prime factorization of
n. Thereforedmust be the product of some subcollection of the primes in the
prime factorization ofn. Notice that we are including here the possibility that
the subcollection is the empty subcollection (so thatd= 1 andc= n) or that
it includes all of the primes in the factorization ofn(so thatd= nandc= 1).
Rephrasing this conclusion using exponent notation, suppose the prime
factorization ofnisn = pe 11 pe 22 · · ·pekk. Then the divisors ofnare precisely

the numbers of the formpf 11 pf 22 · · ·pfkk, where for alli∈ {1, 2,.. .,k}, 0 ≤
fi≤ ei. For example, we saw in Example 7.2.7 that the prime factorization of
276 is 276 = 2^2 · 3 ·23. Therefore

D( 276 )= {1, 2, 2^2 , 3, 2 ·3, 2^2 ·3, 23, 2 ·23, 2^2 ·23, 3 ·23, 2 ·3 · 23, 2^2 · 3 ·23}

```
= {1, 2, 4, 3, 6, 12, 23, 46, 92, 69, 138, 276}.
```
Prime factorization can also help us understand greatest common divisors.
Supposeaandbare positive integers. Letp 1 ,p 2 ,... ,pkbe a list of all primes
that occur in the prime factorization of eitheraorb. Then we can writeaand
bin the form

```
a= pe 11 p 2 e^2 · · ·pkek, b= p 1 f^1 pf 22 · · ·pkfk,
```

```
Prime Factorization 337
```
where some of the exponentseiandfimight be 0, since some primes might
occur in only one of the factorizations. By the discussion of divisibility and
prime factorization in the previous paragraph, the common divisors ofaand
bare all numbers of the formpg 11 pg 22 · · ·pgkk, where for everyi∈ {1,.. .,k},
gi ≤ eiandgi ≤ fi. The greatest common divisor can be found by letting
eachgihave the largest possible value, which is min(ei,fi)= the minimum
ofeiandfi. In other words,

gcd(a,b)= p 1 min(e^1 ,f^1 )p 2 min(e^2 ,f^2 )· · ·pkmin(ek,fk).
For example, in Example 7.1.3 we used the Euclidean algorithm to find
that gcd(1392, 444)= 12. We could instead have factored 1392 and 444 into
primes:

```
1392 = 2^4 · 3 ·29 = 2^4 · 3^1 ·29^1 · 37^0 ,
444 = 2^2 · 3 ·37 = 2^2 · 3^1 ·29^0 · 37^1.
```
These factorizations give us another way to find the greatest common divisor
of 1392 and 444:

```
gcd(1392, 444)= 2min(4,2)·3min(1,1)· 29min(1,0)· 37min(0,1)
= 2^2 · 3^1 · 29^0 · 37^0 = 12.
```
Usually the Euclidean algorithm is a more efficient way to find the greatest
common divisor of two positive integers than prime factorization. But if you
happen to know the prime factorizations of two positive integers, then you can
compute their greatest common divisor very easily.
Another concept that is elucidated by prime factorization is least common
multiples. For any positive integersaandb, the _least common multiple_ ofa
andb, denoted lcm(a,b), is the smallest positive integermsuch thata|mand
b|m. Least common multiples come up when we are adding fractions: to add
two fractions with denominatorsaandb, we start by rewriting them with the
common denominator lcm(a,b).
Suppose that, as before,
a= pe 11 pe 22 · · ·pekk, b= pf 11 pf 22 · · ·pfkk.

For eachi∈ {1,.. .,k}, any common multiple ofaandbmust include a factor
pgiiin its prime factorization, wheregi≥ eiandgi≥ fi. The smallest possible
value ofgiis the maximum ofeiandfi, which we will denote max(ei,fi), so

```
lcm(a,b)= pmax 1 (e^1 ,f^1 )pmax 2 (e^2 ,f^2 )· · ·pmaxk (ek,fk).
```
It is not hard to show that for any numberseandf, min(e,f )+ max(e,f )=
e+f (see exercise 4), so


338 _Number Theory_

gcd(a,b)· lcm(a,b) =

### (

```
p 1 min(e^1 ,f^1 )· · ·pkmin(ek,fk)
```
### )

### ·

### (

```
pmax 1 (e^1 ,f^1 )· · ·pkmax(ek,fk)
```
### )

```
= pmin 1 (e^1 ,f^1 )+ max(e^1 ,f^1 )· · ·pkmin(ek,fk)+ max(ek,fk)
= pe 11 +f^1 · · ·pkek+fk
=
```
### (

```
p 1 e^1 · · ·pekk
```
### )

### ·

### (

```
p 1 f^1 · · ·pkfk
```
### )

```
= ab.
```
This gives us another way to compute lcm(a,b):

```
lcm(a,b)=
```
```
ab
gcd(a,b)
```
### .

For an alternative proof of this formula, see exercise 8.
For example, we now have two ways to compute lcm(1392, 444):
lcm(1392, 444)= 2max(4,2)·3max(1,1)· 29max(1,0)· 37max(0,1)
= 2^4 · 3^1 ·29^1 · 37^1 = 51504,

and

```
lcm(1392, 444)=
```
### 1392 · 444

```
gcd(1392, 444)
```
### =

### 618048

### 12

### = 51504.

This shows that if we want to add two fractions with denominators 1392 and
444, we should use the common denominator 51504.

**Example 7. 2. 8.** Find the least common multiple of 1386 and 1029.

_Solution_

We begin by using the Euclidean algorithm to find gcd(1386, 1029). The
calculations in Figure 7.3 show that gcd(1386, 1029)= 21. Therefore

```
lcm(1386, 1029)=
```
### 1386 · 1029

```
gcd(1386, 1029)=
```
### 1386 ·1029

### 21 = 67914.

```
n qn rn Division
0 1386
1 1029 1386 = 1 · 1029 + 357
2 1 357 1029 = 2 · 357 + 315
3 2 315 357 = 1 · 315 + 42
4 1 42 315 = 7 · 42 + 21
5 7 21 42 = 2 · 21 + 0
6 2 0
```
```
Figure 7.3. Calculation of gcd(1386, 1029)by Euclidean algorithm.
```

```
Prime Factorization 339
```
Alternatively, we could use prime factorizations: 1386 = 2 · 3^2 · 7 · 11 and
1029 = 3 ·7^3 , so lcm(1386, 1029)= 2 · 3^2 · 7^3 ·11 = 67914.

```
Exercises
```
1. Find the prime factorizations of the following positive integers: 650, 756,
    1067.
*2. Find lcm(1495, 650).
3. Find lcm(1953, 868).
4. Prove that for any numberseandf, min(e,f )+ max(e,f )= e+ f.
*5. Supposeaandbare positive integers. Prove thataandbare relatively
prime iff their prime factorizations have no primes in common.
6. Supposeaandbare positive integers. Prove thataandbare relatively
prime iff there are integerssandtsuch thatsa+ tb= 1.
7. Supposea,b,a², andb²are positive integers,aandbare relatively prime,
a²|a, andb²|b. Prove thata²andb²are relatively prime.
*8. Supposeaandbare positive integers. In this exercise you will give an
alternative proof of the formula lcm(a,b) = ab/gcd(a,b). Letm =
lcm(a,b).
(a) Prove thatab/gcd(a,b)is an integer and thata|(ab/gcd(a,b))and
b|(ab/gcd(a,b)). Use this to conclude thatm≤ ab/gcd(a,b).
Letqandr be the quotient and remainder whenab is divided bym.
Thus,ab= qm+rand 0 ≤r < m.
(b) Prove thatr= 0.
(c) By part (b),ab = qm. Prove thatq|aandq|b.
(d) Use part (c) to conclude thatm≥ ab/gcd(a,b). Together with part
(a), this shows thatm= ab/gcd(a,b).
9. Supposeaandbare positive integers, and letd= gcd(a,b). Thend|a
andd |b, so there are positive integersjandksuch thata = jd and
b= kd. Prove thatjandkare relatively prime.
10. Prove that for all positive integersa,b, andd, ifd | abthen there are
positive integersd 1 andd 2 such thatd= d 1 d 2 ,d 1 |a, andd 2 |b.
*11. Prove that for all positive integersa,b, andm, ifa |mandb|mthen
lcm(a,b) |m.
12. Supposea,b, andcare positive integers. Letmbe the smallest positive
integer such that a | m, b | m, and c | m. Prove that m =
lcm(lcm(a,b),c).
*13. Prove that for all positive integersaandb, ifa^2 |b^2 thena|b.


340 _Number Theory_

14. (a) Find all prime numberspsuch that 5p+ 9∈ {n^2 |n∈N}.
    (b) Find all prime numberspsuch that 15p+ 4∈ {n^2 |n∈N}.
       (c) Find all prime numberspsuch that 5p+ 8∈ {n^3 |n∈N}.
15. LetH = {4n+ 1 | n ∈N} = {1, 5, 9, 13,.. .}. The elements ofH
    are called _Hilbert numbers_ (named for David Hilbert (1862–1943)). A
    Hilbert number that is larger than 1 and cannot be written as a product of
    two smaller Hilbert numbers is called a _Hilbert prime_. For example, 9 is
    a Hilbert prime. (Of course, 9 is not a prime, since 9 = 3·3, but 3∈/H.)
    (a) Show thatH is closed under multiplication; that is,∀x ∈H∀y ∈
       H (xy ∈H ).
    (b) Show that every Hilbert number that is larger than 1 is either a
       Hilbert prime or a product of two or more Hilbert primes.
    (c) Show that 441 is a Hilbert number that can be written as a product of
       a nondecreasing list of Hilbert primes in two different ways. Thus,
       Hilbert prime factorization is not unique.

*16. Supposeaandb are positive integers. Prove that there are relatively
prime positive integerscanddsuch thatc|a,d|b, andcd = lcm(a,b).

17. Supposea,b, andcare positive integers.
    (a) Prove that gcd(a,bc) |(gcd(a,b)·gcd(a,c)).
(b) Prove that lcm(gcd(a,b), gcd(a,c)) | gcd(a,bc). (Hint: Use exercise
11.)
    (c) Suppose thatbandcare relatively prime. Prove that gcd(a,bc) =
       gcd(a,b)·gcd(a,c).
18. Recall from exercise 5 in Section 6.2 that the numbersFn= 2(^2

```
n)
+ 1 are
called Fermat numbers. Fermat showed thatFnis prime for 0 ≤n≤ 4,
and Euler showed thatF 5 is not prime. It is not known if there is any
n >4 for whichFnis prime. In this exercise you will see one reason
why one might be interested in prime numbers of this form. Show that if
mis a positive integer and 2m+ 1 is prime, thenmis a power of 2. (Hint:
Ifmis not a power of 2, thenmhas an odd prime numberpin its prime
factorization. Thus there is a positive integerrsuch thatm= pr. Now
apply exercise 14 in Section 6.1 to conclude that( 2 r+ 1)|( 2 m+ 1).)
```
*19. Supposexis a positive rational number.

```
(a) Prove that there are positive integersaandbsuch thatx= a/b and
gcd(a,b)= 1.
(b) Supposea,b,c, anddare positive integers,x = a/b = c/d, and
gcd(a,b)= gcd(c,d)= 1. Prove thata= candb= d.
```

```
Modular Arithmetic 341
(c) Prove that there are prime numbersp 1 ,p 2 ,... ,pk and nonzero
integerse 1 ,e 2 ,... ,eksuch thatp 1 < p 2 <· · ·< pkand
```
```
x= pe 11 p 2 e^2 · · ·pkek.
```
```
Note that some of the exponentseimay be negative.
(d) Prove that the representation ofx in part (c) is unique. In other
words, ifp 1 ,p 2 ,... ,pkandq 1 ,q 2 ,... ,qmare prime numbers,e 1 ,e 2 ,
```
... ,ekandf 1 ,f 2 ,... ,fmare nonzero integers,p 1 < p 2 <· · ·< pk,
q 1 < q 2 <· · ·< qm, and

```
x= pe 11 p 2 e^2 · · ·pekk= qf 11 q 2 f^2 · · ·qmfm,
```
```
thenk= mand for alli∈ {1, 2,.. .,k},pi= qiandei= fi.
```
20. Complete the following proof that

### √

```
√ 2 is irrational: Supposea/b =
2, where a and b are positive integers. Then a^2 = 2b^2. Now
derive a contradiction by considering the exponent of 2 in the prime
factorizations ofaandb.
```
## 7.3 Modular Arithmetic

Supposem is a positive integer. Recall from Definition 4.5.9 that for any
integersaandb, we say thatais _congruent to_ b _modulo_ mifm|(a−b). We
writea≡ b (modm), or more brieflya≡mb, to indicate thatais congruent
tobmodulom. We saw in Theorem 4.5.10 that ≡mis an equivalence relation
onZ. For any integera, let [a]mbe the equivalence class ofa with respect
to the equivalence relation ≡m. The set of all of these equivalence classes is
denotedZ/≡m. Thus,

```
[a]m= {b∈Z|b≡ a (modm)}, Z/≡m= {[a]m|a∈Z}.
```
As we know from Theorem 4.5.4,Z/≡mis a partition ofZ.
For example, in the casem= 3 we have

```
[0] 3 = {b∈Z|b≡ 0(mod 3)} = {0, 3, 6, 9,.. .,− 3, − 6, − 9,.. .},
[1] 3 = {b∈Z|b≡ 1(mod 3)} = {1, 4, 7, 10,.. .,− 2, − 5, − 8,.. .},
[2] 3 = {b∈Z|b≡ 2(mod 3)} = {2, 5, 8, 11,.. .,− 1, − 4, − 7,.. .}.
```
Notice that every integer is an element of exactly one of these equivalence
classes. It follows that every integer is congruent modulo 3 to exactly one of
the numbers 0, 1, and 2. This is an instance of the following general theorem.


342 _Number Theory_

**Theorem 7. 3. 1.** _Suppose_ m _is a positive integer. Then for every integer_ a _,
there is exactly one integer_ r _such that_ 0 ≤ r < m _and_ a≡ r (modm)_._

_Proof._ Letabe an arbitrary integer. Letqandrbe the quotient and remainder
whenais divided bym (see exercise 14 in Section 6.4). This means that
a= qm+rand 0 ≤r < m. Thena−r= qm, som|(a− r), and therefore
a≡ r (modm). This proves the existence of the required integerr.
To prove uniqueness, supposer 1 andr 2 are integers such that 0 ≤ r 1 < m,
0 ≤r 2 < m,a≡ r 1 (modm), anda≡ r 2 (modm). Then by the symmetry
and transitivity of the equivalence relation ≡m,r 1 ≡ r 2 (modm), so there is
some integerdsuch thatr 1 −r 2 = dm. But from 0 ≤r 1 < mand 0 ≤r 2 < m
we see that −m < r 1 − r 2 < m. Thus −m < dm < m, which implies that
− 1< d <1. The only integer strictly between − 1 and 1 is 0, sod= 0 and
thereforer 1 − r 2 = dm = 0. In other words,r 1 = r 2. ±

_Commentary._ Of course, the existence and uniqueness of the numberr are
proven separately, and the proof of uniqueness uses the usual strategy of
assuming thatr 1 andr 2 are two integers with the required properties and then
provingr 1 = r 2.

Theorem 7.3.1 says that every integer is congruent modulomto exactly one
element of the set {0, 1,.. .,m− 1}. We say that this set is a _complete residue
system modulo_ m.
Note that by Lemma 4.5.5,

```
a≡ r (modm) iff a∈[r]m iff [a]m= [r]m.
```
Thus, Theorem 7.3.1 shows that every equivalence class inZ/≡mis equal to
exactly one of the equivalence classes in the list [0]m, [1]m,... , [m− 1]m.
Thus, thesemequivalence classes are distinct, andZ/≡m= {[0]m, [1]m,.. .,
[m− 1]m}.
Consider any two equivalence classes X and Y inZ/≡m. Something
surprising happens if we add or multiply elements ofX andY. It turns out
that all sums of the formx+y, wherex∈Xandy∈Y, belong to the same
equivalence class, and also all productsxy belong to the same equivalence
class. In other words, we have the following theorem.

**Theorem 7. 3. 2.** _Suppose_ m _is a positive integer and_ X _and_ Y _are elements of_
Z/≡m_. Then:_

_1. There is a unique_ S∈Z/≡m _such that_ ∀x∈X∀y∈Y (x +y∈S)_.
2. There is a unique_ P ∈Z/≡m _such that_ ∀x∈X∀y∈Y (xy ∈P )_._


_Modular Arithmetic_ 343
We will prove this theorem shortly, but first we use it to introduce two binary
operations onZ/≡m.

**Definition 7.3.3.** SupposeX andY are elements ofZ/≡m. Then we define
the sum and product ofXandY, denotedX+ YandX·Y, as follows:

```
X+ Y = the uniqueS ∈Z/≡msuch that∀x∈X∀y∈Y (x+ y∈S),
X·Y = the uniqueP ∈Z/≡msuch that∀x∈X∀y∈Y (xy ∈P ).
```
```
The key to our proof of Theorem 7.3.2 will be the following lemma.
```
**Lemma 7.3.4.** _Suppose_ m _is a positive integer. Then for all integers_ a _,_ a² _,_ b _,
and_ b² _, if_ a²≡ a (modm) _and_ b²≡ b (modm) _then_ a²+b²≡ a+b (modm)
_and_ a²b²≡ ab (modm)_._

_Proof._ Supposea²≡ a (modm) andb²≡ b (modm). Thenm | (a²− a)
andm |(b²−b), so we can choose integerscanddsuch thata²− a = cm
andb²−b= dm, or in other wordsa²= a+cmandb²= b+dm. Therefore

(a²+b²)−(a+b) = (a+ cm+b+dm) −(a+b) =cm+dm = (c+d)m,

som|((a²+b²)−(a+b)), which meansa²+a≡ b²+b (modm). Similarly,

a²b²−ab= (a+cm)(b+dm)−ab= adm+bcm+cdm^2 = (ad+bc+cdm)m ,

som|(a²b²−ab), and thereforea²b²≡ab (modm). ±

_Proof of Theorem 7.3.2._ SinceX andY are elements ofZ/≡m, we can leta
andbbe integers such thatX = [a]mandY = [b]m. To prove part 1 of the
theorem, letS = [a+ b]m. Now letx ∈Xandy ∈Y be arbitrary. Then
x∈[a]mandy∈[b]m, sox≡ a (modm)andy≡ b (modm). By Lemma
7.3.4 it follows thatx+y≡ a+b (modm), sox+y∈[a+b]m= S. Since
xandywere arbitrary, we conclude that∀x∈X∀y∈Y (x +y∈S).
To prove thatSis unique, supposeS²is another equivalence class such that
∀x∈X∀y∈Y (x+y∈S²). Sincea∈Xandb∈Y,a+b∈Sanda+b∈S².
ThereforeSandS²are not disjoint, and sinceZ/≡mis pairwise disjoint, this
implies thatS= S².
The proof of part 2 is similar, usingP = [ab]m; see exercise 2. ±

The proof of Theorem 7.3.2 shows that ifX = [a]mandY = [b]m, then
the sum ofXandY is the equivalence classS = [a+ b]mand the product is
P = [ab]m. Thus, we have the following theorem.


344 _Number Theory_

**Theorem 7. 3. 5.** _For any positive integer_ m _and any integers_ a _and_ b _,_

```
[a]m+ [b]m= [a+b]m and [a]m· [b]m= [ab]m.
```
Let’s try out these ideas. Consider the casem = 5. We know that every
element ofZ/≡ 5 is equal to either [0] 5 , [1] 5 , [2] 5 , [3] 5 , or [4] 5 , and we will
often choose to write equivalence classes in one of these forms. For example,
[2] 5 + [4] 5 = [6] 5 , but also 6 ≡ 1 (mod 5), so [6] 5 = [1] 5. Thus, we can say
that [2] 5 + [4] 5 = [1] 5. Similarly, [2] 5 ·[4] 5 = [8] 5 = [3] 5. Figure 7.4 shows
the complete addition and multiplication tables forZ/≡ 5.

```
+ [0] 5 [1] 5 [2] 5 [3] 5 [4] 5
[0] 5 [0] 5 [1] 5 [2] 5 [3] 5 [4] 5
[1] 5 [1] 5 [2] 5 [3] 5 [4] 5 [0] 5
[2] 5 [2] 5 [3] 5 [4] 5 [0] 5 [1] 5
[3] 5 [3] 5 [4] 5 [0] 5 [1] 5 [2] 5
[4] 5 [4] 5 [0] 5 [1] 5 [2] 5 [3] 5
```
### · [0] 5 [1] 5 [2] 5 [3] 5 [4] 5

### [0] 5 [0] 5 [0] 5 [0] 5 [0] 5 [0] 5

### [1] 5 [0] 5 [1] 5 [2] 5 [3] 5 [4] 5

### [2] 5 [0] 5 [2] 5 [4] 5 [1] 5 [3] 5

### [3] 5 [0] 5 [3] 5 [1] 5 [4] 5 [2] 5

### [4] 5 [0] 5 [4] 5 [3] 5 [2] 5 [1] 5

```
Figure 7.4. Addition and multiplication tables forZ/≡ 5.
```
How do addition and multiplication inZ/≡mcompare to addition and
multiplication inZ? Many properties of addition and multiplication inZcarry
over easily toZ/≡m.

**Theorem 7. 3. 6.** _Suppose_ m _is a positive integer. Then for all equivalence
classes_ X _,_ Y _, and_ Z _in_ Z/≡m _:_

_1._ X+Y = Y+ X_. (Addition is commutative.)
2._ (X+Y )+ Z= X+(Y +Z)_. (Addition is associative.)
3._ X+ [0]m= X_. (_ [0]m _is an identity element for addition.)
4. There is some_ X²∈Z/≡m _such that_ X+ X²= [0]m_. (_ X _has an additive_
    _inverse.)
5._ X·Y = Y·X_. (Multiplication is commutative.)
6._ (X·Y )·Z=X·(Y·Z)_. (Multiplication is associative.)
7._ X· [1]m= X_. (_ [1]m _is an identity element for multiplication.)
8._ X· [0]m= [0]m_.
9._ X·(Y+Z)= (X·Y )+(X·Z)_. (Multiplication distributes over addition.)_

_Proof._ SinceX,Y,Z ∈Z/≡m, there are integersa,b, andcsuch thatX =
[a]m,Y = [b]m, andZ = [c]m. For part 1, we use the commutativity of
addition inZ:

```
X+ Y = [a]m+ [b]m= [a+b]m= [b+ a]m= [b]m+ [a]m= Y+X.
```

```
Modular Arithmetic 345
```
The proof of 2 is similar. To prove part 3, we compute

```
X+ [0]m= [a]m+ [0]m= [a+ 0]m= [a]m= X.
```
For part 4, letX²= [−a]m. Then

```
X+ X²= [a]m+ [−a]m= [a+(−a)]m= [0]m.
```
The proofs of the remaining parts are similar (see exercise 3). ±

You are asked to show in exercise 4 that the identity elements and inverses
in Theorem 7.3.6 are unique. Thus, in part 3 of the theorem we can say that
[0]mis not just _an_ identity element for addition, but _the_ identity element, and
similarly [1]mis _the_ identity element for multiplication. In part 4, we can say
thatX²is _the_ additive inverse ofX; we will denote the additive inverse ofX
by −X. For example, according to the addition table forZ/≡ 5 in Figure 7.4,
[4] 5 + [1] 5 = [0] 5 , so − [4] 5 = [1] 5.
What about multiplicative inverses? If X ∈ Z/≡m,X² ∈ Z/≡m, and
X·X² = [1]m, then we say that X² is a multiplicative inverse of X.
For example, according to the multiplication table forZ/≡ 5 in Figure 7.4,
[3] 5 · [2] 5 = [1] 5 , so [2] 5 is a multiplicative inverse of [3] 5. In fact, inZ/≡ 5 ,
every element except [0] 5 has a multiplicative inverse. Multiplicative inverses,
when they exist, are also unique (see exercise 4), so we can say that [2] 5 is _the_
multiplicative inverse of [3] 5. In general, ifX∈Z/≡m, then the multiplicative
inverse ofX, if it exists, is denotedX− 1. Thus [3]− 1 5 = [2] 5.
A little experimentation reveals that multiplicative inverses often don’t
exist. For example, we leave it for you to check that inZ/≡ 6 , only [1] 6 and
[5] 6 have multiplicative inverses (see exercise 1). When does an equivalence
class have a multiplicative inverse? The answer is given by our next theorem.

**Theorem 7. 3. 7.** _Suppose that_ a _and_ m _are positive integers. Then_ [a]m _has a
multiplicative inverse iff_ m _and_ a _are relatively prime._

_Proof._ Suppose first that [a]mhas a multiplicative inverse; say [a]− 1m = [a²]m.
Then [a]m· [a²]m= [aa²]m= [1]m, and thereforeaa²≡ 1(modm). This
means thatm|(aa²− 1), so we can choose some integercsuch thataa²− 1 =
cm, or equivalently −cm+ a²a= 1. Thus 1 is a linear combination ofmand
a, and by exercise 6 in the last section it follows thatm andaare relatively
prime.
For the other direction, assume thatmandaare relatively prime. Then by
Theorem 7.1.4 there are positive integerssandt such thatsm+ ta = 1.
Thereforeta− 1 = −sm, sota ≡ 1(modm). We conclude that [a]m·[t]m=
[ta]m= [1]m, so [t]mis the multiplicative inverse of [a]m. ±


346 _Number Theory_

_Commentary._ Notice that the conclusion of the theorem is a biconditional
statement, and the proof uses the usual strategy of proving both directions
of the biconditional separately.

The proof ofTheorem 7.3.7 shows that for any positive integersmanda, we
can use the extended Euclidean algorithm to find [a]− 1m. If the algorithm shows
that gcd(m,a)±= 1 then [a]− 1m doesn’t exist, and if we find that gcd(m,a) =
1 =sm+tathen [a]− 1m = [t]m.

**Example 7. 3. 8.** Find, if possible, the multiplicative inverses of [34] 847 and
[35] 847 inZ/≡ 847.

_Solution_

Figure 7.5 shows the calculation of gcd(847, 34)by the extended Euclidean
algorithm. We conclude that gcd(847, 34) = 1 = 11 · 847 − 274 · 34, and
therefore [34]− 1 847 = [− 274] 847 = [573] 847. As you can easily check, 34·573 =
19482 ≡ 1(mod 847), so [34] 847 ·[573] 847 = [19482] 847 = [1] 847.
We leave it to you to compute that gcd(847, 35)= 7. Therefore [35] 847 does
not have a multiplicative inverse.

```
n qn rn sn tn Division
0 847 1 0
1 34 0 1 847 = 24 · 34 + 31
2 24 31 1 − 24 34 = 1 ·31 + 3
3 1 3 − 1 25 31 = 10 · 3 + 1
4 10 1 11 − 274 3 = 3 ·1 + 0
5 3 0
Figure 7.5. Calculation of gcd(847, 34)by extended Euclidean algorithm.
```
**Example 7. 3. 9.** A class has 25 students. For Easter, the teacher bought several
cartons of eggs, each containing a dozen eggs, and then distributed the eggs
among the students for them to decorate. After giving an equal number of
eggs to each student, she had 7 eggs left over. What is the smallest number of
cartons of eggs she could have bought?

_Solution_

Letx be the number of cartons of eggs the teacher bought. Then she had
12 x eggs, and setting aside the 7 left over at the end, the remaining eggs


```
Modular Arithmetic 347
```
were divided evenly among 25 students. Therefore 25 | ( 12 x − 7), so
12 x ≡ 7 (mod 25). We must find the smallest positive integerx satisfying
this congruence.
If we were solving the equation 12x = 7 for a real numberx, we would
know what to do. If 12x= 7, then by multiplying both sides of the equation
by 1/12 we conclude thatx = 7/12. In fact, this reasoning can be reversed:
ifx = 7/12, then multiplying by 12 we get 12x = 7. Thus, the equations
12 x = 7 andx = 7/12 are equivalent, which means thatx = 7/12 is the
unique solution to the equation 12x= 7.
Unfortunately, we are working with the congruence 12x ≡ 7(mod 25),
which is not an equation. But we can turn it into an equation by working
with equivalence classes. Our congruence is equivalent to the equation [12] 25 ·
[x] 25 = [7] 25 , and we can solve this equation by imitating our solution to the
equation 12x = 7. We begin by finding the multiplicative inverse of [12] 25.
Applying the extended Euclidean algorithm, we find that gcd(25, 12)= 1 =
1 · 25 − 2 ·12, so [12]− 1 25 = [− 2] 25 = [23] 25.
To solve the equation [12] 25 · [x] 25 = [7] 25 , we multiply both sides by
[12]− 1 25 = [23] 25. We spell out all the steps in detail, to make it clear how the
properties in Theorem 7.3.6 are being used:

```
[12] 25 · [x] 25 = [7] 25 ,
[12]− 1 25 ·([12] 25 ·[x] 25 )= [12]− 1 25 ·[7] 25 ,
([12]− 1 25 · [12] 25 )· [x] 25 = [23] 25 · [7] 25 ,
[1] 25 · [x] 25 = [161] 25 = [11] 25 ,
[x] 25 = [11] 25.
```
As before, these steps can be reversed: multiplying both sides of the equation
[x] 25 = [11] 25 by [12] 25 gives us [12] 25 · [x] 25 = [7] 25. Therefore

12 x≡ 7(mod 25)iff [12] 25 ·[x] 25 = [7] 25 iff [x] 25 = [11] 25 iffx∈[11] 25.

In other words, the solutions to the congruence 12x ≡ 7 (mod 25) are
precisely the elements of the equivalence class [11] 25 , and the smallest positive
solution isx= 11. If the teacher bought 11 cartons of eggs, then she had 132
eggs, and after giving 5 to each student she had 7 left over.

We were lucky in this example that 25 and 12 were relatively prime, so
that [12] 25 had a multiplicative inverse. This multiplicative inverse played a
crucial role in our solution of the congruence 12x≡ 7(mod 25). How can we
solve a congruenceax ≡ b (modm)ifmandaare not relatively prime? We
won’t analyze such congruences in detail, but we’ll give a couple of examples


348 _Number Theory_

illustrating how such congruences can be solved by using the following two
theorems.

**Theorem 7. 3. 10.** _Suppose_ m _and_ a _are positive integers, and let_ d =
gcd(m,a)_. Then for every integer_ b _, if_ d ±b _then there is no integer_ x _such
that_ ax≡ b (modm)_._

_Proof._ See exercise 7. ±

**Theorem 7. 3. 11.** _Suppose_ n _and_ m _are positive integers. Then for all integers_
a _and_ b _,_

```
na≡ nb (modnm) iff a≡ b (modm).
```
_Proof._ See exercise 8. ±

**Example 7. 3. 12.** Solve the following congruences:

```
77 x≡ 120(mod 374), 77 x≡ 121(mod 374).
```
_Solution_

We begin by computing that gcd(374, 77) = 11. Since 11 ± 120, Theorem
7.3.10 tells us that the first congruence, 77x ≡ 120 (mod 374), has no
solutions. To solve the second congruence, we first write it as 11 ·7x≡ 11·11
(mod 11 · 34)and then observe that by Theorem 7.3.11, this is equivalent to
7 x≡ 11(mod 34). To solve this congruence, we compute that gcd(34, 7)=
1 = − 1 ·34 + 5 · 7, so [7]− 1 34 = [5] 34. Therefore

7 x≡ 11 (mod 34)iff [7] 34 · [x] 34 = [11] 34

```
iff [x] 34 = [7]− 1 34 ·[11] 34 = [5] 34 · [11] 34 = [55] 34 = [21] 34
iff x∈[21] 34.
```
Thus the solutions to the second congruence are the elements of [21] 34.

```
Exercises
```
1. Make addition and multiplication tables forZ/≡ 6.
2. Complete the proof of Theorem 7.3.2.
3. Prove parts 5–9 of Theorem 7.3.6.
*4. Supposemis a positive integer.


```
Modular Arithmetic 349
(a) SupposeZ 1 andZ 2 are both additive identity elements forZ/≡m; in
other words, for allX ∈Z/≡m,X+ Z 1 = X andX+ Z 2 = X.
Prove thatZ 1 = Z 2. This shows that the additive identity element in
Z/≡mis unique. (Hint: ComputeZ 1 +Z 2 in two different ways.)
(b) SupposeX ∈Z/≡mandX² 1 andX² 2 are both additive inverses for
X; in other words,X+X² 1 = X+X² 2 = [0]m. Prove thatX 1 ²= X² 2.
This shows that the additive inverse ofXis unique. (Hint: Compute
X 1 ²+X+X² 2 in two different ways.)
(c) Prove that the multiplicative identity element inZ/≡mis unique.
(d) Prove that if an equivalence classX ∈Z/≡mhas a multiplicative
inverse, then this inverse is unique.
```
5. Show that ifp is a prime number then every element ofZ/≡pexcept
    [0]phas a multiplicative inverse.
6. Ifab ≡ 0 (modm), is it necessarily true that eithera ≡ 0 (modm)
    or b ≡ 0 (modm)? Justify your answer with either a proof or a
    counterexample.
7. Prove Theorem 7.3.10.
*8. Prove Theorem 7.3.11.
9. A class has 26 students. The teacher bought some packages of file cards,
each of which contained 20 file cards. When he passed the cards out to
the students, he discovered that he needed to add 2 additional cards from
his desk to be able to give each student the same number of cards. If each
student got between 10 and 20 cards, how many packages did he buy?
*10. Solve the following congruences.
(a) 40x≡ 8(mod 237).
(b) 40x≡ 8(mod 236).
11. Solve the following congruences.
(a) 31x≡ 24(mod 384).
(b) 32x≡ 24(mod 384).
12. In this exercise you will solve the following problem: Suppose a chair
without arms costs $35 and a chair with arms costs $50. If Alice spent
$720 on chairs, how many of each kind of chair did she buy?
(a) Show that ifxis the number of chairs without arms that she bought,
then 35x≡ 20(mod 50).
(b) Solve the congruence in part (a).
(c) Not every solution to the congruence in part (a) leads to a possible
answer to the problem. Which ones do? (Note: There is more than
one possible answer to the problem.)
*13. Supposemandnare relatively prime positive integers. Prove that for all
integersaandb,a≡ b (modm)iffna≡ nb (modm).


```
350 Number Theory
```
14. Suppose thatm 1 andm 2 are positive integers. Prove that for all integers
    a and b, ifa ≡ b (modm 1 )and a ≡ b (modm 2 )thena ≡ b
    (mod lcm(m 1 ,m 2 )). (Hint: Use exercise 11 in Section 7.2.)
*15. Prove that for all positive integersm,a, andb, ifa≡ b (modm) then
gcd(m,a)= gcd(m,b).
16. Supposea≡ b (modm). Prove that for every natural numbern,an≡
    bn(modm).

```
In exercises 17–19, we use the following notation. If d 0 ,d 1 ,.. .,dk ∈
{0, 1,.. ., 9}, then (dk· · ·d 1 d 0 ) 10 is the number whose representation in
decimal notation isdk· · ·d 1 d 0. In other words,
```
```
(dk· · ·d 1 d 0 ) 10 = d 0 + 10d 1 + · · · + 10kdk.
```
*17. Supposen= (dk· · ·d 1 d 0 ) 10.
(a) Show thatn≡ (d 0 +d 1 + · · · +dk) (mod 3).
(b) Show that 3 |niff 3 |(d 0 +d 1 + · · · + dk). (This gives a convenient
way to test a natural number for divisibility by 3: add up the digits
and check if the digit sum is divisible by 3.)

18. Supposen= (dk· · ·d 1 d 0 ) 10.
    (a) Show thatn≡ (d 0 −d 1 +d 2 −d 3 + · · · + (− 1)kdk) (mod 11).
(b) Show that 11 |niff 11 |(d 0 −d 1 + · · · + (−1)kdk).
(c) Is 535172 divisible by 11?
*19. Define a functionf with domain {n ∈Z| n≥ 10} as follows: ifn=
(dk· · ·d 1 d 0 ) 10 thenf (n)= (dk· · ·d 1 ) 10 + 5d 0. For example,f ( 1743 )=
174 + 5 ·3 = 189.
(a) Show that for alln ≥ 10,f (n) ≡ 5n (mod 7)andn ≡ 3f (n)
(mod 7).
(b) Show that for alln≥ 10, 7 |niff 7 |f (n). (This gives a convenient
way to test a large integernfor divisibility by 7: repeatedly applyf
until you get a number whose divisibility by 7 is easy to determine.)
(c) Is 627334 divisible by 7?
20. (a) Find an example of positive integersm,a,a²,b, andb²such that
a²≡ a (modm)andb²≡ b (modm)but(a²)b

```
²
±≡ ab (modm).
(b) Show that it is impossible to define an exponentiation operation on
equivalence classes in such a way that for all positive integersm,a,
andb,([a]m)[b]m= [ab]m.
```
21. Supposem is a positive integer. Definef : Z× Z → Z/≡mby the
    formulaf (a,b)= [a+b]m, and defineh:(Z/≡m)×(Z/≡m)→Z/≡m
    by the formulah(X,Y ) = X+ Y. You might want to compare this
    exercise to exercise 21 in Section 5.1.


```
Euler’s Theorem 351
(a) Show that for all integersx 1 ,x 2 ,y 1 , andy 2 , ifx 1 ≡my 1 andx 2 ≡m
y 2 thenf (x 1 ,x 2 )= f (y 1 ,y 2 ). (Extending the terminology of exer-
cise 21 in Section 5.1, we could say thatf is compatible with ≡m.)
(b) Show that for all integersx 1 andx 2 ,h([x 1 ]m, [x 2 ]m)= f (x 1 ,x 2 ).
```
## 7.4 Euler’s Theorem

In the last section, we saw that some elements ofZ/≡mhave multiplicative
inverses and some don’t. In this section, we focus on the ones that do. We let
(Z/≡m)∗denote the set of elements ofZ/≡mthat have multiplicative inverses.
In other words,

```
(Z/≡m)∗= {X∈Z/≡m| for someX²∈Z/≡m,X·X²= [1]m}.
```
The number of elements of(Z/≡m)∗is denotedφ(m). The functionφis called
_Euler’s phi function_ , or _Euler’s totient function_ ; it was introduced by Euler in

1763. For every positive integerm,(Z/≡m)∗ ⊆ Z/≡mandZ/≡mhasm
elements, soφ(m) ≤ m. And [1]m· [1]m= [1]m, so [1]m∈(Z/≡m)∗and
thereforeφ(m) ≥ 1. For example,

```
(Z/≡ 10 )∗= {[1] 10 , [3] 10 , [7] 10 , [9] 10 },
```
soφ( 10 )= 4.
For our purposes, the most important properties of(Z/≡m)∗are that it is
closed under inverses and multiplication. That is:

**Theorem 7. 4. 1.** _Suppose_ m _is a positive integer._

_1. For every_ X _in_ (Z/≡m)∗ _,_ X− 1∈(Z/≡m)∗_.
2. For every_ X _and_ Y _in_ (Z/≡m)∗ _,_ X·Y ∈(Z/≡m)∗_._

_Proof._

1. SupposeX ∈(Z/≡m)∗. ThenX has a multiplicative inverseX− 1, and
    X·X− 1= [1]m. But this equation also tells us thatXis the multiplicative
    inverse ofX− 1; in other words,(X− 1)− 1= X. ThereforeX− 1∈(Z/≡m)∗.
2. Suppose X ∈ (Z/≡m)∗ and Y ∈ (Z/≡m)∗. Then X and Y have
    multiplicative inversesX− 1andY− 1. Therefore
       (X·Y)·(X− 1·Y− 1)= (X·X− 1)·(Y ·Y− 1)= [1]m· [1]m= [1]m.
    This means thatX− 1·Y− 1 is the multiplicative inverse of X ·Y, so
    (X·Y)− 1= X− 1·Y− 1andX·Y ∈(Z/≡m)∗. ±


352 _Number Theory_

SupposeX∈(Z/≡m)∗. ByTheorem 7.4.1, for everyY ∈(Z/≡m)∗,X·Y ∈
(Z/≡m)∗, so we can define a functionfX:(Z/≡m)∗→ (Z/≡m)∗by the
formulafX(Y)= X·Y. Let’s investigate the properties of this function.
We claim first thatfXis one-to-one. To see why, supposeY 1 ∈(Z/≡m)∗,
Y 2 ∈(Z/≡m)∗, andfX(Y 1 )=fX(Y 2 ). ThenX·Y 1 = X·Y 2 , and therefore

```
Y 1 = [1]m·Y 1 = X− 1·X·Y 1 = X− 1·X·Y 2 = [1]m·Y 2 = Y 2.
```
This proves thatfXis one-to-one. Next, we claim thatfXis onto. To prove
this, supposeY ∈(Z/≡m)∗. Then since(Z/≡m)∗is closed under inverses and
multiplication,X− 1·Y ∈(Z/≡m)∗, and

```
fX(X− 1·Y)= X·X− 1·Y = [1]m·Y = Y.
```
Thus,fXis onto.
For example, consider again the casem = 10, and letX= [3] 10. Applying
fXto the four elements of(Z/≡ 10 )∗gives the values shown in Figure 7.6.
Notice that, sincefXis one-to-one and onto, each of the four elements of
(Z/≡ 10 )∗appears exactly once in the column underfX(Y); each element
appears at least once becausefXis onto, and it appears only once because
fXis one-to-one. Thus, the entries in the second column of Figure 7.6 are
exactly the same as the entries in the first column, but listed in a different
order.

```
Y fX(Y)
[1] 10 [3] 10 · [1] 10 = [3] 10
[3] 10 [3] 10 · [3] 10 = [9] 10
[7] 10 [3] 10 · [7] 10 = [1] 10
[9] 10 [3] 10 · [9] 10 = [7] 10
```
```
Figure 7.6. Values offXwhenX= [3] 10.
```
More generally, supposem is a positive integer andX ∈(Z/≡m)∗. By
the definition of Euler’s phi function, there areφ(m) elements in(Z/≡m)∗.
LetY 1 ,Y 2 ,... ,Yφ(m)be a list of these elements. Then sincefXis one-to-
one and onto, each of these elements occurs exactly once in the listfX(Y 1 ),
fX(Y 2 ),... ,fX(Yφ(m)). In other words, the two listsY 1 ,Y 2 ,... ,Yφ(m)and
fX(Y 1 ),fX(Y 2 ),... ,fX(Yφ(m))contain exactly the same entries, but listed in
different orders – just like the two columns in Figure 7.6. It follows, by the
commutative and associative laws for multiplication, that if we multiply all of


```
Euler’s Theorem 353
```
the entries in each of the two lists, the products will be the same (see exercise
21 in Section 6.4):

```
Y 1 ·Y 2 · · ·Yφ(m)= fX(Y 1 )·fX(Y 2 )· · ·fX(Yφ(m))
= (X·Y 1 )·(X·Y 2 )· · ·(X·Yφ(m))
= Xφ(m)·(Y 1 ·Y 2 · · ·Yφ(m)),
```
where of course byXφ(m)we meanX multiplied by itselfφ(m) times. To
simplify this equation, letZ= Y 1 ·Y 2 · · ·Yφ(m). Then the equation saysZ=
Xφ(m)·Z. Since(Z/≡m)∗is closed under multiplication,Z∈(Z/≡m)∗, so it
has an inverse. Multiplying both sides of the equationZ= Xφ(m)·ZbyZ− 1,
we get

```
[1]m= Z·Z− 1= Xφ(m)·Z·Z− 1= Xφ(m)·[1]m= Xφ(m).
```
Thus, we have proven the following theorem.

**Theorem 7. 4. 2.** _Suppose_ m _is a positive integer and_ X ∈(Z/≡m)∗_. Then_
Xφ(m)= [1]m_._

To understand the significance of this theorem, it may help to rephrase it in
terms of numbers.

**Theorem 7. 4. 3.** (Euler’s theorem) _Suppose_ m _is a positive integer. Then for
every positive integer_ a _, if_ gcd(m,a)= 1 _then_ aφ(m)≡ 1(modm)_._

_Proof._ Supposeais a positive integer and gcd(m,a)= 1. Then by Theorem
7.3.7, [a]m∈(Z/≡m)∗, so by Theorem 7.4.2, [a]φ(m)m = [1]m, where [a]φ(m)m
denotes [a]mmultiplied by itselfφ(m) times. But

```
[a]φ(m)m = [±a]m· [a]²m³· · ·[a]m ́
φ(m)terms
```
```
= [a±·a²³· · ·a ́
φ(m)terms
```
```
]m= [aφ(m)]m.
```
(For a more careful proof of this equation, see exercise 5.) Thus, [aφ(m)]m=
[a]φ(m)m = [1]m, and thereforeaφ(m)≡ 1(modm). ±

For example, 10 and 7 are relatively prime, so according to Euler’s theorem,
7 φ(^10 )should be congruent to 1 modulo 10. To check this, we compute

```
7 φ(^10 )= 7^4 = 2401 ≡ 1(mod 10).
```
To apply Euler’s theorem, we need to be able to computeφ(m). Of course,
we can check all the elements ofZ/≡mone-by-one and count how many have
multiplicative inverses, as we did in the casem= 10, but for largemthis will


354 _Number Theory_

be impractical. We devote the rest of this section to finding a more efficient
way to computeφ(m).
We begin by rephrasing the definition ofφ(m). We know that {0, 1,... ,
m− 1} is a complete residue system modulom, but since 0 ≡ m (modm),
we can also say that{1, 2,.. .,m}is a complete residue system. Thus,Z/≡m=
{[1]m, [2]m,.. ., [m− 1]m, [m]m} = {[a]m| 1 ≤ a≤ m}, where each element
ofZ/≡mappears exactly once in this list of elements. To identify which of
these elements are in(Z/≡m)∗, we use Theorem 7.3.7, which tells us that
for any positive integera, [a]mhas a multiplicative inverse iffmandaare
relatively prime. Thus,

```
(Z/≡m)∗= {[a]m| 1 ≤ a≤ mand gcd(m,a)= 1}.
```
This gives us another way to understand Euler’s phi function:

φ(m) = the number of elements in the set {a| 1≤a≤mand gcd(m,a)= 1}.

Using this characterization of the phi function, it is easy to computeφ(p)
whenpis prime: If 1 ≤ a≤ p− 1 thenp±a, and therefore gcd(p,a)= 1,
but gcd(p,p)=p >1. Therefore

```
{a| 1 ≤ a≤pand gcd(p,a)= 1} = {1, 2,.. .,p− 1},
```
soφ(p) = p− 1. In fact, it is almost as easy to computeφ(pk)for any positive
integerk. Ifais a positive integer andp|athen gcd(pk,a)≥ p >1, but if
p±athen the only common divisor ofpkandais 1, so gcd(pk,a)= 1. Thus
the elements of the set {a | 1 ≤ a ≤ pk} that are _not_ relatively prime topk
are precisely the ones that are divisible byp, and those elements arep, 2p,
3 p,... ,pk= pk− 1p. In other words,

```
{a| 1 ≤ a≤ pkand gcd(pk,a)= 1} = {1, 2,.. .,pk} \ {p, 2p,.. .,pk− 1p},
```
and the number of elements in this set ispk− pk− 1= pk− 1(p − 1). Thus
φ(pk)= pk− 1(p− 1).
To computeφ(m) for other values ofm, we use the following theorem,
which we will prove later in this section.

**Theorem 7. 4. 4.** _Suppose_ m _and_ n _are relatively prime positive integers. Then_
φ(mn) = φ(m) ·φ(n)_._

A functionf from the positive integers to the real numbers is called
a _multiplicative function_ if it has the property that for all relatively prime
positive integersm and n,f (mn) = f (m) ·f (n). Thus, Theorem 7.4.4
says that Euler’s phi function is a multiplicative function. A number of other


```
Euler’s Theorem 355
```
important functions in number theory are also multiplicative, butφis the only
one we will study in this book. (For two more examples, see exercises 16
and 17.)
Theorem 7.4.4 allows us to use the prime factorization of any pos-
itive integer m to find φ(m). Suppose the prime factorization of m is
m = p 1 e^1 p 2 e^2 · · ·pekk, wherep 1 ,p 2 ,... ,pk are prime numbers andp 1 <
p 2 < · · ·< pk. Thenp 1 e^1 and pe 22 · · ·pekk are relatively prime, because
they have no prime factors in common (see exercise 5 in Section 7.2), so
φ(m) = φ(p 1 e^1 )·φ(p 2 e^2 · · ·pekk). Repeating this reasoning we conclude that

φ(m) = φ(p 1 e^1 p 2 e^2 · · ·pkek)= φ(p 1 e^1 )·φ(p 2 e^2 )· · ·φ(pekk)

```
= p 1 e^1 − 1(p 1 − 1)·pe 22 − 1(p 2 − 1)· · ·pekk− 1(pk− 1).
```
For example, 600 = 2^3 · 3 · 5^2 , so

```
φ( 600 )= φ( 23 ·3 · 5^2 )= 2^2 (2 − 1)·3^0 (3 − 1)· 5^1 (5 − 1)= 160.
```
That was a lot easier than explicitly listing the 160 elements of(Z/≡ 600 )∗!
Our proof of Theorem 7.4.4 will depend on three lemmas.

**Lemma 7. 4. 5.** _Suppose_ m _and_ n _are relatively prime positive integers. Then
for all integers_ a _and_ b _,_ a ≡ b (modmn) _iff_ a ≡ b (modm) _and_ a ≡ b
(modn)_._

_Proof._ See exercise 6. ±

**Lemma 7. 4. 6.** _For all positive integers_ a _,_ b _, and_ c _,_ gcd(ab,c)= 1 _iff_
gcd(a,c)= 1 _and_ gcd(b,c)= 1_._

_Proof._ See exercise 7. ±

**Lemma 7. 4. 7.** _Suppose_ m _and_ n _are relatively prime positive integers. Then
for all integers_ a _and_ b _, there is some integer_ r _such that_ 1 ≤ r≤ mn _,_ r≡ a
(modm) _, and_ r≡ b (modn)_._

_Proof._ Letaandbbe arbitrary integers. Sincem andnare relatively prime,
there are integerssandtsuch thatsm+tn= 1. Thereforetn− 1 = −smand
sm− 1 = −tn.
Letx= tna+smb. Then

```
x−a= (tn− 1)a+smb = −sma + smb = sm(b − a),
```

356 _Number Theory_

som|(x− a), and thereforex≡ a (modm). Similarly,

```
x−b= tna+ (sm− 1)b= tna−tnb = tn(a −b),
```
son|(x−b)andx≡ b (modn).
Since {1, 2,.. .,mn} is a complete residue system modulomn, we can find
some integerrsuch thatr≡ x (modmn)and 1 ≤ r≤ mn. By Lemma 7.4.5,
r≡ x (modm)andr≡ x (modn), and by the transitivity of ≡mand ≡nit
follows thatr≡ a (modm)andr≡ b (modn). ±

_Commentary._ After the introduction of the arbitrary integersaandb, the goal
is an existential statement. As is common in proofs of existential statements,
the proof introduces a numberx without providing any motivation for the
choice ofx. The numberxturns out to have most of the properties we want,
but perhaps not all of them, since it might not be between 1 andmn. We
therefore need an extra step to come up with the numberrthat has all of the
required properties.

We will need one more idea for our proof of Theorem 7.4.4. SupposeAis a
set withpelements andBis a set withqelements; sayA= {a 1 ,a 2 ,.. .,ap}
andB= {b 1 ,b 2 ,.. .,bq}. ThenA× Bhaspq elements. To see why, imagine
arranging the elements ofA×Bin a table, with the ordered pair(ai,bj)in row
i, columnjof the table. Since the table will haveprows andqcolumns,A×B
must havepq elements. For a more careful proof of this fact, see exercise 22
in Section 8.1.
We are now ready to prove thatφis a multiplicative function.

_Proof of Theorem 7.4.4._ LetR = {a | 1 ≤ a ≤ mnand gcd(mn,a) = 1}.
By Lemma 7.4.6, ifa ∈ R then gcd(m,a) = 1 and gcd(n,a) = 1, so
[a]m ∈ (Z/≡m)∗and [a]n ∈ (Z/≡n)∗. Thus we can define a function
f : R → (Z/≡m)∗× (Z/≡n)∗by the formulaf (a) = ([a]m, [a]n). Our
plan is to show thatf is one-to-one and onto, which implies that the sets
Rand(Z/≡m)∗× (Z/≡n)∗have the same number of elements. ButRhas
φ(mn) elements and(Z/≡m)∗× (Z/≡n)∗hasφ(m) ·φ(n) elements, so this
will establish thatφ(mn) = φ(m) ·φ(n).
To show thatf is one-to-one, supposea 1 ∈R,a 2 ∈ R, andf (a 1 ) =
f (a 2 ). This means that([a 1 ]m, [a 1 ]n)= ([a 2 ]m, [a 2 ]n), so [a 1 ]m= [a 2 ]mand
[a 1 ]n = [a 2 ]n, and thereforea 1 ≡ a 2 (modm) anda 1 ≡ a 2 (modn). By
Lemma 7.4.5 it follows thata 1 ≡ a 2 (modmn). But since {a | 1 ≤ a ≤
mn} is a complete residue system modulomn, no two distinct elements ofR
are congruent modulomn, soa 1 = a 2. This completes the proof thatf is
one-to-one.


_Euler’s Theorem_ 357
Finally, to show thatf is onto, let([a]m, [b]n)be an arbitrary element of
(Z/≡m)∗× (Z/≡n)∗. By Lemma 7.4.7, there is some integerr such that
1 ≤ r≤ mn,r≡ a (modm), andr≡ b (modn). Therefore [r]m= [a]m∈
(Z/≡m)∗and [r]n = [b]n ∈(Z/≡n)∗, so by Theorem 7.3.7, gcd(m,r) =
gcd(n,r) = 1. Applying Lemma 7.4.6, we conclude that gcd(mn,r) = 1.
Thereforer∈Randf (r) = ([r]m, [r]n)= ([a]m, [b]n), which shows thatf
is onto. ±

```
Exercises
```
1. List the elements of(Z/≡ 20 )∗.
*2. Findφ(m):
(a) m= 539.
(b) m= 540.
(c) m= 541.
3. Check these instances of Euler’s theorem by computing aφ(m) and
    verifying thataφ(m)≡ 1(modm).
    (a) m= 18,a= 5.
    (b) m= 19,a= 2.
    (c) m= 20,a= 3.
4. Check these instances of Lemma 7.4.7 by finding an integerrsuch that
    1 ≤ r≤ mn,r≡ a (modm), andr≡ b (modn).
    (a) m= 5,n= 8,a= 4,b= 1.
    (b) m= 7,n= 10,a= 6,b= 4.
5. Supposemandaare positive integers. Use mathematical induction to
    prove that for every positive integern, [a]nm= [an]m.
*6. Prove Lemma 7.4.5.
7. Prove Lemma 7.4.6.
*8. Show that if we drop the hypothesis thatm andnare relatively prime
from Lemma 7.4.5, then one direction of the “iff” statement is correct
and one is not. Justify your answer by giving a proof for one direction
and a counterexample for the other.
9. If we drop the hypothesis thatmandnare relatively prime from Lemma
7.4.7, is the lemma still correct? Justify your answer by giving either a
proof or a counterexample.
*10. Prove Fermat’s little theorem, which says that ifpis a prime number,
then for every positive integera,ap≡ a (modp).


358 _Number Theory_

11. Prove that ifmandaare relatively prime positive integers, then [a]− 1m =
    [aφ(m)− 1]m.
12. Prove that for all positive integersm,a,p, andq, ifmandaare relatively
    prime andp≡ q (modφ(m)) thenap≡ aq (modm).

*13. Prove that ifa,b 1 ,b 2 ,... ,bkare positive integers and gcd(a,b 1 ) =
gcd(a,b 2 )= · · · = gcd(a,bk)= 1, then gcd(a,b 1 b 2 · · ·bk)= 1.

14. Suppose thatm 1 ,m 2 ,... ,mkare positive integers that are pairwise
    relatively prime; i.e., for all i,j ∈ {1, 2,.. .,k}, if i ±= j then
    gcd(mi,mj)= 1. LetM = m 1 m 2 · · ·mk. Prove that for all integersa
    andb,a≡ b (modM)iff for everyi∈ {1, 2,.. .,k},a≡ b (modmi).

*15. In this exercise you will prove the Chinese remainder theorem. (The
theorem was first stated by the Chinese mathematician Sun Zi in the
third century.)
(a) Suppose thatm 1 ,m 2 ,... ,mkare positive integers that are pairwise
relatively prime; i.e., for alli,j ∈ {1, 2,.. .,k}, if i ±= j then
gcd(mi,mj)= 1. LetM= m 1 m 2 · · ·mk. Prove that for all integers
a 1 ,a 2 ,... ,akthere is an integerrsuch that 1 ≤ r≤ Mand for all
i ∈ {1, 2,.. .,k},r ≡ ai (modmi). (Hint: Use induction onk. In
the induction step, use Lemma 7.4.7. You will also find exercises 13
and 14 helpful.)
(b) Prove that the integerrin part (a) is unique.

16. For each positive integern, letτ(n)= the number of elements ofD(n).
    For example,D( 6 )= {1, 2, 3, 6}, soτ( 6 )= 4. In this exercise you will
    prove thatτis a multiplicative function. Supposemandnare relatively
    prime positive integers.
    (a) Prove that ifa∈D(m) andb∈D(n) thenab∈D(mn).
(b) By part (a), we can define a functionf :D(m) × D(n) →D(mn)
by the formulaf (a,b)= ab. Prove thatf is one-to-one and onto.
    (c) Prove thatτ(mn) = τ(m)·τ(n), which shows thatτis multiplicative.

*17. For each positive integern, letσ (n) = the sum of all elements ofD(n).
For example,D( 6 )= {1, 2, 3, 6}, soσ ( 6 )= 1 + 2 + 3 + 6 = 12. Prove
thatσ is a multiplicative function. (Hint: Use the functionf from part
(b) of exercise 16.)

18. In this exercise you will prove Euclid’s theorem on perfect numbers.
    Recall that a positive integernis called perfect ifnis equal to the sum
    of all divisors ofnthat are smaller thann. Equivalently,nis perfect if
    σ (n) = 2n, whereσ is the function defined in exercise 17. Prove that if
    pis a positive integer and 2p− 1 is prime, then 2p− 1( 2 p− 1)is perfect.
    (Hint: You will find exercise 17 and Example 6.1.1 useful.)


```
Public-Key Cryptography 359
```
19. In this exercise you will prove Euler’s theorem on perfect numbers.
    Suppose nis an even perfect number. (As in exercise 18, to say that
    n is perfect means thatσ(n) = 2n, whereσ is the function defined in
    exercise 17.)
    (a) Prove that there are positive integerskandmsuch thatn= 2kmand
       mis odd.
    (b) Prove that 2k+ 1m= ( 2 k+ 1− 1)σ(m).
    (c) Prove that 2k+ 1| σ(m). Thus there is a positive integerdsuch that
       σ(m) = 2k+ 1d.
    (d) Prove thatm= ( 2 k+ 1− 1)d.
    (e) Prove thatd = 1. (Hint: Supposed > 1. Then 1,d, andm are
       distinct divisors ofm, soσ(m) ≥ 1+d+m. Derive a contradiction.)
(f) Letp= k+ 1. Then by parts (a), (d), and (e),n = 2p− 1( 2 p− 1).
Prove that 2p− 1 is prime. Thusnis a perfect number of the form
considered in exercise 18.

## 7.5 Public-Key Cryptography

Suppose you want to make a purchase online. You go to the merchant’s
website and place your order. Then the website asks you to enter your credit
card number. You type the number on your computer, and your computer must
transmit the number over the internet to the merchant’s computer.
Internet communications generally pass through several computers on
their way from the sender to the recipient. As a result, there is a possibility
that someone with access to one of those intermediary computers could
be eavesdropping when your computer sends your credit card number to
the merchant. To keep such an eavesdropper from stealing your credit card
number, your computer scrambles, or _encrypts_ the number before sending
it. The merchant’s computer then unscrambles, or _decrypts_ the number and
charges your credit card.
For example, suppose your credit card number is the 16-digit sequence
m= m 1 m 2 · · ·m 16. Eachmiis one of the digits 0, 1, 2,... , 9, but we will think
of it as representing the equivalence class [mi] 10 ∈Z/≡ 10. If your computer
and the merchant’s computer could agree on a random sequence of digits
k = k 1 k 2 · · ·k 16 , then they could proceed as follows, doing all calculations
inZ/≡ 10. Your computer could replace theith digitmiof your credit card
number with the digitcisuch that [ci] 10 = [mi] 10 + [ki] 10. Your computer
would send the 16-digit sequencec= c 1 c 2 · · ·c 16 to the merchant’s computer,


360 _Number Theory_

which would then recover the original sequencem by using the formula
[mi] 10 = [ci] 10 + (− [ki] 10 ). The sequencek is the _key_ that your computer
uses to encrypt the credit card number and the merchant’s computer uses to
decrypt it. An eavesdropper who didn’t know the keyk would be unable to
decrypt the encrypted messagecand learn your credit card numberm.
But how can your computer and the merchant’s computer agree on the
keyk? If one computer chooses the key and sends it to the other, then an
eavesdropper could learn the key and then decrypt the encrypted message.
Sending the key securely is just as hard as sending the credit card number, so
we don’t seem to have made any progress.
The problem with this scheme is that it uses _symmetric cryptography_ , in
which the same key is used for both encryption and decryption. The solution
to the problem is to use _public-key cryptography_ , in which the encryption
and decryption keys are different. The merchant’s computer creates two
keys, one for encryption and one for decryption. It sends the encryption key
to your computer. Your computer uses the encryption key to encrypt your
credit card number and then sends the encrypted number to the merchant’s
computer, which uses the decryption key to recover the credit card number.
An eavesdropper could learn the encryption key, so this key is regarded as a
_public key_. But this doesn’t help the eavesdropper, because decryption requires
the decryption key, and this key is never transmitted and remains secret.
It may seem surprising that it is possible to have different keys for
encryption and decryption, but it can be done. In this section we discuss one
well-known public-key encryption system called RSA. It is named for Ron
Rivest (1947–), Adi Shamir (1952–), and Leonard Adleman (1945–), who
developed the system in 1977. A similar system was developed in 1973 by
Clifford Cocks (1950–), a mathematician working for the British intelligence
agency, but it was classified and not revealed until 1997. As we will see, the
RSA system is based on Euler’s theorem.
We have introduced the idea of public-key cryptography in the context
of internet purchases, but it can be used any time one person wants to
send a message to another while preventing an eavesdropper from reading
the message. Suppose Alice wants to send a message securely to Bob. To
use the RSA public-key system, they would proceed as follows. First Bob
chooses two distinct prime numbersp andq. He computesn = pq and
φ(n) = (p − 1)(q − 1). Next, he chooses a positive integere such that
eandφ(n) are relatively prime ande < φ(n). By Theorem 7.3.7, [e]φ(n)
has a multiplicative inverse inZ/≡φ(n), which can be computed by the
extended Euclidean algorithm. Thus, Bob can compute a positive integer
d such thatd < φ(n) and [e]φ(n)· [d]φ(n) = [1]φ(n), which means that


```
Public-Key Cryptography 361
```
ed ≡ 1(modφ(n)). Bob sends the pair of numbers(n,e)to Alice; this is
the encryption key that Alice will use to encrypt her message. He keeps the
numbersp,q, anddsecret; he will usedto decrypt Alice’s message.
We will assume that the message Alice wants to send is a natural number
m < n. Of course, her message might actually be a piece of text, not a number,
but a piece of text can be encoded as a natural number. If the text is long, it
might be necessary to encode it as a sequence of natural numbers, each of
which is less thann, and then each of these natural numbers would have to be
encrypted separately. But to keep the discussion simple, we will assume that
Alice’s message is a single natural numberm < n.
As before, we think of the messagemas representing an equivalence class
[m]n ∈ Z/≡n, and Alice and Bob will do all of their calculations using
arithmetic inZ/≡n. To encrypt her message, Alice computes [m]en; in other
words, she computes the unique natural numberc < nsuch that [m]en= [c]n.
The numbercis the encrypted message, which she sends to Bob.
To decrypt the message, Bob computes [c]dn. What makes the RSA system
work is the surprising fact that [c]dn = [m]n, as we will prove below. Thus,
by computing [c]dn, Bob can recover the original messagem. Notice that
encryption and decryption both involve exponentiation, but the encryption
exponenteand the decryption exponentdare different. Thus, it doesn’t matter
if an eavesdropper learnse; as long as Bob keepsdsecret, the eavesdropper
will not know what exponent to use to decrypt the encrypted message.
To show that RSA works we need to prove the following theorem.

**Theorem 7. 5. 1.** _Suppose_ p _and_ q _are distinct primes,_ n= pq _,_ e _and_ d _are
positive integers such that_ ed ≡ 1(modφ(n)) _, and_ m _and_ c _are natural
numbers such that_ [m]en= [c]n_. Then_ [c]dn= [m]n_._

_Proof._ Ife= d= 1 then [m]n= [c]nand the conclusion clearly holds. If not,
thened > 1, so sinceed ≡ 1 (modφ(n)), there is some positive integerk
such thated− 1 = kφ(n), and thereforeed = kφ(n) + 1 =k(p− 1)(q− 1)+ 1.
And since [m]en= [c]n, we haveme≡ c (modn), son|(me−c).
Although we ultimately want to draw a conclusion about arithmetic in
Z/≡n, we will find it useful to do some calculations inZ/≡pandZ/≡qfirst.
Sincep | nandn| (me− c), by the transitivity of the divisibility relation,
p|(me−c). Thereforeme≡ c (modp), or equivalently [m]ep= [c]p.
Note that the usual exponent rules work for exponentiation in Z/≡p.
Specifically, for anyX∈Z/≡pand any positive integersaandbwe have

```
Xa·Xb= X±· · ·²³X ́
aterms
```
### ·X± · · ·²³X ́

```
bterms
```
### = X±· · ·²³X ́

```
a+bterms
```
```
= Xa+b
```

362 _Number Theory_

and

```
(Xa)b= X±· · ·²³X ́
aterms
```
### ·X± · · ·²³X ́

```
aterms
```
### · · ·X±· · ·²³X ́

```
± ²³ aterms ́
bgroups of terms
```
### = X± · · ·²³X ́

```
abterms
```
```
=Xab.
```
(For more careful proofs of these equations, see exercise 8.) Applying these
rules, we see that

```
[c]dp= ([m]ep)d= [m]edp = [m]k(pp − 1)(q− 1)+ 1= ([m]pp− 1)k(q− 1)·[m]p.
```
We claim now that [c]dp= [m]p. To prove this, we consider two cases.
Case 1.p ±m. Thenpandmare relatively prime, so by Euler’s theorem,
[m]pp− 1= [1]p. Therefore

```
[c]dp= ([m]pp− 1)k(q− 1)· [m]p= [1]k(qp − 1)·[m]p= [1]p· [m]p= [m]p.
```
```
Case 2.p|m. Then [m]p= [0]p, so
```
```
[c]dp= [m]edp = [0]edp = [0]p= [m]p.
```
In both cases we have reached the desired conclusion that [c]dp = [m]p.
Thereforecd≡ m (modp). Similar reasoning shows thatcd≡ m (modq),
and sincepq = n, it follows by Lemma 7.4.5 thatcd≡ m (modn). In other
words, [c]dn= [m]n, which is what we wanted to prove. ±

Let’s try this out in a simple example. Suppose Bob chooses the primes
p= 3 andq= 11, son= pq = 33 andφ(n) = (p− 1)(q− 1)= 20. He also
choosese= 7, and he then computes [e]− 1φ(n)= [7]− 1 20 = [3] 20 , sod = 3. (As
a check on Bob’s work, note that [7] 20 · [3] 20 = [21] 20 = [1] 20 .) Bob sends
the numbersn= 33 ande= 7 to Alice.
Suppose Alice wants to send the messagem= 5 to Bob. She computes

```
[m]en= [5]^733 = [78125] 33 = [14] 33 ,
```
so her encrypted message isc= 14. She sends this number to Bob. To decrypt
the message, Bob computes

```
[c]dn= [14]^333 = [2744] 33 = [5] 33.
```
Thus, Bob successfully recovers the original messagem= 5.
Are Alice and Bob’s communications secure? Suppose an eavesdropper
intercepts both Bob’s message to Alice and Alice’s message to Bob, thus
learning the numbersn= 33,e= 7, andc= 14. By factoringn= 33 = 3·11,
the eavesdropper could learn thatp = 3 andq = 11 (or vice-versa), and
thereforeφ(n) = (p − 1)(q − 1) = 20. But then the eavesdropper could


```
Public-Key Cryptography 363
```
compute, just as Bob did, that [e]− 1φ(n) = [7]− 1 20 = [3] 20 , thus learning the
decryption exponent d = 3. The eavesdropper can now decrypt Alice’s
message just the way Bob did. The communications are not secure!
What has gone wrong? The problem is that in this simple example we have
used small numbers. The eavesdropper’s first step was to factorn= 33, which
is a product of two prime numbers. A small numberncan be factored easily by
simply dividingnby all smaller prime numbers until a prime factor is found,
but ifnis large then this procedure will take too long to be practical. Factoring
numbers that are products of two large prime numbers is especially hard. As
of 2019, the largest such number that has ever been factored is a product of
two 116-digit primes. It was factored in 2009 after two years of computation
by many hundreds of computers working together on the problem, using the
equivalent of almost 2000 years of computing by a single computer. Factoring
a product of primes significantly larger than this would not be feasible with
current computing technology. Today most people who use RSA choose prime
numbers that are several hundreds of digits long. If an eavesdropper learns
the numbersnande, then in principle he has enough information to find the
decryption exponentd, but the only known way to do it is to factorn. The
security of RSA depends on the fact that, in practice, the numbers used are so
large that factoringnis not feasible.
But wait! What about the computations that Alice and Bob have to do with
these extremely large numbers? Will they also be computationally infeasible?
If so, then the system will be useless. Fortunately, there are efficient ways to
do the computations required of Alice and Bob. While a detailed discussion of
how these computations are performed is beyond the scope of this book, we
can briefly comment on the main points.
The most difficult computations Alice and Bob have to do are:

- Bob must find two large prime numberspandq.
- Bob must find [e]− 1φ(n).
- Alice must compute [m]en, and Bob must compute [c]dn.
    To find the primespandq, Bob can simply choose suitably large numbers
at random and test them to see if they are prime until he finds two primes.
The problem of testing a large number to see if it is prime has been studied
extensively. In 2019, using the best known methods, a computer can determine
whether or not a 1000-digit number is prime in a few minutes. But this is not
fast enough to be convenient for RSA, since Bob may have to test hundreds
of numbers for primality before he finds a prime. So most implementations of
RSA use _probabilistic primality tests_. These tests take a fraction of a second,
but they are not guaranteed to be accurate; in particular, if a number is not


364 _Number Theory_

prime, there is a chance that the test will fail to detect this and report that the
number is prime. But by repeating the test several times, the probability of
an error can be made as small as desired. For more on probabilistic primality
testing, see exercises 10–14.
We already know a method that Bob can use to compute [e]− 1φ(n): the
extended Euclidean algorithm. This algorithm is very fast, even with very large
numbers. For more on this, see exercise 13 in Section 7.1.
Finally, to encrypt and decrypt messages, Alice and Bob must raise
elements ofZ/≡nto high powers. SupposeX ∈Z/≡nandais a positive
integer. The most straightforward way to computeXa is to multiplyX by
itselfatimes, but this will not be feasible ifais large. There is a better way
using recursion. Ifa= 1, then of courseXa= X. For larger values ofa, we
use the following formulas:

```
X^2 k= Xk·Xk;
X^2 k+ 1= Xk·Xk·X.
```
**Example 7. 5. 2.** Find [347]^172582.

_Solution_

LetX = [347] 582 ∈ Z/≡ 582 ; we must findX^172. Since 172 is even, we
start with

```
X^172 = X2·86= X^86 ·X^86.
```
If we can findX^86 , then we’ll just have to multiply it by itself to findX^172.
To findX^86 , we use the same method:

```
X^86 = X2·43= X^43 ·X^43.
```
Now we need to findX^43 , and since 43 is odd, we use the formula

```
X^43 = X2·21+ 1= X^21 ·X^21 ·X.
```
Continuing in this way, we get the following list of formulas:

```
X^172 = X^86 ·X^86 ,
X^86 = X^43 ·X^43 ,
X^43 = X^21 ·X^21 ·X,
X^21 = X^10 ·X^10 ·X,
X^10 = X^5 ·X^5 ,
X^5 = X^2 ·X^2 ·X,
```

```
Public-Key Cryptography 365
X^2 = X^1 ·X^1 = X·X.
```
We can now work through this list in reverse order and evaluate each
formula:

```
X^2 =X·X= [347] 582 · [347] 582 = [120409] 582 = [517] 582 ,
X^5 =X^2 ·X^2 ·X= [517] 582 · [517] 582 · [347] 582 = [92749283] 582 = [17] 582 ,
X^10 =X^5 ·X^5 = [17] 582 · [17] 582 = [289] 582 ,
X^21 =X^10 ·X^10 ·X= [289] 582 · [289] 582 · [347] 582 = [28981787] 582 = [515] 582 ,
X^43 =X^21 ·X^21 ·X= [515] 582 · [515] 582 · [347] 582 = [92033075] 582 = [251] 582 ,
X^86 =X^43 ·X^43 = [251] 582 · [251] 582 = [63001] 582 = [145] 582 ,
```
X^172 =X^86 ·X^86 = [145] 582 · [145] 582 = [21025] 582 = [73] 582.

We conclude that [347]^172582 = [73] 582. If you count, you will find that
we only performed 10 multiplications – much less than the 171 that would
be required if we simply multiplied 172Xs. For more on the number of
multiplications required to computeXain general, see exercise 9.

We end this section with one more example of the use of RSA. This time
we will use numbers that are large enough to force us to use efficient methods
of calculation, although they are still not as large as would be used in a real
application of RSA.

**Example 7. 5. 3.** Suppose Bob chooses the prime numbersp = 48611 and
q= 37813. He computesn= pq = 1838127743 andφ(n) = (p− 1)(q− 1)
= 1838041320. He then chooses the encryption exponente= 184270657.

1. Find the decryption exponentd.
2. Suppose Alice wants to send the messagem = 357249732. Find the
    encrypted messagec, and verify that Bob can decrypt it.

_Solutions_

1. To computed, Bob uses the extended Euclidean algorithm to find [e]− 1φ(n)=

```
[184270657]− 1 1838041320. The steps are shown in Figure 7.7. Bob concludes
thatd= 88235833.
As a check, Bob can compute that
```
```
ed− 1 = 16259274917852280 = 8845979φ(n),
```
```
soed ≡ 1(modφ(n)).
```

366 _Number Theory_

```
n qn rn sn tn
0 1838041320 1 0
1 184270657 0 1
2 9 179605407 1 − 9
3 1 4665250 − 1 10
4 38 2325907 39 −389
5 2 13436 − 79 788
6 173 1479 13706 − 136713
7 9 125 − 123433 1231205
8 11 104 1371469 −13679968
9 1 21 − 1494902 14911173
10 4 20 7351077 −73324660
11 1 1 − 8845979 88235833
12 20 0
```
```
Figure 7.7. Computing the decryption exponentd.
```
2. LetX = [m]n= [357249732] 1838127743. To encrypt her message, Alice
    must computeXe = X^184270657. The steps are shown in Figure 7.8; of
    course, Alice plans her calculations by starting at the end of this table,
    but performs the calculations from the beginning. She sends the encrypted
    messagec= 1357673396.

```
k Xk k Xk
2 [413387288]n 44987 [418397817]n
5 [1105456936]n 89975 [1597035021]n
10 [1522283045]n 179951 [1491451285]n
21 [1773257888]n 359903 [954701208]n
43 [638596171]n 719807 [1817497177]n
87 [664005337]n 1439614 [1774588706]n
175 [661296271]n 2879229 [1061291500]n
351 [993223048]n 5758458 [21397340]n
702 [1294276724]n 11516916 [1624593674]n
1405 [1088781967]n 23033832 [1474914774]n
2811 [1010306117]n 46067664 [1189097151]n
5623 [1064784897]n 92135328 [46825442]n
11246 [1739950485]n 184270657 [1357673396]n
22493 [799178524]n
```
```
Figure 7.8. Computing the encrypted messagec.
```

```
Public-Key Cryptography 367
To decrypt the message, Bob lets Y = [c]nand computes Yd =
Y^88235833 , as shown in Figure 7.9. As expected, he getsm= 357249732.
```
```
k Yk k Yk
2 [42593275]n 21541 [120530669]n
5 [1698473378]n 43083 [189879402]n
10 [1210371791]n 86167 [781925623]n
21 [1085519751]n 172335 [1276315424]n
42 [1335983514]n 344671 [1511938429]n
84 [1212154100]n 689342 [1116941725]n
168 [638363154]n 1378684 [748516067]n
336 [1695419879]n 2757369 [590443992]n
673 [250463254]n 5514739 [1169450853]n
1346 [1092090842]n 11029479 [83459512]n
2692 [149835148]n 22058958 [643822280]n
5385 [1009240318]n 44117916 [1032113647]n
10770 [1219871219]n 88235833 [357249732]n
```
```
Figure 7.9. Decrypting the message.
```
```
Exercises
```
1. Suppose Bob choosesp= 5,q= 11, ande= 7.
    (a) Findn,φ(n), andd.
    (b) Suppose Alice wants to send the messagem= 9. Find the encrypted
       messagec, and verify that Bob can decrypt it.
*2. Suppose Bob choosesp= 71,q= 83, ande= 1369.
(a) Findn,φ(n), andd.
(b) Suppose Alice wants to send the messagem = 1001. Find the
encrypted messagec, and verify that Bob can decrypt it.
3. Suppose Bob choosesp= 71 andq= 83. Why woulde = 1368 be a
    bad choice?
4. Suppose Bob choosesp= 17389,q= 14947, ande= 35824631.
    (a) Findn,φ(n), andd.
    (b) Suppose Alice wants to send the messagem= 123456789. Find the
       encrypted messagec, and verify that Bob can decrypt it.
*5. You are eavesdropping on Alice and Bob. You intercept the message
(n,e)= (493, 129)sent to Alice by Bob, and then the messagec= 149
sent to Bob by Alice.


368 _Number Theory_

```
(a) Factorn.
(b) Find the decryption exponentd.
(c) Decrypt the message.
```
6. Suppose Alice and Bob are using RSA. As usual, Bob has generated
    the numbersn,e, andd, and he has sentnandeto Alice but keptd
    secret. Alice has a messagem that represents a contract that she wants
    Bob to sign. The contract is not secret – she is glad to send it to Bob
    without encrypting it. But she wants Bob to send back a _digital signature_
    for the contract. Like an ordinary signature, it should be a message that
    someone else could not forge, so that Alice knows that Bob, and not
    some impostor, has written the signature, and Bob cannot deny at a later
    date that he signed the contract. To create his signature, Bob computes
    the unique integerssuch that 0 ≤ s < nand [m]dn= [s]n, and he sends
    sto Alice.
    (a) Show that [s]en= [m]n, and ifs²is any integer such that 0 ≤ s²< n
       ands² ±= s, then [s²]en ±= [m]n. Thus, Alice can authenticate the
       signature by computing [s]enand verifying that it is equal to [m]n.
(b) Why can’t an impostor forge Bob’s signature?
*7. In this exercise we will see why it is important forpandqto be prime.
Suppose Bob choosesp = 9,q = 35, ande = 95, not noticing that
9 and 35 are not prime. He computesn = pq = 315, and he sends
(n,e)= (315, 95)to Alice.
(a) Suppose Alice wants to send the messagem= 123. What encrypted
messagecwill she send?
(b) Bob computesφ = (p− 1)(q − 1)= 272; he thinks this isφ(n),
but he’s wrong. To find the decryption exponentd, he then computes
[e]− 1φ = [d]φ. What value ofddoes he get?
(c) Using the decryption exponentdfrom part (b), what does Bob get
when he tries to decrypt Alice’s message?
(d) What is the correct value ofφ(n)? What decryption exponentd
would Bob have gotten if he had used the correct value forφ(n) and
computed [e]− 1φ(n)= [d]φ(n)? Using this decryption exponent, what
would Bob have gotten when he tried to decrypt Alice’s message?
8. Supposemis a positive integer andX∈Z/≡m.
    (a) Give a recursive definition ofXa, for positive integersa.
(b) Use mathematical induction to prove that for all positive integersa
andb,Xa·Xb= Xa+b.
    (c) Use mathematical induction to prove that for all positive integersa
       andb,(Xa)b= Xab.


```
Public-Key Cryptography 369
*9. SupposeX∈Z/≡n. Prove that for every positive integera, the recursive
method of computingXathat is illustrated in Example 7.5.2 uses at most
2 log 2 amultiplications.
```
Exercises 10–14 are concerned with probabilistic primality testing. In these
problems, we are looking for a computational test that can be performed on a
positive integernso that ifnis prime thennpasses the test, and ifnis not
prime then it fails the test. We will find that there are some tests that work in
many cases, but not all cases.

10. According to Euler’s theorem, ifnis prime and 2 ≤ a ≤ n− 1, then
    an− 1≡ 1 (modn). This suggests the following primality test: To test
    whether or not an integern > 2 is prime, choose a random number
    a ∈ {2, 3,.. .,n− 1} and check whether or notan− 1≡ 1(modn). If
    so, thennpasses the test, and if not, then it fails. This test is called the
    _Fermat primality test_ , because the instance of Euler’s theorem on which
    it is based is closely related to Fermat’s little theorem; see exercise 10
    in Section 7.4. Ifnis prime, then by Euler’s theorem, it is guaranteed to
    pass the test. Unfortunately, composite numbers sometimes pass the test
    as well. If 2 ≤ a≤ n− 1 andan− 1≡ 1(modn), butnis not prime,
    then we say thatnis a _Fermat pseudoprime to the base_ a; it passes the
    Fermat primality test using the basea, even though it is not prime. If
    2 ≤ a≤ n− 1 andan− 1±≡ 1(modn)then we say thatais a _Fermat_
    _witness_ forn. If there is a Fermat witness fornthen, by Euler’s theorem,
    nis not prime.
    (a) Show that 15 is a Fermat pseudoprime to the base 4, but 3 is a Fermat
       witness for 15.
    (b) Show that ifnis a Fermat pseudoprime to the basea, thennanda
       are relatively prime.
11. Recall from exercise 5 in Section 6.2 that the numbersFn= 2(^2

```
n)
+ 1 are
called Fermat numbers. Fermat showed thatFnis prime for 0 ≤n≤ 4,
and Euler showed thatF 5 is not prime. It is not known if there is any
n > 4 for whichFnis prime. In this exercise you will show that for
every natural numbern, 2Fn− 1≡ 1(modFn). Thus, ifFnis not prime,
then in the terminology of exercise 10, it is a Fermat pseudoprime to the
base 2. In other words, the Fermat primality test witha= 2 will not be
useful for testing whetherFnis prime.
(a) Show that 2(^2 n)≡ − 1(modFn).
(b) Show that 2(^2 n+ 1)≡ 1(modFn).
(c) Show that 2n+ 1|(Fn− 1). (Hint: Use exercise 12(a) in Section 6.3.)
```

370 _Number Theory_
(d) Show that 2Fn− 1 ≡ 1(modFn). (Hint: Use parts (b) and (c) and
exercise 16 in Section 7.3.)
*12. Supposenis an integer larger than 2 and letR= {2, 3,.. .,n− 1}. Let

```
R 1 = {a∈R|an− 1≡ 1 (modn)},
R 2 =R\R 1 = {a∈R|an− 1±≡ 1(modn)}.
```
```
Supposea ∈R 2 and gcd(n,a) = 1. Thenais a Fermat witness forn,
sonis not prime. (See exercise 10 for the meanings of the terms used in
this exercise.)
(a) Show that for everyx ∈ R 1 there is a uniquey ∈R 2 such that
ax≡y (modn).
(b) By part (a), we can define a functionf :R 1 →R 2 by the formula
```
```
f (x)= the uniquey∈R 2 such thatax ≡ y (modn).
```
```
Show thatf is one-to-one.
(c) Use part (b) to conclude that at least half of the elements ofRare
Fermat witnesses forn. (This shows that, with probability at least
1/2,nwill fail the Fermat primality test. By repeating the test with
different choices fora, the probability of an incorrect result can be
made as small as desired.)
```
13. Exercise 12 shows that if there is at least one Fermat witness fornthat
    is relatively prime ton, then the Fermat primality test has a good chance
    of detecting that n is not prime. Unfortunately, there are composite
    numbersnfor which no such witness exists. An integern >2 is called a
    _Carmichael number_ if it is not prime, but it is a Fermat pseudoprime to
    the baseafor every integera∈ {2, 3,.. .,n− 1} such thataandnare
    relatively prime. They are named for Robert Daniel Carmichael (1879–
    1967), who first studied them. Ifnis a Carmichael number, then although
    nis not prime, the Fermat primality test is unlikely to detect this fact. In
    1994, W. R. Alford (1937–2003), Andrew Granville (1962–), and Carl
    Pomerance (1944–) proved that there are infinitely many Carmichael
    numbers. In this problem you will show that 561 is a Carmichael number.
    (In fact, it is the smallest Carmichael number.) We leave it to you to
    verify that 561 = 3·11·17, so 561 is not prime. Suppose 2 ≤ a≤n− 1
    and gcd(561,a)= 1.
    (a) Show thata^560 ≡ 1(mod 3).
(b) Show thata^560 ≡ 1(mod 11).
(c) Show thata^560 ≡ 1(mod 17).


```
Public-Key Cryptography 371
(d) Show thata^560 ≡ 1 (mod 561). (Hint: Use exercise 14 in Section
7.4.)
```
14. In this exercise you will work out some of the mathematical basis for
    the Miller-Rabin test, a commonly used probabilistic primality test. It
    is named for Gary L. Miller (1946–) and Michael O. Rabin (1931–).
    Supposenis an odd integer andn >1.
    (a) Prove that there are positive integerssanddsuch thatn− 1 = 2sd
       anddis odd.
    (b) Prove that ifnis prime andbis a positive integer such thatb^2 ≡ 1
       (modn), then eitherb≡ 1(modn)orb≡ − 1(modn).
    Letsanddbe as in part (a). If 2 ≤ a ≤ n− 1,ad ±≡ 1(modn), and
    for all natural numbersi < s,a^2 id ±≡ − 1(modn), thenais called a
    _Miller-Rabin witness_ forn.
    (c) Prove that if there is a Miller-Rabin witness fornthennis not prime.
       (Hint: Supposeais a Miller-Rabin witness fornandnis prime. Then
       by Euler’s theorem,a^2 sd = an− 1 ≡ 1(modn). Therefore we can
       letk be the smallest natural number such thata^2 kd ≡ 1 (modn).
       Now use part (b) to get a contradiction.)
    The Miller-Rabin test works as follows: To test whether or not an odd
    integern >1 is prime, choose a random numbera∈ {2, 3,.. .,n− 1}
    and check whether or notais a Miller-Rabin witness forn. If it is, then
    nfails the test. If it is not, thennpasses the test. By part (c), ifnis prime
    then there are no Miller-Rabin witnesses, sonis guaranteed to pass the
    test. It can be proven that ifnis not prime then at least 3/4 of the numbers
    a∈ {2, 3,.. .,n− 1}are Miller-Rabin witnesses forn, sonwill fail the
    test with probability at least 3/4. As in exercise 12, the probability of an
    incorrect result can be made as small as desired by repeating the test with
    different choices ofa.
    (d) Show that 13 is not a Miller-Rabin witness for 85, but 14 is.


## 8 Infinite Sets

## 8.1 Equinumerous Sets

In this chapter, we’ll discuss a method of comparing the sizes of infinite sets.
Surprisingly, we’ll find that, in a sense, infinity comes in different sizes!
For finite sets, we determine the size of a set by counting. What does it mean
to count the number of elements in a set? When you count the elements in a set
A, you point to the elements ofAin turn while saying the words _one_ , _two_ , and
so forth. We could think of this process as defining a functionf from the set
{1, 2,.. .,n}toA, for some natural numbern. For eachi∈ {1, 2,.. .,n}, we let
f (i)be the element ofAyou’re pointing to when you say “i.” Because every
element ofAgets pointed to exactly once, the functionf is one-to-one and
onto. Thus, counting the elements ofAis simply a method of establishing a
one-to-one correspondence between the set {1, 2,.. .,n}andA, for some natu-
ral numbern. One-to-one correspondence is the key idea behind measuring the
sizes of sets, and sets of the form {1, 2,.. .,n} are the standards against which
we measure the sizes of finite sets. This suggests the following definition.

**Definition 8.1.1.** SupposeAandB are sets. We’ll say thatAis _equinumerous_
withB if there is a functionf :A → B that is one-to-one and onto. We’ll
writeA ∼ B to indicate thatAis equinumerous withB. For each natural
numbern, letIn = {i ∈Z+ | i ≤ n}. A setAis called _finite_ if there is a
natural numbernsuch thatIn∼A. Otherwise,Ais _infinite_.

You are asked in exercise 6 to show that ifAis finite, then there is _exactly
one_ nsuch thatIn∼A. Thus, it makes sense to define the _number of elements_
of a finite setA to be the uniquen such thatIn ∼ A. This number is
also sometimes called the _cardinality_ ofA, and it is denoted |A|. Note that
according to this definition,∅is finite and |∅| = 0.

```
372
```

_Equinumerous Sets_ 373
The definition of equinumerous can also be applied to infinite sets, with
results that are sometimes surprising. For example, you might think thatZ+
could not be equinumerous withZbecauseZincludes not only all the positive
integers, but also all the negative integers and zero. But consider the function
f :Z+ →Zdefined as follows:

```
f (n)=
```
### ±

```
n/2, ifnis even,
(1 −n)/2, ifnis odd.
```
This notation means that for every positive integer n, ifn is even then
f (n) = n/2 and ifn is odd thenf (n) = (1 −n)/2. The table of values
forf in Figure 8.1 reveals a pattern that suggests thatf might be one-to-one
and onto.

```
n 1 2 3 4 5 6 7 · · ·
f (n) 0 1 − 1 2 − 2 3 − 3 · · ·
Figure 8.1.
```
To check this more carefully, first note that for every positive integern, ifn
is even thenf (n) = n/ 2 > 0, and ifnis odd thenf (n) = (1 − n)/2 ≤ 0.
Now supposen 1 andn 2 are positive integers andf (n 1 )= f (n 2 ). Iff (n 1 )=
f (n 2 ) >0 thenn 1 andn 2 must both be even, so the equationf (n 1 )= f (n 2 )
meansn 1 /2 = n 2 /2, and thereforen 1 = n 2. Similarly, iff (n 1 )= f (n 2 )≤ 0
thenn 1 andn 2 are both odd, so we get(1 − n 1 )/2 = (1 − n 2 )/2, and once
again it follows thatn 1 = n 2. Thus,f is one-to-one.
To see thatfis onto, letmbe an arbitrary integer. Ifm > 0 then letn= 2m,
an even positive integer, and ifm ≤ 0 then letn= 1 − 2m, an odd positive
integer. In both cases it is easy to verify thatf (n) = m. Thus,f is onto as
well as one-to-one, so according to Definition 8.1.1,Z+∼Z.
Note that the functionf had to be chosen very carefully. There are many
other functions fromZ+ toZthat are one-to-one but not onto, onto but not
one-to-one, or neither one-to-one nor onto, but this does not contradict our
claim thatZ+ ∼Z. According to Definition 8.1.1, to show thatZ+ ∼ Zwe
need only show that there is at least one function fromZ+ toZthat is both
one-to-one and onto, and of course to prove this it suffices to give an example
of such a function.
Perhaps an even more surprising example is thatZ+× Z+ ∼Z+. To show
this we must come up with a one-to-one, onto functionf :Z+×Z+→Z+.
An element of the domain of this function would be an ordered pair(i,j),
whereiandj are positive integers. Exercise 12 asks you to show that the


374 _Infinite Sets_

following formula defines a function fromZ+× Z+ toZ+that is one-to-one
and onto:

```
f (i,j)=
```
(i+j− 2)(i +j− 1)
2 + i.
Once again, the table of values in Figure 8.2 may help you understand this
example.

```
j
f (i,j) 1 2 3 4 5
1 1 2 4 7 11
2 3 5 8 12
i 3 6 9 13
4 10 14
```
### ...

### 5 15

```
Figure 8.2.
```
**Theorem 8. 1. 2.** _Suppose_ A∼B _and_ C∼D_. Then:_

_1._ A× C∼B×D_.
2. If_ A _and_ C _are disjoint and_ B _and_ D _are disjoint, then_ A∪C∼B∪D_._

_Proof._ SinceA ∼B andC ∼D, we can choose functionsf :A→ B and
g:C→Dthat are one-to-one and onto.

1. Defineh:A×C→B× Dby the formula

```
h(a,c)= (f (a),g(c)).
To see thathis one-to-one, supposeh(a 1 ,c 1 )= h(a 2 ,c 2 ). This means that
(f (a 1 ),g(c 1 )) = (f (a 2 ),g(c 2 )), sof (a 1 )= f (a 2 )andg(c 1 )= g(c 2 ).
Sincef andgare both one-to-one, it follows thata 1 = a 2 andc 1 = c 2 , so
(a 1 ,c 1 )= (a 2 ,c 2 ).
To see thathis onto, suppose(b,d) ∈B × D. Then sincef andg
are both onto, we can choosea ∈Aandc∈Csuch thatf (a)= band
g(c) = d. Thereforeh(a,c)= (f (a),g(c)) = (b,d), as required. Thush
is one-to-one and onto, soA×C∼B× D.
```
2. SupposeAandCare disjoint andB andDare disjoint. You are asked in
    exercise 14 to show thatf∪gis a one-to-one, onto function fromA∪C
    toB∪D, soA∪C∼B∪D. ±
It is not hard to show that∼is reflexive, symmetric, and transitive. In other
words, we have the following theorem:


```
Equinumerous Sets 375
```
**Theorem 8.1.3.** _For any sets_ A _,_ B _, and_ C _:_

_1._ A∼A_.
2. If_ A∼B _then_ B ∼A_.
3. If_ A∼B _and_ B∼C _then_ A∼C_._

_Proof._

1. The identity functioniAis a one-to-one, onto function fromAtoA.
2. SupposeA ∼B. Then we can choose some functionf :A →B that is
    one-to-one and onto. By Theorem 5.3.4,f− 1is a function fromB toA.
    But now note that(f− 1)− 1= f, which is a function fromAtoB, so by
    Theorem 5.3.4 again,f− 1is also one-to-one and onto. ThereforeB ∼A.
3. SupposeA ∼ B and B ∼ C. Then we can choose one-to-one, onto
    functionsf :A→Bandg:B →C. By Theorem 5.2.5,g◦f :A→C
    is one-to-one and onto, soA∼C. ±
Theorems 8.1.2 and 8.1.3 are often helpful in showing that sets are
equinumerous. For example, we showed earlier thatZ+ × Z+ ∼ Z+ and
Z+ ∼ Z, so by part 3 of Theorem 8.1.3 it follows thatZ+ × Z+ ∼ Z.
Part 2 tells us that we need not distinguish between the statements “A is
equinumerous withB” and “B is equinumerous withA,” because they are
equivalent. For example, we already know thatZ+× Z+ ∼ Z+, so we can
also writeZ+ ∼Z+× Z+. By part 1 of Theorem 8.1.2,Z+×Z+ ∼Z×Z,
so we also haveZ+ ∼Z×Z.
    We have now found three sets,Z,Z+×Z+, andZ×Z, that are equinumerous
withZ+. Such sets are especially important and have a special name.

**Definition 8.1.4.** A setAis called _denumerable_ ifZ+ ∼ A. It is called
_countable_ if it is either finite or denumerable. Otherwise, it is _uncountable_.

You might think of the countable sets as those sets whose elements can be
_counted_ by pointing to all of them, one by one, while naming positive integers
in order. If the counting process ends at some point, then the set is finite; and
if it never ends, then the set is denumerable. The following theorem gives two
more ways of thinking about countable sets.

**Theorem 8.1.5.** _Suppose_ A _is a set. The following statements are equivalent:_

_1._ A _is countable.
2. Either_ A= ∅ _or there is a function_ f :Z+ →A _that is onto.
3. There is a function_ f :A→Z+ _that is one-to-one._


376 _Infinite Sets_

_Proof._ 1 → 2. SupposeAis countable. IfAis denumerable, then there is a
functionf :Z+ → Athat is one-to-one and onto, so clearly statement 2 is
true. Now supposeAis finite. IfA= ∅then there is nothing more to prove, so
supposeA±= ∅. Then we can choose some elementa 0 ∈A. Letg:In→ A
be a one-to-one, onto function, wherenis the number of elements ofA. Now
definef :Z+→Aas follows:

```
f (i)=
```
### ±

```
g(i), ifi≤n,
a 0 , ifi > n.
```
It is easy to check now thatf is onto, as required.
2 → 3. Suppose that eitherA= ∅or there is an onto function fromZ+
toA. We consider these two possibilities in turn. IfA = ∅, then the empty
set is a one-to-one function fromAtoZ+. Now supposeg:Z+ →A, andg
is onto. Then for eacha∈A, the set {n ∈Z+ | g(n) = a} is not empty, so
by the well-ordering principle it must have a smallest element. Thus, we can
define a functionf :A→Z+by the formula

```
f (a)= the smallestn∈Z+ such thatg(n) = a.
```
Note that for eacha∈A,g(f (a)) = a, sog◦f = iA. But then by Theorem
5.3.3, it follows thatf is one-to-one, as required.
3 → 1. Supposeg:A→Z+andgis one-to-one. LetB = Ran(g) ⊆Z+.
Thengmaps ontoB. This means that if we think ofgas a function fromAto
B, then it is one-to-one and onto, soA∼B. Thus, it suffices to show thatB is
countable, since byTheorem 8.1.3 it follows from this thatAis also countable.
SupposeB is not finite. We must show thatB is denumerable, which we
can do by defining a one-to-one, onto functionf :Z+→B. The idea behind
the definition is simply to letf (n)be thenth element ofB, for eachn∈Z+.
(Recall thatB ⊆ Z+, so we can use the ordering of the positive integers to
make sense of the idea of thenth element ofB.) For a more careful definition
off and the proof thatf is one-to-one and onto, see exercise 15. ±

IfA is countable andA ±= ∅, then by Theorem 8.1.5 there is a function
f :Z+ →Athat is onto. If, for everyn∈Z+, we letan= f (n), then the fact
thatf is onto means that every element ofAappears at least once in the list
a 1 ,a 2 ,a 3 ,.. .. In other words,A= {a 1 ,a 2 ,a 3 ,.. .}. Countability of a setAis
often used in this way to enable us to write the elements ofAin a list, indexed
by the positive integers. In fact, you might want to think of countability for
nonempty sets as meaning _listability_. Of course, ifAis denumerable, then the
functionfcan be taken to be one-to-one, which means that each element ofA
will appear only once in the lista 1 ,a 2 ,a 3 ,.. .. For an example of an application


```
Equinumerous Sets 377
```
of countability in which the elements of a countable set are written in a list,
see exercise 19.
Theorem 8.1.5 is also sometimes useful for proving that a set is denumer-
able, as the proof of our next theorem shows.

**Theorem 8. 1. 6.** Q _is denumerable._

_Proof._ Letf :Z× Z+ →Qbe defined as follows:

```
f (p,q)= p/q.
```
Clearlyf is onto, since by definition all rational numbers can be written as
fractions, but note thatf is not one-to-one. For example,f (1, 2)= f (2, 4)=
1 /2. SinceZ+ ∼ Z, by Theorem 8.1.2 we haveZ+ × Z+ ∼ Z× Z+, and
since we already know thatZ+×Z+is denumerable, it follows thatZ×Z+is
also denumerable. Thus, we can choose a one-to-one, onto functiong:Z+ →
Z×Z+. By Theorem 5.2.5,f◦g:Z+→Qis onto, so by Theorem 8.1.5,Q
is countable. ClearlyQis not finite, so it must be denumerable. ±

Although our focus in this chapter is on infinite sets, the methods in this
section can be used to prove theorems that are useful for computing the cardi-
nalities of finite sets. We end this section with one example of such a theorem,
and give several other examples in the exercises (see exercises 20–30).

**Theorem 8. 1. 7.** _Suppose_ A _and_ B _are disjoint finite sets. Then_ A∪B _is finite,
and_ |A∪B| = |A| + |B|_._

_Proof._ Letn = |A| andm = |B|. ThenA ∼ InandB ∼ Im. Notice that
ifx ∈Imthen 1 ≤ x ≤ m, and thereforen+ 1 ≤ x + n ≤ n+m, so
x+n∈In+m\In. Thus we can define a functionf :Im→In+m\Inby the
formulaf (x)= x+ n. It is easy to check thatf is one-to-one and onto, so
Im∼In+m\In. SinceB ∼Im, it follows thatB ∼In+m\ In. Applying part
2 of Theorem 8.1.2, we can conclude thatA∪B∼In∪(In+m\In)=In+m.
ThereforeA∪Bis finite, and |A∪B| = n+m= |A| + |B|. ±

```
Exercises
```
```
*1. Show that the following sets are denumerable.
(a) N.
(b) The set of all even integers.
```

378 _Infinite Sets_

2. Show that the following sets are denumerable:
    (a)Q× Q.
(b) Q(

### √

```
2 ). (See exercise 21(b) of Section 5.4 for the meaning of the
notation used here.)
```
3. In this problem we’ll use the following notation for intervals of real
    numbers. Ifaandbare real numbers anda < b, then

```
[a,b] = {x∈R|a≤ x≤b},
(a,b)= {x∈R|a < x < b},
(a,b] = {x∈R|a < x≤ b},
[a,b)= {x∈R|a≤ x < b}.
```
```
(a) Show that [0, 1]∼[0, 2].
(b) Show that(−π/2,π/ 2 )∼R. (Hint: Use a trigonometric function.)
(c) Show that(0, 1)∼R.
(d) Show that(0, 1]∼(0, 1).
*4. Justify your answer to each question with either a proof or a counterex-
ample.
(a) SupposeA ∼ B andA× C ∼ B × D. Must it be the case that
C∼D?
(b) SupposeA ∼B,AandCare disjoint,B andDare disjoint, and
A∪C∼B ∪D. Must it be the case thatC∼D?
```
5. Prove that ifA∼BthenP(A) ∼P(B).
*6. (a) Prove that for all natural numbersnandm, ifIn∼Imthenn= m.
(Hint: Use induction onn.)
(b) Prove that ifAis finite, then there is exactly one natural numbern
such thatIn∼A.
7. SupposeAandBare sets andAis finite. Prove thatA∼BiffBis also
    finite and |A| = |B|.
*8. (a) Prove that ifn ∈NandA ⊆ In, thenA is finite and |A| ≤ n.
Furthermore, ifA±= In, then |A|< n.
(b) Prove that ifAis finite andB ⊆A, thenB is also finite, and |B| ≤
|A|. Furthermore, ifB±= A, then |B|<|A|.
9. SupposeB ⊆A,B±= A, andB ∼A. Prove thatAis infinite.
*10. Prove that ifn ∈N,f :In → B, andf is onto, thenB is finite and
|B| ≤ n.
11. SupposeAandBare finite sets andf :A→B.
(a) Prove that if |A|<|B| thenf is not onto.
(b) Prove that if |A|>|B| thenf is not one-to-one. (This is sometimes
called the _pigeonhole principle_ , because it means that ifnitems are


_Equinumerous Sets_ 379
put intompigeonholes, wheren > m, then some pigeonhole must
contain more than one item.)
(c) Prove that if |A| = |B| thenf is one-to-one ifff is onto.
*12. Show that the functionf :Z+×Z+→Z+ defined by the formula

```
f (i,j)=
```
```
(i+j− 2)(i+j− 1)
2
```
```
+i
```
```
is one-to-one and onto.
```
13. In this exercise you will give another proof thatZ+ × Z+ ∼Z+. Let
    f :Z+× Z+→Z+be defined by the formula

```
f (m,n)= 2m− 1( 2 n− 1).
```
```
Prove thatfis one-to-one and onto.
```
14. Complete the proof of part 2 of Theorem 8.1.2 by showing that iff :
    A → B andg : C → D are one-to-one, onto functions,AandC
    are disjoint, andB andDare disjoint, thenf ∪gis a one-to-one, onto
    function fromA∪CtoB∪D.
*15. In this exercise you will complete the proof of 3 → 1 of Theorem 8.1.5.
SupposeB⊆Z+andBis infinite. We now define a functionf :Z+ →
B by recursion as follows:
For alln∈Z+,

```
f (n)= the smallest element ofB\ {f (m)|m∈Z+,m < n}.
```
```
Of course, the definition is recursive because the specification off (n)
refers tof (m)for allm < n.
(a) Supposen∈Z+. The definition off (n)only makes sense if we can
be sure thatB \ {f (m) | m ∈Z+,m < n} ±= ∅, in which case
the well-ordering principle guarantees that it has a smallest element.
Prove thatB\ {f (m)|m ∈Z+,m < n} ±= ∅. (Hint: See exercises
8 and 10.)
(b) Prove that for alln∈Z+,f (n)≥ n.
(c) Prove thatf is one-to-one and onto.
```
16. In this exercise you will give an alternative proof of Theorem 8.1.6.
    (a) Find a functionf :Z+→Z\ {0}that is one-to-one and onto.
    (b) Letg:Z+ → Q+be defined as follows. Supposen∈Z+and the
       prime factorization ofnisn=pe 11 pe 22 · · ·pekk, wherep 1 ,p 2 ,... ,pk
       are prime numbers,p 1 < p 2 < · · ·< pk, ande 1 ,e 2 ,... ,ekare
       positive integers. Then we let

```
g(n) = g(pe 11 pe 22 · · ·pekk)= p 1 f^ (e^1 )pf 2 (e^2 )· · ·pfk^ (ek),
```

380 _Infinite Sets_

wherefis the function from part (a). (As in Section 7.2, we consider
the empty product to be 1, so thatg( 1 )= 1.) Prove thatgis one-to-
one and onto. (Hint: You will find exercise 19 in Section 7.2 useful.)
(c) Useg to define a one-to-one, onto functionh : Z → Q, and
conclude thatQis denumerable.
*17. Prove that ifB⊆AandAis countable, thenBis countable.

18. Prove that ifB⊆A,Ais infinite, andB is finite, thenA\B is infinite.
*19. SupposeAis denumerable andRis a partial order onA. Prove thatR
can be extended to a total order onA. In other words, prove that there
is a total orderT onAsuch thatR⊆T. Note that we proved a similar
theorem for finiteAin Example 6.2.2. (Hint: SinceAis denumerable,
we can write the elements ofAin a list:A= {a 1 ,a 2 ,a 3 ,.. .}. Now, using
exercise 2 of Section 6.2, recursively define partial ordersRn, forn∈N,
so thatR = R 0 ⊆ R 1 ⊆R 2 ⊆ · · · and∀i ∈In∀j ∈Z+((ai,aj)∈
Rn∨(aj,ai)∈Rn). LetT =

### ²

```
n∈NRn.)
```
20. SupposeAis finite andB ⊆A. By exercise 8,B andA\ B are both
    finite. Prove that |A\ B| = |A| − |B|. (In particular, ifa ∈A then
    |A\ {a}| = |A| − 1. We used this fact in several proofs in Chapter 6; for
    example, we used it in Examples 6.2.1 and 6.2.2.)
21. Supposenis a positive integer and for eachi ∈In,Aiis a finite set.
    Also, assume that² ∀i∈In∀j ∈In(i ±= j →Ai∩Aj= ∅). Prove that
       i∈InAiis finite and |

### ²

```
i∈InAi| =
```
∑n
i= 1|Ai|.
*22. (a) Prove that ifAandB are finite sets, thenA× B is finite and |A×
B| = |A| · |B|. (Hint: Use induction on |B|. In other words, prove
the following statement by induction:∀n∈N∀A∀B(ifAandBare
finite and |B| = n, thenA×B is finite and |A×B| = |A| ·n). You
may find Theorem 4.1.3 useful.)
(b) A meal at Alice’s Restaurant consists of an entree and a dessert. The
entree can be either steak, chicken, pork chops, shrimp, or spaghetti,
and dessert can be either ice cream, cake, or pie. How many different
meals can you order at Alice’s Restaurant?

23. For any setsAandB, the set of all functions fromAtoBis denotedAB.
    (a) Prove that ifA∼B andC∼DthenAC∼BD.
(b) Prove that ifA,B, andC are sets andA∩B = ∅, thenA∪BC ∼
AC×BC.
    (c) Prove that ifAandB are finite sets, thenAB is finite and |AB| =
       |B||A|. (Hint: Use induction on |A|.)
(d) A professor has 20 students in his class, and he has to assign a grade
of either A, B, C, D, or F to each student. In how many ways can the
grades be assigned?


```
Equinumerous Sets 381
```
*24. Suppose |A| = n, and letF = {f | f is a one-to-one, onto function
fromIntoA}.
(a) Prove thatF is finite, and |F| = n!. (Hint: Use induction onn.)
(b) LetL = {R | R is a total order onA}. Prove thatF ∼ L, and
therefore |L| = n!.
(c) Five people are to sit in a row of five seats. In how many ways can
they be seated?

25. SupposeAis a finite set andRis an equivalence relation onA. Suppose
    also that there is some positive integernsuch that∀x∈A(|[x]R| = n).
    Prove thatA/R is finite and |A/R| = |A|/n. (Hint: Use exercise 21.)
26. (a) Suppose thatAandBare finite sets. Prove thatA∪B is finite, and
    |A∪B| = |A| + |B| − |A∩B|.
    (b) Suppose thatA,B, andCare finite sets. Prove thatA∪B∪Cis
       finite, and

```
|A∪B∪C| = |A|+|B|+|C|−|A∩B|−|A∩C|−|B∩C|+| A∩B∩C|.
```
*27. In this problem you will prove the _inclusion-exclusion principle_ , which
generalizes the formulas in exercise 26. SupposeA 1 ,A 2 ,... ,Anare
finite sets. LetP =P(In)\{∅}, and for eachS∈P letAS=

### ³

```
i∈SAi.
Prove that
```
### ²

```
i∈InAiis finite and
́ ́
́
```
```
μ
```
```
i∈In
```
```
Ai
```
### ́ ́

### ́=

### ¶

```
S∈P
```
### (− 1)|S|+ 1|AS|.

```
(The notation on the right-hand side of this equation denotes the result
of running through all setsS∈P, computing the number(− 1)|S|+ 1|AS|
for eachS, and then adding these numbers. Hint: Use induction onn.)
```
28. Prove that ifA andB are finite sets and |A| = |B|, then |A² B| is
    even.
29. Each customer in a certain bank has a PIN number, which is a sequence
    of four digits. Show that if the bank has more than 10,000 customers,
    then some two customers must have the same PIN number. (Hint: See
    exercise 11.)
30. Alice opened her grade report and exclaimed, “I can’t believe Prof. Jones
    flunked me in Probability.” “You were in that course?” said Bob. “That’s
    funny, I was in it too, and I don’t remember ever seeing you there.”
    “Well,” admitted Alice sheepishly, “I guess I did skip class a lot.” “Yeah,
    me too” said Bob. Prove that either Alice or Bob missed at least half of
    the classes.


382 _Infinite Sets_

## 8.2 Countable and Uncountable Sets

Often when we perform some set-theoretic operation with countable sets, the
result is again a countable set.

**Theorem 8.2.1.** _Suppose_ A _and_ B _are countable sets. Then:_

_1._ A× B _is countable.
2._ A∪B _is countable._

_Proof._ SinceAandB are countable, by Theorem 8.1.5 we can choose one-to-
one functionsf :A→Z+andg:B →Z+.

1. Defineh:A×B →Z+×Z+by the formula

```
h(a,b)= (f (a),g(b)).
As in the proof of part 1 of Theorem 8.1.2, it is not hard to show thathis
one-to-one. SinceZ+×Z+is denumerable, we can letj:Z+×Z+→Z+
be a one-to-one, onto function. Then by Theorem 5.2.5,j◦h:A×B→Z+
is one-to-one, so by Theorem 8.1.5,A×Bis countable.
```
2. Defineh:A∪B →Zas follows:

```
h(x) =
```
### ±

f (x), ifx∈A,
−g(x), ifx /∈A.
We claim now thath is one-to-one. To see why, suppose that h(x 1 ) =
h(x 2 ), for somex 1 andx 2 inA∪B. Ifh(x 1 )= h(x 2 ) >0, then according
to the definition ofh, we must havex 1 ∈A,x 2 ∈A, andf (x 1 )= h(x 1 )=
h(x 2 ) = f (x 2 ). But then sincef is one-to-one,x 1 = x 2. Similarly, if
h(x 1 )= h(x 2 ) ≤ 0, then we must haveg(x 1 )= −h(x 1 ) = −h(x 2 ) =
g(x 2 ), and then sincegis one-to-one,x 1 = x 2. Thus,his one-to-one.
SinceZis denumerable, we can letj :Z→ Z+ be a one-to-one, onto
function. As in part 1, we then find thatj◦h:A∪B →Z+is one-to-one,
soA∪Bis countable. ±
As our next theorem shows, part 2 of Theorem 8.2.1 can be extended to
unions of more than two sets.

**Theorem 8.2.2.** _The union of countably many countable sets is countable. In
other words, if_ F _is a family of sets,_ F _is countable, and also every element of_
F _is countable, then_

### ²

```
F is countable.
```
_Proof._ We will assume first that∅ ∈/ F. At the end of the proof we will
discuss the case∅∈F.


```
Countable and Uncountable Sets 383
IfF= ∅, then of course
```
### ²

F= ∅, which is countable. Now supposeF±=
∅. Then, as described after the proof of Theorem 8.1.5, sinceFis countable
and nonempty we can write the elements ofFin a list, indexed by the positive
integers. In other words, we can say thatF = {A 1 ,A 2 ,A 3 ,.. .}. Similarly,
every element ofFis countable and nonempty (since∅∈/ F), so for each
positive integerithe elements ofAican be written in a list. Thus we can write

```
A 1 = {a 11 ,a 21 ,a^13 ,.. .},
A 2 = {a 12 ,a 22 ,a^23 ,.. .},
```
and, in general,

```
Ai= {a 1 i,ai 2 ,a 3 i,.. .}.
```
Note that, by the definition of union,

### ²

```
F= {aji|i∈Z+,j∈Z+}.
Now define a functionf :Z+× Z+→
```
### ²

```
Fby the formula
```
```
f (i,j)= aji.
```
Clearlyf is onto. SinceZ+× Z+ is denumerable, we can letg : Z+ →
Z+×Z+be a one-to-one, onto function. Thenf◦g:Z+→

### ²

² Fis onto, so
Fis countable.
Finally, suppose∅∈F. LetF³= F\ {∅}. ThenF³is also a countable
family of countable sets and∅∈/ F³, so by the earlier reasoning,

### ²

F³is
countable. But clearly

### ²

### F=

### ²

```
F³, so
```
### ²

Fis countable too. ±
Another operation that preserves countability is the formation of finite
sequences. SupposeAis a set anda 1 ,a 2 ,... ,anis a list of elements ofA.
We might specify the terms in this list with a functionf :In→A, where for
eachi,f (i) = ai= theith term in the list. Such a function is called a _finite
sequence_ of elements ofA.

**Definition 8.2.3.** SupposeAis a set.Afunctionf :In→ A, wherenis a
natural number, is called a _finite sequence_ of elements ofA, andnis called the
_length_ of the sequence.

**Theorem 8.2.4.** _Suppose_ A _is a countable set. Then the set of all finite
sequences of elements of_ A _is also countable._

_Proof._ For eachn ∈ N, letSnbe the set of all sequences of lengthn of
elements ofA. We first show that for everyn∈N,Snis countable. We proceed
by induction onn.


384 _Infinite Sets_

In the base case we assumen = 0. Note thatI 0 = ∅, so a sequence of
length 0 is a functionf :∅→ A, and the only such function is∅. Thus,
S 0 = {∅}, which is clearly a countable set.
For the induction step, supposenis a natural number andSnis countable.
We must show thatSn+ 1is countable. Consider the functionF :Sn× A→
Sn+ 1defined as follows:

```
F (f,a)= f ∪ {(n+ 1,a)}.
```
In other words, for any sequencef ∈Snand any elementa ∈A,F (f,a) is
the sequence you get by starting withf, which is a sequence of lengthn, and
then tacking onaas term numbern+ 1. You are asked in exercise 2 to verify
thatF is one-to-one and onto. Thus,Sn× A∼Sn+ 1. ButSnandAare both
countable, so by Theorem 8.2.1,Sn× Ais countable, and thereforeSn+ 1is
countable.
This completes the inductive proof that for everyn∈N,Snis countable.
Finally, note that the set of all finite sequences of elements ofAis

### ²

n∈NSn,
and this is countable by Theorem 8.2.2. ±

As an example of the use of Theorem 8.2.4, you should be able to show
that the set of all grammatical sentences of English is a denumerable set. (See
exercise 17.)
By now you may be wondering if perhaps _all_ sets are countable! Is there any
set-theoretic operation that can be used to produce uncountable sets? We’ll
see in our next theorem that the answer is yes, the power set operation. This
fact was discovered by the German mathematician Georg Cantor (1845–1918)
by means of a famous and ingenious proof. In fact, it was Cantor who first
conceived of the idea of comparing the sizes of infinite sets. Cantor’s proof is
somewhat harder than the previous proofs in this chapter, so we’ll discuss the
strategy behind the proof before presenting the proof itself.

**Theorem 8. 2. 5.** (Cantor’s theorem) P(Z+) _is uncountable._

_Scratch work_

The proof is based on statement 2 of Theorem 8.1.5. We’ll show that there
is no functionf :Z+ → P(Z+)that is onto. ClearlyP(Z+)±= ∅, so by
Theorem 8.1.5 this shows thatP(Z+)is not countable.
Our strategy will be to letf : Z+ → P(Z+)be an arbitrary function
and prove thatf is not onto. Reexpressing this negative goal as a positive
statement, we must show that∃D[D∈P(Z+)∧ ∀n∈Z+(D ±= f (n))]. This
suggests that we should try to find a particular setDfor which we can prove


```
Countable and Uncountable Sets 385
```
bothD∈P(Z+)and∀n∈Z+(D±= f (n)). This is the most difficult step in
figuring out the proof. There is a setDthat makes the proof work, but it will
take some cleverness to come up with it.
We want to make sure that D ∈ P(Z+), or in other wordsD ⊆ Z+,
so we know that we need only consider positive integers when deciding
what the elements ofD should be. But this still leaves us infinitely many
decisions to make: for each positive integern, we must decide whether or
not we want n to be an element ofD. We also need to make sure that
∀n∈Z+(D±= f (n)). This imposes infinitely many restrictions on our choice
ofD: for each positive integern, we must make sure thatD±=f (n). Why not
make each of our infinitely many decisions in such a way that it guarantees
that the corresponding restriction is satisfied? In other words, for each positive
integern, we’ll make our decision about whether or notnis an element of
D in such a way that it will guarantee thatD ±= f (n). This isn’t hard to
do. We can letnbe an element ofDifn ∈/ f (n), and leavenout ofD if
n∈f (n). This will guarantee thatD±= f (n), because one of these sets will
containnas an element and the other won’t. This suggests that we should let
D= {n∈Z+|n ∈/f (n)}.
Figure 8.3 may help you understand the definition of the setD. For each
m ∈Z+,f (m) is a subset ofZ+, and it can be specified by saying, for each
positive integern, whether or notn ∈f (m). The answers to these questions
can be arranged in a table as shown in Figure 8.3. Each row of the table gives
the answers needed to specify the setf (m)for a particular value ofm. The set
Dcan also be specified with a row of yesses and noes, as shown at the bottom
of Figure 8.3. For eachn ∈Z+ we’ve decided to determine whether or not
n∈Dby asking whether or notn∈f (n), and the answers to these questions
are the ones surrounded by boxes in Figure 8.3. Becausen∈Diffn ∈/f (n),
the row of yesses and noes that specifiesDcan be found by reading the boxed
answers along the diagonal of Figure 8.3 and reversing all the answers. This is
guaranteed to be different from every row of the table in Figure 8.3, because
for eachn∈Z+it differs from rownin thenth position.
If you found this reasoning difficult to follow, don’t worry about it.
Remember, the reasoning used in choosing the setD won’t be part of the
proof anyway! After you finish reading the proof, you can go back and try
reading the last two paragraphs again.
It should be clear that the setDwe have chosen is a subset ofZ+, soD ∈
P(Z+). Our other goal is to prove that∀n ∈Z+(D ±= f (n)), so we let
nbe an arbitrary positive integer and proveD ±= f (n). Now recall that we
choseDcarefully so that we would be able to proveD ±= f (n), and the
reasoning behind this choice hinged on whether or notn ∈f (n). Perhaps


386 _Infinite Sets_

```
n
Isn∈f (m)? 1 2 3 4 5
1 yes no no yes yes
2 yes yes no no yes
m 3 no no no yes no · · ·
4 yes yes no yes no
5 no yes yes no no
..
.
Isn∈D? no no yes no yes · · ·
Figure 8.3.
```
the easiest way to write the proof is to consider the two casesn∈f (n)and
n ∈/f (n)separately. In each case, applying the definition ofDeasily leads to
the conclusion thatD ±= f (n).

_Proof._ Supposef :Z+ →P(Z+). We will show thatf cannot be onto by
finding a setD ∈P(Z+)such thatD ∈/ Ran(f ). LetD = {n∈Z+ |n ∈/
f (n)}. ClearlyD⊆ Z+, soD∈P(Z+). Now letnbe an arbitrary positive
integer. We consider two cases.
Case 1.n ∈f (n). SinceD= {n∈Z+ |n ∈/f (n)}, we can conclude that
n ∈/D. But then sincen∈f (n)andn ∈/D, it follows thatD±= f (n).
Case 2.n ∈/ f (n). Then by the definition ofD,n ∈D. Sincen∈D and
n ∈/f (n),D±= f (n).
Since these cases are exhaustive, this shows that∀n∈Z+(D ±= f (n)), so
D ∈/Ran(f ). Sincef was arbitrary, this shows that there is no onto function
f :Z+ → P(Z+). ClearlyP(Z+)±= ∅, so by Theorem 8.1.5,P(Z+)is
uncountable. ±

The method used in the proof of Theorem 8.2.5 is called _diagonalization_
because of the diagonal arrangement of the boxed answers in Figure 8.3. Diag-
onalization is a powerful technique that can be used to prove many theorems,
including our next theorem. However, rather than doing another diagonaliza-
tion argument, we’ll simply apply Theorem 8.2.5 to prove the next theorem.

**Theorem 8. 2. 6.** R _is uncountable._

_Proof._ We will define a function f : P(Z+) → Rand show thatf is
one-to-one. IfRwere countable, then there would be a one-to-one function
g:R→Z+. But theng◦f would be a one-to-one function fromP(Z+)to


```
Countable and Uncountable Sets 387
Z+and thereforeP(Z+)would be countable, contradicting Cantor’s theorem.
Thus, this will show thatRis uncountable.
To define f, supposeA ∈ P(Z+). Thenf (A)will be a real number
between 0 and 1 that we will specify by giving its decimal expansion. For
each positive integern, thenth digit off (A)will be the numberdndefined as
follows:
```
```
dn=
```
### ±

```
3, ifn ∈/A,
7, ifn∈A.
In other words, in decimal notation we havef (A)= 0.d 1 d 2 d 3.. .. For exam-
ple, ifEis the set of all positive even integers, thenf (E)= 0.37373737.. ..
IfP is the set of all prime numbers, thenf (P )= 0.37737373337.. ..
To see thatf is one-to-one, suppose thatA ∈P(Z+),B ∈P(Z+), and
A ±= B. Then there is somen ∈Z+ such that eithern ∈Aandn ∈/ B,
orn ∈B andn ∈/A. But thenf (A)andf (B)cannot be equal, since their
decimal expansions differ in thenth digit.^1 Thus,fis one-to-one. ±
```
```
Exercises
```
```
*1. (a) Prove that the set of all irrational numbers,R\Q, is uncountable.
(b) Prove thatR\Q∼R.
```
2. LetF :Sn×A→Sn+ 1be the function defined in the proof of Theorem
    8.2.4. Show thatF is one-to-one and onto.
3. In this exercise you will give an alternative proof of Theorem 8.2.4.
    SupposeAis a countable set, and letSbe the set of all finite sequences
    of elements ofA. SinceAis countable, there is a one-to-one function
    g : A → Z+. For each positive integer n, letpnbe thenth prime
    number; thus,p 1 = 2,p 2 = 3, and so on. DefineF : S → Z+ as
    follows: Supposef ∈Sand the length off isn. Then
       F(f )=pg 1 (f^ (^1 ))pg 2 (f^ (^2 ))· · ·pgn(f^ (n)).

```
Show thatF is one-to-one, and thereforeSis countable.
```
4. LetP = {X∈P(Z+)|Xis finite}. Prove thatPis denumerable.

(^1) We should really be a bit more careful here. It is actually possible for two different decimal
expansions to represent the same number. For example, in a calculus class you may have
learned the surprising fact that 0.999.. .= 1.000... However, this only happens with decimal.
expansions that end with either an infinite sequence of 9s or an infinite sequence of 0s. For
decimal expansions made up of 3s and 7s, different decimal expansions always represent
different numbers.


388 _Infinite Sets_

```
*5. Prove the following more general form of Cantor’s theorem: For any set
A,A±P(A). (Hint: Imitate the proof of Theorem 8.2.5.)
```
6. For the meaning of the notation used in this exercise, see exercise 23 of
    Section 8.1.
    (a) Prove that for any setsA,B, andC,A(B× C)∼AB ×AC.
(b) Prove that for any setsA,B, andC,(A×B)C∼A(BC).
(c) Prove that for any setA,P(A) ∼A{yes, no}. (Note that ifAis finite
and |A| = nthen, by exercise 23(c) of Section 8.1, it follows that
|P(A)| = |{ yes, no}||A|= 2n. Of course, you already proved this,
by a different method, in exercise 11 of Section 6.2.)
(d) Prove thatZ+P(Z+)∼P(Z+).
7. SupposeAis denumerable. Prove that there is a partitionP ofAsuch
    thatPis denumerable and for everyX∈P,Xis denumerable.
*8. Prove that ifAandBare disjoint sets, thenP(A∪B)∼P(A)×P(B).
9. (a) SupposeA 1 ⊆A 2 ⊆A 3 ⊆ · · · and

### ²

```
n∈Z+An= R. Prove that for
every uncountable setB ⊆ Rthere is some positive integernsuch
thatB∩Anis uncountable.
(b) SupposeA 1 ⊆A 2 ⊆A 3 ⊆ · · · and
```
### ²

n∈Z+An= Z+. Suppose also
that for every infinite setB ⊆Z+ there is some positive integern
such thatB∩Anis infinite. Prove that for somen,An= Z+.
*10. SupposeA⊆R+,b ∈R+, and for every lista 1 ,a 2 ,... ,akof finitely
many distinct elements ofA,a 1 + a 2 + · · · + ak≤ b. Prove thatAis
countable. (Hint: For each positive integern, letAn= {x ∈A | x ≥
1 /n}. What can you say about the number of elements inAn?)

11. SupposeEis an equivalence relation onRand for all real numbersx
    andy, [x]E∼[y]E. Prove that eitherR/E is uncountable or for every
    x∈R, [x]Eis uncountable.
12. A real numberxis called _algebraic_ if there is a positive integernand
    integersa 0 ,a 1 ,... ,ansuch thata 0 +a 1 x+ a 2 x^2 + · · · + anxn= 0 and
    an±= 0. LetAbe the set of all algebraic numbers.
    (a) Prove thatQ⊆A.
(b) Prove that

### √

### 2 ∈A.

(c) Prove thatAis countable. Note: You may use the fact that ifnis a
positive integer,a 0 ,a 1 ,... ,anare integers, andan±= 0, then {x ∈
R|a 0 +a 1 x+ a 2 x^2 + · · · +anxn= 0}is finite.
*13. SupposeF⊆ {f |f :Z+ →R}andFis countable. Prove that there is
a functiong:Z+→Rsuch thatF⊆O(g). (See exercise 19 of Section
5.1 for the meaning of the notation used here.)

14. SupposeF ⊆ P(Z+)andF is pairwise disjoint. Prove that F is
    countable.


```
The Cantor-Schr ̈ oder-Bernstein Theorem 389
```
*15. IfAandBare infinite sets, we say thatAandB are _almost disjoint_ if
A∩B is finite. IfFis a family of infinite sets, then we say thatFis
_pairwise almost disjoint_ if for allAandB inF, ifA ±= B thenAand
B are almost disjoint. In this exercise you will prove that there is some
F ⊆ P(Z+)such that all elements ofFare infinite,F is pairwise
almost disjoint, andFis uncountable. (Contrast this with the previous
exercise.)
LetP = {X ∈P(Z+)|Xis finite} andQ = {X∈P(Z+)|Xis
infinite}. By exercise 4,P is denumerable, so we can choose a one-to-
one, onto functiong:P →Z+.
(a) Prove thatQis uncountable.
For eachA∈Q, letSA= {A∩In|n∈Z+}. For example, ifAis the set
of all prime numbers, thenSA= {∅, {2},{2, 3},{2, 3, 5},.. .}. (We might
describeSAas the set of all initial segments ofA.)
(b) Prove that ifA∈QthenSA⊆P andSAis infinite.
(c) Prove that ifA,B ∈QandA±= BthenSA∩SBis finite.
(d) LetF= {g(SA)|A∈Q}. Prove thatF⊆P(Z+), every element
ofFis infinite,Fis pairwise almost disjoint, andFis uncountable.

16. Prove that there is a functionf :Z+→Z+such that for all positive inte-
    gersa,b, andcthere is some positive integernsuch thatf (an+b)=c.
17. Prove that the set of all grammatical sentences of English is
    denumerable. (Hint: Every grammatical sentence of English is a finite
    sequence of English words. First show that the set of all grammatical
    sentences is countable, and then show that it is infinite.)
18. Some real numbers can be defined by a phrase in the English language.
    For example, the phrase “the ratio of the circumference of a circle to its
    diameter” defines the numberπ.
    (a) Prove that the set of numbers that can be defined by an English
       phrase is denumerable. (Hint: See exercise 17.)
    (b) Prove that there are real numbers that cannot be defined by English
       phrases.

## 8.3 The Cantor-Schr ̈oder-Bernstein Theorem

SupposeAandBare sets andf is a one-to-one function fromAtoB. Then
f shows thatA∼Ran(f )⊆B, so it is natural to think ofBas being _at least
as large as_ A. This suggests the following notation:


390 _Infinite Sets_

**Definition 8.3.1.** IfAandBare sets, then we will say thatB _dominates_ A, and
writeA²B, if there is a functionf :A→ B that is one-to-one. IfA²B
andA±B, then we say thatB _strictly dominates_ A, and writeA≺B.

For example, in the proof of Theorem 8.2.6 we gave a one-to-one function
f :P(Z+)→R, soP(Z+)²R. Of course, for any setsAandB, ifA∼B
then alsoA ²B. It should also be clear that ifA ⊆ B thenA ²B. For
example,Z+ ²R. In fact, by Theorem 8.2.6 we also know thatZ+ ± R, so
we can say thatZ+ ≺R.
You might think that²would be a partial order, but it turns out that it isn’t.
You’re asked in exercise 1 to check that²is reflexive and transitive, but it is
not antisymmetric. (In the terminology of exercise 25 of Section 4.5,²is a
preorder.) For example,Z+ ∼ Q, soZ+ ²QandQ²Z+, but of course
Z+±= Q. But this suggests an interesting question: IfA²BandB ²A, then
AandB might not be equal, but must they be equinumerous?
The answer, it turns out, is yes, as we’ll prove in our next theorem. Several
mathematicians’ names are usually associated with this theorem. Cantor was
the first person to state the theorem, and he gave a partial proof. Later, Ernst
Schr ̈oder (1841–1902) and Felix Bernstein (1878–1956) discovered proofs
independently.

**Theorem 8.3.2.** (Cantor-Schr ̈oder-Bernstein theorem) _Suppose_ A _and_ B _are
sets. If_ A²B _and_ B ²A _, then_ A∼B_._

_Scratch work_

We start by assuming thatA ² B andB ² A, which means that we can
choose one-to-one functionsf : A → B andg : B → A. To prove that
A∼Bwe need to find a one-to-one, onto functionh:A→B.
At this point, we don’t know much aboutAandB. The only tools we have
to help us match up the elements ofAandBare the functionsf andg. Iff
is onto, then of course we can leth = f; and ifgis onto, then we can let
h= g− 1. But it may turn out that neitherf norgis onto. How can we come
up with the required functionhin this case?
Our solution will be to combine parts off andg− 1to geth. To do this,
we’ll splitAinto two piecesXandY, andBinto two piecesW andZ, in such
a way thatX andW can be matched up byf, andY andZcan be matched
up byg. More precisely, we’ll haveW = f (X) = {f (x) | x ∈X} and
Y = g(Z) = {g(z) |z ∈Z}. The situation is illustrated in Figure 8.4. Once
we have this, we’ll be able to definehby lettingh(a) = f (a)fora∈X, and
h(a)= g− 1(a) fora∈Y.


```
The Cantor-Schr ̈ oder-Bernstein Theorem 391
```
```
Figure 8.4.
```
How can we choose the setsX,Y,W, andZ? First of all, note that every
element ofY must be in Ran(g), so any element ofAthat is not in Ran(g)
must be inX. In other words, if we letA 1 = A\ Ran(g), then we must have
A 1 ⊆X. But now consider anya∈A 1. We know that we must havea∈X,
and thereforef (a)∈W. But now note that sincegis one-to-one,g(f (a)) will
be different fromg(z) for everyz∈Z, and thereforeg(f (a)) /∈g(Z) = Y.
Thus, we must haveg(f (a)) ∈X. Sinceawas an arbitrary element ofA 1 ,
this shows that if we letA 2 = g(f (A 1 )) = {g(f (a)) | a ∈A 1 }, then we
must haveA 2 ⊆X. Similarly, if we letA 3 = g(f (A 2 )), then it will turn out
that we must haveA 3 ⊆X. Continuing in this way we can define setsAnfor
every positive integern, and for everynwe must haveAn⊆X. As you will
see, lettingX =

### ²

n∈Z+Anworks. In the following proof, we actually do not
mention the setsW andZ.

_Proof._ SupposeA²BandB ²A. Then we can choose one-to-one functions
f :A→Bandg:B →A. LetR= Ran(g)⊆A. Thengmaps ontoR, so
by Theorem 5.3.4,g− 1:R→B.
We now define a sequence of setsA 1 ,A 2 ,A 3 ,... by recursion as follows:
A 1 = A\R;
for everyn∈Z+,An+ 1= g(f (An))= {g(f (a)) |a∈An}.

LetX=

### ²

n∈Z+AnandY = A\X. Of course, every element ofAis in either
XorY, but not both. Now defineh:A→Bas follows:

```
h(a) =
```
### ±

```
f (a), ifa∈X,
g− 1(a), ifa∈Y.
```

392 _Infinite Sets_

Note that for everya∈A, ifa /∈Rthena ∈A 1 ⊆X. Thus, ifa ∈Y then
a∈R, sog− 1(a)is defined. Therefore this definition makes sense.
We will show thathis one-to-one and onto, which will establish thatA∼B.
To see thathis one-to-one, supposea 1 ∈A,a 2 ∈A, andh(a 1 )= h(a 2 ).
Case 1.a 1 ∈X. Supposea 2 ∈Y. Then according to the definition ofh,
h(a 1 ) = f (a 1 )andh(a 2 ) = g− 1(a 2 ). Thus, the equationh(a 1 ) = h(a 2 )
means² f (a 1 )= g− 1(a 2 ), sog(f (a 1 ))= g(g− 1(a 2 )) = a 2. Sincea 1 ∈X =

n∈Z+An, we can choose somen ∈Z+ such thata^1 ∈An. But thena^2 =
g(f (a 1 ))∈g(f (An))= An+ 1, soa 2 ∈X, contradicting our assumption that
a 2 ∈Y.
Thus,a 2 ∈/ Y, soa 2 ∈X. This means thath(a 2 )= f (a 2 ), so from the
equationh(a 1 )= h(a 2 )we getf (a 1 )= f (a 2 ). Butf is one-to-one, so it
follows thata 1 = a 2.
Case 2.a 1 ∈Y. As in case 1, ifa 2 ∈X, then we can derive a contradiction,
so we must havea 2 ∈Y. Thus, the equationh(a 1 )= h(a 2 )meansg− 1(a 1 )=
g− 1(a 2 ). Therefore,a 1 = g(g− 1(a 1 ))= g(g− 1(a 2 ))= a 2.
In both cases we havea 1 = a 2 , sohis one-to-one.
To see thathis onto, supposeb∈B. Theng(b) ∈A, so eitherg(b) ∈Xor
g(b) ∈Y.
Case 1.g(b) ∈ X. Choosen such thatg(b) ∈ An. Note thatg(b) ∈
Ran(g) = R and A 1 = A \ R, sog(b) /∈ A 1. Thus, n > 1, so
An= g(f (An− 1)), and therefore we can choose somea ∈An− 1such that
g(f (a)) = g(b). But then sincegis one-to-one,f (a)= b. Sincea∈An− 1,
a∈X, soh(a) = f (a)= b. Thus,b∈Ran(h).
Case 2.g(b) ∈Y. Thenh(g(b)) = g− 1(g(b)) = b, sob∈Ran(h).
In both cases we haveb∈Ran(h), sohis onto. ±
The Cantor-Schr ̈oder-Bernstein theorem is often useful for showing that
sets are equinumerous. For example, in exercise 3 of Section 8.1 you were
asked to show that(0, 1]∼(0, 1), where

```
(0, 1] = {x∈R| 0< x≤ 1}
```
and

```
(0, 1)= {x∈R| 0< x <1}.
```
It is surprisingly difficult to find a one-to-one correspondence between these
two sets, but it is easy to show that they are equinumerous using the Cantor-
Schr ̈oder-Bernstein theorem. Of course,(0, 1) ⊆ (0, 1], so clearly(0, 1) ²
(0, 1]. For the other direction, definef : (0, 1] → (0, 1)by the formula
f (x)=x/2. It is easy to check that this function is one-to-one (although it is


```
The Cantor-Schr ̈ oder-Bernstein Theorem 393
```
not onto), so(0, 1]²(0, 1). Thus, by the Cantor-Schr ̈oder-Bernstein theorem,
(0, 1]∼(0, 1). For more on this example see exercise 9.
Our next theorem gives a more surprising consequence of the Cantor-Schr ̈o-
der-Bernstein theorem.

**Theorem 8. 3. 3.** R∼P(Z+)_._

It is quite difficult to prove Theorem 8.3.3 directly by giving an example
of a one-to-one, onto function fromRtoP(Z+). In our proof we’ll use the
Cantor-Schr ̈oder-Bernstein theorem and the following lemma.

**Lemma 8. 3. 4.** _Suppose_ x _and_ y _are real numbers and_ x < y_. Then there is a
rational number_ q _such that_ x < q < y_._

_Proof._ Letkbe a positive integer larger than 1/(y−x). Then 1/k < y−x. We
will show that there is a fraction with denominatorkthat is betweenxandy.
Letm andn be integers such thatm < x < n, and letS = {j ∈N |
m+j/k > x}. Note thatm+k(n−m)/k = n > x, and thereforek(n−m)∈S.
ThusS±= ∅, so by the well-ordering principle it has a smallest element. Letj
be the smallest element ofS. Note also thatm+ 0/k = m < x, so 0∈/S, and
thereforej >0. Thus,j − 1 is a natural number, but sincej is the smallest
element ofS,j− 1∈/S. It follows thatm+(j− 1)/k ≤ x.
Letq= m+ j/k. Clearlyqis a rational number, and sincej ∈S,q =
m+ j/k > x. Also, combining the observations thatm+(j− 1)/k ≤ xand
1 /k < y−x, we have

```
q= m+
```
```
j
k
```
```
= m+
```
```
j− 1
k
```
### +

### 1

```
k
```
```
< x+ (y−x)= y.
```
Thus, we havex < q < y, as required. ±

_Proof of Theorem 8.3.3._ As we noted earlier, we already know thatP(Z+)²
R. Now consider the functionf :R→P(Q)defined as follows:

```
f (x)= {q∈Q|q < x}.
```
We claim thatf is one-to-one. To see why, supposex∈R,y∈R, andx±= y.
Then eitherx < yory < x. Suppose first thatx < y. By Lemma 8.3.4, we
can choose a rational numberqsuch thatx < q < y. But thenq∈f (y)and
q ∈/ f (x), sof (x) ±= f (y). A similar argument shows that ify < xthen
f (x)±= f (y), sofis one-to-one.
Sincef is one-to-one, we have shown thatR²P(Q). But we also know
thatQ∼Z+, so by exercise 5 in Section 8.1 it follows thatP(Q)∼P(Z+).


394 _Infinite Sets_

Thus,R²P(Q)²P(Z+), so by transitivity of²(see exercise 1) we have
R²P(Z+). Combining this with the fact thatP(Z+)²Rand applying the
Cantor-Schr ̈oder-Bernstein theorem, we conclude thatR∼P(Z+). ±

We said at the beginning of this chapter that we would show that infinity
comes in different sizes. We now see that, so far, we have found only two
sizes of infinity. One size is represented by the denumerable sets, which are
all equinumerous with each other. The only examples of nondenumerable
infinite sets we have given so far areP(Z+)andR, which we now know
are equinumerous. In fact, there are many more sizes of infinity. For example,
P(R)is an infinite set that is neither denumerable nor equinumerous withR.
Thus, it represents a third size of infinity. For more on this see exercise 8.
BecauseZ+ ≺R, it is natural to think of the set of real numbers as _larger_
than the set of positive integers. In 1878, Cantor asked whether there was a
size of infinity between these two sizes. More precisely, is there a setXsuch
thatZ+ ≺ X ≺ R? Cantor conjectured that the answer was no, but he was
unable to prove it. His conjecture is known as the _continuum hypothesis_. At
the Second International Congress of Mathematicians in 1900, David Hilbert
(1862–1943) gave a famous lecture in which he listed what he believed to be
the most important unsolved mathematical problems of the time, and the proof
or disproof of the continuum hypothesis was number one on his list.
The status of the continuum hypothesis was “resolved” in a remarkable way
by the work of Kurt G ̈odel (1906–1978) in 1939 and Paul Cohen (1934–2007)
in 1963. The resolution turns out to require even more careful analyses than we
have given in this book of both the notion of proof and the basic assumptions
underlying set theory. Once such analyses have been given, it is possible to
prove theorems about what can be proven and what cannot be proven. What
G ̈odel and Cohen proved was that, using the methods of mathematical proof
and set-theoretic assumptions accepted by most mathematicians today, it is
impossible to prove the continuum hypothesis, and it is also impossible to
disprove it!

```
Exercises
```
```
*1. Prove that²is reflexive and transitive. In other words:
(a) For every setA,A²A.
(b) For all setsA,B, andC, ifA²BandB²CthenA²C.
```
2. Prove that≺is irreflexive and transitive. In other words:
    (a) For every setA,A⊀A.
(b) For all setsA,B, andC, ifA≺B andB ≺CthenA≺C.


```
The Cantor-Schr ̈ oder-Bernstein Theorem 395
```
3. SupposeA⊆B ⊆CandA∼C. Prove thatB ∼C.
4. SupposeA²BandC²D.
    (a) Prove thatA×C²B×D.
    (b) Prove that ifAandCare disjoint andB andDare disjoint, then
       A∪C²B∪D.
    (c) Prove thatP(A) ²P(B).
*5. For the meaning of the notation used in this exercise, see exercise 23 of
Section 8.1. SupposeA²BandC²D.
(a) Prove that ifA±= ∅thenAC²BD.
(b) Is the assumption thatA±= ∅needed in part (a)?
6. (a) Prove that ifA²BandB is finite, thenAis finite and |A| ≤ |B|.
    (b) Prove that ifA≺B andB is finite, thenAis finite and |A|<|B|.
7. Prove that for every setA,A≺P(A). (Hint: See exercise 5 of Section
    8.2. Note that in particular, ifAis finite and |A| =nthen, as you showed
    in exercise 11 of Section 6.2, and again in exercise 6(c) of Section 8.2,
    |P(A)| = 2n. It follows, by exercise 6(b), that 2n > n. Of course,
    you already proved this, by a different method, in exercise 12(a) of
    Section 6.3.)
*8. LetA 1 = Z+, and for alln∈Z+letAn+ 1= P(An).
(a) Prove that for alln∈Z+andm∈Z+, ifn < mthenAn≺Am.
(b) The setsAn, forn∈Z+, represent infinitely many sizes of infinity.
Are there any more sizes of infinity? In other words, can you think
of an infinite set that is not equinumerous withAnfor anyn∈Z+?
9. The proof of the Cantor-Schr ̈oder-Bernstein theorem gives a method for
    constructing a one-to-one and onto functionh :A → B from one-to-
    one functionsf :A → B andg :B → A. Use this method to find a
    one-to-one, onto functionh :(0, 1] → (0, 1). Start with the functions
    f :(0, 1] →(0, 1)andg:(0, 1)→(0, 1] given by the formulas:

```
f (x)=
```
```
x
2
```
```
, g(x)= x.
```
*10. LetE= {R|Ris an equivalence relation onZ+}.
(a) Prove thatE²P(Z+).
(b) LetA= Z+\{1, 2}and letPbe the set of all partitions ofZ+. Define
f :P(A) → Pby the formulaf (X)= {X∪ {1},(A\ X)∪ {2}}.
Prove thatf is one-to-one.
(c) Prove thatE∼P(Z+).

11. LetT = {R|Ris a total order onZ+}. Prove thatT ∼P(Z+). (Hint:
    Imitate the solution to exercise 10.)


396 _Infinite Sets_

12. (a) Prove that ifAhas at least two elements andA× A ∼ A then
    P(A)×P(A)∼P(A).
(b) Prove thatR×R∼R.
13. An _interval_ is a setI ⊆Rwith the property that for all real numbersx,
    y, andz, ifx ∈I,z ∈I, andx < y < z, theny ∈I. An interval
    is _nondegenerate_ if it contains at least two different real numbers.
    SupposeFis a set of nondegenerate intervals andFis pairwise disjoint.
    Prove thatFis countable. (Hint: By Lemma 8.3.4, every nondegenerate
    interval contains a rational number.)
*14. For the meaning of the notation used in this exercise, see exercise 23 of
Section 8.1.
(a) Prove thatRR∼P(R).
(b) Prove thatQR∼R.
(c) (For readers who have studied calculus.) LetC = {f ∈RR | f
is continuous}. Prove thatC∼R. (Hint: Show that iff andgare
continuous functions and∀x∈Q(f (x)= g(x)), thenf = g.)


## Appendix

## Appendix: Solutions to Selected Exercises

```
Introduction
```
1. (a) One possible answer is 32,767 = 31 · 1057.
    (b) One possible answer isx= 2^31 − 1 = 2,147,483,647.
3. (a) The method yields the prime number 211.
    (b) The method yields two primes, 3 and 37.

```
Chapter 1
```
```
Section 1.1
```
1. (a)(R∨H)∧ ¬(H ∧T ), whereRstands for the statement “We’ll have a
    reading assignment,”H stands for “We’ll have homework problems,”
    andT stands for “We’ll have a test.”
(b) ¬G∨(G∧ ¬S), whereGstands for “You’ll go skiing,” andSstands
for “There will be snow.”
(c) ¬[(

### √

### 7 < 2 )∨(

### √

### 7 = 2)].

6. (a) I won’t buy the pants without the shirt.
    (b) I won’t buy the pants and I won’t buy the shirt.
       (c) Either I won’t buy the pants or I won’t buy the shirt.

```
Section 1.2
```
1. (a) P Q ¬P∨Q
    F F T
    F T T
    T F F
    T T T

```
397
```

398 _Appendix_

```
(b) S G (S∨G)∧(¬S∨ ¬G)
F F F
F T T
T F T
T T F
```
5. (a) P Q P ↓Q
    F F T
    F T F
    T F F
    T T F
(b) ¬(P ∨Q).
(c) ¬P is equivalent toP ↓P,P∨Qis equivalent to(P ↓Q)↓(P ↓
Q), andP∧Qis equivalent to(P ↓P )↓(Q↓Q).
7. (a) and (c) are valid; (b) and (d) are invalid.
9. (a) is neither a contradiction nor a tautology; (b) is a contradiction; (c) and
    (d) are tautologies.
11. (a)P ∨Q.
(b) P.
(c) ¬P∨Q.
14. We use the associative law for∧twice:

```
[P∧(Q∧R)]∧Sis equivalent to [(P ∧Q)∧R]∧S
which is equivalent to(P ∧Q)∧(R∧S).
```
16.P ∨ ¬Q.

```
Section 1.3
```
1. (a) D( 6 )∧D( 9 )∧D( 15 ), whereD(x) means “xis divisible by 3.”
    (b) D(x, 2)∧D(x, 3)∧ ¬D(x, 4), whereD(x,y) means “xis divisible
       byy.”
    (c) N(x) ∧N(y) ∧[(P (x)∧ ¬P (y)) ∨(P (y)∧ ¬P (x))], whereN(x)
       means “xis a natural number” andP (x)means “xis prime.”
3. (a) {x|xis a planet}.
    (b) {x|xis an Ivy League school}.
    (c) {x|xis a state in the United States}.
    (d) {x|xis a province or territory in Canada}.
5. (a) (− 3∈R)∧(13 − 2(− 3) > 1 ). Bound variables:x; no free variables.
    This statement is true.
    (b) ( 4 ∈R)∧( 4 < 0 )∧(13 − 2( 4 ) > 1 ). Bound variables:x; no free
       variables. This statement is false.


```
Appendix 399
(c) ¬[( 5 ∈R)∧(13 − 2( 5 ) > c)]. Bound variables:x; free variables:c.
```
8. (a) {x | Elizabeth Taylor was once married tox} = {Conrad Hilton Jr.,
    Michael Wilding, Michael Todd, Eddie Fisher, Richard Burton, John
    Warner, Larry Fortensky}.
(b) {x|xis a logical connective studied in Section 1.1} = {∧,∨,¬}.
(c) {x|xis the author of this book} = {Daniel J. Velleman}.

```
Section 1.4
```
1. (a) {3, 12}.

```
(b) {1, 12, 20, 35}.
(c) {1, 3, 12, 20, 35}.
The sets in parts (a) and (b) are both subsets of the set in part (c).
```
4. (a) Both Venn diagrams look like this:

### U A B

```
(b) Both Venn diagrams look like this:
```
### U A B

### C

9. Sets (a), (d), and (e) are equal, and sets (b) and (c) are equal.
12. (a) There is no region corresponding to the set(A∩D)\(B ∪C), but
this set could have elements.


400 _Appendix_

```
(b) Here is one possibility:
U
A B
```
### C

### D

14. The Venn diagrams for both sets look like this:

```
U A B
```
### C

```
Section 1.5
```
1. (a) (S ∨ ¬E) → ¬H, whereS stands for “This gas has an unpleasant
    smell,”E stands for “This gas is explosive,” andH stands for “This
    gas is hydrogen.”
(b) (F ∧H) → D, whereF stands for “George has a fever,”H stands
for “George has a headache,” andDstands for “George will go to the
doctor.”
(c)(F →D)∧(H → D), where the letters have the same meanings as
in part (b).
(d) (x ±= 2)→(P (x) →O(x)), whereP (x)stands for “xis prime” and
O(x) stands for “xis odd.”
4. (a) and (b) are valid, but (c) is invalid.
7. (a) Either make a truth table, or reason as follows:

```
(P →R)∧(Q→R)is equivalent to(¬P∨R)∧(¬Q∨R)
which is equivalent to(¬P∧ ¬Q)∨R
which is equivalent to ¬(P ∨Q)∨R
which is equivalent to(P ∨Q)→R
(b) (P →R)∨(Q →R)is equivalent to(P ∧Q)→R.
```
9. ¬(P → ¬Q).


```
Appendix 401
Chapter 2
```
```
Section 2.1
```
1. (a)∀x[∃yF(x,y) →S(x)], whereF(x,y)stands for “xhas forgiveny,”
    andS(x) stands for “xis a saint.”
(b) ¬∃x[C(x)∧ ∀y(D(y) →S(x,y))], whereC(x) stands for “xis in the
calculus class,”D(y) stands for “yis in the discrete math class,” and
S(x,y)stands for “xis smarter thany.”
(c)∀x(¬(x = m) → L(x,m)), whereL(x,y)stands for “xlikesy,” and
mstands for Mary.
(d) ∃x(P (x) ∧S(j,x))∧ ∃y(P (y)∧S(r,y)), whereP (x)stands for “xis
a police officer,”S(x,y)stands for “xsawy,”jstands for Jane, andr
stands for Roger.
(e)∃x(P (x)∧S(j,x)∧S(r,x)), where the letters have the same meanings
as in part (d).
4. (a) All unmarried men are unhappy.

```
(b) yis a sister of one ofx’s parents; i.e.,yisx’s blood aunt.
```
8. (a), (d), and (e) are true; (b), (c), and (f) are false.

```
Section 2.2
```
1. (a) ∃x[M(x) ∧ ∀y(F(x,y) → ¬H(y))], whereM(x) stands for “xis
    majoring in math,” F(x,y) stands for “x andy are friends,” and
    H(y) stands for “yneeds help with his or her homework.” In English:
    There is a math major all of whose friends don’t need help with their
    homework.
(b) ∃x∀y(R(x,y) → ∃zL(y,z)), whereR(x,y)stands for “xandyare
roommates” andL(y,z)stands for “ylikesz.” In English: There is
someone all of whose roommates like at least one person.
(c) ∃x[(x ∈A∨x∈B)∧(x ∈/C∨x∈D)].
(d) ∀x∃y[y > x∧ ∀z(z^2 + 5z±= y)].
4. Hint: Begin by replacingP (x)with ¬P (x)in the first quantifier negation
    law, to get the fact that ¬∃x¬P (x)is equivalent to∀x¬¬P (x).
6. Hint: Begin by showing that ∃x(P (x) ∨Q(x)) is equivalent to
    ¬∀x¬(P (x)∨Q(x)).


402 _Appendix_

```
8.(∀x∈A P (x))∧(∀x∈B P (x))
is equivalent to∀x(x ∈A→P (x))∧ ∀x(x ∈B →P (x))
which is equivalent to∀x[(x∈A→P (x))∧(x ∈B →P (x))]
which is equivalent to∀x[(x ∈/A∨P (x))∧(x ∈/B ∨P (x))]
which is equivalent to∀x[(x ∈/A∧x ∈/B)∨P (x)]
which is equivalent to∀x[¬(x∈A∨x∈B)∨P (x)]
which is equivalent to∀x[x ∈/(A∪B)∨P (x)]
which is equivalent to∀x[x∈(A∪B)→P (x)]
which is equivalent to∀x∈(A∪B) P (x).
```
11.A\B= ∅is equivalent to ¬∃x(x ∈A∧x ∈/B)
which is equivalent to∀x¬(x∈A∧x ∈/B)
which is equivalent to∀x(x /∈A∨x∈B)
which is equivalent to∀x(x ∈A→x∈B)
which is equivalent toA⊆B.
14.A∩B = ∅is equivalent to ¬∃x(x ∈A∧x∈B)
which is equivalent to∀x¬(x∈A∧x∈B)
which is equivalent to∀x(x /∈A∨x ∈/B)
which is equivalent to∀x(x ∈A→x ∈/B)
which is equivalent to∀x((x /∈B∧x∈A)↔x∈A)
(by Section 1.5 exercise 11(b))
which is equivalent to∀x(x ∈A\B ↔x∈A)
which is equivalent toA\ B= A.

```
Section 2.3
```
1. (a)∀x(x ∈F→ ∀y(y ∈x→y∈A)).
    (b) ∀x(x ∈A→ ∃n∈N(x= 2n+ 1)).
       (c)∀n∈N∃m∈N(n^2 + n+ 1 = 2m+ 1).
    (d) ∃x(∀y(y ∈x→ ∃i∈I(y ∈Ai))∧ ∀i∈I∃y(y ∈x∧y ∈/Ai)).
4.

### ±

```
F= {red, blue} and
```
### ²

```
F= {red, green, blue, orange, purple}.
```
8. (a)A 2 = {2, 4},A 3 = {3, 6},B 2 = {2, 3},B 3 = {3, 4}.
    (b)

### ±

```
i∈I(Ai∪Bi)= {3, 4}and(
```
### ±

```
i∈IAi)∪(
```
### ±

```
i∈IBi)= {3}.
(c) They are not equivalent.
```
12. One example isA= {1, 2} andB = {2, 3}.
14. (a)B 3 = {1, 2, 3, 4, 5}andB 4 = {1, 2, 4, 5, 6}.
    (b)

### ±

```
j∈JBj= {1, 2, 4, 5}.
(c)
```
### ²

```
i∈I(
```
### ±

```
j∈JAi,j)= {1, 2, 4}. This is not equal to the set in part (b).
(d) x ∈
```
### ±

```
j∈J(
```
### ²

```
² i∈IAi,j)means∀j ∈ J∃i ∈I(x ∈Ai,j)andx ∈
i∈I(
```
### ±

```
j∈JAi,j)means∃i ∈I∀j ∈ J(x ∈Ai,j). They are not
equivalent.
```

```
Appendix 403
Chapter 3
```
```
Section 3.1
```
1. (a) Hypotheses: n is an integer larger than 1 and n is not prime.
    Conclusion: 2n− 1 is not prime. The hypotheses are true whenn= 6,
    so the theorem tells us that 2^6 − 1 is not prime. This is correct, since
    26 − 1 = 63 = 9 · 7.
(b) We can conclude that 32767 is not prime. This is correct, since
32767 = 151 ·217.
(c) The theorem tells us nothing; 11 is prime, so the hypotheses are not
satisfied.
4. Suppose 0 < a < b. Thenb− a > 0. Multiplying both sides by the
    positive numberb+a, we get(b+a)·(b− a) > (b+a)· 0, or in other
    wordsb^2 −a^2 >0. Sinceb^2 −a^2 >0, it follows thata^2 < b^2. Therefore
    if 0< a < bthena^2 < b^2.
8. We will prove the contrapositive. Supposex /∈B. Then sincex ∈A, it
    follows thatx ∈A\B. But we also know thatA\ B ⊆C∩D, so we
    can conclude thatx∈C∩D, and thereforex∈D. Thus, ifx /∈Dthen
    x∈B.
10. Hint: Addbto both sides of the inequalitya < b.
12. We will prove the contrapositive. Supposec≤ d. Multiplying both sides
of this inequality by the positive numbera, we getac ≤ ad. Also,
multiplying both sides of the given inequalitya < b by the positive
numberdgives usad < bd. Combiningac ≤ ad andad < bd, we
can conclude thatac < bd. Thus, ifac ≥ bdthenc > d.
15. Sincex > 3 > 0, by the theorem in Example 3.2.1,x^2 > 9. Also,
multiplying both sides of the given inequalityy <2 by − 2 (and reversing
the direction of the inequality, since − 2 is negative) we get − 2y >− 4.
Finally, adding the inequalitiesx^2 >9 and− 2y >− 4 gives usx^2 − 2y >5.

```
Section 3.2
```
1. (a) SupposeP. SinceP →Q, it follows thatQ. But then, sinceQ→R,
    we can concludeR. Thus,P →R.
(b) SupposeP. To prove thatQ→ R, we will prove the contrapositive,
so suppose ¬R. Since ¬R→(P → ¬Q), it follows thatP → ¬Q,
and since we knowP, we can conclude ¬Q. Thus,Q→R, soP →
(Q→R).
5. Supposex∈A\Bandx∈B\C. Sincex∈A\B,x∈Aandx /∈B, and
    sincex∈B\C,x∈B andx /∈C. But now we havex ∈Bandx /∈B,


404 _Appendix_

```
which is a contradiction. Therefore it cannot be the case thatx∈A\B
andx∈B\C.
```
6. Supposea∈A\B. This means thata∈Aanda /∈B. Sincea∈Aand
    a∈C,a∈A∩C. But then sinceA∩C⊆B, it follows thata∈B, and
    this contradicts the fact thata /∈B. Thus,a /∈A\B.
9. Hint: Assumea < 1 /a < b < 1 /b. Now prove thata <1, then use this
    fact to prove thata <0, and then use this fact to prove thata <− 1.
12. (a) The sentence “Thenx= 3 andy= 8” is incorrect. (Why?)
(b) One counterexample isx= 3,y= 7.
15. P Q R P →(Q→R) ¬R→(P → ¬Q)
F F F T T
F F T T T
F T F T T
F T T T T
T F F T T
T F T T T
T T F F F
T T T T T

```
Section 3.3
```
1. Suppose∃x(P (x) → Q(x)). Then we can choose somex 0 such that
    P (x 0 )→Q(x 0 ). Now suppose that∀xP (x). Then in particular,P (x 0 ),
    and sinceP (x 0 )→ Q(x 0 ), it follows thatQ(x 0 ). Since we have found a
    particular value ofxfor whichQ(x) holds, we can conclude that∃xQ(x).
    Thus∀xP (x) → ∃xQ(x).
3. Suppose thatA ⊆ B \ C, butA andCare not disjoint. Then we can
    choose somexsuch thatx∈Aandx∈C. Sincex∈AandA⊆B \C,
    it follows thatx∈B\C, which means thatx∈Bandx /∈C. But now we
    have bothx∈Candx /∈C, which is a contradiction. Thus, ifA⊆B\C
    thenAandCare disjoint.
7. Supposex > 2. Let y = (x +

### √

```
x^2 − 4)/2, which is defined since
x^2 − 4>0. Then
```
```
y+^1
y
```
```
= x+
```
### √

```
x^2 − 4
2
```
### +^2

```
x+
```
### √

```
x^2 − 4
```
```
=^2 x
```
(^2) + 2x√x (^2) − 4
2 (x+

### √

```
x^2 − 4)
```
```
= x.
```
9. SupposeFis a family of sets andA ∈F. Supposex ∈

### ±

```
F. Then by
the definition of
```
### ±

```
F, sincex∈
```
### ±

```
FandA∈F,x ∈A. Butxwas an
arbitrary element of
```
### ±

```
F, so it follows that
```
### ±

### F⊆A.

12. Hint: AssumeF⊆Gand letxbe an arbitrary element of

### ²

```
F. You must
prove thatx ∈
```
### ²

```
G, which means∃A ∈G(x ∈A), so you should try
```

```
Appendix 405
to find someA ∈Gsuch thatx ∈A. To do this, write out the givens in
logical notation. You will find that one of them is a universal statement,
and one is existential. Apply existential instantiation to the existential one.
```
14. Supposex ∈

### ²

```
i∈IP(Ai). Then we can choose somei ∈I such that
x ∈ P(Ai), or in other wordsx ⊆ Ai. Now leta be an arbitrary
element ofx. Thena ∈Ai, and thereforea ∈
```
### ²

```
i∈IAi. Sinceawas
an arbitrary element ofx, it follows thatx⊆
```
### ²

```
i∈IAi, which means that
x∈P(
```
### ²

```
i∈IAi). Thus
```
### ²

```
i∈IP(Ai)⊆P(
```
### ²

```
i∈IAi).
```
17. Hint: The last hypothesis means∀A ∈F∀B ∈G(A ⊆B), so if in the
    course of the proof you ever come across setsA ∈FandB ∈G, you
    can conclude thatA ⊆ B. Start the proof by lettingx be arbitrary and
    assumingx ∈

### ²

```
F, and prove thatx ∈
```
### ±

```
G. To see where to go from
there, write these statements in logical symbols.
```
20. The sentence “Then for every real numberx,x^2 <0” is incorrect. (Why?)
22. Based on the logical form of the statement to be proven, the proof should
    have this outline:

```
Letx=.. ..
Letybe an arbitrary real number.
[Proof ofxy^2 = y−xgoes here.]
Sinceywas arbitrary,∀y∈R(xy^2 = y− x).
Thus,∃x∈R∀y∈R(xy^2 = y− x).
```
```
This outline makes it clear thatyshould be introduced into the proof
after x. Therefore,xcannot be defined in terms ofy, becauseywill not
yet have been introduced into the proof whenxis being defined. But in the
given proof,xis defined in terms ofyin the first sentence. (The mistake
has been disguised by the fact that the sentence “Letybe an arbitrary real
number” has been left out of the proof. If you try to add this sentence to
the proof, you will find that there is nowhere it could be added that would
lead to a correct proof of the incorrect theorem.)
```
25. Here is the beginning of the proof: Letxbe an arbitrary real number. Let
    y= 2x. Now letzbe an arbitrary real number. Then....

```
Section 3.4
```
1. (→)Suppose∀x(P (x)∧Q(x)). Letybe arbitrary. Then since∀x(P (x)∧
    Q(x)),P (y)∧Q(y), and so in particularP (y). Sinceywas arbitrary, this
    shows that∀xP (x). A similar argument proves∀xQ(x): for arbitraryy,
    P (y)∧Q(y), and thereforeQ(y). Thus,∀xP (x) ∧ ∀xQ(x).


406 _Appendix_

```
(←) Suppose ∀xP (x) ∧ ∀xQ(x). Let y be arbitrary. Then since
∀xP (x),P (y), and similarly since∀xQ(x),Q(y). Thus,P (y)∧Q(y),
and sinceywas arbitrary, it follows that∀x(P (x) ∧Q(x)).
```
4. Suppose thatA ⊆B andA ±C. SinceA ±C, we can choose some
    a∈Asuch thata /∈C. Sincea∈AandA⊆B,a∈B. Sincea∈B and
    a /∈C,B±C.
7. LetAandB be arbitrary sets. Letxbe arbitrary, and suppose thatx ∈
    P(A∩B). Thenx ⊆A∩B. Now letybe an arbitrary element ofx.
    Then sincex ⊆A∩B,y ∈A∩B, and thereforey∈A. Sinceywas
    arbitrary, this shows thatx⊆A, sox∈P(A). A similar argument shows
    thatx⊆B, and thereforex∈P(B). Thus,x∈P(A)∩P(B).
       Now suppose thatx∈P(A)∩P(B). Thenx∈P(A)andx∈P(B),
    sox⊆Aandx⊆B. Suppose thaty∈x. Then sincex⊆Aandx⊆B,
    y∈Aandy∈B, soy∈A∩B. Thus,x⊆A∩B, sox∈P(A∩B).
9. Suppose thatxandyare odd. Then we can choose integersjandksuch
    thatx= 2j+ 1 andy= 2k+ 1. Thereforexy = ( 2 j+ 1)( 2 k+ 1)=
    4 jk+ 2j+ 2k+ 1 = 2( 2 jk+j+k)+ 1. Since 2jk+j+kis an integer,
    it follows thatxy is odd.
13. Hint: Letx ∈Rbe arbitrary, and prove both directions of the bicondi-
tional separately. For the “→” direction, use existential instantiation and
proof by contradiction. For the “←” direction, assume thatx ±= 1 and
then solve the equationx+y= xyforyin order to decide what value to
choose fory.
16. Suppose that

### ²

```
Fand
```
### ±

```
Gare not disjoint. Then we can choose somex
such thatx∈
```
### ²

```
Fandx∈
```
### ±

```
G. Sincex∈
```
### ²

```
F, we can choose some
A ∈Fsuch thatx ∈A. Since we are given that every element ofF
is disjoint from some element ofG, there must be someB ∈Gsuch that
A∩B= ∅. Sincex∈A, it follows thatx /∈B. But we also havex∈
```
### ±

### G

```
andB ∈G, from which it follows thatx∈B, which is a contradiction.
Thus,
```
### ²

```
Fand
```
### ±

```
Gmust be disjoint.
```
18. (a) Supposex∈

### ²

```
(F∩G). Then we can choose someA∈F∩Gsuch
thatx∈A. SinceA∈F∩G,A∈FandA∈G. Sincex∈Aand
A∈F,x ∈
```
### ²

```
F, and similarly sincex ∈AandA ∈G,x ∈
```
### ²

### G.

```
Therefore,x∈(
```
### ²

### F)∩(

### ²

```
² G). Sincexwas arbitrary, this shows that
(F∩G)⊆(
```
### ²

### F)∩(

### ²

### G).

```
(b) The sentence “Thus, we can choose a setAsuch thatA∈F,A∈G,
andx∈A” is incorrect. (Why?)
(c) One example isF= {{1}, {2}},G= {{1}, {1, 2}}.
```
22. Suppose that

### ²

### F ±

### ²

```
G. Then there is somex∈
```
### ²

```
² Fsuch thatx /∈
G. Sincex∈
```
### ²

```
F, we can choose someA∈Fsuch thatx∈A. Now
```

```
Appendix 407
letB∈Gbe arbitrary. IfA⊆B, then sincex∈A,x∈B. But then since
x∈B andB ∈G,x ∈
```
### ²

```
G, which we already know is false. Therefore
A ±B. SinceB was arbitrary, this shows that for allB ∈G,A ±B.
Thus, we have shown that there is someA ∈Fsuch that for allB ∈G,
A±B.
```
24. (a) Supposex ∈

### ²

```
i∈l(Ai\ Bi). Then we can choose somei ∈I such
thatx∈Ai\ Bi, which meansx∈Aiandx ∈/Bi. Sincex ∈Ai,
x∈
```
### ²

```
i∈lAi, and sincex^ ∈/Bi,x^ ∈/
```
### ±

```
i∈lBi. Thus,x∈(
```
### ²

```
i∈lAi)\
(
```
### ±

```
i∈lBi).
(b) One example isI = {1, 2},A 1 = B 1 = {1},A 2 = B 2 = {2}.
```
```
Section 3.5
```
1. Supposex∈A∩(B∪C). Thenx∈A, and eitherx∈Borx∈C.
    Case 1.x∈B. Then sincex∈A,x∈A∩B, sox∈(A∩B)∪C.
    Case 2.x∈C. Then clearlyx∈(A∩B)∪C.
    Sincexwas arbitrary, we can conclude thatA∩(B∪C)⊆(A∩B)∪C.
5. Supposex∈A. We now consider two cases:
    Case 1.x∈C. Thenx∈A∩C, so sinceA∩C⊆B∩C,x∈B ∩C,
and thereforex∈B.
Case 2.x ∈/ C. Sincex ∈A,x ∈A∪C, so sinceA∪C ⊆B ∪C,
x∈B∪C. Butx ∈/C, so we must havex∈B.
Thus,x∈B, and sincexwas arbitrary,A⊆B.
8. Hint: Assumex ∈P(A)∪P(B), which means that eitherx ∈P(A)
    orx∈P(B). Treat these as two separate cases. In case 1, assumex ∈
    P(A), which meansx ⊆ A, and provex ∈P(A∪B), which means
    x⊆A∪B. Case 2 is similar.
12. Letxbe an arbitrary real number.
(←) Suppose |x− 4|>2.
Case 1.x− 4 ≥ 0. Then |x− 4| = x− 4, so we havex− 4> 2,
    and thereforex > 6. Addingxto both sides gives us 2x > 6 +x, so
    2 x− 6> x. Sincex >6, this implies that 2x− 6 is positive, so |2x− 6| =
    2 x− 6> x.
       Case 2.x− 4<0. Then |x− 4| = 4 −x, so we have 4 − x >2, and
    thereforex < 2. Therefore 3x <6, and subtracting 2xfrom both sides
    we getx <6 − 2x. Also, fromx <2 we get 2x <4, so 2x− 6<− 2.
    Therefore 2x− 6 is negative, so |2x− 6| = 6 − 2x > x.
       (→)Hint: Imitate the “←” direction, using the cases 2x− 6 ≥ 0 and
    2 x− 6<0.


408 _Appendix_

16. (a) Supposex∈

### ²

```
(F∪G). Then we can choose someA∈F∪Gsuch
thatx∈A. SinceA∈F∪G, eitherA∈ForA∈G.
Case 1.A ∈F. Sincex ∈AandA ∈ F,x ∈
```
### ²

```
F, sox ∈
(
```
### ²

### F)∪(

### ²

### G).

```
Case 2.A ∈G. Sincex ∈A and A ∈G,x ∈
```
### ²

```
G, sox ∈
(
```
### ²

### F)∪(

### ²

### G).

```
Thus,x∈(
```
### ²

### F)∪(

### ²

### G).

```
Now suppose thatx∈(
```
### ²

### F)∪(

### ²

```
G). Then eitherx ∈
```
### ²

```
For
x∈
```
### ²

### G.

```
Case 1.x ∈
```
### ²

```
F. Then we can choose someA ∈F such that
x ∈A. SinceA ∈F,A ∈F∪G, so sincex ∈A, it follows that
x∈
```
### ²

### (F∪G).

```
Case 2.x∈
```
### ²

```
G. A similar argument shows thatx∈
```
### ²

### (F∪G).

```
Thus,x∈
```
### ²

### (F∪G).

```
(b) The theorem is:
```
### ±

### (F∪G)=(

### ±

### F)∩(

### ±

### G).

20.(→)Suppose thatA² BandCare disjoint. Letxbe an arbitrary element
ofA∩C. Thenx ∈A andx ∈C. Ifx ∈/ B, then sincex ∈A,x ∈
A\B, and thereforex∈A² B. But alsox∈C, so this contradicts our
assumption thatA² B andCare disjoint. Thereforex ∈B. Since we
also knowx∈C, we havex∈B∩C. Sincexwas an arbitrary element
ofA∩C, this shows thatA∩C⊆B∩C. A similar argument shows that
B∩C⊆A∩C.
(←) Suppose thatA∩C= B∩C. Suppose thatA² BandCare not
disjoint. Then we can choose somexsuch thatx ∈A² B andx ∈C.
Sincex∈A² B, eitherx∈A\Borx∈B\A.
Case 1.x∈A\B. Thenx∈Aandx ∈/B. Since we also knowx∈C,
we can conclude thatx∈A∩Cbutx ∈/B∩C. This contradicts the fact
thatA∩C= B∩C.
Case 2.x∈B\A. Similarly, this leads to a contradiction.
Thus we can conclude thatA² B andCare disjoint.

23. (a) Hint: Supposex ∈ A \ C, and then break the proof into cases,
    depending on whether or notx∈B.
(b) Hint: Apply part (a).
24. (a) Supposex ∈(A∪B)² C. Then eitherx ∈(A ∪B)\ C orx ∈
    C\(A∪B).
       Case 1.x∈(A∪B)\ C. Then eitherx∈Aorx∈B, andx ∈/C.
    We now break case 1 into two subcases, depending on whetherx∈A
    orx∈B:
       Case 1a.x∈A. Thenx∈A\C, sox∈A² C, sox∈(A² C)∪
    (B² C).


```
Appendix 409
Case 1b.x∈B. Similarly,x∈B² C, sox∈(A² C)∪(B ² C).
Case 2.x∈C\(A∪B). Thenx∈C,x ∈/A, andx ∈/B. It follows
thatx∈A² Candx∈B² C, so certainlyx∈(A² C)∪(B ² C).
(b) Here is one example:A= {1},B= {2},C= {1, 2}.
```
27. The proof is incorrect, because it only establishes that either 0 < xor
    x <6, but what must be proven is that 0< xandx <6. However, it can
    be fixed.
29. The proof is correct.
31. Hint: Here is a counterexample to the theorem:A = { 1, 2},B = {1},
    C= {2}.

```
Section 3.6
```
1. Letxbe an arbitrary real number. Lety= x/(x^2 + 1). Then

```
x−y= x−
```
```
x
x^2 + 1=
```
```
x^3 +x
x^2 + 1−
```
```
x
x^2 + 1=
```
```
x^3
x^2 + 1= x
```
(^2) · x
x^2 + 1= x
(^2) y.
To see thatyis unique, suppose thatx^2 z= x−z. Thenz(x^2 + 1)= x,
and sincex^2 + 1 ±= 0, we can divide both sides byx^2 + 1 to conclude that
z= x/(x^2 + 1)= y.

4. Supposex±= 0. Lety= 1/x. Now letzbe an arbitrary real number. Then
    zy= z( 1 /x)= z/x, as required.
       To see thaty is unique, suppose thaty³is a number with the property
    that∀z ∈ R(zy³ = z/x). Then in particular, takingz = 1, we have
    y³= 1/x, soy³= y.
6. (a) LetA = ∅∈P(U). Then clearly for anyB ∈P(U),A∪B =
    ∅∪B =B.
       To see thatAis unique, suppose thatA³∈P(U) and for allB ∈
    P(U),A³∪B = B. Then in particular, takingB = ∅, we can
    conclude thatA³∪∅= ∅. But clearlyA³∪∅= A³, so we have
    A³= ∅= A.
(b) Hint: LetA= U.
11. Existence: We are given that for everyG⊆F,

### ²

```
G∈F, so in particular,
sinceF ⊆F,
```
### ²

```
F∈F. LetA=
```
### ²

```
F. Now supposeB ∈F. Then by
exercise 8 of Section 3.3,B ⊆
```
### ²

```
F= A, as required.
Uniqueness: Suppose thatA 1 ∈F,A 2 ∈F,∀B ∈F(B ⊆A 1 ), and
∀B ∈F(B ⊆A 2 ). Applying this last fact withB = A 1 we can conclude
thatA 1 ⊆A 2 , and similarly the previous fact implies thatA 2 ⊆A 1. Thus
A 1 =A 2.
```

410 _Appendix_

```
Section 3.7
```
1. Hint: Comparing (b) to exercise 16 of Section 3.3 may give you an idea
    of what to use forA.
5. SupposeP(

### ²

```
i∈lAi)⊆
```
### ²

```
i∈lP(Ai). It is clear that
```
### ²

```
i∈lAi⊆
```
### ²

```
i∈lAi,
so
```
### ²

```
i∈lAi∈P(
```
### ²

```
i∈lAi)and therefore
```
### ²

```
i∈lAi∈
```
### ²

```
i∈lP(Ai). By the
definition of the union of a family, this means that there is somei ∈I
such that
```
### ²

```
i∈lAi⊆Ai. Now letj ∈Ibe arbitrary. Then by exercise 8
in Section 3.3,Aj⊆
```
### ²

```
i∈lAi, soAj⊆Ai.
```
8. Suppose that limx→cf (x)= L > 0. Let± = L. Then by the definition
    of limit, we can choose someδ >0 such that for allx, if 0<|x−c|< δ
    then |f (x)− L| < ± = L. Now letx be an arbitrary real number and
    suppose 0<|x− c|< δ. Then |f (x)− L|< L, so −L < f (x)−L < L
    and therefore 0 < f (x) < 2 L. Therefore, for every real numberx, if
    0 <|x− c|< δthenf (x) >0.
10. The proof is correct.

```
Chapter 4
```
```
Section 4.1
```
1. (a) {(x,y)∈P×P|xis a parent ofy}={(Bill Clinton, Chelsea Clinton),
    (Goldie Hawn, Kate Hudson),.. .}.
(b) {(x,y)∈C×U | there is someone who lives inxand attendsy}. If
you are a university student, then letxbe the city you live in, and let
ybe the university you attend;(x,y)will then be an element of this
truth set.
4.A×(B ∩C)= (A×B)∩(A× C)= {(1, 4),(2, 4),(3, 4)},
    A×(B∪C)= (A×B)∪(A×C)= {(1, 1),(2, 1),(3, 1),(1, 3),(2, 3),
       (3, 3),(1, 4),(2, 4),(3, 4)},
    (A×B)∩(C× D)= (A∩C)×(B∩D)= ∅,
    (A×B)∪(C×D)= {(1, 1),(2, 1),(3, 1),(1, 4),(2, 4),(3, 4),(3, 5),(4, 5)},
    (A∪C)×(B ∪D)= {(1, 1),(2, 1),(3, 1),(4, 1),(1, 4),(2, 4),(3, 4),(4, 4),
       (1, 5),(2, 5),(3, 5),(4, 5)}.
6. The cases are not exhaustive.
8. Yes, it is true.
10. Suppose(x,y)∈(A\ C)×(B \D). Thenx∈A\Candy∈B \D,
which meansx ∈A,x ∈/ C,y ∈B, andy ∈/ D. Sincex ∈A and
y ∈B,(x,y) ∈A× B. And sincex ∈/C,(x,y) ∈/ C× D. Therefore
(x,y)∈(A×B)\(C×D).


```
Appendix 411
```
15. The theorem is incorrect. Counterexample:A = {1},B = C = D = ∅.
    Notice thatA±C. Where is the mistake in the proof thatA⊆C?

```
Section 4.2
```
1. (a) Domain = {p∈P |phas a living child}; Range = {p∈P |phas a
    living parent}.
(b) Domain = R; Range =R+.
5. (a) {(1, 4),(1, 5),(1, 6),(2, 4),(3, 6)}.
    (b) {(4, 4),(5, 5),(5, 6),(6, 5),(6, 6)}.
8. E◦E⊆F.
11. We prove the contrapositives of both directions.

```
(→)Suppose Ran(R) and Dom(S) are not disjoint. Then we can
choose someb∈Ran(R)∩ Dom(S). Sinceb∈Ran(R), we can choose
somea∈Asuch that(a,b) ∈R. Similarly, sinceb∈Dom(S), we can
choose somec ∈Csuch that(b,c) ∈S. But then(a,c) ∈S◦R, so
S◦R±= ∅.
(←) SupposeS◦R±= ∅. Then we can choose some(a,c)∈S◦R. By
the definition ofS◦R, this means that we can choose someb∈B such
that(a,b) ∈Rand(b,c)∈S. But thenb∈Ran(R) andb∈Dom(S), so
Ran(R) and Dom(S)are not disjoint.
```
```
Section 4.3
1.
```
### 3.

5. S◦R= {(a,y),(a,z),(b,x),(c,y),(c,z)}.
7. (→)SupposeRis reflexive. Let(x,y)be an arbitrary element ofiA. Then
    by the definition ofiA,x= y∈A. SinceRis reflexive,(x,y)= (x,x)∈
    R. Since(x,y)was arbitrary, this shows thatiA⊆R.


412 _Appendix_

```
(←) SupposeiA ⊆R. Letx ∈Abe arbitrary. Then(x,x) ∈iA, so
sinceiA ⊆ R,(x,x) ∈R. Sincexwas arbitrary, this shows that R is
reflexive.
```
10. Suppose(x,y)∈iD. Thenx= y∈D= Dom(S), so there is somez∈A
    such that(x,z)∈S. Therefore(z,x)∈S− 1, so(x,y)= (x,x)∈S− 1◦S.
    Thus,iD⊆S− 1◦S. The proof of the other statement is similar.
13. (a) Yes. To prove it, supposeR 1 andR 2 are reflexive, and supposea∈A.
    SinceR 1 is reflexive,(a,a)∈R 1 , so(a,a)∈R 1 ∪R 2.
(b) Yes. To prove it, suppose R 1 andR 2 are symmetric, and suppose
(x,y) ∈R 1 ∪R 2. Then either(x,y)∈R 1 or(x,y)∈R 2. If(x,y) ∈
R 1 then sinceR 1 is symmetric,(y,x) ∈R 1 , so(y,x) ∈R 1 ∪R 2.
Similar reasoning shows that if(x,y)∈R 2 then(y,x)∈R 1 ∪R 2.
    (c) No. Counterexample:A= {1, 2, 3},R 1 = {(1, 2)},R 2 = {(2, 3)}.
17. First note that by part 2 of Theorem 4.3.4, sinceRandSare symmetric,
    R= R− 1andS = S− 1. Therefore

```
R◦Sis symmetric iffR◦S= (R◦S)− 1 (Theorem 4.3.4, part 2)
iffR◦S= S− 1◦R− 1 (Theorem 4.2.5, part 5)
iffR◦S= S◦R.
```
20. SupposeRis transitive, and suppose(X,Y )∈Sand(Y,Z)∈S. To prove
    that(X,Z)∈S we must show that∀x∈X∀z ∈Z(xRz), so letx ∈X
    andz∈Zbe arbitrary. SinceY ∈B,Y ±= ∅, so we can choosey ∈Y.
    Since(X,Y )∈Sand(Y,Z)∈S, by the definition ofSwe havexRy and
    yRz. But then sinceRis transitive,xRz, as required. The empty set had
    to be excluded fromBso that we could come up withy∈Y in this proof.
    (Can you find a counterexample if the empty set is not excluded?)
23. Hint: SupposeaRb andbRc. To proveaRc, suppose thatX ⊆A\ {a,c}
    andX∪ {a} ∈F; you must prove thatX∪ {c} ∈F. To do this, you may
    find it helpful to consider two cases:b /∈X orb∈X. In the second of
    these cases, try working with the setsX³= (X∪ {a})\ {b} andX³³=
    (X∪ {c})\ {b}.

```
Section 4.4
```
1. (a) Partial order, but not total order.
    (b) Not a partial order.
       (c) Partial order, but not total order.
4.(→)Suppose thatRis both antisymmetric and symmetric. Suppose that
    (x,y) ∈ R. Then sinceR is symmetric,(y,x) ∈ R, and sinceR is


```
Appendix 413
antisymmetric, it follows thatx = y. Therefore(x,y) ∈iA. Since(x,y)
was arbitrary, this shows thatR⊆iA.
(←) Suppose thatR ⊆iA. Suppose(x,y) ∈R. Then(x,y) ∈iA, so
x= y, and therefore(y,x)= (x,y)∈R. This shows thatRis symmetric.
To see thatRis antisymmetric, suppose that(x,y)∈Rand(y,x) ∈R
Then(x,y)∈iA, sox= y.
```
8. To see thatT is reflexive, consider an arbitrary(a,b) ∈A× B. Since
    RandS are both reflexive, we haveaRa andbSb. By the definition of
    T, it follows that(a,b)T (a,b). To see thatT is antisymmetric, suppose
    that(a,b)T (a³,b³)and (a³,b³)T (a,b). ThenaRa³anda³Ra, so since
    R is antisymmetric, a = a³. Similarly, bSb³ and b³Sb, so since S
    is antisymmetric, we also have b = b³. Thus (a,b) = (a³,b³), as
    required. Finally, to see thatT is transitive, suppose that(a,b)T (a³,b³)
    and(a³,b³)T (a³³,b³³). ThenaRa³and a³Ra³³, so sinceR is transitive,
    aRa³³. Similarly,bSb³andb³Sb³³, sobSb³³, and therefore(a,b)T (a³³,b³³).
       Even if bothRandSare total orders,T need not be a total order.
11. The minimal elements ofB are the prime numbers.B has no smallest
element.
14. (a) bis theR-largest element ofB
iffb∈Band∀x∈B(xRb)
iffb∈Band∀x∈B(bR− 1x)
iffbis theR− 1-smallest element ofB.
(b) bis anR-maximal element ofB
iffb∈Band ¬∃x∈B(bRx ∧b±= x)
iffb∈Band ¬∃x∈B(xR − 1b∧x±= b)
iffbis anR− 1-minimal element ofB.
17. No. LetA = R× R, and letR = {((x,y),(x³,y³)) ∈A× A | x≤ x³
andy ≤ y³}. (You might want to compare this to exercise 8.) LetB =
{(0, 0)} ∪({1} ×R). We will leave it to you to check thatRis a partial
order onA, and that(0, 0)is the only minimal element ofB, but it is not
a smallest element.
21. (a) Suppose thatx∈U andxRy. To prove thaty ∈U, we must show
thatyis an upper bound forB, so suppose thatb∈B. Sincex∈U,
xis an upper bound forB, sobRx. But we also havexRy, so by the
transitivity ofRwe can conclude thatbRy. Sincebwas arbitrary, this
shows thatyis an upper bound forB.
(b) Supposeb∈B. To prove thatbis a lower bound forU, letxbe an
arbitrary element ofU. Then by the definition ofU,xis an upper
bound forB, sobRx. Sincex was arbitrary, this shows thatbis a
lower bound forU.


414 _Appendix_

```
(c) Hint: Supposexis the greatest lower bound ofU. First use part (b) to
show thatxis an upper bound forB, and thereforex∈U. Then use
the fact thatxis a lower bound forUto show thatxis the smallest
element ofU– in other words, it is the least upper bound ofB.
```
24. (a) Suppose(x,y) ∈S. Then either(x,y) ∈ Ror (x,y) ∈R− 1. If
    (x,y) ∈R, then(y,x) ∈R− 1, so(y,x) ∈S. If(x,y) ∈R− 1, then
    (y,x) ∈R, so(y,x) ∈S. ThereforeS is symmetric. SinceS =
    R∪R− 1, it is clear thatR⊆S.
(b) SupposeT is a symmetric relation onAandR ⊆ T. To show that
S⊆T, let(x,y)be an arbitrary element ofS. Then either(x,y)∈R
or(x,y) ∈R− 1. If(x,y) ∈R, then sinceR ⊆ T,(x,y) ∈T. If
(x,y) ∈R− 1, then(y,x)∈R, so sinceR⊆T,(y,x)∈T. ButT is
symmetric, so it follows that(x,y)∈T.
27. (a) First, note thatR 1 ⊆RandR 2 ⊆R. It follows, by exercise 26, that
    S 1 ⊆SandS 2 ⊆S, soS 1 ∪S 2 ⊆S. For the other direction, note that
    R= R 1 ∪R 2 ⊆S 1 ∪S 2 , and by exercise 13(b) of Section 4.3,S 1 ∪S 2
    is symmetric. Therefore, by exercise 24(b),S⊆S 1 ∪S 2.
(b) Imitating the first half of the proof in part (a), we can use exercise 26
to show thatT 1 ∪T 2 ⊆T. However, the answer to exercise 13(c) of
Section 4.3 was no, so we can’t imitate the second half of the proof.
In fact, the example given in the solution to exercise 13(c) works as
an example for whichT 1 ∪T 2 ±= T.

```
Section 4.5
```
1. Here is a list of all partitions:
    {{1, 2, 3}}
{{1, 2},{3}}
{{1, 3},{2}}
{{2, 3},{1}}
{{1}, {2}, {3}}
3. (a)Ris an equivalence relation. There are 26 equivalence classes – one
    for each letter of the alphabet. The equivalence classes are: the set of
    all words that start witha, the set of all words that start withb,... ,
    the set of all words that start withz.
(b) Sis not an equivalence relation, because it is not transitive.
(c)T is an equivalence relation. The equivalence classes are: the set of all
one-letter words, the set of all two-letter words, and so on. For every
positive integern, if there is at least one English word of lengthn,
then the set of all words of lengthnis an equivalence class.


```
Appendix 415
```
6. The assumption that is needed is that for every dated, someone was born
    on the dated. What would go wrong if, say, just by chance, no one was
    born on April 23? Where in the proof is this assumption used?
10. SinceSis the equivalence relation determined byF, the proof of Theorem
4.5.6 shows thatA/S = F = A/R. The desired conclusion now follows
from exercise 9.
13. See Lemma 7.3.4.
16. By exercise 16(a) of Section 3.5,

### ²

### (F∪G)= (

### ²

### F)∪(

### ²

```
G)= A∪B. To
see thatF∪Gis pairwise disjoint, suppose thatX∈F∪G,Y ∈F∪G,
andX∩Y ±= ∅. IfX ∈FandY ∈GthenX ⊆AandY ⊆B, and
sinceAandB are disjoint it follows thatXandY are disjoint, which is
a contradiction. Thus it cannot be the case thatX ∈FandY ∈G, and a
similar argument can be used to rule out the possibility thatX ∈Gand
Y ∈F. Thus,X andY are either both elements ofFor both elements
ofG. If they are both inF, then sinceFis pairwise disjoint,X = Y.
A similar argument applies if they are both inG. Finally, we have∀X ∈
F(X±= ∅)and∀X∈G(X ±= ∅), and it follows by exercise 8 of Section
2.2 that∀X∈F∪G(X ±= ∅).
```
20. (a) Here is the proof of transitivity: Suppose(x,y)∈T and(y,z)∈T.
    Then sinceT = R∩S,(x,y) ∈Rand(y,z) ∈R, so sinceR is
    transitive,(x,z)∈R. Similarly,(x,z)∈S, so(x,z)∈R∩S= T.
(b) Supposex∈A. Then for ally∈A,
y∈[x]Tiff(y,x)∈T iff(y,x)∈R∧(y,x)∈S
iffy∈[x]R∧y∈[x]Siffy∈[x]R∩[x]S.
(c) SupposeX∈A/T. Then sinceA/T is a partition,X±= ∅. Also, for
somex ∈A,X = [x]T = [x]R∩ [x]S, so since [x]R∈A/R and
[x]S∈A/S,X∈(A/R) ·(A/S).
Now suppose X ∈ (A/R) ·(A/S). Then for somey and z in
A, X = [y]R ∩ [z]S. Also,X ±= ∅, so we can choose some
x ∈ X. Thereforex ∈ [y]R and x ∈ [z]S, and by part 2 of
Lemma 4.5.5 it follows that [x]R= [y]Rand [x]S= [z]S. Therefore
X= [x]R∩[x]S= [x]T∈A/T.
22. F⊗F= {R+× R+,R−× R+,R− ×R−,R+ ×R−,R+× {0},R−×
    {0},{0} ×R+,{0} ×R−,{(0, 0)}}. In geometric terms these are the four
    quadrants of the plane, the positive and negativex-axes, the positive and
    negativey-axes, and the origin.
24. (a) Hint: LetT = {(X,Y)∈A/S ×A/S | ∃x∈X∃y∈Y(xRy)}.
    (b) Supposex,y,x³,y³ ∈A,xSx³, andySy³. Then [x]S = [x³]Sand
       [y]S= [y³]S, soxRy iff [x]ST[y]Siff [x³]ST[y³]Siffx³Ry³.


416 _Appendix_

```
Chapter 5
```
```
Section 5.1
```
1. (a) Yes.
    (b) No.
       (c) Yes.
3. (a)f (a)= b,f (b)= b,f (c)= a.
    (b) f ( 2 )= 0.
       (c)f (π)= 3 andf (−π) = − 4.
5.L◦H :N →N, and for everyn∈N,(L◦H )(n) = n. Thus,L◦H = iN.
    H ◦L:C→ C, and for everyc ∈C,(H ◦L)(c) = the capital of the
    country in whichcis located.
7. (a) Suppose thatc∈C. We must prove that there is a uniqueb∈Bsuch
    that(c,b)∈f ±C.
       Existence: Letb= f (c) ∈B. Then(c,b)∈f and(c,b) ∈C×B,
    and therefore(c,b) ∈f∩(C×B)= f ±C.
       Uniqueness: Suppose that(c,b 1 )∈f ±Cand(c,b 2 ) ∈f ±C.
    Then(c,b 1 )∈fand(c,b 2 )∈f, so sincef is a function,b 1 = b 2.
       This proves thatf ±Cis a function fromCtoB. Finally, to derive
    the formula for(f ±C)(c), suppose thatc ∈C, and letb= f (c).
    We showed in the existence half of the proof that(c,b) ∈f ±C. It
    follows that
       f (c)= b= (f ±C)(c).

```
(b) (→)Supposeg= f ±C. Theng= f ∩(C× B), so clearlyg⊆f.
(←) Supposeg ⊆ f. Supposec ∈ C, and letb = g(c). Then
(c,b) ∈g, so(c,b) ∈f, and thereforef (c) = b. But then by part
(a),(f ±C)(c) = f (c)= b=g(c). Sincecwas arbitrary, it follows
by Theorem 5.1.4 thatg= f ±C.
(c)h±Z= h∩(Z×R)= {(x,y)∈R×R|y= 2x+ 3} ∩(Z×R)=
{(x,y)∈Z×R|y= 2x+ 3} =g.
```
10. Sincef ±= g, by Theorem 5.1.4 we can choose somea ∈Asuch that
    f (a) ±= g(a). Therefore(a,f (a)) ∈f and(a,f (a)) /∈ g, so by the
    definition of symmetric difference, (a,f (a)) ∈ f ² g, and similarly
    (a,g(a)) ∈f ² g. Sincef (a) ±= g(a), it follows thatf ² gis not a
    function.
13. (a) Supposeb ∈B. Since Dom(S) = B, we know that there is some
    c∈Csuch that(b,c)∈S. To see that it is unique, suppose thatc³∈C
    and(b,c³)∈S. Since Ran(R) = B, we can choose somea∈Asuch


```
Appendix 417
that(a,b)∈R. But then(a,c)∈S◦Rand(a,c³)∈S◦R, and since
S◦Ris a function, it follows thatc=c³.
(b) A = {1},B = {2, 3},C = {4},R = {(1, 2), (1, 3)},S = {(2, 4),
(3, 4)}.
```
15. (a) No. Example:A= {1},B = {2, 3},f = {(1, 2)},R= {(1, 1)}.
    (b) Yes. Suppose R is symmetric. Suppose(x,y) ∈ S. Then we can
       choose someuandvinAsuch thatf (u)= x,f (v)= y, and(u,v)∈
       R. SinceRis symmetric,(v,u)∈R, and therefore(y,x)∈S.
    (c) No. Example:A= {1, 2, 3, 4},B = {5, 6, 7},f = {(1, 5),(2, 6),(3, 6),
       (4, 7)},R= {(1, 2),(3, 4)}.
19. (a) Leta= 3 andc= 8. Then for anyx > a= 3,

```
|f (x)| = | 7x+ 3| = 7x+ 3< 7 x+ x= 8x < 8 x^2 = c|g(x)|.
This shows thatf ∈O(g).
Now suppose thatg ∈O(f ). Then we can choosea ∈Z+ and
c ∈ R+ such that∀x > a(|g(x)| ≤ c|f (x)|), or in other words,
∀x > a(x^2 ≤ c( 7 x+ 3)). Letxbe any positive integer larger than
bothaand 10c. Multiplying both sides of the inequalityx > 10 c
byx, we can conclude thatx^2 > 10 cx. But sincex > a, we also
havex^2 ≤ c( 7 x+ 3)≤ c( 7 x+ 3x) = 10cx, so we have reached a
contradiction. Thereforeg /∈O(f ).
(b) Clearly for any functionf ∈F we have∀x ∈Z+(|f (x)| ≤ 1 ·
|f (x)|), sof ∈O(f ), and therefore(f,f )∈S. Thus,Sis reflexive.
To see that it is also transitive, suppose(f,g) ∈Sand(g,h) ∈S.
Then there are positive integersa 1 anda 2 and positive real numbersc 1
andc 2 such that∀x > a 1 (|f (x)| ≤ c 1 |g(x)|)and∀x > a 2 (|g(x)| ≤
c 2 |h(x)|). Letabe the maximum ofa 1 anda 2 , and letc= c 1 c 2. Then
for allx > a,
```
```
|f (x)| ≤ c 1 |g(x)| ≤ c 1 c 2 |h(x)| = c|h(x)|.
Thus,(f,h) ∈S, soS is transitive. Finally, to see thatS is not a
partial order, we show that it is not antisymmetric. Letf andgbe the
functions fromZ+toRdefined by the formulasf (x)= xandg(x) =
2 x. Then for allx ∈Z+,|f (x)| ≤ |g(x)| and |g(x)| ≤ 2|f (x)|, so
f ∈O(g) and alsog∈O(f ). Therefore(f,g)∈Sand(g,f )∈S,
butf ±= g.
(c) Sincef 1 ∈O(g), we can choosea 1 ∈Z+ andc 1 ∈R+ such that
∀x > a 1 (|f 1 (x)| ≤ c 1 |g(x)|). Similarly, sincef 2 ∈O(g) we can
choosea 2 ∈Z+andc 2 ∈R+such that∀x > a 2 (|f 2 (x)| ≤ c 2 |g(x)|).
Letabe the maximum ofa 1 anda 2 , and letc= |s|c 1 +|t|c 2 + 1. (We
```

418 _Appendix_

```
have added 1 here just to make sure thatcis positive, as required in
the definition ofO.) Then for allx > a,
```
```
|f (x)| = |sf 1 (x)+tf 2 (x)| ≤ |s||f 1 (x)| + |t||f 2 (x)|
≤ |s|c 1 |g(x)| + |t|c 2 |g(x)| = (|s|c 1 + |t|c 2 )|g(x)| ≤c|g(x)|.
```
```
Thereforef ∈O(g).
```
21. (a) Hint: Leth= {(X,y)∈A/R ×B | ∃x∈X(f (x) = y)}.
    (b) Hint: Use the fact that for allxandyinA, ifxRy then [x]R= [y]R.

```
Section 5.2
```
2. (a)f is not a function.
    (b) f is not a function.gis a function that is onto, but not one-to-one.
       (c)Ris one-to-one and onto.
5. (a) Suppose thatx 1 ∈A,x 2 ∈A, andf (x 1 ) = f (x 2 ). Then we can
    perform the following algebraic steps:
       x 1 + 1
       x 1 − 1

### =

```
x 2 + 1
x 2 − 1
```
### ,

```
(x 1 + 1)(x 2 − 1)= (x 2 + 1)(x 1 − 1),
x 1 x 2 − x 1 + x 2 − 1 = x 1 x 2 −x 2 +x 1 − 1,
2 x 2 = 2x 1 ,
x 2 = x 1.
```
```
This shows thatf is one-to-one.
To show thatfis onto, suppose thaty∈A. Let
```
```
x=
```
```
y+ 1
y− 1
```
### .

```
Notice that this is defined, sincey ±= 1, and also clearlyx±= 1, so
x∈A. Then
```
```
f (x)= x+ 1
x− 1
```
### =

```
y+ 1
y− 1+ 1
y+ 1
y− 1− 1
```
### =

```
2 y
y− 1
2
y− 1
```
```
=y.
```
```
(b) For anyx∈A,
```
```
(f ◦f )(x) =
```
```
x+ 1
x− 1+ 1
x+ 1
x− 1− 1
```
### =

```
2 x
x− 1
2
x− 1
```
```
= x= iA(x).
```
9. (a) {1, 2, 3, 4}.
    (b) f is onto, but not one-to-one.


```
Appendix 419
```
13. (a) Suppose thatf is one-to-one. Suppose thatc 1 ∈ C,c 2 ∈C, and
    (f ±C)(c 1 )= (f ±C)(c 2 ). By exercise 7(a) of Section 5.1, it follows
    thatf (c 1 )= f (c 2 ), so sincefis one-to-one,c 1 = c 2.
(b) Suppose thatf ±Cis onto. Supposeb∈B. Then sincef ±C is
onto, we can choose somec∈Csuch that(f ±C)(c) = b. But then
c∈A, and by exercise 7(a) of Section 5.1,f (c)= b.
(c) LetA= B = RandC= R+. For (a), usef (x)= |x|, and for (b),
usef (x)= x.
17. (a) SupposeRis reflexive andf is onto. Letx∈Bbe arbitrary. Sincef
    is onto, we can choose someu∈Asuch thatf (u) = x. SinceRis
    reflexive,(u,u)∈R. Therefore(x,x)∈S.
(b) SupposeRis transitive andf is one-to-one. Suppose that(x,y) ∈S
and(y,z) ∈S. Since(x,y) ∈S, we can choose someuandvin
Asuch thatf (u) = x,f (v) = y, and(u,v) ∈R. Similarly, since
(y,z)∈Swe can choosepandqinAsuch thatf (p)= y,f (q)= z,
and(p,q)∈R. Sincef (v)= y= f (p)andf is one-to-one,v= p.
Therefore(v,q)= (p,q)∈R. Since we also have(u,v)∈R, by the
transitivity ofRit follows that(u,q)∈R, so(x,z)∈S.
20. (a) Letb∈B be arbitrary. Sincef is onto, we can choose somea∈A
    such thatf (a)= b. Thereforeg(b) = (g◦f )(a)= (h◦f )(a)= h(b).
    Sincebwas arbitrary, this shows that∀b∈B(g(b) = h(b)), sog= h.
(b) Letc 1 andc 2 be two distinct elements ofC. Supposeb ∈B. Let
gandh be functions fromB toC such that∀x ∈B(g(x) = c 1 ),
∀x∈B\ {b}(h(x) = c 1 ), andh(b) = c 2. (Formally,g= B × {c 1 }
andh= [(B\{b})×{c 1 }]∪{(b,c 2 )}.) Theng±= h, so by assumption
g◦f ±= h◦f, and therefore we can choose somea ∈Asuch that
g(f (a)) ±= h(f (a)). But by the waygandhwere defined, the only
x∈B for whichg(x) ±= h(x) isx= b, so it follows thatf (a) = b.
Sincebwas arbitrary, this shows thatf is onto.

```
Section 5.3
```
1. R− 1(p) = the person sitting immediately to the right ofp.
3. Letg(x) = ( 3 x− 5)/2. Then for anyx∈R,

```
f (g(x)) =^2 (^3 x− 5)/2 + 5
3
```
```
=^3 x− 5 + 5
3
```
```
=^3 x
3
```
```
= x
```
```
and
```
```
g(f (x)) =
```
```
3 ( 2 x+ 5)/3 − 5
2
```
### =

```
2 x+ 5 − 5
2
```
### =

```
2 x
2
```
```
= x.
```

420 _Appendix_

```
Thereforef◦g= iRandg◦f =iR, and by Theorems 5.3.4 and 5.3.5 it
follows thatf is one-to-one and onto andf− 1=g.
5.f− 1(x) = 2 − logx.
```
9. Suppose thatf :A → B,g : B → A, andf ◦g = iB. Letbbe an
    arbitrary element ofB. Leta = g(b) ∈A. Thenf (a) = f (g(b)) =
    (f ◦g)(b) = iB(b)= b. Sincebwas arbitrary, this shows thatfis onto.
11. (a) Suppose thatf is one-to-one andf ◦g= iB. By part 2 of Theorem
5.3.3,f is also onto, sof− 1 :B → A andf− 1◦f = iA. This
gives us enough information to imitate the reasoning in the proof of
Theorem 5.3.5:
g= iA◦g= (f− 1◦f )◦g= f− 1◦(f ◦g)= f− 1◦iB= f− 1.
(b) Hint: Imitate the solution to part (a).
(c) Hint: Use parts (a) and (b), together with Theorem 5.3.3.
14. (a) Supposex ∈A³= Ran(g). Then we can choose someb∈B such
thatg(b) = x. Therefore(g◦f )(x)= g(f (g(b))) = g((f ◦g)(b)) =
g(iB(b)) = g(b) = x.
(b) By the given information,(f ±A³)◦g= iB, and by part (a),g◦(f ±
A³)= iA³. Therefore by Theorem 5.3.4,f ±A³is a one-to-one, onto
function fromA³toB, and by Theorem 5.3.5,g= (f ±A³)− 1.
16. Hint: Supposex ∈R. To determine whether or not x ∈Ran(f ), you
must see if you can find a real numberysuch thatf (y) = x. In other
words, you must try to solve the equation 4y− y^2 = xforyin terms of
x. Notice that this is similar to the method we used in part 1 of Example
5.3.6. However, in this case you will find that for some values ofxthere is
no solution fory, and for some values ofxthere is more than one solution
fory.
18. Sincegis one-to-one and onto,g− 1:C→ B. Leth = g− 1◦f. Then
h:A→Band
g◦h= g◦(g− 1◦f )
= (g◦g− 1)◦f (Theorem 4.2.5)
= iC◦f (Theorem 5.3.2)
= f (exercise 9 of Section 4.3).

```
Section 5.4
```
1. (a) No.
    (b) Yes.
       (c) Yes.
    (d) No.


```
Appendix 421
```
3. {−1, 0, 1, 2}.
7. SupposeC ⊆AandCis closed underf. Supposex∈A\C, sox ∈A
    andx ∈/ C. Thenf− 1(x) ∈A. Supposef− 1(x) ∈C. Then sinceCis
    closed underf,x= f (f− 1(x)) ∈C, which is a contradiction. Therefore
    f− 1(x) ∈/ C, sof− 1(x) ∈A\ C. Sincexwas an arbitrary element of
    A\C, this shows thatA\ Cis closed underf− 1.
9. (a) Supposex∈C 1 ∪C 2. Then eitherx∈C 1 orx∈C 2.
    Case 1.x ∈C 1. Then sinceC 1 is closed underf,f (x)∈C 1 , so
f (x)∈C 1 ∪C 2.
Case 2.x ∈C 2. Then sinceC 2 is closed underf,f (x)∈C 2 , so
f (x)∈C 1 ∪C 2.
Thereforef (x)∈C 1 ∪C 2. Sincexwas arbitrary, we can conclude
thatC 1 ∪C 2 is closed underf.
(b) Yes. Proof: Supposex ∈C 1 ∩C 2. Thenx∈C 1 andx∈C 2. Since
x∈C 1 andC 1 is closed underf,f (x)∈C 1. Similarly,f (x)∈C 2.
Thereforef (x)∈C 1 ∩C 2 , so sincexwas arbitrary,C 1 ∩C 2 is closed
underf.
    (c) No. Here is a counterexample:A= {1, 2},f = {(1, 2),(2, 2)},C 1 =
       {1, 2},C 2 = {2}.
12. (a) Z.

```
(b) {X⊆N|Xis finite}.
```
14. Z.
17. (a) Yes.

```
(b) Yes.
(c) Yes.
(d) No. (The composition of two strictly decreasing functions is strictly
increasing.)
```
20. (b) and (e) are closed underf.

```
Chapter 6
```
```
Section 6.1
```
1. Base case: Whenn= 0, both sides of the equation are 0.
    Induction step: Suppose thatn∈Nand 0+ 1+ 2+· · ·+n= n(n+ 1)/2.
Then


422 _Appendix_

```
0 + 1 + 2 + · · · +(n+ 1)= (0 + 1 + 2 + · · · +n)+(n+ 1)
```
```
=
```
```
n(n + 1)
2
```
```
+ (n+ 1)
```
```
= (n+ 1)
```
```
³n
2
```
### + 1

### ́

### =

```
(n+ 1)(n+ 2)
2
```
### ,

```
as required.
```
3. Base case: Whenn= 0, both sides of the equation are 0.
    Induction step: Supposen ∈ Nand 0^3 + 1^3 + 2^3 + · · · + n^3 =
[n(n + 1)/2]^2. Then
03 + 1^3 + 2^3 + · · · +(n+ 1)^3 =

### ³

```
03 + 1^3 + 2^3 + · · · +n^3
```
### ́

```
+(n+ 1)^3
```
### =

```
μ
n(n + 1)
2
```
### ¶ 2

```
+(n+ 1)^3
```
```
= (n+ 1)^2
```
```
μ
n^2
4
```
```
+ n+ 1
```
### ¶

```
= (n+ 1)^2 ·
```
```
n^2 + 4n+ 4
4
```
```
=
```
```
μ
(n+ 1)(n+ 2)
2
```
### ¶ 2

### .

7. Hint: The formula is( 3 n+ 1− 1)/2.
10. Base case: Whenn= 0, 9n− 8n− 1 = 0 = 64 ·0, so 64 |( 9 n− 8n− 1).
Induction step: Suppose thatn∈Nand 64 |( 9 n− 8n− 1). Then there
is some integerksuch that 9n− 8n− 1 = 64k. Therefore
9 n+ 1− 8(n+ 1)− 1 = 9n+ 1− 8n− 9
= 9n+ 1− 72n− 9 + 64n
= 9( 9 n− 8n− 1)+ 64n
= 9( 64 k)+ 64n
= 64( 9 k+n),
so 64 |( 9 n+ 1− 8(n+ 1)− 1).
12. (a) Base case: Whenn= 0, 7n− 5n= 0 = 2 ·0, so 7n− 5nis even.
Induction step: Supposen∈Nand 7n− 5nis even. Then there is
some integerksuch that 7n− 5n= 2k. Therefore
7 n+ 1− 5n+ 1= 7 · 7n− 5 · 5n= 2 · 7n+ 5 ·( 7 n− 5n)
= 2 · 7n+ 5 · 2k= 2( 7 n+ 5k),
so 7n+ 1− 5n+ 1is even.


```
Appendix 423
(b) For the induction step, you might find it useful to complete the
following equation: 2 ·7n+ 1− 3·5n+ 1+ 1 = 2 ·7n− 3·5n+ 1+ ?.
```
15. Base case: Whenn= 10, 2n= 1024>1000 = n^3.
    Induction step: Supposen≥ 10 and 2n> n^3. Then
       2 n+ 1= 2 · 2n
          > 2 n^3 (inductive hypothesis)
          = n^3 +n^3
          ≥ n^3 + 10n^2 (sincen≥ 10)
          = n^3 + 3n^2 + 7n^2
          ≥ n^3 + 3n^2 + 70n (sincen≥ 10)
          = n^3 + 3n^2 + 3n+ 67n
          > n^3 + 3n^2 + 3n+ 1 = (n+ 1)^3.
20. (a) Base case: Whenn = 1, the statement to be proven is 0< a < b,
    which was given.
       Induction step: Suppose thatn≥ 1 and 0< an< bn. Multiplying
    this inequality by the positive numberawe get 0 < an+ 1 < abn,
    and multiplying the inequalitya < bby the positive numberbngives
    usabn< bn+ 1. Combining these inequalities, we can conclude that
    0 < an+ 1< bn+ 1.
(b) Hint: First note that n

### √

```
aand n
```
### √

```
bare both positive. (Fornodd, this
follows from exercise 19. Forn even, each ofa andbhas twonth
roots, one positive and one negative, but n
```
### √

```
aand n
```
### √

```
bare by definition
the positive roots.) Now use proof by contradiction, and apply part (a).
(c) Hint: The inequality to be proven can be rearranged to readan+ 1−
abn−ban+ bn+ 1>0. Now factor the left side of this inequality.
(d) Hint: Use mathematical induction. For the base case, use then = 1
case of part (c). For the induction step, multiply both sides of the
inductive hypothesis by(a+b)/2 and then apply part (c).
```
```
Section 6.2
```
1. (a) We must prove thatR³is reflexive (onA³), transitive, and antisym-
    metric. For the first, supposex∈A³. SinceRis reflexive (onA) and
    x∈A,(x,x)∈R, so(x,x)∈R∩(A³× A³)= R³. This shows that
    R³is reflexive.
       Next, suppose that(x,y) ∈R³and(y,z) ∈R³. Then(x,y) ∈R,
    (y,z) ∈R, andx,y,z ∈A³. SinceR is transitive,(x,z) ∈R, so
    (x,z)∈R∩(A³× A³)= R³. ThereforeR³is transitive.


424 _Appendix_

```
Finally, suppose that(x,y)∈R³and(y,x)∈R³. Then(x,y) ∈R
and(y,x) ∈ R, so sinceRis antisymmetric,x = y. ThusR³is
antisymmetric.
(b) To see thatT is reflexive, supposex ∈A. Ifx = a, then(x,x) =
(a,a)∈ {a} ×A⊆T. Ifx±=a, thenx∈A³, so sinceR³is reflexive,
(x,x) ∈R³⊆T³⊆T.
For transitivity, suppose that(x,y)∈T and(y,z)∈T. Ifx = a
then(x,z) = (a,z) ∈ {a} ×A ⊆ T. Now supposex ±= a. Then
(x,y) /∈ {a} ×A, so since(x,y) ∈T = T³∪({a} ×A) we must
have(x,y)∈T³. ButT³⊆A³× A³, soy∈A³and thereforey±= a.
Similar reasoning now shows that(y,z)∈T³. SinceT³is transitive,
it follows that(x,z)∈T³⊆T.
To show thatT is antisymmetric, suppose(x,y)∈T and(y,x) ∈
T. Ifx = a then(y,x) /∈T³, so(y,x) ∈ {a} ×A and therefore
y= a= x. Similarly, ify= athenx= y. Now supposex±= aand
y±= a. Then as in the proof of transitivity it follows that(x,y) ∈T³
and(y,x)∈T³, so by antisymmetry ofT³,x= y.
We now know thatTis a partial order. To see that it is total, suppose
x∈Aandy∈A. Ifx = athen(x,y)∈ {a} ×A⊆T. Similarly, if
y= athen(y,x)∈T. Now supposex±= aandy±= a. Thenx∈A³
andy ∈A³, so sinceT³is a total order, either(x,y) ∈T³⊆T or
(y,x) ∈T³⊆T.
Finally, to see thatR⊆T, suppose that(x,y)∈R. Ifx= athen
(x,y) ∈ {a}×A⊆T. Now supposex±= a. Ify= athen the fact that
(x,y) ∈Rwould contradict theR-minimality ofa. Thereforey±= a.
But then(x,y)∈R∩(A³× A³)= R³⊆T³⊆T.
```
4. (a) We will prove the statement:∀n≥ 1∀B ⊆A[B hasnelements →
    ∃x∈B∀y∈B((x,y)∈R◦R)]. We proceed by induction onn.
       Base case: Supposen = 1. IfB ⊆ A andB has one element,
    then for somex ∈B,B = {x}. SinceR is reflexive,(x,x) ∈R,
    and therefore(x,x) ∈R◦ R. Butx is the only element inB, so
    ∀y∈B((x,y)∈R◦R), as required.
       Induction step: Suppose thatn ≥ 1 and for everyB ⊆ A, ifB
    hasnelements then∃x∈B∀y ∈B((x,y) ∈R◦R). Now suppose
    thatB ⊆AandB hasn+ 1 elements. Choose someb∈B, and let
    B³= B\{b}. ThenB³⊆AandB³hasnelements, so by the inductive
    hypothesis there is somex ∈B³such that∀y∈B³((x,y)∈R◦R).
    We now consider two cases.
       Case 1:(x,b) ∈R◦R. Then∀y∈B((x,y)∈R◦R), so we are
    done.


```
Appendix 425
Case 2:(x,b) /∈ R◦R. In this case, we will prove that∀y ∈
B((b,y)∈R◦R). To do this, lety ∈B be arbitrary. Ify = b, then
sinceRis reflexive,(b,b) ∈R, and therefore(b,y)=(b,b) ∈R◦R.
Now supposey ±= b. Theny ∈B³, so by the choice ofxwe know
that(x,y)∈R◦R. This means that for somez∈A,(x,z)∈Rand
(z,y)∈R. We have(x,z)∈R, so if(z,b) ∈Rthen(x,b) ∈R◦R,
contrary to the assumption for this case. Therefore(z,b) /∈R, so
by the hypothesis onR,(b,z) ∈R. But then since(b,z) ∈Rand
(z,y)∈R, we have(b,y)∈R◦R, as required.
(b) Hint: LetA = B = the set of contestants and letR = {(x,y) ∈
A× A|xbeatsy} ∪iA. Now apply part (a).
```
8. (a) Letm = (a + b)/2, the arithmetic mean ofaandb, and letd =
    (a−b)/2. Then it is easy to check thatm+ d= aandm−d= b, so
       √
          ab =

### ·

```
(m+ d)(m − d)=
```
### ·

```
m^2 − d^2 ≤
```
### ·

```
m^2 = m= a+b
2
```
### .

```
(b) We use induction onn.
Base case:n= 1. This case is taken care of by part (a).
Induction step: Supposen≥ 1, and the arithmetic mean–geometric
mean inequality holds for lists of length 2n. Now leta 1 ,a 2 ,... ,a 2 n+ 1
be a list of 2n+ 1positive real numbers. Let
```
```
m 1 =
```
```
a 1 + a 2 + · · · + a 2 n
2 n
```
```
, m 2 =
```
```
a 2 n+ 1+a 2 n+ 2+ · · · + a 2 n+ 1
2 n
```
### .

```
Notice thata 1 +a 2 + · · · + a 2 n= m 12 n, and similarlya 2 n+ 1+a 2 n+ 2
+· · ·+a 2 n+ 1= m 22 n. Also, by the inductive hypothesis, we know that
m 1 ≥^2 √na 1 a 2 · · ·a 2 nandm 2 ≥^2 √na 2 n+ 1a 2 n+ 2· · ·a 2 n+ 1. Therefore
a 1 +a 2 + · · · +a 2 n+ 1
2 n+ 1
```
### =

```
m 12 n+m 22 n
2 n+ 1
```
### =

```
m 1 + m 2
2
```
### ≥

### √

```
m 1 m 2
```
```
≥
```
### ̧

```
2 √na 1 a 2 · · ·a 2 n 2 √na 2 n+ 1a 2 n+ 2· · ·a 2 n+ 1
```
```
=^2 n+ 1√a 1 a 2 · · ·a 2 n+ 1.
```
```
(c) We use induction onn.
Base case: Ifn = n 0 , then by assumption the arithmetic mean–
geometric mean inequality fails for some list of lengthn.
Induction step: Supposen≥ n 0 , and there are positive real numbers
a 1 ,a 2 ,... ,ansuch that
a 1 +a 2 + · · · +an
n <
```
```
√na 1 a 2 · · ·an.
```

426 _Appendix_

```
Letm = (a 1 + a 2 + · · · +an)/n, and letan+ 1= m. Then we have
m < n
```
### √

```
a 1 a 2 · · ·an, somn< a 1 a 2 · · ·an. Multiplying both sides of
this inequality bymgives usmn+ 1< a 1 a 2 · · ·anm = a 1 a 2 · · ·an+ 1,
som < n+ 1√a 1 a 2 · · ·an+ 1. But notice that we also havemn = a 1 +
a 2 + · · · + an, so
a 1 + · · · +an+ 1
n+ 1 =
```
```
mn+m
n+ 1 =
```
```
m(n+ 1)
n+ 1 = m <
```
```
n+ 1√a 1 a 2 · · ·an+ 1.
```
```
Thus, we have a list of lengthn+ 1 for which the arithmetic mean–
geometric mean inequality fails.
(d) Suppose that the arithmetic mean–geometric mean inequality fails for
some list of positive real numbers. Letn 0 be the length of this list, and
choose an integern≥ 1 such thatn 0 ≤ 2n. (In fact, we could just let
n = n 0 , as you will show in exercise 12(a) in Section 6.3.) Then by
part (b), the arithmetic mean–geometric mean inequality holds for all
lists of length 2n, but by part (c), it must fail for some list of length
2 n. This is a contradiction, so the inequality must always hold.
```
10. (a) Hint: Show that(a 1 b 1 + a 2 b 2 )−(a 1 b 2 +a 2 b 1 )≥ 0.
    (b) Use induction onn. For the induction step, assume the result holds
       for sequences of lengthn, and supposea 1 ≤ a 2 ≤ · · · ≤ an≤ an+ 1,
       b 1 ≤ b 2 ≤ · · · ≤ bn≤ bn+ 1, andf is a one-to-one, onto function
       from {1, 2,.. .,n+ 1} to itself. Now consider two cases. For case 1,
       assume thatf (n+ 1)= n+ 1, and use the inductive hypothesis to
       complete the proof. For case 2, assume thatf (n+ 1) < n+ 1. Find
       a one-to-one, onto functiongfrom {1, 2,.. .,n+ 1} to itself such that
       gis almost the same asf butg(n+ 1)= n+ 1, and show that

```
a 1 bf ( 1 )+ · · · +an+ 1bf (n+ 1)≤ a 1 bg( 1 )+ · · · +an+ 1bg(n+ 1)
≤ a 1 b 1 + · · · +an+ 1bn+ 1.
```
11. We proceed by induction onn.

```
Base case:n= 0. IfAhas 0 elements, thenA= ∅, soP(A) = {∅},
which has 1 = 2^0 elements.
Induction step: Suppose that for every setAwithnelements,P(A)has
2 nelements. Now suppose thatAhasn+ 1 elements. Letabe any element
ofA, and letA³= A\ {a}. ThenA³hasnelements, so by the inductive
hypothesisP(A³)has 2nelements. There are two kinds of subsets ofA:
those that containaas an element, and those that don’t. The subsets that
don’t containaare just the subsets ofA³, and there are 2nof these. Those
that do containaare the sets of the formX∪ {a}, whereX ∈P(A³), and
```

```
Appendix 427
there are also 2nof these, since there are 2npossible choices forX. Thus
the total number of elements ofP(A)is 2n+ 2n= 2n+ 1.
```
14. Base case:n= 1. One chord cuts the circle into two regions, and(n^2 +
    n+ 2)/2 = 2.
       Induction step: Suppose that whennchords are drawn, the circle is cut
    into(n^2 +n+ 2)/2 regions. When another chord is drawn, it will intersect
    each of the firstnchords exactly once. Therefore it will pass throughn+ 1
    regions, cutting each of those regions in two. (Each time it crosses one of
    the firstnchords, it passes from one region to another.) Therefore the
    number of regions after the next chord is drawn is

```
n^2 +n+ 2
2
```
```
+(n+ 1)=
```
```
n^2 + 3n+ 4
2
```
### =

```
(n+ 1)^2 +(n+ 1)+ 2
2
```
### ,

```
as required.
```
```
Section 6.3
```
1. Hint: The formula is
    ¹n

```
i= 1
```
### 1

```
i(i+ 1)
```
### =

```
n
n+ 1
```
### .

6. Base case:n= 1. Then
    ¹n

```
i= 1
```
### 1

```
i^2
```
### = 1 ≤ 1 = 2 −

### 1

```
n
```
### .

```
Induction step: Suppose that
¹n
```
```
i= 1
```
### 1

```
i^2
```
### ≤ 2 −

### 1

```
n
```
### .

```
Then
n¹+ 1
```
```
i= 1
```
### 1

```
i^2
```
### =

```
¹n
```
```
i= 1
```
### 1

```
i^2
```
### +

### 1

```
(n+ 1)^2
```
### ≤ 2 −

### 1

```
n
```
### +

### 1

```
(n+ 1)^2
```
```
= 2 −
```
```
n^2 +n+ 1
n(n+ 1)^2
```
### <2 −

```
n^2 +n
n(n + 1)^2
```
### = 2 −

### 1

```
n+ 1
```
### .

8. (a) We letmbe arbitrary and then prove by induction that for alln≥ m,
    Hn− Hm≥ (n−m)/n.
       Base case:n= m. ThenHn− Hm= 0 ≥ 0 = (n− m)/n.


428 _Appendix_

```
Induction step: Suppose thatn≥ mandHn− Hm≥ (n− m)/n.
Then
```
```
Hn+ 1−Hm= Hn+
```
### 1

```
n+ 1
```
```
−Hm≥
```
```
n−m
n
```
### +

### 1

```
n+ 1
≥
```
```
n− m
n+ 1
```
### +

### 1

```
n+ 1
```
### =

```
n+ 1 −m
n+ 1
```
### .

```
(b) Base case: Ifn= 0 thenH 2 n=H 1 = 1 ≥ 1 = 1 +n/2.
Induction step: Supposen≥ 0 andH 2 n≥ 1 + n/2. By part (a),
```
```
H 2 n+ 1− H 2 n≥^2
```
```
n+ 1− 2n
2 n+ 1
```
### =^1

### 2

### .

```
Therefore
```
```
H 2 n+ 1≥ H 2 n+
```
### 1

### 2

### ≥ 1 +

```
n
2
```
### +

### 1

### 2

### = 1 +

```
n+ 1
2
```
### .

```
(c) Since limn→∞(1+n/ 2 )= ∞ , by part (b) limn→∞ H 2 n= ∞. Clearly
theHn’s form an increasing sequence, so limn→∞ Hn= ∞.
```
12. (a) Hint: Try proving that 2n≥ n+ 1, from which the desired conclusion
    follows.
(b) Base case:n= 9. Thenn!= 362880 ≥ 262144 =( 2 n)^2.
Induction step: Suppose thatn≥ 9 andn! ≥ ( 2 n)^2. Then
(n+ 1)! =(n+ 1)·n! ≥(n+ 1)·( 2 n)^2 ≥ 10 · 2^2 n≥ 2^2 ·2^2 n
= 2^2 n+ 2= ( 2 n+ 1)^2.

```
(c) Base case:n= 0. Thenn!= 1 ≤ 1 = 2(n^2 ).
Induction step: Suppose thatn! ≤ 2(n
```
(^2) )

. Then
2 ((n+ 1)

(^2) )
= 2n
(^2) + 2n+ 1
= 2(n
(^2) )
· 2^2 n+ 1≥ 2(n
(^2) )
· 2n+ 1
> n! ·(n+ 1) (by inductive hypothesis and part (a))
= (n+ 1)!.

15. Base case:n= 0. Thenan= a 0 = 0 = 2^0 − 0 − 1 = 2n− n− 1.
    Induction step: Suppose thatn∈Nandan= 2n−n− 1. Then
    an+ 1= 2an+ n= 2( 2 n−n− 1)+ n
       = 2n+ 1− 2n− 2 +n= 2n+ 1−n− 2 = 2n+ 1−(n+ 1)− 1.
18. (a)

```
(n
0
```
### )

```
= n!/(0!n!)= 1 and
```
```
(n
n
```
### )

```
= n!/(n! 0!)= 1.
(b)
```
### º

```
n
k
```
### »

### +

### º

```
n
k− 1
```
### »

### =

```
n!
k!(n−k)!
```
### +

```
n!
(k− 1)!(n− k+ 1)!
= n!(n− k+ 1)
k!(n−k+ 1)!
```
```
+ n!k
k!(n−k+ 1)!
```
```
=
```
```
n!(n+ 1)
k!(n+ 1 −k)!
```
### =

### º

```
n+ 1
k
```
### »

### .


```
Appendix 429
(c) We follow the hint.
Base case:n= 0. SupposeAis a set with 0 elements. ThenA= ∅,
the only value ofkwe have to worry about isk= 0,P 0 (A) = {∅},
which has 1 element, and
```
### ( 0

```
0
```
### )

### = 1.

```
Induction step: Suppose the desired conclusion holds for sets with
nelements, andAis a set withn+ 1 elements. Letabe an element of
A, and letA³= A\ {a}, which is a set withnelements. Now suppose
0 ≤ k≤n+ 1. We consider three cases.
( Case 1:k = 0. ThenPk(A) = {∅}, which has 1 element, and
n+ 1
k
```
### )

### = 1.

```
( Case 2:k= n+ 1. ThenPk(A) = {A}, which has 1 element, and
n+ 1
k
```
### )

### = 1.

```
Case 3. 0 < k≤ n. There are two kinds ofk-element subsets of
A: those that containaas an element, and those that don’t. Thek-
element subsets that don’t containaare just thek-element subsets of
A³, and by the inductive hypothesis there are
```
```
(n
k
```
### )

```
of these. Those that
do containaare the sets of the formX∪ {a}, whereX∈Pk− 1(A³),
and by the inductive hypothesis there are
```
```
(n
k− 1
```
### )

```
of these, since this
is the number of possibilities forX. Therefore by part (b), the total
number ofk-element subsets ofAis
º
n
k
```
### »

### +

### º

```
n
k− 1
```
### »

### =

### º

```
n+ 1
k
```
### »

### .

(d) We letxandybe arbitrary and then prove the equation by induction
onn.
Base case:n= 0. Then both sides of the equation are equal to 1.
Induction step: We will make use of parts (a) and (b). Suppose that

```
(x+y)n=
```
```
¹n
```
```
k= 0
```
### º

```
n
k
```
### »

```
xn−kyk.
```
```
Then
```
```
(x+y)n+ 1= (x+y)(x +y)n
```
```
= (x+y)
```
```
¹n
```
```
k= 0
```
### º

```
n
k
```
### »

```
xn−kyk (inductive hypothesis)
```
```
= (x+y)
```
```
μº
n
0
```
### »

```
xn+
```
### º

```
n
1
```
### »

```
xn− 1y+
```
### º

```
n
2
```
### »

```
xn− 2y^2
```
### + · · · +

```
ºn
```
```
n
```
### »

```
yn
```
### ¶


430 _Appendix_

```
=
```
```
ºn
```
```
0
```
### »

```
xn+ 1+
```
```
ºn
```
```
0
```
### »

```
xny+
```
```
ºn
```
```
1
```
### »

```
xny+
```
```
ºn
```
```
1
```
### »

```
xn− 1y^2
```
### + · · · +

### º

```
n
n
```
### »

```
xyn+
```
### º

```
n
n
```
### »

```
yn+ 1
```
```
= xn+ 1+
```
```
μºn
```
```
0
```
### »

### +

```
ºn
```
```
1
```
### »¶

```
xny+
```
```
μºn
```
```
1
```
### »

### +

```
ºn
```
```
2
```
### »¶

```
xn− 1y^2
```
### + · · · +

```
μº
n
n− 1
```
### »

### +

### º

```
n
n
```
### »¶

```
xyn+ yn+ 1
```
### =

### º

```
n+ 1
0
```
### »

```
xn+ 1+
```
### º

```
n+ 1
1
```
### »

```
xny+
```
### º

```
n+ 1
2
```
### »

```
xn− 1y^2
```
### + · · · +

### º

```
n+ 1
n
```
### »

```
xyn+
```
### º

```
n+ 1
n+ 1
```
### »

```
yn+ 1
```
### =

```
n¹+ 1
```
```
k= 0
```
### º

```
n+ 1
k
```
### »

```
xn+ 1−kyk.
```
20. Hint: Surprisingly, it is easier to prove that for alln≥ 1, 0< an< 1 /2.

```
Section 6.4
```
1. (a)(→)Suppose that∀nQ(n). Letnbe arbitrary. ThenQ(n + 1)is true,
    which means∀k < n+ 1P (k). In particular, sincen < n+ 1,P (n)
    is true. Sincenwas arbitrary, this shows that∀nP (n).
       (←) Suppose that∀nP (n). Then for anyn, it is clearly true that
    ∀k < n P (k), which means thatQ(n) is true.
(b) Base case:n= 0. ThenQ(n) is the statement∀k < 0 P (k), which is
vacuously true.
Induction step: SupposeQ(n) is true. This means that∀k < n P (k)
is true, so by assumption, it follows thatP (n)is true. Therefore∀k <
n+ 1P (k)is true, which means thatQ(n+ 1)is true.
4. (a) Suppose

### √

```
6 is rational. LetS= {q∈Z+ | ∃p ∈Z+(p/q =
```
### √

### 6 )}.

```
ThenS±= ∅, so we can letqbe the smallest element ofS, and we can
choose a positive integerpsuch thatp/q =
```
### √

6. Thereforep^2 = 6q^2 ,
sop^2 is even, and hencepis even. This means thatp= 2p, for some
integerp. Thus 4p^2 = 6q^2 , so 2p^2 = 3q^2 and therefore 3q^2 is even.
It is easy to check that ifqis odd then 3q^2 is odd, soqmust be even,
which means thatq = 2q for some integerq. But then

### √

```
6 = p/q
andq < q, contradicting the fact thatqis the smallest element ofS.
(b) Suppose that
```
### √

### 2 +

### √

```
3 = p/q. Squaring both sides gives us 5 +
2
```
### √

```
6 = p^2 /q^2 , so
```
### √

```
6 = (p^2 − 5q^2 )/( 2 q^2 ), which contradicts part (a).
```
7. (a) We use ordinary induction onn.
    Base case:n= 0. Both sides of the equation are equal to 0.


```
Appendix 431
Induction step: Suppose that
```
```
∑n
i= 0Fi= Fn+ 2− 1. Then
n¹+ 1
```
```
i= 0
```
```
Fi=
```
```
¹n
```
```
i= 0
```
```
Fi+Fn+ 1=(Fn+ 2− 1)+Fn+ 1= Fn+ 3− 1.
```
```
(b) We use ordinary induction onn.
Base case:n= 0. Both sides of the equation are equal to 0.
Induction step. Suppose that
```
```
∑n
i= 0(Fi)^2 = FnFn+ 1. Then
n¹+ 1
```
```
i= 0
```
```
(Fi)^2 =
```
```
¹n
```
```
i= 0
```
```
(Fi)^2 +(Fn+ 1)^2 = FnFn+ 1+ (Fn+ 1)^2
```
```
= Fn+ 1(Fn+Fn+ 1)= Fn+ 1Fn+ 2.
```
```
(c) We use ordinary induction onn.
Base case:n= 0. Both sides of the equation are equal to 1.
Induction step: Suppose that
```
```
∑n
i= 0F^2 i+ 1= F^2 n+ 2. Then
n¹+ 1
```
```
i= 0
```
```
F 2 i+ 1=
```
```
¹n
```
```
i= 0
```
```
F 2 i+ 1+F 2 n+ 3= F 2 n+ 2+ F 2 n+ 3
```
```
= F 2 n+ 4=F 2 (n+ 1)+ 2.
```
```
(d) The formula is
```
```
∑n
i= 0F^2 i= F^2 n+ 1− 1.
```
9. (a) (→) Suppose a 0 ,a 1 ,a 2 ,... is a Gibonacci sequence. Then in
    particulara 2 = a 0 + a 1 , which meansc^2 = 1 + c. Solving this
    quadratic equation by the quadratic formula leads to the conclusion
    c= (1 ́

### √

### 5 )/2.

```
(←)Suppose eitherc = (1 +
```
### √

```
5 )/2 orc = (1 −
```
### √

```
5 )/2. Then
c^2 = 1 + c, and therefore for everyn ≥ 2,an= cn = cn− 2c^2 =
cn− 2(1 +c)= cn− 2+ cn− 1= an− 2+an− 1.
(b) It will be convenient to introduce the notationc 1 = (1 +
```
### √

```
5 )/2 and
c 2 = (1 −
```
### √

```
5 )/2. Then for anyn≥ 2,an= scn 1 +tc 2 n= scn 1 − 2c^21 +
tc 2 n− 2c^22 = scn 1 − 2(1 + c 1 )+ tcn 2 − 2(1 + c 2 ) = (scn 1 − 2+ tcn 2 − 2)+
(sc 1 n− 1+tcn 2 − 1)= an− 2+an− 1.
(c) Hint: Lets = ( 5 a 0 + ( 2 a 1 −a 0 )
```
### √

```
5 )/10 andt = ( 5 a 0 − ( 2 a 1 −
a 0 )
```
### √

### 5 )/10.

11. Hint: The formula isan= 2 · 3n− 3 · 2n.
15. Letabe the larger of 5kandk(k + 1). Now supposen > a, and by the
    division algorithm chooseqandrsuch thatn= qk+ rand 0 ≤ r < k.
    Note that ifq ≤ 4 thenn = qk + r ≤ 4k + r < 5 k ≤ a, which
    is a contradiction. Thereforeq > 4, soq ≥ 5, and by Example 6.1.3
    it follows that 2q ≥ q^2. Similar reasoning shows thatq ≥ k+ 1, so


432 _Appendix_

```
q^2 ≥q(k + 1)= qk+q > qk+k > qk+r= n. Therefore 2n≥ 2qk=
( 2 q)k≥ (q^2 )k≥nk.
```
18. Hint: The formula isan= Fn+ 2/Fn+ 1.
21. (a) For any numbersa,b,c, andd,

```
(ab)(cd) = (cd)(ab) (commutative law)
= c(d(ab)) (associative law)
= c((da)b) (associative law)
= c((ad)b) (commutative law).
(b) To simplify notation, we will assume that any product is the left-
grouped product unless parentheses are used to indicate otherwise. We
use strong induction onn. Assume the statement is true for products
of fewer thannterms, and consider any product ofa 1 ,a 2 ,... ,an.
Ifn = 1, then the only product is the left-grouped product, so there
is nothing to prove. Now supposen >1. Then our product has the
formpq, wherepis a product ofa 1 ,... ,ak− 1andqis a product of
ak,... ,anfor somek with 2 ≤ k ≤ n. By the inductive hypothesis,
p = a 1 · · ·ak− 1 and q = ak· · ·an (where by our convention,
these two products are left-grouped). Thus, it will suffice to prove
(a 1 · · ·ak− 1)(ak· · ·an)= a 1 · · ·an. Ifk = n, then the left-hand side
of this equation is already left-grouped, so there is nothing to prove.
Ifk < n, then
(a 1 · · ·ak− 1)(ak· · ·an)
= (a 1 · · ·ak− 1)((ak· · ·an− 1)an) (definition of left-grouped)
= ((a 1 · · ·ak− 1)(ak· · ·an− 1))an (associative law)
= (a 1 · · ·an− 1)an (inductive hypothesis)
= a 1 · · ·an (definition of left-grouped).
(c) By part (b), we may assume that the two products are left-grouped.
Thus, we must prove that ifb 1 ,b 2 ,... ,bnis some reordering ofa 1 ,
a 2 ,... ,an, thena 1 · · ·an= b 1 · · ·bn, where as in part (b) we assume
products are left-grouped unless parentheses indicate otherwise. We
use induction onn. Ifn = 1 then the products are clearly equal
becauseb 1 = a 1. Now suppose the statement is true for products
of lengthn, and suppose thatb 1 ,... ,bn+ 1is a reordering ofa 1 ,... ,
an+ 1. Thenbn+ 1is one ofa 1 ,... ,an+ 1. Ifbn+ 1= an+ 1then
b 1 · · ·bn+ 1= (b 1 · · ·bn)an+ 1 (definition of left-grouped)
= (a 1 · · ·an)an+ 1 (inductive hypothesis)
= a 1 · · ·an+ 1 (definition of left-grouped).
```

```
Appendix 433
Now suppose bn+ 1 = ak for some k ≤ n. We will write
a 1 · · ·a¼k· · ·anfor the (left-grouped) product of the numbersa 1 ,... ,
anwith the factorakleft out. Then
b 1 · · ·bn+ 1= (b 1 · · ·bn)ak (definition of left-grouped)
= (a 1 · · ·a¼k· · ·an+ 1)ak (inductive hypothesis)
= ((a 1 · · ·a¼k· · ·an)an+ 1)ak (definition of left-grouped)
= (a 1 · · ·a¼k· · ·an)(an+ 1ak) (associative law)
= (a 1 · · ·a¼k· · ·an)(akan+ 1) (commutative law)
= ((a 1 · · ·a¼k· · ·an)ak)an+ 1 (associative law)
= (a 1 · · ·an)an+ 1 (inductive hypothesis)
= a 1 · · ·an+ 1 (definition of left-grouped).
```
```
Section 6.5
```
1. Bn= {n}.
4. B 0 = {∅},B 1 = {X∈P(N)|Xhas exactly one element},B 2 = {X ∈
    P(N) | X has either one or two elements},.... In general, for every
    positive integern,Bn = {X ∈P(N)| X ±= ∅andXhas at mostn
    elements}.
5. {n∈Z|n≥ 2}.
7. (a) B 0 = {x ∈ R| − 2 ≤ x ≤ 0},B 1 = {x ∈R | 0 ≤ x ≤ 4},
    B 2 = {x ∈R | 0 ≤ x ≤ 16},.... In general, for every positive
    integern,Bn= {x∈R| 0 ≤ x≤ 2(^2 n)}.
(b)

### ²

```
n∈NBn = {x ∈R | x ≥ − 2}. Therefore − 1, 3∈
```
### ²

```
n∈NBnbut
f (−1, 3)= − 3∈/
```
### ²

```
n∈NBn, so
```
### ²

```
n∈NBnis not closed underf. In
other words, property 2 in Definition 5.4.8 does not hold.
(c)R.
```
10. We use induction onn.
    Base case:n= 1. Thenx= 2!+ 2 = 4. The only value ofiwe have
to worry about isi = 0, and for this value ofiwe havei+ 2 = 2 and
x+i= 4. Since 2 | 4, we have(i + 2)|(x+ i), as required.
Induction step: Suppose thatnis a positive integer, and for every integer
i, if 0 ≤i≤ n− 1 then(i+ 2)|((n+ 1)! +2+i). Now letx= (n+ 2)! + 2,
and suppose that 0 ≤ i≤ n. Ifi=nthen we have
x+i= (n+ 2)!+ 2 +i= (i+ 2)!+(i+ 2)= (i+ 2)((i + 1)!+ 1),
so(i + 2) | (x + i). Now suppose 0 ≤ i ≤ n− 1. By the inductive
hypothesis, we know that(i+ 2)|((n + 1)! + 2 + i), so we can choose
some integerksuch that(n+ 1)!+ 2+i= k(i+ 2), and therefore(n+ 1)!=
(k− 1)(i + 2). Therefore


434 _Appendix_

```
x+i= (n+ 2)! + 2 +i= (n+ 2)(n+ 1)!+(i+ 2)
= (n+ 2)(k− 1)(i+ 2)+(i+ 2)= (i+ 2)((n+ 2)(k − 1)+ 1),
```
```
so(i+ 2)|(x+ i).
```
14. ClearlyT is a relation onAandR= R^1 ⊆T. To see thatT is transitive,
    suppose(x,y) ∈T and(y,z)∈T. Then by the definition ofT, we can
    choose positive integersnandmsuch that(x,y) ∈Rnand(y,z)∈Rm.
    Thus by exercise 11,(x,z)∈Rm◦Rn= Rm+n, so(x,z)∈

### ²

```
n∈Z+R
```
```
n=
T. ThereforeT is transitive.
Finally, supposeR ⊆S ⊆ A× AandSis transitive. We must show
thatT ⊆S, and clearly by the definition ofTit suffices to show that∀n∈
Z+(Rn⊆S). We prove this by induction onn. We have assumedR⊆S,
so whenn = 1 we haveRn= R^1 = R ⊆ S. For the induction step,
supposenis a positive integer andRn⊆S. Now suppose(x,y)∈Rn+ 1.
Then by the definition ofRn+ 1we can choose somez ∈A such that
(x,z)∈Rand(z,y)∈Rn. By assumptionR ⊆S, and by the inductive
hypothesisRn⊆ S. Therefore(x,z) ∈Sand(z,y) ∈S, so sinceS is
transitive,(x,y)∈S. Since(x,y)was an arbitrary element ofRn+ 1, this
shows thatRn+ 1⊆S.
```
16. (a)R∩S⊆RandR∩S⊆S. Therefore by exercise 15, for every positive
    integern,(R∩S)n⊆Rnand(R∩S)n⊆Sn, so(R∩S)n⊆Rn∩Sn.
    However, the two need not be equal. For example, ifA= {1, 2, 3, 4},
    R= {(1, 2),(2, 4)}, andS= {(1, 3),(3, 4)}, then(R ∩S)^2 = ∅but
    R^2 ∩S^2 = {(1, 4)}.
(b) Rn∪Sn⊆(R∪S)n, but they need not be equal. (You should be able
to prove the first statement, and find a counterexample to justify the
second.)
18. (a) We use induction.
    Base case:n = 1. Suppose (a,b) ∈ R^1 = R. Let f =
{(0,a),(1,b)}. Thenf is anR-path fromatobof length 1. For the
other direction, supposef is anR-path fromatobof length 1. By
the definition ofR-path, this means thatf ( 0 )= a,f ( 1 )= b, and
(f ( 0 ),f ( 1 ))∈R. Therefore(a,b)∈R= R^1.
Induction step: Supposenis a positive integer andRn= {(a,b) ∈
A× A | there is anR-path fromatobof lengthn}. Now suppose
(a,b) ∈Rn+ 1= R^1 ◦Rnby exercise 11. Then there is somecsuch
that(a,c) ∈Rnand(c,b) ∈R. By the inductive hypothesis, there
is anR-pathf fromatocof lengthn. Thenf ∪ {(n+ 1,b)} is an
R-path fromatobof lengthn+ 1. For the other direction, suppose
f is anR-path fromatobof lengthn+ 1. Letc = f (n). Then


```
Appendix 435
f\{(n+ 1,b)}is anR-path fromatocof lengthn, so by the inductive
hypothesis(a,c)∈Rn. But also(c,b) = (f (n),f (n+ 1)) ∈R, so
(a,b)∈R^1 ◦Rn= Rn+ 1.
(b) This follows from part (a) and exercise 14.
```
```
Chapter 7
```
```
Section 7.1
```
2. (a) gcd(775, 682)= 31 = − 7 · 775 + 8 · 682.
    (b) gcd(562, 243)= 1 = 16 · 562 − 37 · 243.
5. Letnbe an arbitrary integer.
    (→) Supposenis a linear combination of aandb. Then there are
integerssandt such thatn = sa + tb. Sinced = gcd(a,b),d | a
andd | b, so there are integersj andk such thata = jd andb= kd.
Thereforen= sa+tb= sjd + tkd = (sj +tk)d, sod|n.
(←) Supposed|n. Then there is some integerksuch thatn= kd. By
Theorem 7.1.4, there are integerssandtsuch thatd= sa+tb. Therefore
n = kd = k(sa + tb) = ksa + ktb, son is a linear combination ofa
andb.
7. (a) No. Counterexample:a= b= 2,a³= 3,b³= 4.
    (b) Yes. Supposea |a³andb | b³. Letd = gcd(a,b). Thend | aand
       d | b. Sinced | aanda | a³, by Theorem 3.3.7,d | a³. Similarly,
       d|b³. Therefore, by Theorem 7.1.6,d| gcd(a³,b³).
9. We use strong induction on the maximum ofaandb. In other words, we
    prove the following statement by strong induction:
       ∀k∈Z+[∀a∈Z+∀b∈Z+(max(a,b)= k
          → gcd( 2 a− 1, 2b− 1)= 2gcd(a,b)− 1)],
    where max(a,b)denotes the maximum ofaandb.
       Letk ∈Z+ be arbitrary and assume that for every positive integer
    k³< k,
    ∀a∈Z+∀b∈Z+(max(a,b)= k³→ gcd( 2 a− 1, 2b− 1)= 2gcd(a,b)− 1).
    Now let a and b be arbitrary positive integers and assume that
    max(a,b) = k. We may assume that a ≥ b, since otherwise we can
    swap the values ofaandb. We consider two cases.
       Case 1.a= b. Then
gcd( 2 a− 1, 2b− 1)= gcd( 2 a− 1, 2a− 1)= 2a− 1 = 2gcd(a,a)− 1
= 2gcd(a,b)− 1.


436 _Appendix_

```
Case 2.a > b. Letc= a−b >0, so thata= c+b. Letk³= max(c,b).
Sinceb < aandc < a,k³< a= max(a,b)= k. Therefore
gcd( 2 a− 1, 2b− 1)= gcd( 2 c− 1 + 2a− 2c, 2b− 1)
= gcd( 2 c− 1 + 2c( 2 b− 1), 2b− 1)
= gcd( 2 c− 1, 2b− 1) (exercise 6)
= 2gcd(c,b)− 1 (inductive hypothesis)
= 2gcd(c+b,b)− 1 (exercise 6)
= 2gcd(a,b)− 1.
```
12. (a) gcd(55, 34)= 1. The numbersriare the Fibonacci numbers. There
    are 8 divisions.
(b) gcd(Fn+ 1,Fn)= 1. There aren− 1 division steps.

```
Section 7.2
```
2. 14950.
5. Suppose some prime numberpappears in the prime factorizations of both
    aandb. Thenp|aandp|b, so gcd(a,b)≥p >1, and thereforeaand
    bare not relatively prime.
       Now supposeaandbare not relatively prime. Letd = gcd(a,b) >1.
    Letpbe any prime number in the prime factorization ofd. Then since
    d|aandd|b,pmust occur in the prime factorizations of bothaandb.
8. Letd= gcd(a,b)andx= ab/gcd(a,b)= ab/d.
    (a) Sinced= gcd(a,b),d |b, so there is some integerksuch thatb=
       kd. Thereforex = akd/d = ak, sox is an integer anda | x. A
       similar argument shows thatb| x, sox is a common multiple ofa
       andb. Sincemis the _least_ common multiple,m≤ x.
(b) Supposer >0. Sincea|m, there is some integertsuch thatm= ta.
Thereforer= ab−qm= ab− qta = (b−qt)a, soa|r. Similarly,
b| r. Butr < m, so this contradicts the definition ofm as the _least_
positive integer that is divisible by bothaandb. Thereforer= 0.
    (c) Withtdefined as in part (b),ab= qm = qta. Dividing both sides by
       a, we getb= qt, soq|b. The proof thatq|ais similar.
(d) Sinceq | a andq | b,q ≤ gcd(a,b). Thereforeab = qm ≤
gcd(a,b)m, som≥ ab/gcd(a,b).
11. Hint: One approach is to letqandrbe the quotient and remainder when
mis divided by lcm(a,b), and prove thatr= 0.
13. Let the prime factorization of b be b = pe 11 pe 22 · · ·pekk. Then the
factorization ofb^2 isb^2 = p^21 e^1 p^22 e^2 · · ·p^2 kek. Sincea^2 |b^2 , every prime
factor ofamust be one ofp 1 ,p 2 ,... ,pk, soa= p 1 f^1 p 2 f^2 · · ·pkfkfor some


```
Appendix 437
natural numbersf 1 ,f 2 ,... ,fk. Thereforea^2 = p 12 f^1 p 22 f^2 · · ·p^2 kfk. Since
a^2 |b^2 , for everyiwe must have 2fi≤ 2ei, and thereforefi≤ ei. Thus
a|b.
```
16. Let p 1 ,p 2 ,... , pk be a list of all primes that occur in the prime
    factorization of eitheraorb, so that

```
a= pe 11 pe 22 · · ·pekk, b= p 1 f^1 p 2 f^2 · · ·pkfk
```
```
for some natural numberse 1 ,e 2 ,... ,ekandf 1 ,f 2 ,... ,fk. Fori =
1, 2,.. .,k, let
```
```
gi=
```
### ½

```
ei, ifei≥ fi,
0, ifei< fi,
```
```
hi=
```
### ½

```
0, ifei≥fi,
fi, ifei< fi.
```
```
Let
c= p 1 g^1 pg 22 · · ·pkgk, d= ph 11 p 2 h^2 · · ·phkk.
```
```
Then for alli,gi≤ eiandhi≤ fi, and thereforec| aandd|b. Also,
canddhave no prime factors in common, so by exercise 5,canddare
relatively prime. Finally,
```
```
cd = pg 11 +h^1 · · ·pgkk+hk= pmax 1 (e^1 ,f^1 )· · ·pkmax(ek,fk)= lcm(a,b).
```
19. (a) Sincexis a positive rational number, there are positive integersm
    andnsuch thatx = m/n. Letd = gcd(m,n). By exercise 9, we
    can letaandbbe positive integers such thatm = da,n= db, and
    gcd(a,b) = 1. Then

```
x=
```
```
m
n
```
### =

```
da
db
```
### =

```
a
b
```
### .

```
(b) Sincea/b = c/d,ad = bc. Thereforea |bc. Since gcd(a,b) = 1,
by Theorem 7.2.2,a|c. A similar argument showsc| a, soa = c.
Thereforead = bc = ba, and dividing both sides byawe conclude
thatb= d.
(c) By part (a), we havex = a/b, wherea andbare relatively prime
positive integers. Let the prime factorizations ofaandbbe
```
```
a= r 1 g^1 r 2 g^2 · · ·rgjj, b= s 1 h^1 s 2 h^2 · · ·slhl.
```
```
Note that by exercise 5, these factorizations have no primes in
common. Then
```
```
x=
```
```
r 1 g^1 r 2 g^2 · · ·rgjj
sh 11 s 2 h^2 · · ·slhl
```
```
= r 1 g^1 r 2 g^2 · · ·rjgjs 1 −h^1 s 2 −h^2 · · ·sl−hl.
```

438 _Appendix_

```
Rearranging the primesr 1 ,... ,rj,s 1 ,... ,slinto increasing order
gives the required productpe 11 · · ·pekk.
(d) We begin by reversing the steps of part (c). Letr 1 ,r 2 ,... ,rjbe those
primes in the productpe 11 pe 22 · · ·pekk whose exponents are positive,
listed in increasing order, ands 1 ,s 2 ,... ,slthose whose exponents
are negative. Rewriting each prime raised to a negative power as the
prime to a positive power in the denominator, we get
```
```
x= pe 11 pe 22 · · ·pekk=
```
```
r 1 g^1 r 2 g^2 · · ·rjgj
sh 11 sh 22 · · ·slhl
```
### ,

```
where all the exponentsgiandhiare positive integers. The numerator
and denominator have no prime factors in common, so they are rela-
tively prime. Similarly, the productqf 11 q 2 f^2 · · ·qmfmcan be rewritten as
a fraction with all exponents positive:
```
```
x= q 1 f^1 q 2 f^2 · · ·qmfm=
```
```
vy 11 vy 22 · · ·vtyt
wz 11 w 2 z^2 · · ·wzuu
```
### .

```
By part (b),r 1 g^1 · · ·r
```
```
gj
j = v
```
```
y 1
1 · · ·v
```
```
yt
t ands
```
```
h 1
1 · · ·s
```
```
hl
l = w
```
```
z 1
1 · · ·w
```
```
zuu.
By the uniqueness of prime factorizations,j = t and for alli ∈
{1,.. .,j},ri = vi and gi = yi, and also l = u and for all
i ∈ {1,.. .,l},si = wiandhi = zi. Rewriting the primes in the
denominator as primes raised to negative powers, we find that the
original two productspe 11 · · ·pekkandq 1 f^1 · · ·qmfmare the same.
```
```
Section 7.3
```
4. (a) SinceZ 1 is an additive identity element,Z 1 + Z 2 = Z 2. And since
    Z 2 is an additive identity element,Z 1 + Z 2 = Z 1. ThereforeZ 1 =
    Z 1 + Z 2 = Z 2.
(b) SinceX 1 ³is an additive inverse forX,X 1 ³+X+X³ 2 = [0]m+X³ 2 = X 2 ³.
Similarly, sinceX³ 2 is an additive inverse forX,X 1 ³+ X + X³ 2 =
X³ 1 + [0]m= X³ 1. ThereforeX 1 ³= X³ 2.
(c) SupposeO 1 andO 2 are multiplicative identity elements. ThenO 1 =
O 1 ·O 2 = O 2.
(d) SupposeX³ 1 andX³ 2 are multiplicative inverses ofX. ThenX³ 1 = X³ 1 ·
[1]m= X 1 ³·X·X 2 ³= [1]m·X 2 ³= X³ 2.
8. Letaandbbe arbitrary integers. Then

```
na≡ nb (modnm) iff ∃k∈Z(nb −na = knm)
iff ∃k∈Z(b− a= km) iff a≡ b (modm).
```

```
Appendix 439
```
10. (a) x∈[95] 237.
    (b) x∈[12] 59.
13. Letaandbbe arbitrary integers. Suppose first thata≡ b (modm). Then
    [a]m= [b]m, so [na]m= [n]m·[a]m= [n]m·[b]m= [nb]m, and therefore
    na ≡ nb (modm).
       Now suppose that na ≡ nb (modm), so [n]m· [a]m = [na]m =
    [nb]m = [n]m· [b]m. Sincem andn are relatively prime, [n]mhas a
    multiplicative inverse. Multiplying both sides of the equation [n]m·[a]m=
    [n]m· [b]mby [n]− 1m, we get [a]m= [b]m, soa≡ b (modm).
15. Hint: Prove that ifa≡ b (modm)thenD(m) ∩D(a) = D(m) ∩D(b).
17. (a) First note that 10 ≡ 1(mod 3), so [10] 3 = [1] 3. Therefore [10^2 ] 3 =
    [10] 3 ·[10] 3 = [1] 3 ·[1] 3 = [1] 3 , [10^3 ] 3 = [10^2 ] 3 ·[10] 3 = [1] 3 ·[1] 3 =
    [1] 3 , and, in general, for everyi∈N, [10i] 3 = [1] 3. (A more careful
    proof could be done by induction.) Thus

```
[n] 3 = [d 0 + 10d 1 + · · · + 10kdk] 3
= [d 0 ] 3 + [10] 3 ·[d 1 ] 3 + · · · + [10k] 3 · [dk] 3
= [d 0 ] 3 + [1] 3 · [d 1 ] 3 + · · · + [1] 3 · [dk] 3
= [d 0 +d 1 + · · · + dk] 3.
In other words,n≡ (d 0 +d 1 + · · · + dk) (mod 3).
(b) 3 |niff [n] 3 = [0] 3 iff [d 0 + · · · + dk] 3 = [0] 3 iff 3 |(d 0 + · · · +dk).
```
19. (a) Supposen≥ 10. First note that

```
10 f (n)= (dk· · ·d 10 ) 10 + 50d 0 = (dk· · ·d 1 d 0 ) 10 + 49d 0 = n+ 49d 0.
```
```
Therefore 3f (n)−n= 49d 0 − 7f (n)= 7( 7 d 0 −f (n)), son≡ 3f (n)
(mod 7), or equivalently [n] 7 = [3] 7 · [f (n)] 7. Since [3]− 1 7 = [5] 7 , it
follows that [f (n)] 7 = [5] 7 · [n] 7 , sof (n)≡ 5n (mod 7).
(b) Supposen ≥ 10. If 7 | nthen [n] 7 = [0] 7 , so [f (n)] 7 = [5n] 7 =
[5] 7 · [0] 7 = [0] 7 , and therefore 7 |f (n). Similarly, if 7 |f (n)then
[f (n)] 7 = [0] 7 , so [n] 7 = [3f (n)] 7 = [3] 7 ·[0] 7 = [0] 7 and 7 |n.
(c)f ( 627334 )= 62733 + 5 · 4 = 62753;f ( 62753 )= 6275 + 5 · 3 =
6290;f ( 6290 )= 629 + 5 · 0 = 629;f ( 629 )= 62 + 5 · 9 = 107;
f ( 107 )= 10 + 5 · 7 = 45;f ( 45 )= 4 + 5 · 5 = 29. Since 7²29,
7 ²627334.
```
```
Section 7.4
```
2. (a) φ( 539 )= 420.
    (b) φ( 540 )= 144.
       (c)φ( 541 )= 540.


440 _Appendix_

6. Supposea ≡ b (modmn). Thenmn | (b− a), so for some integerk,
    b−a= kmn. Thereforem|(b−a)andn|(b−a), soa≡ b (modm)
    anda≡ b (modn).
       Now supposea ≡ b (modm) anda ≡ b (modn). Sincea ≡ b
    (modn),n |(b −a), so there is some integerjsuch thatb−a = jn.
    Sincea≡ b (modm),m|(b−a), som|jn. But gcd(m,n)= 1, so by
    Theorem 7.2.2 it follows thatm|j. Letkbe an integer such thatj= km.
    Thenb−a= jn=kmn. Thereforemn|(b−a), soa≡ b (modmn).
8. The first half of the solution to exercise 6 does not use the hypothesis
    thatm andn are relatively prime, so the left-to-right direction of the
    “iff” statement is correct even if this hypothesis is dropped. Here is a
    counterexample for the other direction:a= 0,b= 12,m= 4,n= 6.
10. Supposepis prime andais a positive integer. We consider two cases.
Case 1.p²a. Thenpandaare relatively prime, so by Theorem 7.4.2,
    [a]pp− 1= [1]p. Therefore [ap]p= [a]pp− 1·[a]p= [1]p· [a]p= [a]p, so
    ap≡a (modp).
       Case 2.p|a. Then [a]p= [0]p, so [ap]p= [0]pp= [0]p= [a]pand
    thereforeap≡ a (modp).
13. Hint: Use Lemma 7.4.6 and induction onk.
15. (a) We proceed by induction onk.
Base case: Whenk = 1, the statement to be proven is that for
every positive integerm 1 and every integera 1 , there is an integerr
such that 1 ≤ r ≤ m 1 andr ≡ a 1 (modm 1 ). This is true because
{1, 2,.. .,m 1 } is a complete residue system modulom 1.
Induction step: Suppose that the statement holds for lists ofk
pairwise relatively prime positive integers, and letm 1 ,m 2 ,... ,mk+ 1
be a list ofk + 1 pairwise relatively prime positive integers. Let
M³= m 1 m 2 · · ·mkandM = m 1 m 2 · · ·mk+ 1= M³mk+ 1. Leta 1 ,a 2 ,
... ,ak+ 1be arbitrary integers. By the inductive hypothesis, there is
an integerr³such that for alli∈ {1, 2,.. .,k},r³≡ ai (modmi). By
exercise 13, gcd(M³,mk+ 1)= 1, so by Lemma 7.4.7 there is some
integerrsuch that 1 ≤ r ≤ M,r ≡ r³(modM³), andr ≡ ak+ 1
(modmk+ 1). By exercise 14, for everyi ∈ {1, 2,.. .,k},r ≡ r³
(modmi), and thereforer≡ ai (modmi).
(b) Suppose that 1 ≤ r 1 ,r 2 ≤ M and for alli ∈ {1, 2,.. .,k},r 1 ≡
ai (modmi)andr 2 ≡ ai (modmi). Then for alli ∈ {1, 2,.. .,k},
r 1 ≡ r 2 (modmi), so by exercise 14,r 1 ≡ r 2 (modM). Therefore
r 1 = r 2.
17. Supposemandnare relatively prime. Let the elements ofD(m) bea 1 ,
a 2 ,... ,as, and let the elements ofD(n) beb 1 ,b 2 ,... ,bt. Thenσ (m) =


```
Appendix 441
a 1 +a 2 + · · · +asandσ (n) = b 1 + b 2 + · · · +bt. Using the function
f from part (b) of exercise 16, we see that the elements ofD(mn) are all
products of the formaibj, where 1 ≤ i ≤ sand 1 ≤ j ≤ t. Thus we
can arrange the elements ofD(mn) in a table withsrows andtcolumns,
where the entry in rowi, columnjof the table isaibj; every element of
D(mn) appears exactly once in this table. To computeσ (mn), we must
add up all entries in this table. We will do this by first adding up each row
of the table, and then adding these row sums.
For 1 ≤ i≤ s, letribe the sum of rowiof the table. Then
ri= aib 1 + aib 2 + · · · +aibt=ai(b 1 +b 2 + · · · +bt)= aiσ (n).
Therefore
```
```
σ (mn) = r 1 + r 2 + · · · +rs= a 1 σ (n) +a 2 σ (n) + · · · + asσ (n)
= (a 1 +a 2 + · · · +as)σ (n) = σ (m)σ (n).
```
```
Section 7.5
```
2. (a) n= 5893,φ(n) = 5740,d= 2109.
    (b) c= 3421.
5. (a) n= 17 · 29.
    (b) d= 257.
       (c)m= 183.
7. (a) c= 72.
    (b) d= 63.
       (c) 288.
    (d) φ(n) = 144,d= 47, 18.
9. We use strong induction. Suppose that ais a positive integer, and for
    every positive integerk < a, the computation ofXkuses at most 2 log 2 k
    multiplications.
       Case 1.a= 1. ThenXa= X^1 = X, so no multiplications are needed,
    and 2 log 2 a= 2 log 2 1 = 0.
       Case 2.ais even. Thena= 2kfor some positive integerk < a, and
    to computeXawe use the formulaXa= Xk·Xk. Letmbe the number
    of multiplications used to computeXk. By the inductive hypothesis,m≤
    2 log 2 k. To computeXawe use one additional multiplication (to multiply
    Xkby itself), so the number of multiplications is
       m+ 1 ≤ 2 log 2 k+ 1< 2 (log 2 k+ 1)= 2 log 2 ( 2 k)= 2 log 2 a.
       Case 3.a >1 andais odd. Thena= 2k+ 1 for some positive integer
    k < a, and to computeXawe use the formulaXa = Xk·Xk·X. As


442 _Appendix_

```
in case 2, if we letm be the number of multiplications used to compute
Xkthen we havem ≤ 2 log 2 k. To computeXawe use two additional
multiplications, so the number of multiplications is
```
```
m+ 2≤ 2 log 2 k+2 = 2(log 2 k+1)= 2 log 2 ( 2 k)<2 log 2 ( 2 k+ 1)= 2 log 2 a.
```
12. Sincea ∈ R 2 , [a]nn− 1 ±= [1]n. And since gcd(n,a) = 1, [a]nhas a
    multiplicative inverse.
    (a) Supposex ∈R 1. Then 2 ≤ x ≤ n− 1 and [x]nn− 1= [1]n. Since
       {0, 1,.. .,n− 1} is a complete residue system modulon, there is a
       uniqueysuch that 0 ≤ y ≤ n− 1 andax ≡ y (modn), so [a]n·
       [x]n = [y]n. We must prove that y ∈R 2. Ify = 0 then [x]n =
       [a]− 1n ·[y]n= [a]− 1n ·[0]n= [0]n, which contradicts the fact that 2 ≤
       x≤ n− 1. Therefore 1 ≤y≤n− 1. And [y]nn− 1= [a]nn− 1·[x]nn− 1=
       [a]nn− 1· [1]n = [a]nn− 1 ±= [1]n. Thereforeyn− 1 ±≡ 1(modn). It
       follows thaty±= 1, so 2 ≤y≤ n− 1.
(b) Supposef (x 1 )= f (x 2 )= y. Then [a]n·[x 1 ]n= [y]n= [a]n·[x 2 ]n,
so [x 1 ]n= [a]− 1n · [y]n= [x 2 ]n, and thereforex 1 = x 2.
    (c) By part (b),R 1 has the same number of elements as Ran(f ). Since
       Ran(f )⊆R 2 ,R 2 has at least as many elements asR 1. So at least half
       the elements ofRare inR 2.

```
Chapter 8
```
```
Section 8.1
```
1. (a) Definef :Z+→Nby the formulaf (n)= n− 1. It is easy to check
    thatf is one-to-one and onto.
(b) LetE = {n∈Z|nis even}, and definef :Z→Eby the formula
f (n) = 2n. It is easy to check thatf is one-to-one and onto, so
Z∼ E. But we already know thatZ+ ∼ Z, so by Theorem 8.1.3,
Z+∼E, and thereforeEis denumerable.
4. (a) No. Counterexample: LetA= B = C= Z+ andD= {1}.
    (b) No. Counterexample: LetA= B= N,C= Z−, andD= ∅.
6. (a) We prove that∀n ∈N∀m ∈N(In∼ Im → n = m) by induction
    onn.
       Base case:n= 0. Suppose thatm ∈Nand there is a one-to-one,
    onto functionf :In→Im. Sincen= 0,In=∅. But then sincef is
    onto, we must also haveIm= ∅, som= 0 = n.


```
Appendix 443
Induction step: Suppose thatn∈N, and for allm∈N, ifIn∼Im
thenn = m. Now suppose thatm ∈NandIn+ 1 ∼ Im. Letf :
In+ 1→ Imbe a one-to-one, onto function. Letk = f (n+ 1), and
notice that 1 ≤k≤ m, somis positive. Using the fact thatfis onto,
choose somej ≤n+ 1 such thatf (j)= m.
We now defineg:In→Im− 1as follows:
```
```
g(i) =
```
### ½

```
f (i), ifi±= j,
k, ifi= j.
```
```
We leave it to the reader to verify thatgis one-to-one and onto. By
the inductive hypothesis, it follows thatn= m− 1, son+ 1 = m.
(b) SupposeAis finite. Then by the definition of “finite,” we know that
there is at least onen∈Nsuch thatIn∼A. To see that it is unique,
suppose thatnandmare natural numbers,In∼A, andIm∼A. Then
by Theorem 8.1.3,In∼Im, so by part (a),n= m.
```
8. (a) We use induction onn.
    Base case:n= 0. SupposeA⊆In= ∅. ThenA= ∅, so |A| = 0.
    Induction step: Suppose thatn∈N, and for allA⊆In,Ais finite,
|A| ≤ n, and ifA±= Inthen |A|< n. Now suppose thatA⊆In+ 1. If
A= In+ 1then clearlyA∼In+ 1, soAis finite and |A| =n+ 1. Now
suppose thatA±= In+ 1. Ifn+ 1∈/A, thenA⊆In, so by the inductive
hypothesis,Ais finite and |A| ≤ n. Ifn+ 1∈A, then there must be
somek∈Insuch thatk ∈/A. LetA³= (A∪ {k})\ {n+ 1}. Then by
matching upk withn+ 1 it is not hard to show thatA³∼ A. Also,
A³⊆ In, so by the inductive hypothesis,A³is finite and |A³| ≤ n.
Therefore by exercise 7,Ais finite and |A| ≤ n.
(b) SupposeAis finite andB ⊆A. Letn= |A|, and letf :A→Inbe
one-to-one and onto. Thenf (B)⊆In, so by part (a),f (B)is finite,
|f (B)| ≤ n, and ifB ±= Athenf (B) ±= In, so |f (B)|< n. Since
B ∼f (B), the desired conclusion follows.
10. Hint: Defineg:B →Inby the formula

```
g(x) = the smallesti∈Insuch thatf (i)= x,
```
```
and show thatgis one-to-one.
```
12. Notice first that eitheri+j− 2 ori+j− 1 is even, sof (i,j)is a positive
    integer, and thereforef is a function fromZ+×Z+toZ+, as claimed. It
    will be helpful to verify two facts about the functionf. Both of the facts
    below can be checked by straightforward algebra:
    (a) For allj∈Z+,f (1,j+ 1)−f (1,j)= j.


444 _Appendix_

```
(b) For alli∈Z+andj∈Z+,f (1,i+j− 1)≤f (i,j) < f (1,i+j). It
follows thati+ jis the smallestk∈Z+such thatf (i,j) < f (1,k).
To see thatf is one-to-one, suppose thatf (i 1 ,j 1 )= f (i 2 ,j 2 ). Then by
fact (b) above,
```
```
i 1 +j 1 = the smallestk∈Z+such thatf (i 1 ,j 1 ) < f (1,k)
= the smallestk∈Z+such thatf (i 2 ,j 2 ) < f (1,k)
= i 2 + j 2.
```
```
Using the definition off, it follows that
```
```
i 1 = f (i 1 ,j 1 )−
```
```
(i 1 +j 1 − 2)(i 1 +j 1 − 1)
2
= f (i 2 ,j 2 )− (i^2 +j^2 − 2)(i^2 +j^2 − 1)
2
= i 2.
```
```
But then sincei 1 = i 2 andi 1 + j 1 = i 2 +j 2 , we must also havej 1 = j 2 ,
so(i 1 ,j 1 )=(i 2 ,j 2 ). This shows thatf is one-to-one.
To see that f is onto, supposen ∈ Z+. It is easy to verify that
f (1,n+ 1) > n, so we can letkbe the smallest positive integer such that
f (1,k) > n. Notice thatf (1, 1)= 1 ≤ n, sok ≥ 2. Sincekis smallest,
f (1,k− 1)≤n, and therefore by fact (a),
```
```
0 ≤ n−f (1,k− 1) < f (1,k)− f (1,k− 1)= k− 1.
```
```
Adding 1 to all terms, we get
```
```
1 ≤n−f (1,k− 1)+ 1< k.
```
```
Thus, if we leti= n−f (1,k− 1)+ 1 then 1 ≤ i < k. Letj = k− i,
and notice thati∈Z+andj∈Z+. With this choice foriandjwe have
```
```
f (i,j)=
```
```
(i+j− 2)(i+j− 1)
2
```
```
+i
```
```
=
```
```
(k− 2)(k − 1)
2
```
```
+n−f (1,k− 1)+ 1
```
```
=
```
```
(k− 2)(k − 1)
2
```
```
+n−
```
```
μ
(k− 2)(k − 1)
2
```
### + 1

### ¶

```
+ 1 = n.
```
15. (a) IfB\{f (m)|m∈Z+,m < n} =∅thenB ⊆ {f (m)|m∈Z+,m <
    n}, so by exercises 8 and 10,Bis finite. But we assumed thatBwas
    infinite, so this is impossible.


```
Appendix 445
(b) We use strong induction. Suppose that ∀m < n,f (m) ≥ m. Now
suppose thatf (n) < n. Letm = f (n). Then by the inductive
hypothesis,f (m) ≥ m. Also, by the definition off (n),m = f (n)∈
B\ {f (k)|k∈Z+,k < n} ⊆B\ {f (k)|k∈Z+,k < m}. But since
f (m)is the smallest element of this last set, it follows thatf (m)≤ m.
Since we havef (m) ≥ m andf (m) ≤ m, we can conclude that
f (m) = m. But thenm /∈B \ {f (k)|k ∈Z+,k < n}, so we have a
contradiction.
(c) Suppose thati ∈Z+,j ∈Z+, andi ±= j. Then eitheri < jor
j < i. Suppose first thati < j. Then according to the definition of
f (j),f (j) ∈B \ {f (m) | m ∈Z+,m < j}, and clearlyf (i) ∈
{f (m) | m ∈Z+,m < j}. It follows thatf (i) ±= f (j). A similar
argument shows that ifj < ithenf (i)±= f (j). This shows thatf is
one-to-one.
To see thatf is onto, suppose thatn∈B. By part (b),f (n+ 1)≥
n+ 1 > n. But according to the definition off,f (n+ 1)is the
smallest element ofB\ {f (m) |m∈Z+,m < n+ 1}. It follows that
n /∈B\ {f (m) |m∈Z+,m < n+ 1}. Butn∈B, so it must be the
case that alson∈ {f (m) |m ∈Z+,m < n+ 1}. In other words, for
some positive integerm < n+ 1,f (m)= n.
```
17. SupposeB ⊆ AandAis countable. Then by Theorem 8.1.5, there is a
    one-to-one functionf :A→ Z+. By exercise 13 of Section 5.2,f ±B
    is a one-to-one function fromBtoZ+, soBis countable. (See exercise 7
    of Section 5.1 for the definition of the notation used here.)
19. Following the hint, we recursively define partial ordersRn, forn∈N, so
    thatR= R 0 ⊆R 1 ⊆R 2 ⊆ · · · and
       ∀i∈In∀j ∈Z+((ai,aj)∈Rn∨(aj,ai)∈Rn). (∗)
    LetR 0 = R. GivenRn, to defineRn+ 1we apply exercise 2 of Section
    6.2, withB = {ai | i ∈In+ 1}. Finally, letT =

### ²

```
n∈NRn. ClearlyT
is reflexive, because everyRnis. To see thatT is transitive, suppose that
(a,b) ∈T and(b,c) ∈ T. Then for some natural numbersm andn,
(a,b) ∈Rmand(b,c) ∈Rn. Ifm ≤ nthenRm⊆ Rn, and therefore
(a,b)∈Rnand(b,c)∈Rn. SinceRnis transitive, it follows that(a,c)∈
Rn⊆T. A similar argument shows that ifn < mthen(a,c)∈T, soT is
transitive. The proof thatT is antisymmetric is similar. Finally, to see that
T is a total order, supposex∈Aandy∈A. Since we have numbered the
elements ofA, we know that for some positive integersmandn,x= am
andy= an. But then by(∗)we know that either(am,an)or(an,am)is
an element ofRn, and therefore also an element ofT.
```

446 _Appendix_

22. (a) We follow the hint.
    Base case:n = 0. SupposeAandB are finite sets and |B| = 0.
ThenB= ∅, soA× B= ∅and |A×B| = 0 = |A| · 0.
Induction step: Letnbe an arbitrary natural number, and suppose
that for all finite setsAandB, if |B| = nthenA× B is finite and
|A×B| = |A|·n. Now supposeAandBare finite sets and |B| =n+ 1.
Choose an elementb∈B, and letB³= B\{b}, a set withnelements.
ThenA×B =A×(B³∪{b})=(A×B³)∪(A×{b}), and sinceb /∈B³,
A×B³andA×{b}are disjoint. By the inductive hypothesis,A×B³is
finite and |A×B³| = |A|·n. Also, it is not hard to see thatA∼A×{b}
- just match up eachx∈Awith(x,b)∈A×{b}– soA×{b}is finite
and |A× {b}| = |A|. By Theorem 8.1.7, it follows thatA×Bis finite
and |A×B| = |A× B³| + |A× {b}| = |A| ·n+ |A| = |A| ·(n+ 1).
(b) To order a meal, you name an element ofA× B, whereA= {steak,
chicken, pork chops, shrimp, spaghetti} andB = {ice cream, cake,
pie}. So the number of meals is |A×B| = |A| · |B| = 5 · 3 = 15.
24. (a) Base case:n= 0. If |A| = 0 thenA = ∅, soF = {∅}, and |F| =
    1 = 0!.
       Induction step: Supposen is a natural number, and the desired
    conclusion holds forn. Now letAbe a set withn+ 1 elements, and
    letF = {f |f is a one-to-one, onto function fromIn+ 1toA}. Let
    g:In+ 1→ Abe a one-to-one, onto function. For eachi∈In+ 1, let
    Ai= A\{g(i)}, a set withnelements, and letFi= {f |fis a one-to-
    one, onto function fromIntoAi}. By the inductive hypothesis,Fiis
    finite and|Fi| = n!. Now letFi³= {f ∈F |f (n+ 1)= g(i)}. Define
    a functionh:Fi→Fi³by the formulah(f )= f ∪ {(n+ 1,g(i))}.
    It is not hard to check thathis one-to-one and onto, soFi³is finite
    and |Fi³| = |Fi| = n!. Finally, notice thatF =

### ²

```
i∈In+ 1Fi³and
∀i∈In+ 1∀j ∈In+ 1(i ±= j→Fi³∩Fj³= ∅). It follows, by exercise
21, thatF is finite and |F| =
```
```
∑n+ 1
i= 1|Fi³| = (n+ 1)·n! = (n+ 1)!.
(b) Hint: Defineh:F → Lby the formulah(f ) = {(a,b) ∈A× A|
f− 1(a) ≤ f− 1(b)}. (You should check that this set is a total order
onA.) To see that his one-to-one, suppose that f ∈F,g ∈F,
andf ±= g. Letibe the smallest element ofInfor whichf (i) ±=
g(i). Now show that(f (i),g(i)) ∈h(f )but(f (i),g(i)) /∈h(g), so
h(f ) ±= h(g). To see thathis onto, supposeRis a total order onA.
Defineg:A →Inby the formulag(a) = |{x∈A| xRa}|. Show
that∀a∈A∀b∈A(aRb ↔g(a) ≤ g(b)), and use this fact to show
thatg− 1∈F andh(g− 1)= R.
(c) 5! = 120.
```

```
Appendix 447
```
27. Base case:n= 1. ThenIn= {1},P = {{1}}, andA{1}= A 1. Therefore
    |

### ²

```
i∈lnAi| = |A^1 | and
```
### ∑

### S∈P(− 1)

|S|+ 1|AS| = (− 1) (^2) |A{1}| = |A 1 |.
Induction step: Suppose the inclusion-exclusion principle holds forn
sets, and supposeA 1 ,A 2 ,... ,An+ 1are finite sets. LetPn= P(In)\ {∅}
andPn+ 1= P(In+ 1)\ {∅}. By exercise 26(a), exercise 23(a) of Section
3.4, and the inductive hypothesis,
¾¾
¾

### ¿

```
i∈In+ 1
```
```
Ai
```
### ¾¾

### ¾=

### ¾¾

### ¾

### ³¿

```
i∈In
```
```
Ai
```
### ́

```
∪An+ 1
```
### ¾¾

### ¾

### =

### ¾¾

### ¾

### ¿

```
i∈In
```
```
Ai
```
### ¾¾

```
¾+ |An+ 1| −
```
### ¾¾

### ¾

### ³¿

```
i∈In
```
```
Ai
```
### ́

```
∩An+ 1
```
### ¾¾

### ¾

### =

### ¹

```
S∈Pn
```
```
(− 1)|S|+ 1|AS| + |An+ 1| −
```
### ¾¾

### ¾

### ¿

```
i∈In
```
```
(Ai∩An+ 1)
```
### ¾¾

### ¾.

```
Now notice that for everyS∈Pn,
À
```
```
i∈S
```
```
(Ai∩An+ 1)=
```
### ³À

```
i∈S
```
```
Ai
```
### ́

```
∩An+ 1= AS∪{n+ 1}.
```
```
Therefore, by another application of the inductive hypothesis,
¾¾
¾
```
### ¿

```
i∈In
```
```
(Ai∩An+ 1)
```
### ¾¾

### ¾=

### ¹

```
S∈Pn
```
```
(−1)|S|+ 1|AS∪{n+ 1}|.
```
```
Thus
¾¾
¾
```
### ¿

```
i∈In+ 1
```
```
Ai
```
### ¾¾

### ¾=

### ¹

```
S∈Pn
```
```
(− 1)|S|+ 1|AS| + |An+ 1| −
```
### ¹

```
S∈Pn
```
```
(− 1)|S|+ 1|AS∪{n+ 1}|
```
### =

### ¹

```
S∈Pn
```
```
(− 1)|S|+ 1|AS| + (− 1)^2 |A{n+ 1}|
```
### +

### ¹

```
S∈Pn
```
```
(− 1)|S∪{n+ 1}|+ 1|AS∪{n+ 1}|.
```
```
Finally, notice that there are three kinds of elements ofPn+ 1: those that are
elements ofPn, the set {n+ 1}, and sets of the formS∪{n+ 1}, whereS ∈
Pn. It follows that the last formula above is just
```
### ∑

```
S∈Pn+ 1(− 1)|S|+ 1|AS|,
as required.
```
```
Section 8.2
```
1. (a) By Theorem 8.1.6,Qis countable. IfR\Qwere countable then, by
    Theorem 8.2.1,Q∪(R\ Q)= Rwould be countable, contradicting
    Theorem 8.2.6. Thus,R\Qmust be uncountable.


448 _Appendix_

```
(b) LetA = {
```
### √

```
2 + n | n ∈Z+}. It is not hard to see thatAandQ
are disjoint, since
```
### √

```
2 is irrational, andAis denumerable. Now apply
Theorems 8.1.6 and 8.2.1 to conclude thatA∪Qis denumerable, and
thereforeA∪Q∼A. Finally, observe thatR= (R\(A∪Q))∪(A∪Q)
andR\Q= (R\(A∪Q))∪A, and apply part 2 of Theorem 8.1.2.
```
5. Suppose thatA∼P(A). Then there is a functionf :A→P(A) that
    is one-to-one and onto. LetX = {a∈A|a /∈f (a)} ∈P(A). Sincef is
    onto, there must be somea∈Asuch thatf (a)= X. But then according
    to the definition ofX,a ∈X iffa /∈f (a), soX ±= f (a), which is a
    contradiction.
8. Hint: Definef :P(A)×P(B) →P(A∪B)by the formulaf (X,Y ) =
    X∪Y, and prove thatfis one-to-one and onto.
10. For each positive integer² n, letAn = {x ∈ A | x ≥ 1/n}. Clearly

```
n∈Z+An⊆A. Now supposex∈A. Thenx∈R+, sox >0. Letnbe
a positive integer large enough thatn≥ 1/x. Thenx ≥ 1/n, sox∈An.
We conclude thatA⊆
```
### ²

```
n∈Z+An, and therefore
```
### ²

```
n∈Z+An= A.
Supposea 1 ,a 2 ,... ,akare distinct elements ofAn. Then
```
```
b≥ a 1 +a 2 + · · · +ak≥
```
### 1

```
n
```
### +

### 1

```
n
```
### + · · · +

### 1

```
n
```
### =

```
k
n
```
### ,

```
sok ≤ bn. ThereforeAnis finite, and in fact |An| ≤ bn. By Theorem
8.2.2, it follows thatA=
```
### ²

```
n∈Z+Anis countable.
```
13. Hint: First note that ifF= ∅thengcan be any function. IfF±= ∅, then
    sinceFis countable, we can write its elements in a list:F= {f 1 ,f 2 ,.. .}.
    Now defineg:Z+ →Rby the formulag(n) = max{|f 1 (n)|,|f 2 (n)|,... ,
    |fn(n)|}.
15. (a) IfQis countable, then by part 2 of Theorem 8.2.1,P∪Qis countable.
    ButP∪Q = P(Z+), which is uncountable by Cantor’s theorem.
    ThereforeQis uncountable.
(b) SupposeA ∈Q. For everyn ∈Z+,A∩In⊆ In, so by exercise
8(a) in Section 8.1,A∩Inis finite. ThereforeSA⊆P. Now suppose
SA is finite. Then there is some positive integern such thatSA =
{A∩I 1 ,A∩I 2 ,.. .,A∩In}. We claim now thatA ⊆ In; this will
complete the proof, because it implies thatAis finite, contradicting
our assumption thatA∈Q. To prove this claim, suppose thatm∈A.
ThenA∩Im∈SA, so there is somek≤nsuch thatA∩Im= A∩Ik⊆
Ik⊆In. Butm∈A∩Im, so we conclude thatm∈In, as required.
    (c) SupposeA ∈Q,B ∈Q, andA ±= B. Then there is some positive
       integernsuch that eithern∈Aandn /∈Born∈Bandn /∈A. We
       will assumen∈Aandn /∈B; the proof for the other case is similar.


```
Appendix 449
We claim now thatSA∩SB⊆ {A∩I 1 ,A∩I 2 ,.. .,A∩In− 1}; this will
complete the proof, because it implies thatSA∩SBis finite. To prove
the claim, suppose thatX∈SA∩SB. Then there are positive integers
nAandnBsuch thatX= A∩InAandX= B∩InB. IfnA≥ nthen
n∈A∩InA= X= B∩InB⊆B,
which is a contradiction. ThereforenA < n, soX = A∩InA ∈
{A∩I 1 ,.. .,A∩In− 1}, as required.
(d) IfA∈Q thenSA⊆ P, so sinceg:P → Z+,g(SA)⊆Z+. Also,
sinceSAis infinite andgis one-to-one,g(SA)is also infinite. This
proves thatF ⊆P(Z+)and every element ofFis infinite. To see
thatFis pairwise almost disjoint, supposeX,Y ∈FandX ±= Y.
Then there are setsA,B ∈Qsuch thatX = g(SA)andY = g(SB).
SinceX ±= Y,A±= B, so by part (c),SA∩SBis finite, and therefore
g(SA∩SB)is finite. By Theorem 5.5.2,g(SA∩SB)= g(SA)∩g(SB)=
X∩Y, soXandY are almost disjoint. Finally, defineh :Q → F
by the formulah(A) = g(SA). It is easy to check thathis one-to-one
and onto, soF∼Qand therefore, by part (a),Fis uncountable.
```
```
Section 8.3
```
1. (a) The functioniA:A→Ais one-to-one.
    (b) SupposeA²B andB ²C. Then there are one-to-one functionsf :
       A→B andg:B →C. By part 1 of Theorem 5.2.5,g◦f :A→C
       is one-to-one, soA²C.
5. Letg:A→B andh:C→Dbe one-to-one functions.
    (a) SinceA ±= ∅, we can choose somea 0 ∈ A. Notice thatg− 1 :
       Ran(g) →A. Definej:B→Aas follows:

```
j (b) =
```
### ½

```
g− 1(b), ifb∈Ran(g),
a 0 , otherwise.
We let you verify thatjis onto.
Now defineF :AC → BDby the formulaF (f ) = h◦f ◦j.
To see thatF is one-to-one, suppose thatf 1 ∈AC,f 2 ∈AC, and
F (f 1 )= F (f 2 ), which meansh◦f 1 ◦j = h◦f 2 ◦j. Leta∈Abe
arbitrary. Sincejis onto, there is someb ∈Bsuch thatj (b) = a.
Thereforeh(f 1 (a)) = (h◦f 1 ◦j)(b) = (h◦f 2 ◦j)(b) = h(f 2 (a)),
and sincehis one-to-one, it follows thatf 1 (a) = f 2 (a). Sinceawas
arbitrary, this shows thatf 1 = f 2.
(b) Yes. (You should be able to justify this answer with a counter-
example.)
```

450 _Appendix_

8. (a) Letnbe arbitrary, and then proceed by induction onm. The base case
    ism =n+ 1, and it is taken care of by exercise 7. For the induction
    step, apply exercise 2(b).
(b)

### ²

```
n∈Z+Anis an infinite set that is not equinumerous withAnfor any
n ∈Z+. In fact, for every positive integern,An≺
```
### ²

```
n∈Z+An. Can
you find even larger infinite sets?
```
10. (a) Note thatE⊆P(Z+×Z+). It follows, using exercise 5 of Section
    8.1, thatE²P(Z+× Z+)∼P(Z+).
(b) Supposef (X)= f (Y). ThenX∪ {1} ∈f (X)= f (Y)= {Y∪ {1},
(A\Y)∪{2}}, so eitherX∪{1} =Y∪{1}orX∪{1} =(A\Y)∪{2}.
But clearly 2∈/ X∪ {1}, so the second possibility can be ruled out.
ThereforeX∪ {1} = Y ∪ {1}. Since neitherX norY contains 1, it
follows thatX = Y.
(c) ClearlyAis denumerable, and we showed at the end of Section 5.3
thatP∼E. It follows thatP(Z+)∼P(A)²P∼E. Combining
this with part (a) and applying the Cantor-Schr ̈oder-Bernstein theorem
gives the desired conclusion.
14. (a) According to the definition of function,RR ⊆ P(R× R), and
    therefore by exercise 12(b) and exercise 5 of Section 8.1,RR ²
    P(R× R)∼P(R).
       Clearly {yes, no} ² R, so by exercise 6(c) of Section 8.2 and
    exercise 5,P(R) ∼ R{yes, no}²RR. Since we have bothRR²
    P(R)andP(R)²RR, by the Cantor-Schr ̈oder-Bernstein theorem,
    RR∼P(R).
(b) By Theorems 8.1.6 and 8.3.3, exercise 23(a) of Section 8.1, and
exercise 6(d) of Section 8.2,QR∼Z

```
+
P(Z+)∼P(Z+)∼R.
(c) DefineF :C→ QRby the formulaF(f ) = f ±Q. (See exercise
7 of Section 5.1 for the meaning of the notation used here.) Suppose
f ∈C,g ∈C, andF(f ) = F(g). Thenf ±Q= g ±Q, which
means that for allx ∈Q,f (x) = g(x). Now letxbe an arbitrary
real number. Use Lemma 8.3.4 to construct a sequencex 1 ,x 2 ,... of
rational numbers such that limn→∞ xn= x. Then sincef andgare
continuous,f (x)= limn→∞ f (xn)= limn→∞g(xn)= g(x). Since
xwas arbitrary, this shows thatf = g. ThereforeF is one-to-one, so
C²QR. Combining this with part (b), we can conclude thatC²R.
Now defineG:R→Cby the formulaG(x) = R× {x}. In other
words,G(x) is the constant function whose value at every real number
isx. ClearlyGis one-to-one, soR ²C. By the Cantor-Schr ̈oder-
Bernstein theorem, it follows thatC∼R.
```

## Suggestions for Further Reading

Barker-Plummer, D., Barwise, J., and Etchemendy, J., _Language, Proof and
Logic_ , 2nd edition. Stanford: CSLI Publications, 2011.
Burton, D., _Elementary Number Theory_ , 7th edition. Boston: McGraw-Hill,
2011.
Eccles, P., _An Introduction to Mathematical Reasoning: Numbers, Sets and
Functions_. Cambridge: Cambridge University Press, 1997.
Enderton, H., _A Mathematical Introduction to Logic_ , 2nd edition. San Diego:
Harcourt/Academic Press, 2001.
Enderton, H., _Elements of Set Theory_. San Diego: Academic Press, 1977.
Epp, S., _Discrete Mathematics: An Introduction to Mathematical Reasoning_.
Boston: Brooks/Cole Cengage Learning, 2011.
Halmos, P., _Naive Set Theory_. Mineola, New York: Dover Publications, 2017.
Hamilton, A., _Logic for Mathematicians_ , revised edition. Cambridge: Cam-
bridge University Press, 1988.
Hamilton, A., _Numbers, Sets and Axioms: The Apparatus of Mathematics_.
Cambridge: Cambridge University Press, 1982.
Leary, C. and Kristiansen, L., _A Friendly Introduction to Mathematical Logic_ ,
Geneseo, New York: Milne Library, 2015.
Mendelson, E., _Introduction to Mathematical Logic_ , 6th edition. Boca Raton,
Florida: CRC Press, 2015.
Polya, G., _How to Solve It: A New Aspect of Mathematical Method_ , 2nd
edition. Princeton: Princeton University Press, 2014.
Rosen, K., _Discrete Mathematics and Its Applications_ , 7th edition. New York:
McGraw-Hill, 2012.
Rosen, K., _Elementary Number Theory and its Applications_ , 6th edition.
Boston: Pearson, 2010.

### 451


452 _Suggestions for Further Reading_

Silverman, J., _A Friendly Introduction to Number Theory_ , 4th edition. Boston:
Pearson, 2012.
van Dalen, D., Doets, H., and deSwart, H., _Sets: Naive, Axiomatic, and
Applied_ , Oxford: Pergamon Press, 1978.


## Summary of Proof Techniques

**To prove a goal of the form:**

1. ¬P:
    (a) Reexpress as a positive statement.
(b) Use proof by contradiction; that is, assume thatP is true and try to
reach a contradiction.
2. P →Q:
    (a) AssumePis true and proveQ.
(b) Prove the contrapositive; that is, assume thatQis false and prove that
Pis false.
3. P∧Q:
    ProveP andQseparately. In other words, treat this as two separate goals:
    P, andQ.
4. P∨Q:
    (a) AssumePis false and proveQ, or assumeQis false and proveP.
(b) Use proof by cases. In each case, either proveP or proveQ.
5. P ↔Q:
    ProveP →QandQ→P, using the methods listed under part 2.
6. ∀xP (x):
    Letxstand for an arbitrary object, and proveP (x). (If the letterxalready
    stands for something in the proof, you will have to use a different letter for
    the arbitrary object.)
7. ∃xP (x):
    Find a value ofxthat makesP (x)true. ProveP (x)for this value ofx.
8. ∃!xP (x):
    (a) Prove ∃xP (x) (existence) and∀y∀z((P (y) ∧P (z)) → y = z)
       (uniqueness).
(b) Prove the equivalent statement∃x(P (x) ∧ ∀y(P (y) →y= x)).

```
453
```

454 _Summary of Proof Techniques_

9. ∀n∈NP (n):
    (a) Mathematical induction: ProveP ( 0 )(base case) and∀n∈N(P (n) →
       P (n+ 1))(induction step).
(b) Strong induction: Prove∀n∈N[(∀k < n P (k))→P (n)].

**To use a given of the form:**

1. ¬P:
    (a) Reexpress as a positive statement.
(b) In a proof by contradiction, you can reach a contradiction by provingP.
2. P →Q:
    (a) If you are also givenP, or you can prove thatP is true, then you can
       conclude thatQis true.
(b) Use the contrapositive: If you are given or can prove thatQis false,
then you can conclude thatP is false.
3. P∧Q:
    Treat this as two givens:P, andQ.
4. P∨Q:
    (a) Use proof by cases. In case 1 assume thatP is true, and in case 2
       assume thatQis true.
(b) If you are also given thatP is false, or you can prove thatP is false,
then you can conclude thatQis true. Similarly, if you know thatQ is
false then you can conclude thatP is true.
5. P ↔Q:
    Treat this as two givens:P →Q, andQ→P.
6. ∀xP (x):
    You can plug in any value, saya, forx, and conclude thatP (a)is true.
7. ∃xP (x):
    Introduce a new variable, sayx 0 , into the proof, to stand for a particular
    object for whichP (x 0 )is true.
8. ∃!xP (x):
    Introduce a new variable, sayx 0 , into the proof, to stand for a particular
    object for whichP (x 0 )is true. You may also assume that ∀y(P (y) →
    y=x 0 ).

**Techniques that can be used in any proof:**

1. Proof by contradiction: Assume the goal is false and derive a contradiction.
2. Proof by cases: Consider several cases that are _exhaustive_ , that is, that
    include all the possibilities. Prove the goal in each case.


## Index

absorption laws, 21
Adleman, Leonard, 360
Alford, W. R., 370
algebraic number, 388
almost disjoint, 389
amicable numbers, 7
antecedent, 45
antisymmetric, 200
arbitrary object, 113
arithmetic mean, 290
arithmetic mean–geometric mean inequality,
290
associative laws
for ± , 45
for∧and∨, 21, 26
for composition of relations, 186
for modular arithmetic, 344
for multiplication, 316

base case, 273, 304
Bernstein, Felix, 390
biconditional, 54
truth table for, 54
big-oh, 239, 301, 303, 314, 388
bijection, 246
binary operation, 264
binary relation, 193
binomial coefficient, 301, 312
binomial theorem, 302
bound variable, 29, 59
bounded quantifier, 72

Cantor, Georg, 384, 390
Cantor’s theorem, 384, 388
Cantor-Schr ̈oder-Bernstein theorem, 390
cardinality, 372
Carmichael, Robert Daniel, 370
Carmichael number, 370
Cartesian product, 174
cases, proof by, 142

```
Chinese remainder theorem, 358
closed, 259, 263
closure, 260, 264, 316
Cocks, Clifford, 360
Cohen, Paul, 394
commutative laws
for∧and∨, 21
for modular arithmetic, 344
for multiplication, 316
compatible, 227, 239, 248
complete residue system, 342
composite number, 1
composition, 183, 191, 192, 234
conclusion, 8, 90
conditional, 45
antecedent of, 45
consequent of, 45
laws, 49
truth table for, 46–47, 49, 148
congruent, 215, 224, 341
conjecture, 2
conjunction, 10
truth table for, 15
connective symbol, 10
consequent, 45
constant function, 238, 247, 249
continuum hypothesis, 394
contradiction, 22, 26, 42
laws, 23
proof by, 102, 105
contrapositive, 51, 96
law, 51
converse, 51
coordinate, 173
countable set, 375, 382–389
counterexample, 2, 90
cryptography
public-key, 359–371
symmetric, 360
```
```
455
```

456 _Index_

De Morgan, Augustus, 21
De Morgan’s laws, 21, 25
decreasing, 267
decrypt, 359
denumerable set, 375, 394
diagonalization, 386
difference of sets, 35
digital signature, 368
directed graph, 194
disjoint, 41
pairwise, 161, 216
disjunction, 10
truth table for, 15
disjunctive syllogism, 149
distributive laws
for ∩ and∪, 39, 40
for∃and∨, 77
for∀and∧, 74, 86
for∧and∨, 21, 25, 39, 40
for modular arithmetic, 344
divides, 126
division algorithm, 305, 313, 325, 342
divisor, 324
domain, 183, 191, 233
dominates, 390
double negation law, 21, 25
dummy variable, 29

edge, 191
element, 28
empty set, 33
encrypt, 359
equinumerous, 372
equivalence class, 216, 217
equivalence relation, 215–228, 239, 381
equivalent formulas, 20
Euclid, 4, 5, 327, 358
Euclidean algorithm, 327, 331
extended, 329, 346, 364
least absolute remainder, 332
Euler, Leonhard, 5, 289, 340, 351, 359, 369
Euler’s phi function, 351, 354
Euler’s theorem, 353, 360, 362, 369, 371
Euler’s totient function, 351, 354
even integer, 132, 377
exclusive cases, 144
exclusive or, 15, 24
exhaustive cases, 142
existential instantiation, 120
existential quantifier, 58
exponentiation in modular arithmetic, 353,
357, 361, 368
efficient computation, 364, 369

factorial, 5, 165, 294, 296
family of sets, 79
Fermat, Pierre de, 289, 340, 369

```
Fermat number, 289, 340, 369
Fermat primality test, 369–371
Fermat pseudoprime, 369–371
Fermat witness, 369–371
Fermat’s little theorem, 357, 369
Fibonacci, 307
Fibonacci numbers, 306, 311, 312, 331
finite sequence, 383
finite set, 246, 280–283, 289, 292, 322, 372
fixed point, 259
formula, 12
free variable, 29, 59
function, 229
compatible with an equivalence relation,
239, 248
composition of, 234
constant, 238, 247, 249
domain of, 233
identity, 230, 251–256
inverse of, 249–259
of two variables, 263
one-to-one, 240
onto, 240
range of, 233, 242
restriction of, 237, 247, 258
strictly decreasing, 267
strictly increasing, 267
fundamental theorem of arithmetic, 335
G ̈odel, Kurt, 394
geometric mean, 290
Gibonacci sequence, 312
given, 93
goal, 93
golden ratio, 315
Granville, Andrew, 370
graph, 194
greatest common divisor, 324
greatest lower bound (g.l.b.), 167, 208, 209
harmonic mean, 290
harmonic numbers, 300
Hilbert, David, 340, 394
Hilbert number, 340
Hilbert prime, 340
hypothesis, 90
idempotent laws, 21
identity
elements in modular arithmetic, 344, 349
function, 230, 251–256
relation, 193, 215, 230
iff, 54
image, 230, 233, 268–272
inclusion-exclusion principle, 381
inclusive or, 15
increasing, 267
```

```
Index 457
```
index, 78
index set, 78
indexed family, 78, 79
induction, 273
strong, 304, 311
induction step, 273
inductive hypothesis, 276, 304
infinite set, 372
injection, 240
instance of a theorem, 90
integer, 32
intersection
of family of sets, 81, 82
of indexed family of sets, 84
of two sets, 35, 82
interval, 378, 396
inverse
additive in modular arithmetic, 344, 349
multiplicative in modular arithmetic, 345,
349, 351
of a function, 249–259
of a relation, 183, 191
inverse image, 268–272
irrational number, 171, 310, 387
irreflexive, 214

key, 360
public, 360

largest element, 208
least common multiple, 337
least upper bound (l.u.b), 209
lemma, 219
Leonardo of Pisa, 307
limit, 168
linear combination, 328
logarithm, 256
loop, 194
lower bound, 167, 208
Lucas, Edouard, 313
Lucas numbers, 313

main connective, 17
mathematical induction, _see_ induction
maximal element, 208
mean
arithmetic, 290
geometric, 290
harmonic, 290
Mersenne, Marin, 5
Miller, Gary L., 371
Miller-Rabin test, 371
Miller-Rabin witness, 371
minimal element, 203, 280
modular arithmetic, 341–351
modulo, 217
modus ponens, 108

```
modus tollens, 108, 113
multiplicative function, 354, 358
nand, 25
natural number, 32
necessary condition, 52
negation, 10
truth table for, 15
nor, 24
null set, 33
odd integer, 132
one-to-one, 240
one-to-one correspondence, 246
onto, 240
ordered pair, 173
ordered triple or quadruple, 179
pairwise disjoint, 161, 216
partial order, 200, 280, 282, 380
strict, 214
partition, 216
Pascal, Blaise, 302
Pascal’s triangle, 302
perfect number, 5, 358, 359
periodic point, 322
pigeonhole principle, 378
polynomial, 314
Pomerance, Carl, 370
power set, 80, 384
premise, 8
preorder, 228, 239, 249
primality test, 363
Fermat, 369–371
Miller-Rabin, 371
probabilistic, 363, 369–371
prime factorization, 4, 164, 306, 332,
335, 363
prime number, 1, 75, 78, 163–166,
306, 320
largest known, 5
Mersenne, 5
twin, 6
proof, 1, 89
by cases, 143–147
by contradiction, 102, 105
Proof Designer, xi, 128
proof strategy
for a given of the form
P→Q, 108
P↔Q, 132
P∨Q, 143, 149
P∧Q, 131
∃xP (x), 120
∃!xP (x), 159
∀xP (x), 121
¬P, 105, 108
```

458 _Index_

proof strategy ( _cont_ )
for a goal of the form
P→Q, 92, 95, 96
P↔Q, 132
P∨Q, 145, 147
P∧Q, 130
∃xP (x), 118
∃!xP (x), 156, 158
∀n∈NP (n), 273, 304
∀xP (x), 114
¬P, 101, 102
pseudoprime, 369–371
public key, 360
public-key cryptography, 359–371

quantifier, 58–67
bounded, 72
existential, 58
negation laws, 68, 70, 73, 135–136
unique existential, 71, 153–162
universal, 58
quotient, 305, 313, 325–330, 342

Rabin, Michael O., 371
range, 183, 191, 233, 242
rational number, 32, 171, 377, 393, 396
real number, 32
rearrangement inequality, 291
recursive
definition, 294
procedure, 288
refine, 228
reflexive, 194
relation, 182
antisymmetric, 200
binary, 193
compatible with an equivalence relation,
227
composition of, 183, 191, 192
domain of, 183, 191
identity, 193, 215, 230
inverse of, 183, 191
irreflexive, 214
range of, 183, 191
reflexive, 194
symmetric, 194
transitive, 194
relatively prime, 333
remainder, 146, 305, 313, 325–330,
342
restriction, 237, 247, 258
Rivest, Ron, 360
RSA, 360
rule of inference, 108, 120, 121,
149
Russell, Bertrand, 88
Russell’s paradox, 88

```
Schr ̈oder, Ernst, 390
set, 28, see also countable set; denumerable
set; empty set (or null set); family of
sets; finite set; index set; infinite set;
power set; subset; truth set
Shamir, Adi, 360
σ∑, 358
-notation, 295
smallest element, 203
strict partial order, 214
strict total order, 214
strictly dominates, 390
strong induction, 304, 311
subset, 41
sufficient condition, 52
Sun Zi, 358
surjection, 240
symmetric, 194
symmetric closure, 214
symmetric cryptography, 360
symmetric difference, 38, 45, 150–152, 161
τ, 358
tautology, 22, 26
laws, 23
theorem, 90
total order, 201, 282, 381
strict, 214
transitive, 194
transitive closure, 214, 322
triangle inequality, 151
truth set, 27, 31, 38, 173, 179
truth table, 15–24
truth value, 15
uncountable set, 375, 382–389
union
of family of sets, 81, 82
of indexed family of sets, 84
of two sets, 35, 82
universal instantiation, 121
universal quantifier, 58
universe of discourse, 32
upper bound, 208
vacuously true statement, 74
valid argument, 9, 18
variable, 26
bound, 29, 59
dummy, 29
free, 29, 59
Venn diagram, 37, 41
vertex, 191
well-formed formula, 12
well-ordering principle, 309, 327
Zhang, Yitang, 6
```