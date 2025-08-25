# How To Prove It

## Contents

- Introduction Preface page ix
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
- 4.5 Closures viii Contents
- 4.6 Equivalence Relations
- 5 Functions
- 5.1 Functions
- 5.2 One-to-one and Onto
- 5.3 Inverses of Functions
- 5.4 Images and Inverse Images: A Research Project
- 6 Mathematical Induction
- 6.1 Proof by Mathematical Induction
- 6.2 More Examples
- 6.3 Recursion
- 6.4 Strong Induction
- 6.5 Closures Again
- 7 Infinite Sets
- 7.1 Equinumerous Sets
- 7.2 Countable and Uncountable Sets
- 7.3 The Cantor–Schr ̈oder–Bernstein Theorem
- Appendix 1: Solutions to Selected Exercises
- Appendix 2: Proof Designer
- Suggestions for Further Reading
- Summary of Proof Techniques
- Index

Preface

Students of mathematics and computer science often have trouble the first
time they’re asked to work seriously with mathematical proofs, because they
don’t know the “rules of the game.” What is expected of you if you are asked
to prove something? What distinguishes a correct proof from an incorrect
one? This book is intended to help students learn the answers to these ques-
tions by spelling out the underlying principles involved in the construction of
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
computer scientists to embrace the structured approach to programming ap-
ply to proof-writing as well. You might say that this book teaches “structured
proving.”
In structured programming, a computer program is constructed, not by listing
instructions one after another, but by combining certain basic structures such
as the if-else construct and do-while loop of the Java programming language.
These structures are combined, not only by listing them one after another, but
also by _nesting_ one within another. For example, a program constructed by

```
ix
```

x _Preface_

nesting an if-else construct within a do-while loop would look like this:
do
if [condition]
[List of instructions goes here.]
else
[Alternate list of instructions goes here.]
while [condition]
The indenting in this program outline is not absolutely necessary, but it is a
convenient method often used in computer science to display the underlying
structure of a program.
Mathematical proofs are also constructed by combining certain basic proof
structures. For example, a proof of a statement of the form “if _P_ then _Q_ ” often
uses what might be called the “suppose-until” structure: We _suppose_ that _P_ is
true _until_ we are able to reach the conclusion that _Q_ is true, at which point we
retract this supposition and conclude that the statement “if _P_ then _Q_ ” is true.
Another example is the “for arbitrary _x_ prove” structure: To prove a statement
of the form “for all _x_ , _P_ ( _x_ ),” we _declare x to be an arbitrary object_ and then
_prove P(x)_. Once we reach the conclusion that _P_ ( _x_ ) is true we retract the
declaration of _x_ as arbitrary and conclude that the statement “for all _x_ , _P_ ( _x_ )”
is true. Furthermore, to prove more complex statements these structures are
often combined, not only by listing one after another, but also by nesting one
within another. For example, to prove a statement of the form “for all _x_ , if _P_ ( _x_ )
then _Q_ ( _x_ )” we would probably nest a “suppose-until” structure within a “for
arbitrary _x_ prove” structure, getting a proof of this form:
Let _x_ be arbitrary.
Suppose _P_ ( _x_ ) is true.
[Proof of _Q_ ( _x_ ) goes here.]
Thus, if _P_ ( _x_ ) then _Q_ ( _x_ ).
Thus, for all _x_ , if _P_ ( _x_ ) then _Q_ ( _x_ ).
As before, we have used indenting to make the underlying structure of the proof
clear.
Of course, mathematicians don’t ordinarily write their proofs in this indented
form. Our aim in this book is to teach students to write proofs in ordinary
English paragraphs, just as mathematicians do, and not in the indented form.
Nevertheless, our approach is based on the belief that if students are to succeed
atwritingsuchproofs,theymustunderstandtheunderlyingstructurethatproofs
have. They must learn, for example, that sentences like “Let _x_ be arbitrary” and
“Suppose _P_ ” are not isolated steps in proofs, but are used to introduce the “for
arbitrary _x_ prove” and “suppose-until” proof structures. It is not uncommon
for beginning students to use these sentences inappropriately in other ways.

```
Preface xi
```

Such mistakes are analogous to the programming error of using a “do” with no
matching “while.”
Note that in our examples, the choice of proof structure is guided by the log-
ical form of the statement being proven. For this reason, the book begins with
elementary logic to familiarize students with the various forms that mathemati-
cal statements take. Chapter 1 discusses logical connectives, and quantifiers are
introduced in Chapter 2. These chapters also present the basics of set theory,
because it is an important subject that is used in the rest of the book (and
throughout mathematics), and also because it serves to illustrate many of the
points of logic discussed in these chapters.
Chapter 3 covers structured proving techniques in a systematic way, running
through the various forms that mathematical statements can take and discussing
the proof structures appropriate for each form. The examples of proofs in this
chapter are for the most part chosen, not for their mathematical content, but for
the proof structures they illustrate. This is especially true early in the chapter,
when only a few proof techniques have been discussed, and as a result many of
the proofs in this part of the chapter are rather trivial. As the chapter progresses
the proofs get more sophisticated and more interesting, mathematically.
Chapters 4 and 5, on relations and functions, serve two purposes. First,
they provide subject matter on which students can practice the proof-writing
techniques from Chapter 3. And second, they introduce students to some fun-
damental concepts used in all branches of mathematics.
Chapter 6 is devoted to a method of proof that is very important in both
mathematics and computer science: mathematical induction. The presentation
builds on the techniques from Chapter 3, which students should have mastered
by this point in the book.
Finally, in Chapter 7 many ideas from throughout the rest of the book are
brought together to prove some of the most difficult and most interesting the-
orems in the book.
I would like to thank all those who read earlier drafts of the manuscript and
made many helpful suggestions for improvements, in particular Lauren Cowles
at Cambridge University Press, my colleague Professor Duane Bailey and his
Discrete Mathematics class, who tried out earlier versions of some chapters,
and finally my wife, Shelley, without whose constant encouragement this book
would never have been written.

xii _Preface_

```
Preface to the Second Edition
```

I would like to thank all of those who have sent me comments about the first
edition. Those comments have resulted in a number of small changes through-
out the text. However, the biggest difference between the first edition and the
second is the addition of over 200 new exercises. There is also an appendix
containing solutions to selected exercises. Exercises for which solutions are
supplied are marked with an asterisk. In most cases, the solution supplied is a
complete solution; in some cases, it is a sketch of a solution, or a hint.

Some exercises in Chapters 3 and 4 are also marked with the symbolpd.
This indicates that these exercises can be solved using Proof Designer. Proof
Designer is computer software that helps the user write outlines of proofs
in elementary set theory, using the methods discussed in this book. Further
information about Proof Designer can be found in an appendix, and at the Proof
Designer website:<http://www.cs.amherst.edu/∼djv/pd/pd.html>.

Introduction

What is mathematics? High school mathematics is concerned mostly with solv-
ing equations and computing answers to numerical questions. College mathe-
matics deals with a wider variety of questions, involving not only numbers, but
also sets, functions, and other mathematical objects. What ties them together
is the use of _deductive reasoning_ to find the answers to questions. When you
solve an equation for _x_ you are using the information given by the equation
to _deduce_ what the value of _x_ must be. Similarly, when mathematicians solve
other kinds of mathematical problems, they always justify their conclusions
with deductive reasoning.
Deductive reasoning in mathematics is usually presented in the form of a
_proof_. One of the main purposes of this book is to help you develop your
mathematical reasoning ability in general, and in particular your ability to read
and write proofs. In later chapters we’ll study how proofs are constructed in
detail, but first let’s take a look at a few examples of proofs.
Don’t worry if you have trouble understanding these proofs. They’re
just intended to give you a taste of what mathematical proofs are like. In
some cases you may be able to follow many of the steps of the proof, but you
may be puzzled about why the steps are combined in the way they are, or how
anyone could have thought of the proof. If so, we ask you to be patient. Many
of these questions will be answered later in this book, particularly in Chapter 3.
All of our examples of proofs in this introduction will involve prime num-
bers. Recall that an integer larger than 1 is said to be _prime_ if it cannot be
written as a product of two smaller positive integers. For example, 6 is not a
prime number, since 6= 2 ·3, but 7 is a prime number.
Before we can give an example of a proof involving prime numbers, we
need to find something to prove – some fact about prime numbers whose
correctness can be verified with a proof. Sometimes you can find interesting

#### 1

2 _Introduction_

patterns in mathematics just by trying out a calculation on a few numbers.
For example, consider the table in Figure 1. For each integer _n_ from 2 to 10,
the table shows whether or not both _n_ and 2 _n_ -1 are prime, and a surprising
pattern emerges. It appears that 2 _n_ -1 is prime in precisely those cases in
which _n_ is prime!

```
Figure 1
```

Will this pattern continue? It is tempting to guess that it will, but this is
only a guess. Mathematicians call such guesses _conjectures_. Thus, we have the
following two conjectures:

**Conjecture 1.** _Suppose n is an integer larger than_ 1 _and n is prime. Then_
2 _n_ - 1 _is prime._

**Conjecture 2.** _Suppose n is an integer larger than_ 1 _and n is not prime. Then_
2 _n_ - 1 _is not prime._

Unfortunately, if we continue the table in Figure 1, we immediately find that
Conjecture 1 is incorrect. It is easy to check that 11 is prime, but 2^11 - 1 =
2047 = 23 ·89, so 2^11 -1 is not prime. Thus, 11 is a _counterexample_ to
Conjecture 1. The existence of even one counterexample establishes that the
conjecture is incorrect, but it is interesting to note that in this case there are
many counterexamples. If we continue checking numbers up to 30, we find
two more counterexamples to Conjecture 1: Both 23 and 29 are prime, but
223 - 1 = 8 , 388 , 607 = 47 · 178 ,481 and 2^29 - 1 = 536 , 870 , 911 = 2 , 089 ·
256 ,999. However, no number up to 30 is a counterexample to Conjecture 2.
Do you think that Conjecture 2 is correct? Having found counterexamples to
Conjecture 1, we know that this conjecture is incorrect, but our failure to find a

```
Introduction 3
counterexample to Conjecture 2 does not show that it is correct. Perhaps there
are counterexamples, but the smallest one is larger than 30. Continuing to check
examples might uncover a counterexample, or, if it doesn’t, it might increase
our confidence in the conjecture. But we can never be sure that the conjecture
is correct if we only check examples. No matter how many examples we check,
there is always the possibility that the next one will be the first counterexample.
The only way we can be sure that Conjecture 2 is correct is to prove it.
In fact, Conjecture 2 is correct. Here is a proof of the conjecture:
```

_Proof of Conjecture 2._ Since _n_ is not prime, there are positive integers
_a_ and _b_ such that _a_ < _n_ , _b_ < _n_ , and _n_ = _ab_. Let _x_ = 2 _b_ -1 and _y_ =
1 + 2 _b_ + 22 _b_ + · · · + 2 ( _a_ -1) _b_. Then

```
xy =(2 b -1)·(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
= 2 b ·(1+ 2 b + 22 b + · · · + 2 ( a -1) b )-(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
=(2 b + 22 b + 23 b + · · · + 2 ab )-(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
= 2 ab - 1
= 2 n - 1.
```

Since _b_ < _n_ , we can conclude that _x_ = 2 _b_ - 1 < 2 _n_ -1. Also, since
_ab_ = _n_ > _a_ , it follows that _b_ >1. Therefore, _x_ = 2 _b_ - 1 > 21 - 1 =1, so
_y_ < _xy_ = 2 _n_ -1. Thus, we have shown that 2 _n_ -1 can be written as the prod-
uct of two positive integers _x_ and _y_ , both of which are smaller than 2 _n_ -1, so
2 _n_ -1 is not prime. 

Now that the conjecture has been proven, we can call it a _theorem_. Don’t
worry if you find the proof somewhat mysterious. We’ll return to it again at
the end of Chapter 3 to analyze how it was constructed. For the moment, the
most important point to understand is that if _n_ is any integer larger than 1
that can be written as a product of two smaller positive integers _a_ and _b_ , then
the proof gives a method (admittedly, a somewhat mysterious one) of writing
2 _n_ -1 as a product of two smaller positive integers _x_ and _y_. Thus, if _n_ is not
prime, then 2 _n_ -1 must also not be prime. For example, suppose _n_ =12, so
2 _n_ - 1 = 4095 .Since 12= 3 ·4, we could take _a_ =3 and _b_ =4 in the proof.
Then according to the formulas for _x_ and _y_ given in the proof, we would
have _x_ = 2 _b_ - 1 = 24 - 1 =15, and _y_ = 1 + 2 _b_ + 22 _b_ + · · · + 2 ( _a_ -1) _b_ =
1 + 24 + 28 =273. And, just as the formulas in the proof predict, we have
_xy_ = 15 · 273 = 4095 = 2 _n_ -1. Of course, there are other ways of factoring
12 into a product of two smaller integers, and these might lead to other ways of

4 _Introduction_

factoring 4095. For example, since 12= 2 ·6, we could use the values _a_ = 2
and _b_ =6. Try computing the corresponding values of _x_ and _y_ and make sure
their product is 4095.
Although we already know that Conjecture 1 is incorrect, there are still inter-
esting questions we can ask about it. If we continue checking prime numbers
_n_ to see if 2 _n_ -1 is prime, will we continue to find counterexamples to the
conjecture – examples for which 2 _n_ -1 is not prime? Will we continue to find
examples for which 2 _n_ -1 is prime? If there were only finitely many prime
numbers, then we might be able to investigate these questions by simply check-
ing 2 _n_ -1 for every prime number _n_. But in fact there are infinitely many prime
numbers. Euclid (circa 350b.c.) gave a proof of this fact in Book IXof his
_Elements_. His proof is one of the most famous in all of mathematics:

**Theorem 3.** _There are infinitely many prime numbers.
Proof._ Suppose there are only finitely many prime numbers. Let _p_ 1 , _p_ 2 ,... , _pn_
be a list of all prime numbers. Let _m_ = _p_ 1 _p_ 2 · · · _pn_ +1. Note that _m_ is not
divisible by _p_ 1 , since dividing _m_ by _p_ 1 gives a quotient of _p_ 2 _p_ 3 · · · _pn_ and a
remainder of 1. Similarly, _m_ is not divisible by any of _p_ 2 , _p_ 3 ,... , _pn_.
We now use the fact that every integer larger than 1 is either prime or can
be written as a product of primes. (We’ll see a proof of this fact in Chapter 6.)
Clearly _m_ is larger than 1, so _m_ is either prime or a product of primes. Suppose
first that _m_ is prime. Note that _m_ is larger than all of the numbers in the
list _p_ 1 , _p_ 2 ,... , _pn_ , so we’ve found a prime number not in this list. But this
contradicts our assumption that this was a list of _all_ prime numbers.
Now suppose _m_ is a product of primes. Let _q_ be one of the primes in this
product. Then _m_ is divisible by _q_. But we’ve already seen that _m_ is not divisible
by any of the numbers in the list _p_ 1 , _p_ 2 ,... , _pn_ , so once again we have a
contradiction with the assumption that this list included all prime numbers.
Since the assumption that there are finitely many prime numbers has led to
a contradiction, there must be infinitely many prime numbers. 

Once again, you should not be concerned if some aspects of this proof seem
mysterious. After you’ve read Chapter 3 you’ll be better prepared to understand
the proof in detail. We’ll return to this proof then and analyze its structure.
We have seen that if _n_ is not prime then 2 _n_ -1 cannot be prime, but if _n_ is
prime then 2 _n_ -1 can be either prime or not prime. Because there are infinitely
many prime numbers, there are infinitely many numbers of the form 2 _n_ - 1
that, based on what we know so far, _might_ be prime. But how many of them
_are_ prime?

_Introduction_ 5
Prime numbers of the form 2 _n_ -1 are called _Mersenne primes_ , after Father
Marin Mersenne (1588–1647), a French monk and scholar who studied these
numbers. Although many Mersenne primes have been found, it is still not
known if there are infinitely many of them. Many of the largest known prime
numbers are Mersenne primes. As of this writing (April 2005), the largest
known prime number is the Mersenne prime 2^25 ,^964 ,^951 -1, a number with
7,816,230 digits.
Mersenne primes are related to perfect numbers, the subject of another fa-
mous unsolved problem of mathematics. A positive integer _n_ is said to be
_perfect_ if _n_ is equal to the sum of all positive integers smaller than _n_ that divide
_n_. (For any two integers _m_ and _n_ , we say that _m divides n_ if _n_ is divisible by _m_ ;
in other words, if there is an integer _q_ such that _n_ = _qm_ .) For example, the only
positive integers smaller than 6 that divide 6 are 1, 2, and 3, and 1+ 2 + 3 =6.
Thus, 6 is a perfect number. The next smallest perfect number is 28. (You should
check for yourself that 28 is perfect by finding all the positive integers smaller
than 28 that divide 28 and adding them up.)
Euclid proved that if 2 _n_ -1 is prime, then 2 _n_ -^1 (2 _n_ -1) is perfect. Thus,
every Mersenne prime gives rise to a perfect number. Furthermore, about
2000 years after Euclid’s proof, the Swiss mathematician Leonhard Euler
(1707–1783), the most prolific mathematician in history, proved that every
even perfect number arises in this way. (For example, note that 6= 21 (2^2 -1)
and 28= 22 (2^3 -1).) Because it is not known if there are infinitely many
Mersenne primes, it is also not known if there are infinitely many even perfect
numbers. It is also not known if there are any odd perfect numbers.
Although there are infinitely many prime numbers, the primes thin out as
we look at larger and larger numbers. For example, there are 25 primes be-
tween 1 and 100, 16 primes between 1000 and 1100, and only six primes
between 1,000,000 and 1,000,100. As our last introductory example of a proof,
we show that there are long stretches of consecutive positive integers con-
taining no primes at all. In this proof, we’ll use the following terminology:
For any positive integer _n_ , the product of all integers from 1 to _n_ is called
_n factorial_ and is denoted _n_ !. Thus, _n_ != 1 · 2 · 3 · · · _n_. As with our previous
two proofs, we’ll return to this proof at the end of Chapter 3 to analyze its
structure.

**Theorem 4.** _For every positive integer n, there is a sequence of n consecutive
positive integers containing no primes.
Proof._ Suppose _n_ is a positive integer. Let _x_ =( _n_ +1)!+2. We will show that
none of the numbers _x_ , _x_ + 1 , _x_ + 2 ,... , _x_ +( _n_ -1) is prime. Since this is a
sequence of _n_ consecutive positive integers, this will prove the theorem.

6 _Introduction_

```
To see that x is not prime, note that
```

```
x = 1 · 2 · 3 · 4 · · · ( n +1)+ 2
= 2 ·(1· 3 · 4 · · · ( n +1)+1).
```

Thus, _x_ can be written as a product of two smaller positive integers, so _x_ is
not prime.
Similarly, we have

```
x + 1 = 1 · 2 · 3 · 4 · · · ( n +1)+ 3
= 3 ·(1· 2 · 4 · · · ( n +1)+1),
```

so _x_ +1 is also not prime. In general, consider any number _x_ + _i_ , where
0 ≤ _i_ ≤ _n_ -1. Then we have

```
x + i = 1 · 2 · 3 · 4 · · · ( n +1)+( i +2)
=( i +2)·(1· 2 · 3 · · · ( i +1)·( i +3)· · · ( n +1)+1),
```

so _x_ + _i_ is not prime. 

Theorem 4 shows that there are sometimes long stretches between one prime
and the next prime. But primes also sometimes occur close together. Since 2
is the only even prime number, the only pair of consecutive integers that are
both prime is 2 and 3. But there are lots of pairs of primes that differ by only
two, for example, 5 and 7, 29 and 31, and 7949 and 7951. Such pairs of primes
are called _twin primes_. It is not known whether there are infinitely many twin
primes.

```
Exercises
```

∗1. (a) Factor 2 (^15) - 1 =32,767 into a product of two smaller positive integers.
(b) Find an integer _x_ such that 1< _x_ < 232767 -1 and 2^32767 -1 is divis-
ible by _x_.

2. Make some conjectures about the values of _n_ for which 3 _n_ -1 is prime or
    the values of _n_ for which 3 _n_ - 2 _n_ is prime. (You might start by making a
    table similar to Figure 1.)
∗3. The proof of Theorem 3 gives a method for finding a prime number different

```
from any in a given list of prime numbers.
(a) Use this method to find a prime different from 2, 3, 5, and 7.
(b) Use this method to find a prime different from 2, 5, and 11.
```

4. Find five consecutive integers that are not prime.

```
Introduction 7
```

5. Use the table in Figure 1 and the discussion on p. 5 to find two more perfect
    numbers.
6. The sequence 3, 5, 7 is a list of three prime numbers such that each pair of
    adjacent numbers in the list differ by two. Are there any more such “triplet
    primes”?

### 1 Sentential Logic

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
some other statements, called _premises_ , are true. For example, the premises in
argument 3 are the statements “I will go to work either tomorrow or today”
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

or today, would be false as well!Although we have no guarantee that the
conclusion is true, it can only be false if at least one of the premises is also
false. _If_ both premises are true, we can be sure that the conclusion is also true.
This is the sense in which the conclusion is forced on us by the premises, and
this is the standard we will use to judge the correctness of deductive reasoning.
We will say that an argument is _valid_ if the premises cannot all be true without
the conclusion being true as well. All three of the arguments in our example
are valid arguments.
Here’s an example of an invalid deductive argument:

```
Either the butler is guilty or the maid is guilty.
Either the maid is guilty or the cook is guilty.
Therefore, either the butler is guilty or the cook is guilty.
```

The argument is invalid because the conclusion could be false even if both
premises are true. For example, if the maid were guilty, but the butler and the
cook were both innocent, then both premises would be true and the conclusion
would be false.
We can learn something about what makes an argument valid by compar-
ing the three arguments in Example 1.1.1. On the surface it might seem that
arguments 2 and 3 have the most in common, because they’re both about
the same subject: attendance at work. But in terms of the reasoning used,
arguments 1 and 3 are the most similar. They both introduce two possibili-
ties in the first premise, rule out the second one with the second premise, and
then conclude that the first possibility must be the case. In other words, both
arguments have the form:

```
P or Q.
not Q.
Therefore, P.
```

It is this form, and not the subject matter, that makes these arguments valid.
You can see that argument 1 has this form by thinking of the letter _P_ as standing
for the statement “It will rain tomorrow,” and _Q_ as standing for “It will snow
tomorrow.” For argument 3, _P_ would be “I will go to work tomorrow,” and _Q_
would be “I will go to work today.”
Replacing certain statements in each argument with letters, as we have in
stating the form of arguments 1 and 3, has two advantages. First, it keeps us
from being distracted by aspects of the arguments that don’t affect their validity.
You don’t need to know anything about weather forecasting or work habits to
recognize that arguments 1 and 3 are valid. That’s because both arguments have
the form shown earlier, and you can tell that this argument form is valid without

10 _Sentential Logic_

even knowing what _P_ and _Q_ stand for. If you don’t believe this, consider the
following argument:

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
the meanings of just a few words give us the key to understanding what makes
a piece of reasoning valid or invalid. (Which are the important words in ar-
gument 2 in Example 1.1.1?) The first few chapters of this book are devoted
to studying those words and how they are used in mathematical writing and
reasoning.
In this chapter, we’ll concentrate on words used to combine statements to
form more complex statements. We’ll continue to use letters to stand for state-
ments, but only for unambiguous statements that are either true or false. Ques-
tions, exclamations, and vague statements will not be allowed. It will also be
useful to use symbols, sometimes called _connective symbols_ , to stand for some
of the words used to combine statements. Here are our first three connective
symbols and the words they stand for:

Symbol Meaning
or  or
and  and
not  not
Thus, if _P_ and _Q_ stand for two statements, then we’ll write _P_ or  _Q_ to stand
for the statement “ _P_ or _Q_ ,” _P_ and  _Q_ for “ _P_ and _Q_ ,” andnot  _P_ for “not _P_ ” or
“ _P_ is false.” The statement _P_ or  _Q_ is sometimes called the _disjunction_ of _P_
and _Q_ , _P_ and  _Q_ is called the _conjunction_ of _P_ and _Q_ , andnot  _P_ is called the
_negation_ of _P_.

**Example 1.1.2.** Analyze the logical forms of the following statements:

1. Either John went to the store, or we’re out of eggs.
2. Joe is going to leave home and not come back.
3. Either Bill is at work and Jane isn’t, or Jane is at work and Bill isn’t.

```
Deductive Reasoning and Logical Connectives 11
Solutions
```

1. If we let _P_ stand for the statement “John went to the store” and _Q_ stand for
    “We’re out of eggs,” then this statement could be represented symbolically
    as _P_ or  _Q_.
2. If we let _P_ stand for the statement “Joe is going to leave home” and _Q_ stand
    for “Joe is not going to come back,” then we could represent this statement
    symbolically as _P_ and  _Q_. But this analysis misses an important feature of the
    statement, because it doesn’t indicate that _Q_ is a negative statement. We
    could get a better analysis by letting _R_ stand for the statement “Joe is going
    to come back” and then writing the statement _Q_ asnot  _R_. Plugging this into
    our first analysis of the original statement, we get the improved analysis
       _P_ and  not  _R_.
3. Let _B_ stand for the statement “Bill is at work” and _J_ for the statement “Jane is
    at work.” Then the first half of the statement, “Bill is at work and Jane isn’t,”
    can be represented as _B_ and  not  _J_. Similarly, the second half is _J_ and  not  _B_. To
    represent the entire statement, we must combine these two with _or_ , forming
    their disjunction, so the solution is ( _B_ and  not  _J_ )or ( _J_ and  not  _B_ ).

Notice that in analyzing the third statement in the preceding example, we
added parentheses when we formed the disjunction of _B_ and  not  _J_ and _J_ and  not  _B_
to indicate unambiguously which statements were being combined. This is
like the use of parentheses in algebra, in which, for example, the product
of _a_ + _b_ and _a_ - _b_ would be written ( _a_ + _b_ )·( _a_ - _b_ ), with the parentheses
serving to indicate unambiguously which quantities are to be multiplied. As
in algebra, it is convenient in logic to omit some parentheses to make our
expressions shorter and easier to read. However, we must agree on some con-
ventions about how to read such expressions so that they are still unambigu-
ous. One convention is that the symbolnot always applies only to the state-
ment that comes immediately after it. For example,not  _P_ and  _Q_ means (not  _P_ )and  _Q_
rather thannot ( _P_ and  _Q_ ). We’ll see some other conventions about parentheses
later.

```
Example 1.1.3. What English sentences are represented by the following
expressions?
```

1. (not  _S_ and  _L_ )or  _S_ , where _S_ stands for “John is stupid” and _L_ stands for “John is
    lazy.”
2.not  _S_ and ( _L_ or  _S_ ), where _S_ and _L_ have the same meanings as before.
3.not ( _S_ and  _L_ )or  _S_ , with _S_ and _L_ still as before.

12 _Sentential Logic_

_Solutions_

1. Either John isn’t stupid and he is lazy, or he’s stupid.
2. John isn’t stupid, and either he’s lazy or he’s stupid. Notice how the place-
    ment of the word _either_ in English changes according to where the paren-
    theses are.
3. Either John isn’t both stupid and lazy, or John is stupid. The word
    _both_ in English also helps distinguish the different possible positions of
    parentheses.

It is important to keep in mind that the symbolsand ,or , andnot don’t really
correspond to all uses of the words _and_ , _or_ , and _not_ in English. For example,
the symboland could not be used to represent the use of the word _and_ in the
sentence “John and Bill are friends,” because in this sentence the word _and_ is
not being used to combine two statements. The symbolsand andor can only be
used _between two statements_ , to form their conjunction or disjunction, and the
symbolnot can only be used _before a statement_ , to negate it. This means that
certain strings of letters and symbols are simply meaningless. For example,
_P_ not  and  _Q_ , _P_ and /or  _Q_ , and _P_ not  _Q_ are all “ungrammatical” expressions in the
language of logic. “Grammatical” expressions, such as those in Examples 1.1.2
and 1.1.3, are sometimes called _well-formed formulas_ or just _formulas_. Once
again, it may be helpful to think of an analogy with algebra, in which the
symbols+,-,·, and÷can be used _between two numbers_ , as operators, and
the symbol-can also be used _before a number_ , to negate it. These are the
only ways that these symbols can be used in algebra, so expressions such as
_x_ - ÷ _y_ are meaningless.
Sometimes, words other than _and_ , _or_ , and _not_ are used to express the mean-
ings represented byand ,or , andnot . For example, consider the first statement in
Example 1.1.3. Although we gave the English translation “Either John isn’t
stupid and he is lazy, or he’s stupid,” an alternative way of conveying the same
information would be to say “Either John isn’t stupid _but_ he is lazy, or he’s
stupid.” Often, the word _but_ is used in English to mean _and_ , especially when
there is some contrast or conflict between the statements being combined. For
a more striking example, imagine a weather forecaster ending his forecast with
the statement “Rain and snow are the only two possibilities for tomorrow’s
weather.” This is just a roundabout way of saying that it will either rain or
snow tomorrow. Thus, even though the forecaster has used the word _and_ , the
meaning expressed by his statement is a disjunction. The lesson of these ex-
amples is that to determine the logical form of a statement you must think
about what the statement means, rather than just translating word by word into
symbols.

_Deductive Reasoning and Logical Connectives_ 13
Sometimes logical words are hidden within mathematical notation. For ex-
ample, consider the statement 3≤π. Although it appears to be a simple
statement that contains no words of logic, if you read it out loud you will
hear the word _or_. If we let _P_ stand for the statement 3< π and _Q_ for the
statement 3=π, then the statement 3≤πwould be written _P_ or  _Q_. In this
example the statements represented by the letters _P_ and _Q_ are so short that it
hardly seems worthwhile to abbreviate them with single letters. In cases like
this we will sometimes not bother to replace the statements with letters, so we
might also write this statement as (3< π )or (3=π).
For a slightly more complicated example, consider the statement 3≤π < 4.
This statement means 3≤π _and_ π < 4, so once again a word of logic has
been hidden in mathematical notation. Filling in the meaning that we just
worked out for 3≤π, we can write the whole statement as [(3< π )or (3=
π)]and (π < 4). Knowing that the statement has this logical form might be
important in understanding a piece of mathematical reasoning involving this
statement.

```
Exercises
```

∗1. Analyze the logical forms of the following statements:

```
(a) We’ll have either a reading assignment or homework problems, but we
won’t have both homework problems and a test.
(b) You won’t go skiing, or you will and there won’t be any snow.
(c)
```

#### √

#### 7 ≤2

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
4. Which of the following expressions are well-formed formulas?
    (a) not (not  _P_ or  not not  _R_ ).
    (b) not ( _P_ , _Q_ ,and  _R_ ).
    (c) _P_ and  not  _P_.
    (d) ( _P_ and  _Q_ )( _P_ or  _R_ ).

14 _Sentential Logic_
∗5. Let _P_ stand for the statement “I will buy the pants” and _S_ for the statement
“I will buy the shirt.” What English sentences are represented by the fol-
lowing expressions?
(a)not ( _P_ and  not  _S_ ).
(b)not  _P_ and  not  _S_.
(c)not  _P_ or  not  _S_.

6. Let _S_ stand for the statement “Steve is happy” and _G_ for “George is happy.”
    What English sentences are represented by the following expressions?
    (a) ( _S_ or  _G_ )and (not  _S_ or  not  _G_ ).
    (b) [ _S_ or ( _G_ and  not  _S_ )]or  not  _G_.
    (c) _S_ or [ _G_ and (not  _S_ or  not  _G_ )].
7. Identify the premises and conclusions of the following deductive argu-
    ments and analyze their logical forms. Do you think the reasoning is valid?
    (Although you will have only your intuition to guide you in answering
    this last question, in the next section we will develop some techniques for
    determining the validity of arguments.)
    (a) Jane and Pete won’t both win the math prize. Pete will win either
       the math prize or the chemistry prize. Jane will win the math prize.
       Therefore, Pete will win the chemistry prize.
    (b) The main course will be either beef or fish. The vegetable will be either
       peas or corn. We will not have both fish as a main course and corn as a
       vegetable. Therefore, we will not have both beef as a main course and
       peas as a vegetable.
    (c) Either John or Bill is telling the truth. Either Sam or Bill is lying.
       Therefore, either John is telling the truth or Sam is lying.
    (d) Either sales will go up and the boss will be happy, or expenses will go
       up and the boss won’t be happy. Therefore, sales and expenses will not
       both go up.

## 1.2 Truth Tables

We saw in Section 1.1 that an argument is valid if the premises cannot all be
true without the conclusion being true as well. Thus, to understand how words
such as _and_ , _or_ , and _not_ affect the validity of arguments, we must see how they
contribute to the truth or falsity of statements containing them.
When we evaluate the truth or falsity of a statement, we assign to it one of
the labels _true_ or _false_ , and this label is called its _truth value_. It is clear how the
word _and_ contributes to the truth value of a statement containing it. A statement
of the form _P_ and  _Q_ can only be true if both _P_ and _Q_ are true; if either _P_ or _Q_
is false, then _P_ and  _Q_ will be false too. Because we have assumed that _P_ and

```
Truth Tables 15
```

```
Figure 1
```

```
Q both stand for statements that are either true or false, we can summarize all
the possibilities with the table shown in Figure 1. This is called a truth table
for the formula P and  Q. Each row in the truth table represents one of the four
possible combinations of truth values for the statements P and Q. Although
these four possibilities can appear in the table in any order, it is best to list them
systematically so we can be sure that no possibilities have been skipped. The
truth table fornot  P is also quite easy to construct because fornot  P to be true,
P must be false. The table is shown in Figure 2.
```

```
Figure 2
```

The truth table for _P_ or  _Q_ is a little trickier. The first three lines should
certainly be filled in as shown in Figure 3, but there may be some question
about the last line. Should _P_ or  _Q_ be true or false in the case in which _P_ and _Q_
are both true? In other words, does _P_ or  _Q_ mean “ _P_ or _Q_ , or both” or does it
mean “ _P_ or _Q_ but not both”? The first way of interpreting the word _or_ is called
the _inclusive or_ (because it _includes_ the possibility of both statements being
true), and the second is called the _exclusive or_. In mathematics, _or_ always means
inclusive or, unless specified otherwise, so we will interpretor as inclusive or.
We therefore complete the truth table for _P_ or  _Q_ as shown in Figure 4. See
exercise 3 for more about the exclusive or.

```
Figure 3 Figure 4
```

```
Using the rules summarized in these truth tables, we can now work out truth
tables for more complex formulas. All we have to do is work out the truth
values of the component parts of a formula, starting with the individual letters
and working up to more complex formulas a step at a time.
```

16 _Sentential Logic_

**Example 1.2.1.** Make a truth table for the formulanot ( _P_ or  not  _Q_ ).

_Solution_

```
P Q not  Q P or  not  Q not ( P or  not  Q )
F F T T F
F T F F T
T F T T F
T T F T F
```

The first two columns of this table list the four possible combinations of
truth values of _P_ and _Q_. The third column, listing truth values for the formula
not  _Q_ , is found by simply negating the truth values for _Q_ in the second column.
The fourth column, for the formula _P_ or  not  _Q_ , is found by combining the truth
values for _P_ andnot  _Q_ listed in the first and third columns, according to the
truth value rule foror summarized in Figure 4. According to this rule, _P_ or  not  _Q_
will be false only if both _P_ andnot  _Q_ are false. Looking in the first and third
columns, we see that this happens only in row two of the table, so the fourth
column contains an F in the second row and T’s in all other rows. Finally, the
truth values for the formulanot ( _P_ or  not  _Q_ ) are listed in the fifth column, which
is found by negating the truth values in the fourth column. (Note that these
columns had to be worked out in order, because each was used in computing
the next.)

**Example 1.2.2.** Make a truth table for the formulanot ( _P_ and  _Q_ )or  not  _R_.

_Solution_

_P Q R P_ and  _Q_ not ( _P_ and  _Q_ ) not  _R_ not ( _P_ and  _Q_ )or  not  _R_
F F F F T T T
F F T F T F T
F T F F T T T
F T T F T F T
T F F F T T T
T F T F T F T
T T F T F T T
T T T T F F F
Note that because this formula contains three letters, it takes eight lines to
list all possible combinations of truth values for these letters. (If a formula
contains _n_ different letters, how many lines will its truth table have?)

Here’sawayofmakingtruthtablesmorecompactly.Insteadofusingseparate
columns to list the truth values for the component parts of a formula, just list
those truth values below the corresponding connective symbol in the original
formula. This is illustrated in Figure 5, for the formula from Example 1.2.1.

```
Truth Tables 17
```

In the first step, we have listed the truth values for _P_ and _Q_ below these letters
where they appear in the formula. In step two, the truth values fornot  _Q_ have
been added under thenot symbol fornot  _Q_. In the third step, we have combined the
truth values for _P_ andnot  _Q_ to get the truth values for _P_ or  not  _Q_ , which are listed
under theor symbol. Finally, in the last step, these truth values are negated and
listed under the initialnot symbol. The truth values added in the last step give the
truth value for the entire formula, so we will call the symbol under which they
are listed (the firstnot symbol in this case) the _main connective_ of the formula.
Notice that the truth values listed under the main connective in this case agree
with the values we found in Example 1.2.1.

Figure 5
Now that we know how to make truth tables for complex formulas, we’re
ready to return to the analysis of the validity of arguments. Consider again our
first example of a deductive argument:

```
It will either rain or snow tomorrow.
It’s too warm for snow.
Therefore, it will rain.
```

As we have seen, if we let _P_ stand for the statement “It will rain tomorrow”
and _Q_ for the statement “It will snow tomorrow,” then we can represent the
argument symbolically as follows:

```
P or  Q
not  Q
∴ P (The symbol∴means therefore .)
```

We can now see how truth tables can be used to verify the validity of this
argument. Figure 6 shows a truth table for both premises and the conclusion
of the argument. Recall that we decided to call an argument valid if the

18 _Sentential Logic_

premises cannot all be true without the conclusion being true as well. Looking at
Figure 6 we see that the only row of the table in which both premises come
out true is row three, and in this row the conclusion is also true. Thus, the truth
table confirms that if the premises are all true, the conclusion must also be true,
so the argument is valid.

```
Figure 6
```

**Example 1.2.3.** Determine whether the following arguments are valid.

1. Either John isn’t stupid and he is lazy, or he’s stupid.
    John is stupid.
    Therefore, John isn’t lazy.
2. The butler and the cook are not both innocent.
    Either the butler is lying or the cook is innocent.
    Therefore, the butler is either lying or guilty.

_Solutions_

1. As in Example 1.1.3, we let _S_ stand for the statement “John is stupid” and
    _L_ stand for “John is lazy.” Then the argument has the form:
       (not  _S_ and  _L_ )or  _S_
          _S_
       ∴not  _L_

```
Now we make a truth table for both premises and the conclusion. (You
should work out the intermediate steps in deriving column three of this table
to confirm that it is correct.)
Premises Conclusion
S L (not  S and  L )or  S S not  L
F F F F T
F T T F F
T F T T T
T T T T F
Both premises are true in lines three and four of this table. The conclusion
is also true in line three, but it is false in line four. Thus, it is possible for
```

```
Truth Tables 19
both premises to be true and the conclusion false, so the argument is invalid.
In fact, the table shows us exactly why the argument is invalid. The problem
occurs in the fourth line of the table, in which S and L are both true – in other
words, John is both stupid and lazy. Thus, if John is both stupid and lazy,
then both premises will be true but the conclusion will be false, so it would
be a mistake to infer that the conclusion must be true from the assumption
that the premises are true.
```

2. Let _B_ stand for the statement “The butler is innocent,” _C_ for the statement
    “The cook is innocent,” and _L_ for the statement “The butler is lying.” Then
    the argument has the form:

```
not ( B and  C )
L or  C
∴ L or  not  B
```

```
Here is the truth table for the premises and conclusion:
```

```
Premises Conclusion
B C L not ( B and  C ) L or  C L or  not  B
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

If you expected the first argument in Example 1.2.3 to turn out to be valid,
it’s probably because the first premise confused you. It’s a rather complicated
statement, which we represented symbolically with the formula (not  _S_ and  _L_ )or  _S_.
According to our truth table, this formula is false if _S_ and _L_ are both false, and
true otherwise. But notice that this is exactly the same as the truth table for the
simpler formula _L_ or  _S_ !Because of this, we say that the formulas (not  _S_ and  _L_ )or  _S_
and _L_ or  _S_ are _equivalent_. Equivalent formulas always have the same truth
value no matter what statements the letters in them stand for and no matter
what the truth values of those statements are. The equivalence of the premise
(not  _S_ and  _L_ )or  _S_ and the simpler formula _L_ or  _S_ may help you understand why

20 _Sentential Logic_

the argument is invalid. Translating the formula _L_ or  _S_ back into English, we
see that the first premise could have been stated more simply as “John is either
lazy or stupid (or both).” But from this premise and the second premise (that
John is stupid), it clearly doesn’t follow that he’s not lazy, because he might be
both stupid and lazy.

**Example 1.2.4.** Which of these formulas are equivalent?

```
not ( P and  Q ), not  P and  not  Q , not  P or  not  Q.
```

_Solution_
Here’s a truth table for all three statements. (You should check it yourself!)

```
P Q not ( P and  Q ) not  P and  not  Q not  P or  not  Q
F F T T T
F T T F T
T F T F T
T T F F F
```

The third and fifth columns in this table are identical, but they are different
from the fourth column. Therefore, the formulasnot ( _P_ and  _Q_ ) andnot  _P_ or  not  _Q_
are equivalent, but neither is equivalent to the formulanot  _P_ and  not  _Q_. This should
make sense if you think about what all the symbols mean. For example, suppose
_P_ stands for the statement “The Yankees won last night” and _Q_ stands for
“The Red Sox won last night.” Thennot ( _P_ and  _Q_ ) would mean “The Yankees
and the Red Sox did not both win last night,” andnot  _P_ or  not  _Q_ would mean
“Either the Yankees or the Red Sox lost last night”; these statements clearly
convey the same information. On the other hand,not  _P_ and  not  _Q_ would mean “The
Yankees and the Red Sox both lost last night,” which is an entirely different
statement.

Youcancheckforyourselfbymakingatruthtablethattheformulanot  _P_ and  not  _Q_
from Example 1.2.4 is equivalent to the formulanot ( _P_ or  _Q_ ). (To see that this
equivalence makes sense, notice that the statements “Both the Yankees and
the Red Sox lost last night” and “Neither the Yankees nor the Red Sox won
last night” mean the same thing.) This equivalence and the one discovered in
Example 1.2.4 are called _DeMorgan’s laws_.
In analyzing deductive arguments and the statements that occur in them it
is helpful to be familiar with a number of equivalences that come up often.
Verify the equivalences in the following list yourself by making truth tables,
and check that they make sense by translating the formulas into English, as we
did in Example 1.2.4.

```
Truth Tables 21
DeMorgan’s laws
not ( P and  Q ) is equivalent tonot  P or  not  Q.
not ( P or  Q ) is equivalent tonot  P and  not  Q.
Commutative laws
P and  Q is equivalent to Q and  P.
P or  Q is equivalent to Q or  P.
Associative laws
P and ( Q and  R ) is equivalent to ( P and  Q )and  R.
P or ( Q or  R ) is equivalent to ( P or  Q )or  R.
```

```
Idempotent laws
P and  P is equivalent to P.
P or  P is equivalent to P.
```

```
Distributive laws
P and ( Q or  R ) is equivalent to ( P and  Q )or ( P and  R ).
P or ( Q and  R ) is equivalent to ( P or  Q )and ( P or  R ).
```

```
Absorption laws
P or ( P and  Q ) is equivalent to P.
P and ( P or  Q ) is equivalent to P.
```

```
Double Negation law
not not  P is equivalent to P.
```

Notice that because of the associative laws we can leave out parentheses in
formulas of the forms _P_ and  _Q_ and  _R_ and _P_ or  _Q_ or  _R_ without worrying that the
resulting formula will be ambiguous, because the two possible ways of filling
in the parentheses lead to equivalent formulas.
Many of the equivalences in the list should remind you of similar rules in-
volving+,·, and-in algebra. As in algebra, these rules can be applied to more
complex formulas, and they can be combined to work out more complicated
equivalences. Any of the letters in these equivalences can be replaced by more
complicated formulas, and the resulting equivalence will still be true. For ex-
ample, by replacing _P_ in the double negation law with the formula _Q_ or  not  _R_ ,
you can see thatnot not ( _Q_ or  not  _R_ ) is equivalent to _Q_ or  not  _R_. Also, if two formulas
are equivalent, you can always substitute one for the other in any expression
and the results will be equivalent. For example, sincenot not  _P_ is equivalent to

22 _Sentential Logic_

_P_ , if not not  _P_ occurs in any formula, you can always replace it with _P_ and the
resulting formula will be equivalent to the original.

**Example 1.2.5.** Find simpler formulas equivalent to these formulas:

1.not ( _P_ or  not  _Q_ ).
2.not ( _Q_ and  not  _P_ )or  _P_.

_Solutions_

1.not ( _P_ or  not  _Q_ )
is equivalent to not  _P_ and  not not  _Q_ (DeMorgan’s law),
which is equivalent to not  _P_ and  _Q_ (double negation law).

You can check that this equivalence is right by making a truth table for
not  _P_ and  _Q_ and seeing that it is the same as the truth table fornot ( _P_ or  not  _Q_ )
found in Example 1.2.1.
2.not ( _Q_ and  not  _P_ )or  _P_
is equivalent to (not  _Q_ or  not not  _P_ )or  _P_ (DeMorgan’s law),
which is equivalent to (not  _Q_ or  _P_ )or  _P_ (double negation law),
which is equivalent to not  _Q_ or ( _P_ or  _P_ ) (associative law),
which is equivalent to not  _Q_ or  _P_ (idempotent law).

Some equivalences are based on the fact that certain formulas are either
always true or always false. For example, you can verify by making a truth
table that the formula _Q_ and ( _P_ or  not  _P_ ) is equivalent to just _Q_. But even before
you make the truth table, you can probably see why they are equivalent. In every
line of the truth table, _P_ or  not  _P_ will come out true, and therefore _Q_ and ( _P_ or  not  _P_ )
will come out true when _Q_ is also true, and false when _Q_ is false. Formulas that
are always true, such as _P_ or  not  _P_ , are called _tautologies_. Similarly, formulas
that are always false are called _contradictions_. For example, _P_ and  not  _P_ is a
contradiction.

**Example 1.2.6.** Are these statements tautologies, contradictions, or neither?

```
P or ( Q or  not  P ), P and  not  ( Q or  not  Q ), P or  not  ( Q or  not  Q ).
```

_Solution_
First we make a truth table for all three statements.

```
P Q P or ( Q or  not  P ) P and  not  ( Q or  not  Q ) P or  not  ( Q or  not  Q )
F F T F F
F T T F F
T F T F T
T T T F T
```

```
Truth Tables 23
From the truth table it is clear that the first formula is a tautology, the second
a contradiction, and the third neither. In fact, since the last column is identical
to the first, the third formula is equivalent to P.
We can now state a few more useful laws involving tautologies and contradic-
tions.Youshouldbeabletoconvinceyourselfthatalloftheselawsarecorrectby
thinking about what the truth tables for the statements involved would look like.
```

```
Tautology laws
P and (a tautology) is equivalent to P.
P or (a tautology) is a tautology.
not (a tautology) is a contradiction.
```

```
Contradiction laws
P and (a contradiction) is a contradiction.
P or (a contradiction) is equivalent to P.
not (a contradiction) is a tautology.
```

```
Example 1.2.7. Find simpler formulas equivalent to these formulas:
```

1. _P_ or ( _Q_ and  not  _P_ ).
2.not ( _P_ or ( _Q_ and  not  _R_ ))and  _Q_.

_Solutions_

1. _P_ or ( _Q_ and  not  _P_ )
    is equivalent to ( _P_ or  _Q_ )and ( _P_ or  not  _P_ ) (distributive law),
which is equivalent to _P_ or  _Q_ (tautology law).
The last step uses the fact that _P_ or  not  _P_ is a tautology.
2.not ( _P_ or ( _Q_ and  not  _R_ ))and  _Q_
    is equivalent to (not  _P_ and  not  ( _Q_ and  not  _R_ ))and  _Q_ (DeMorgan’s law),
which is equivalent to (not  _P_ and (not  _Q_ or  not not  _R_ ))and  _Q_ (DeMorgan’s law),
which is equivalent to (not  _P_ and (not  _Q_ or  _R_ ))and  _Q_ (double negation law),
which is equivalent to not  _P_ and ((not  _Q_ or  _R_ )and  _Q_ ) (associative law),
which is equivalent to not  _P_ and ( _Q_ and (not  _Q_ or  _R_ )) (commutative law),
which is equivalent to not  _P_ and (( _Q_ and  not  _Q_ )or ( _Q_ and  _R_ ))
(distributive law),
which is equivalent to not  _P_ and ( _Q_ and  _R_ ) (contradiction law).

```
The last step uses the fact that Q and  not  Q is a contradiction. Finally, by the
associative law forand we can remove the parentheses without making the
formula ambiguous, so the original formula is equivalent to the formula
not  P and  Q and  R.
```

24 _Sentential Logic_

```
Exercises
```

```
∗1. Make truth tables for the following formulas:
(a)not  P or  Q.
(b) ( S or  G )and (not  S or  not  G ).
```

2. Make truth tables for the following formulas:
    (a)not [ _P_ and ( _Q_ or  not  _P_ )].
    (b) ( _P_ or  _Q_ )and (not  _P_ or  _R_ ).
3. In this exercise we will use the symbol+to mean _exclusive or_. In other
    words, _P_ + _Q_ means “ _P_ or _Q_ , but not both.”
    (a) Make a truth table for _P_ + _Q_.
    (b) Find a formula using only the connectivesand ,or , andnot that is equiv-
       alent to _P_ + _Q_. Justify your answer with a truth table.
4. Find a formula using only the connectivesand andnot that is equivalent to
    _P_ or  _Q_. Justify your answer with a truth table.
∗5. Some mathematicians use the symbol↓to mean _nor_. In other words,
_P_ ↓ _Q_ means “neither _P_ nor _Q_ .”
    (a) Make a truth table for _P_ ↓ _Q_.
    (b) Find a formula using only the connectivesand ,or , andnot that is equiv-
       alent to _P_ ↓ _Q_.
    (c) Find formulas using only the connective↓that are equivalent tonot  _P_ ,
       _P_ or  _Q_ , and _P_ and  _Q_.
6. Some mathematicians write _P_ | _Q_ to mean “ _P_ and _Q_ are not both true.”
    (This connective is called _nand_ , and is used in the study of circuits in
    computer science.)
    (a) Make a truth table for _P_ | _Q_.
    (b) Find a formula using only the connectivesand ,or , andnot that is equiv-
       alent to _P_ | _Q_.
    (c) Find formulas using only the connective|that are equivalent tonot  _P_ ,
       _P_ or  _Q_ , and _P_ and  _Q_.
∗7. Use truth tables to determine whether or not the arguments in exercise 7
of Section 1.1 are valid.
8. Use truth tables to determine which of the following formulas are equiv-
    alent to each other:
    (a) ( _P_ and  _Q_ )or (not  _P_ and  not  _Q_ ).
    (b)not  _P_ or  _Q_.
    (c) ( _P_ or  not  _Q_ )and ( _Q_ or  not  _P_ ).
    (d)not ( _P_ or  _Q_ ).
    (e) ( _Q_ and  _P_ )or  not  _P_.
∗9. Use truth tables to determine which of these statements are tautologies,
which are contradictions, and which are neither:

```
Truth Tables 25
(a) ( P or  Q )and (not  P or  not  Q ).
(b) ( P or  Q )and (not  P and  not  Q ).
(c) ( P or  Q )or (not  P or  not  Q ).
(d) [ P and ( Q or  not  R )]or (not  P or  R ).
```

10. Use truth tables to check these laws:
    (a) The second DeMorgan’s law. (The first was checked in the text.)
    (b) The distributive laws.
∗11. Use the laws stated in the text to find simpler formulas equivalent to these

```
formulas. (See Examples 1.2.5 and 1.2.7.)
(a)not (not  P and  not  Q ).
(b) ( P and  Q )or ( P and  not  Q ).
(c)not ( P and  not  Q )or (not  P and  Q ).
```

12. Use the laws stated in the text to find simpler formulas equivalent to these
    formulas. (See Examples 1.2.5 and 1.2.7.)
    (a)not (not  _P_ or  _Q_ )or ( _P_ and  not  _R_ ).
    (b)not (not  _P_ and  _Q_ )or ( _P_ and  not  _R_ ).
    (c) ( _P_ and  _R_ )or [not  _R_ and ( _P_ or  _Q_ )].
13. Use the first DeMorgan’s law and the double negation law to derive the
    second DeMorgan’s law.
∗14. Note that the associative laws say only that parentheses are unnecessary

```
when combining three statements withand oror . In fact, these laws can be
used to justify leaving parentheses out when more than three statements
are combined. Use associative laws to show that [ P and ( Q and  R )]and  S is
equivalent to ( P and  Q )and ( R and  S ).
```

15. How many lines will there be in the truth table for a statement containing
    _n_ letters?
∗16. Find a formula involving the connectivesand ,or , andnot that has the follow-

```
ing truth table:
```

```
P Q ???
F F T
F T F
T F T
T T T
```

17. Find a formula involving the connectivesand ,or , andnot that has the follow-
    ing truth table:
       _P Q_ ???
       F F F
       F T T
       T F T
       T T F

26 _Sentential Logic_

18. Suppose the conclusion of an argument is a tautology. What can you
    conclude about the validity of the argument? What if the conclusion is
    a contradiction? What if one of the premises is either a tautology or a
    contradiction?

## 1.3 Variables and Sets

Inmathematicalreasoningitisoftennecessarytomakestatementsaboutobjects
that are represented by letters called _variables_. For example, if the variable _x_
is used to stand for a number in some problem, we might be interested in the
statement “ _x_ is a prime number.” Although we may sometimes use a single
letter, say _P_ , to stand for this statement, at other times we will revise this
notation slightly and write _P_ ( _x_ ), to stress that this is a statement _about x_.
The latter notation makes it easy to talk about substituting some number for
_x_ in the statement. For example, _P_ (7) would represent the statement “7 is a
prime number,” and _P_ ( _a_ + _b_ ) would mean “ _a_ + _b_ is a prime number.” If a
statement contains more than one variable, our abbreviation for the statement
will include a list of all the variables involved. For example, we might represent
the statement “ _p_ is divisible by _q_ ” by _D_ ( _p_ , _q_ ). In this case, _D_ (12,4) would
mean “12 is divisible by 4.”
Although you have probably seen variables used most often to stand for
numbers, they can stand for anything at all. For example, we could let _M_ ( _x_ )
stand for the statement “ _x_ is a man,” and _W_ ( _x_ ) for “ _x_ is a woman.” In this
case, we are using the variable _x_ to stand for a person. A statement might even
contain several variables that stand for different kinds of objects. For example,
in the statement “ _x_ has _y_ children,” the variable _x_ stands for a person, and _y_
stands for a number.
Statements involving variables can be combined using connectives, just like
statements without variables.

**Example 1.3.1.** Analyze the logical forms of the following statements:

1. _x_ is a prime number, and either _y_ or _z_ is divisible by _x_.
2. _x_ is a man and _y_ is a woman and _x_ likes _y_ , but _y_ doesn’t like _x_.

_Solutions_

1. We could let _P_ stand for the statement “ _x_ is a prime number,” _D_ for “ _y_
    is divisible by _x_ ,” and _E_ for “ _z_ is divisible by _x_ .” The entire statement
    would then be represented by the formula _P_ and ( _D_ or  _E_ ). But this analysis,
    though not incorrect, fails to capture the relationship between the statements

```
Variables and Sets 27
D and E. A better analysis would be to let P ( x ) stand for “ x is a prime
number” and D ( y , x ) for “ y is divisible by x .” Then D ( z , x ) would mean “ z is
divisibleby x ,”sotheentirestatementwouldbe P ( x )and ( D ( y , x )or  D ( z , x )).
```

2. Let _M_ ( _x_ ) stand for “ _x_ is a man,” _W_ ( _y_ ) for “ _y_ is a woman,” and _L_ ( _x_ , _y_ ) for
    “ _x_ likes _y_ .” Then _L_ ( _y_ , _x_ ) would mean “ _y_ likes _x_ .” (Notice that the order of
    the variables after the _L_ makes a difference!) The entire statement would
    then be represented by the formula _M_ ( _x_ )and  _W_ ( _y_ )and  _L_ ( _x_ , _y_ )and  not  _L_ ( _y_ , _x_ ).

When studying statements that do not contain variables, we can easily talk
about their truth values, since each statement is either true or false. But if a
statement contains variables, we can no longer describe the statement as being
simply true or false. Its truth value might depend on the values of the variables
involved. For example, if _P_ ( _x_ ) stands for the statement “ _x_ is a prime number,”
then _P_ ( _x_ ) would be true if _x_ =23, but false if _x_ =22. To solve this problem,
we will define _truth sets_ for statements containing variables. Before giving this
definition, though, it might be helpful to review some basic definitions from
set theory.
A _set_ is a collection of objects. The objects in the collection are called the
_elements_ of the set. The simplest way to specify a particular set is to list its
elements between braces. For example,{3, 7, 14}is the set whose elements
are the three numbers 3, 7, and 14. We use the symbol∈to mean _is an element
of_. For example, if we let _A_ stand for the set{3, 7, 14}, then we could write
7 ∈ _A_ to say that 7 is an element of _A_. To say that 11 is not an element of _A_ ,
we write 11∈ _A_.
A set is completely determined once its elements have been specified. Thus,
two sets that have exactly the same elements are always equal. Also, when
a set is defined by listing its elements, all that matters is _which_ objects are
in the list of elements, not the order in which they are listed. An element
can even appear more than once in the list. Thus,{3, 7, 14},{14, 3, 7}, and
{3, 7, 14, 7}are three different names for the same set.
It may be impractical to define a set that contains a very large number of
elements by listing all of its elements, and it would be impossible to give such
a definition for a set that contains infinitely many elements. Often this problem
can be overcome by listing a few elements with an ellipsis (... ) after them, if it
is clear how the list should be continued. For example, suppose we define a set
_B_ by saying that _B_ = { 2 , 3 , 5 , 7 , 11 , 13 , 17 ,... }. Once you recognize that the
numbers listed in the definition of _B_ are the prime numbers, then you know that,
for example, 23∈ _B_ , even though it wasn’t listed explicitly when we defined
_B_. But this method requires recognition of the pattern in the list of numbers in
the definition of _B_ , and this requirement introduces an element of ambiguity

28 _Sentential Logic_

and subjectivity into our notation that is best avoided in mathematical writing.
It is therefore usually better to define such a set by spelling out the pattern that
determines the elements of the set.
In this case we could be explicit by defining _B_ as follows:

```
B = { x | x is a prime number}.
```

This is read “ _B_ =the set of all _x_ such that _x_ is a prime number,” and it means
that the elements of _B_ are the values of _x_ that make the statement “ _x_ is a prime
number” come out true. You should think of the statement “ _x_ is a prime number”
as an _elementhood test_ for the set. Any value of _x_ that makes this statement
come out true passes the test and is an element of the set. Anything else fails
the test and is not an element. Of course, in this case the values of _x_ that make
the statement true are precisely the prime numbers, so this definition says that
_B_ is the set whose elements are the prime numbers, exactly as before.

**Example 1.3.2.** Rewrite these set definitions using elementhood tests:

1. _E_ = { 2 , 4 , 6 , 8 ,... }.
2. P = {George Washington, John Adams, Thomas Jefferson, James
    Madison,.. .}.

_Solutions_

Although there might be other ways of continuing these lists of elements,
probably the most natural ones are given by the following definitions:

1. _E_ = { _n_ | _n_ is a positive even integer}.
2. _P_ = { _z_ | _z_ was a president of the United States}.

If a set has been defined using an elementhood test, then that test can be used
to determine whether or not something is an element of the set. For example,
consider the set{ _x_ | _x_^2 < 9 }. If we want to know if 5 is an element of this set,
we simply apply the elementhood test in the definition of the set – in other
words, we check whether or not 5^2 <9. Since 5^2 = 25 >9, it fails the test,
so 5∈ { _x_ | _x_^2 < 9 }. On the other hand, (-2)^2 = 4 <9, so- 2 ∈ { _x_ | _x_^2 < 9 }.
The same reasoning would apply to any other number. For any number y, to
determine whether or not _y_ ∈ { _x_ | _x_^2 < 9 }, we just check whether or not _y_^2 <9.
In fact, we could think of the statement _y_ ∈ { _x_ | _x_^2 < 9 }as just a roundabout
way of saying _y_^2 < 9.
Notice that because the statement _y_ ∈ { _x_ | _x_^2 < 9 }means the same thing as
_y_^2 <9, it is a statement about _y_ , but not _x_ !To determine whether or not _y_ ∈
{ _x_ | _x_^2 < 9 }you need to know what _y_ is (so you can compare its square to 9), but
not what _x_ is. We say that in the statement _y_ ∈ { _x_ | _x_^2 < 9 }, _y_ is a _free_ variable,

_Variables and Sets_ 29
whereas _x_ is a _bound_ variable (or a _dummy_ variable). The free variables in a
statement stand for objects that the statement says something about. Plugging
in different values for a free variable affects the meaning of a statement and
may change its truth value. The fact that you can plug in different values for
a free variable means that it is free to stand for anything. Bound variables, on
the other hand, are simply letters that are used as a convenience to help express
an idea and should not be thought of as standing for any particular object. A
bound variable can always be replaced by a new variable without changing
the meaning of the statement, and often the statement can be rephrased so
that the bound variables are eliminated altogether. For example, the statements
_y_ ∈ { _x_ | _x_^2 < 9 }and _y_ ∈ { w|w^2 < 9 }mean the same thing, because they both
mean “ _y_ is an element of the set of all numbers whose squares are less than 9.”
In this last statement, all bound variables have been eliminated, and the only
variable mentioned is the free variable _y_.
Note that _x_ is a bound variable in the statement _y_ ∈ { _x_ | _x_^2 < 9 }even though
it is a free variable in the statement _x_^2 <9. This last statement is a statement
about _x_ that would be true for some values of _x_ and false for others. It is only
when this statement is used inside the elementhood test notation that x becomes
a bound variable. We could say that the notation{ _x_ |... } _binds_ the variable _x_.
Everything we have said about the set{ _x_ | _x_^2 < 9 }would apply to any set
defined by an elementhood test. In general, the statement _y_ ∈ { _x_ | _P_ ( _x_ )}means
the same thing as _P_ ( _y_ ), which is a statement about _y_ but not _x_. Similarly,
_y_ ∈ { / _x_ | _P_ ( _x_ )}means the same thing asnot  _P_ ( _y_ ). Of course, the expression
{ _x_ | _P_ ( _x_ )}is not a statement at all; it is a name for a set. As you learn more
mathematical notation, it will become increasingly important to make sure you
are careful to distinguish between expressions that are mathematical statements
and expressions that are names for mathematical objects.

```
Example 1.3.3. What do these statements mean? What are the free variables
in each statement?
```

1. _a_ + _b_ ∈ { _x_ | _x_ is an even number}.
2. _y_ ∈ { _x_ | _x_ is divisible byw}.
3. 2∈ { w| 6 ∈ { / _x_ | _x_ is divisible byw}}.

```
Solutions
```

1. This statement says that _a_ + _b_ is not an element of the set of all even
    numbers, or in other words, _a_ + _b_ is not an even number. Both _a_ and _b_ are
    free variables, but _x_ is a bound variable. The statement will be true for some
    values of _a_ and _b_ and false for others.

30 _Sentential Logic_

2. This statement says that _y_ is divisible byw. Both _y_ andware free variables,
    but _x_ is a bound variable. The statement is true for some values of _y_ andw
    and false for others.
3. This looks quite complicated, but if we go a step at a time, we can decipher
    it. First, note that the statement 6∈ { _x_ | _x_ is divisible byw}, which appears
    inside the given statement, means the same thing as “6 is not divisible byw.”
    Substituting this into the given statement, we find that the original statement
    is equivalent to the simpler statement 2∈ { w|6 is not divisible byw}. But
    this just means the same thing as “6 is not divisible by 2.” Thus, the statement
    has no free variables, and both _x_ andware bound variables. Because there
    are no free variables, the truth value of the statement doesn’t depend on the
    values of any variables. In fact, since 6 _is_ divisible by 2, the statement is
    false.

Perhaps you have guessed by now how we can use set theory to help us
understand truth values of statements containing free variables. As we have
seen, a statement, say _P_ ( _x_ ), containing a free variable _x_ , may be true for some
values of _x_ and false for others. To distinguish the values of _x_ that make _P_ ( _x_ )
true from those that make it false, we could form the set of values of _x_ for which
_P_ ( _x_ ) is true. We will call this set the _truth set_ of _P_ ( _x_ ).

**Definition 1.3.4.** The _truth set_ of a statement _P_ ( _x_ ) is the set of all values of _x_
that make the statement _P_ ( _x_ ) true. In other words, it is the set defined by using
the statement _P_ ( _x_ ) as an elementhood test:

```
Truth set of P ( x )= { x | P ( x )}.
```

Note that we have defined truth sets only for statements containing _one_ free
variable. We will discuss truth sets for statements with more than one free
variable in Chapter 4.

**Example 1.3.5.** What are the truth sets of the following statements?

1. Shakespeare wrote _x_.
2. _n_ is an even prime number.

_Solutions_

1.{ _x_ |Shakespeare wrote _x_ }={Hamlet, Macbeth, Twelfth Night,... }.
2.{ _n_ | _n_ is an even prime number}. Because the only even prime number is 2,
this is the set{ 2 }. Note that 2 and{ 2 }are not the same thing!The first is
a number, and the second is a set whose only element is a number. Thus,
2 ∈ { 2 }, but 2= { 2 }.

```
Variables and Sets 31
Suppose A is the truth set of a statement P ( x ). According to the definition of
truth set, this means that A = { x | P ( x )}. We’ve already seen that for any object
y , the statement y ∈ { x | P ( x )}means the same thing as P ( y ). Substituting in
A for{ x | P ( x )}, it follows that y ∈ A means the same thing as P ( y ). Thus, we
see that in general, if A is the truth set of P ( x ), then to say that y ∈ A means
the same thing as saying P ( y ).
When a statement contains free variables, it is often clear from context that
these variables stand for objects of a particular kind. The set of all objects of
this kind – in other words, the set of all possible values for the variables – is
called the universe of discourse for the statement, and we say that the variables
range over this universe. For example, in most contexts the universe for the
statement x^2 <9 would be the set of all real numbers; the universe for the
statement “ x is a man” might be the set of all people.
Certain sets come up often in mathematics as universes of discourse, and it is
convenient to have fixed names for them. Here are a few of the most important
ones:
```

```
R= { x | x is a real number}.
Q= { x | x is a rational number}.
(Recall that a real number is any number on the number line, and a
rational number is a number that can be written as a fraction p / q ,
where p and q are integers.)
Z= { x | x is an integer}={... , -3,-2,-1, 0, 1, 2, 3,... }.
N= { x | x is a natural number}={0, 1, 2, 3,... }.
(Some books include 0 as a natural number and some don’t. In this
book, we consider 0 to be a natural number.)
```

The lettersR,Q, andZcan be followed by a superscript+or-to indicate that
only positive or negative numbers are to be included in the set. For example,
R+= { _x_ | _x_ is a positive real number}, andZ-= { _x_ | _x_ is a negative integer}.
Although the universe of discourse can usually be determined from context,
it is sometimes useful to identify it explicitly. Consider a statement _P_ ( _x_ ) with a
free variable _x_ that ranges over a universe _U_. Although we have written the truth
set of _P_ ( _x_ ) as { _x_ | _P_ ( _x_ )}, if there were any possibility of confusion about what
the universe was, we could specify it explicitly by writing{ _x_ ∈ _U_ | _P_ ( _x_ )}; this
is read “the set of all _x_ in _U_ such that _P_ ( _x_ ).” This notation indicates that only
elements of _U_ are to be considered for elementhood in this truth set, and among
elements of _U_ , only those that pass the elementhood test _P_ ( _x_ ) will actually be in
the truth set. For example, consider again the statement _x_^2 <9. If the universe
of discourse for this statement were the set of all real numbers, then its truth
set would be{ _x_ ∈R| _x_^2 < 9 }, or in other words, the set of all real numbers

32 _Sentential Logic_

between-3 and 3. But if the universe were the set of all integers, then the
truth set would be{ _x_ ∈Z| _x_^2 < 9 } = {- 2 ,- 1 , 0 , 1 , 2 }. Thus, for example,
1.58∈ { _x_ ∈R| _x_^2 < 9 }but 1.58∈ { / _x_ ∈Z| _x_^2 < 9 }. Clearly, the choice of
universe can sometimes make a difference!
Sometimes this explicit notation is used not to specify the universe of dis-
course but to restrict attention to just a part of the universe. For example, in
the case of the statement _x_^2 <9, we might want to consider the universe
of discourse to be the set of all real numbers, but in the course of some
reasoning involving this statement we might want to temporarily restrict our
attention to only positive real numbers. We might then be interested in the
set{ _x_ ∈R+| _x_^2 < 9 }. As before, this notation indicates that only positive real
numbers will be considered for elementhood in this set, and among positive
real numbers, only those whose square is less than 9 will be in the set. Thus,
for a number to be an element of this set, it must pass two tests: it must be a
positive real number, and its square must be less than 9. In other words, the
statement _y_ ∈ { _x_ ∈R+| _x_^2 < 9 }means the same thing as _y_ ∈R+and  _y_^2 <9.
In general, _y_ ∈ { _x_ ∈ _A_ | _P_ ( _x_ )}means the same thing as _y_ ∈ _A_ and  _P_ ( _y_ ).
When a new mathematical concept has been defined, mathematicians are
usually interested in studying any possible extremes of this concept. For
example, when we discussed truth tables, the extremes we studied were
statements whose truth tables contained only T’s (tautologies) or only F’s
(contradictions). For the concept of the truth set of a statement containing a
free variable, the corresponding extremes would be the truth sets of statements
that are always true or always false. Suppose _P_ ( _x_ ) is a statement containing
a free variable _x_ that ranges over a universe _U_. It should be clear that if _P_ ( _x_ )
comes out true for every value of _x_ ∈ _U_ , then the truth set of _P_ ( _x_ ) will be
the whole universe _U_. For example, since the statement _x_^2 ≥0 is true for
every real number _x_ , the truth set of this statement is{ _x_ ∈R| _x_^2 ≥ 0 } = R.
Of course, this is not unrelated to the concept of a tautology. For exam-
ple, since _P_ or  not  _P_ is a tautology, the statement _P_ ( _x_ )or  not  _P_ ( _x_ ) will be true
for every _x_ ∈ _U_ , no matter what statement _P_ ( _x_ ) stands for or what the
universe _U_ is, and therefore the truth set of the statement _P_ ( _x_ )or  not  _P_ ( _x_ )
will be _U_.
For a statement _P_ ( _x_ ) that is false for every possible value of _x_ , nothing in
the universe can pass the elementhood test for the truth set of _P_ ( _x_ ), and so this
truth set must have no elements. The idea of a set with no elements may sound
strange, but it arises naturally when we consider truth sets for statements that
are always false. Because a set is completely determined once its elements have
been specified, there is only one set that has no elements. It is called the _empty
set_ , or the _null set_ , and is often denoted∅. For example,{ _x_ ∈Z| _x_ = _x_ } = ∅.

```
Variables and Sets 33
```

Since the empty set has no elements, the statement _x_ ∈∅is an example of a
statement that is always false, no matter what _x_ is.
Another common notation for the empty set is based on the fact that any set
can be named by listing its elements between braces. Since the empty set has
no elements, we write nothing between the braces, like this:∅= { }. Note that
{∅}is not correct notation for the empty set. Just as we saw earlier that 2 and
{ 2 }are not the same thing,∅is not the same as{∅}. The first is a set with no
elements, whereas the second is a set with one element, that one element being
∅, the empty set.

```
Exercises
```

∗1. Analyze the logical forms of the following statements:

```
(a) 3 is a common divisor of 6, 9, and 15. (Note: You did this in exercise
2 of Section 1.1, but you should be able to give a better answer now.)
(b) x is divisible by both 2 and 3 but not 4.
(c) x and y are natural numbers, and exactly one of them is prime.
```

2. Analyze the logical forms of the following statements:
    (a) _x_ and _y_ are men, and either _x_ is taller than _y_ or _y_ is taller than _x_.
    (b) Either _x_ or _y_ has brown eyes, and either _x_ or _y_ has red hair.
    (c) Either _x_ or _y_ has both brown eyes and red hair.
∗3. Write definitions using elementhood tests for the following sets:

```
(a) {Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune,
Pluto}.
(b) {Brown, Columbia, Cornell, Dartmouth, Harvard, Princeton, Univer-
sity of Pennsylvania, Yale}.
(c) {Alabama, Alaska, Arizona,... , Wisconsin, Wyoming}.
(d) {Alberta, British Columbia, Manitoba, New Brunswick, Newfound-
land and Labrador, Northwest Territories, Nova Scotia, Nunavut, On-
tario, Prince Edward Island, Quebec, Saskatchewan, Yukon}.
```

4. Write definitions using elementhood tests for the following sets:
    (a) { 1 , 4 , 9 , 16 , 25 , 36 , 49 ,... }.
    (b) { 1 , 2 , 4 , 8 , 16 , 32 , 64 ,... }.
    (c) { 10 , 11 , 12 , 13 , 14 , 15 , 16 , 17 , 18 , 19 }.
∗5. Simplify the following statements. Which variables are free and which are

```
bound? If the statement has no free variables, say whether it is true or
false.
(a) - 3 ∈ { x ∈R| 13 - 2 x > 1 }.
(b) 4∈ { x ∈R-| 13 - 2 x > 1 }.
(c) 5∈ { / x ∈R| 13 - 2 x > c }.
```

34 _Sentential Logic_

6. Simplify the following statements. Which variables are free and which are
    bound? If the statement has no free variables, say whether it is true or
    false.
    (a)w∈ { _x_ ∈R| 13 - 2 _x_ > _c_ }.
    (b) 4∈ { _x_ ∈R| 13 - 2 _x_ ∈ { _y_ | _y_ is a prime number}}. (It might make
       this statement easier to read if we let _P_ = { _y_ | _y_ is a prime number};
       using this notation, we could rewrite the statement as 4∈ { _x_ ∈R|
       13 - 2 _x_ ∈ _P_ }.)
    (c) 4∈ { _x_ ∈ { _y_ | _y_ is a prime number} | 13 - 2 _x_ > 1 }. (Using the same no-
       tation as in part (b), we could write this as 4∈ { _x_ ∈ _P_ | 13 - 2 _x_ > 1 }.)
∗7. What are the truth sets of the following statements? List a few elements of
the truth set if you can.
(a) Elizabeth Taylor was once married to _x_.
(b) _x_ is a logical connective studied in Section 1.1.
(c) _x_ is the author of this book.
8. What are the truth sets of the following statements? List a few elements of
    the truth set if you can.
    (a) _x_ is a real number and _x_^2 - 4 _x_ + 3 =0.
    (b) _x_ is a real number and _x_^2 - 2 _x_ + 3 =0.
    (c) _x_ is a real number and 5∈ { _y_ ∈R| _x_^2 + _y_^2 < 50 }.

## 1.4 Operations on Sets

Suppose _A_ is the truth set of a statement _P_ ( _x_ ) and _B_ is the truth set of _Q_ ( _x_ ).
What are the truth sets of the statements _P_ ( _x_ )and  _Q_ ( _x_ ), _P_ ( _x_ )or  _Q_ ( _x_ ),
andnot  _P_ ( _x_ )? To answer these questions, we introduce some basic operations
on sets.

**Definition 1.4.1.** The _intersection_ of two sets _A_ and _B_ is the set _A_ + _B_ defined
as follows:

```
A + B = { x | x ∈ A and x ∈ B }.
```

The _union_ of _A_ and _B_ is the set _A_ , _B_ defined as follows:

```
A , B = { x | x ∈ A or x ∈ B }.
```

The _difference_ of _A_ and _B_ is the set _A_ \ _B_ defined as follows:

_A_ \ _B_ = { _x_ | _x_ ∈ _A_ and _x_ ∈ _B_ }.
Remember that the statements that appear in these definitions are _element-
hood tests_. Thus, for example, the definition of _A_ + _B_ says that for an object to
be an element of _A_ + _B_ , it must be an element of both _A_ and _B_. In other words,
_A_ + _B_ is the set consisting of the elements that _A_ and _B_ have in common.

```
Operations on Sets 35
```

Because the word _or_ is always interpreted as _inclusive or_ in mathematics,
anything that is an element of either _A_ or _B_ , or both, will be an element of
_A_ , _B_. Thus, we can think of _A_ , _B_ as the set resulting from throwing all the
elements of _A_ and _B_ together into one set. _A_ \ _B_ is the set you would get if you
started with the set _A_ and removed from it any elements that were also in _B_.

**Example 1.4.2.** Suppose _A_ = { 1 , 2 , 3 , 4 , 5 }and _B_ = { 2 , 4 , 6 , 8 , 10 }. List the
elements of the following sets:

1. _A_ + _B_.
2. _A_ , _B_.
3. _A_ \ _B_.

#### 4. ( A , B )\( A + B )

#### 5. ( A \ B ),( B \ A )

_Solutions_

1. _A_ + _B_ = { 2 , 4 }.
2. _A_ , _B_ = { 1 , 2 , 3 , 4 , 5 , 6 , 8 , 10 }.
3. _A_ \ _B_ = { 1 , 3 , 5 }.
4. We have just computed _A_ , _B_ and _A_ + _B_ in solutions 1 and 2, so all we
    need to do is start with the set _A_ , _B_ from solution 2 and remove from it
    any elements that are also in _A_ + _B_. The answer is ( _A_ , _B_ )\( _A_ + _B_ )=
    { 1 , 3 , 5 , 6 , 8 , 10 }.
5. We already have the elements of _A_ \ _B_ listed in solution 3, and _B_ \ _A_ =
    { 6 , 8 , 10 }. Thus, their union is ( _A_ \ _B_ ),( _B_ \ _A_ )= { 1 , 3 , 5 , 6 , 8 , 10 }. Is it
    just a coincidence that this is the same as the answer to part 4?

**Example 1.4.3.** Suppose _A_ = { _x_ | _x_ is a man}and _B_ = { _x_ | _x_ has brown hair}.
What are _A_ + _B_ , _A_ , _B_ , and _A_ \ _B_?

_Solution_

By definition, _A_ + _B_ = { _x_ | _x_ ∈ _A_ and _x_ ∈ _B_ }. As we saw in the last section,
the definitions of _A_ and _B_ tell us that _x_ ∈ _A_ means the same thing as “ _x_ is a
man,” and _x_ ∈ _B_ means the same thing as “ _x_ has brown hair.” Plugging this
into the definition of _A_ + _B_ , we find that

```
A + B = { x | x is a man and x has brown hair}.
```

Similar reasoning shows that

```
A , B = { x |either x is a man or x has brown hair}
```

and

```
A \ B = { x | x is a man and x does not have brown hair}.
```

36 _Sentential Logic_

Sometimes it is helpful when working with operations on sets to draw pic-
tures of the results of these operations. One way to do this is with diagrams
like that in Figure 1. This is called a _Venn diagram_. The interior of the rect-
angle enclosing the diagram represents the universe of discourse _U_ , and the
interiors of the two circles represent the two sets _A_ and _B_. Other sets formed by
combining these sets would be represented by different regions in the diagram.
For example, the shaded region in Figure 2 is the region common to the circles
representing _A_ and _B_ , and so it represents the set _A_ + _B_. Figures 3 and 4 show
the regions representing _A_ , _B_ and _A_ \ _B_ , respectively.

```
Figure 1
Figure 2
```

```
Figure 3 Figure 4
```

Here’s an example of how Venn diagrams can help us understand operations
on sets. In Example 1.4.2 the sets ( _A_ , _B_ )\( _A_ + _B_ ) and ( _A_ \ _B_ ),( _B_ \ _A_ )
turned out to be equal, for a particular choice of _A_ and _B_. You can see by
making Venn diagrams for both sets that this was not a coincidence. You’ll
find that both Venn diagrams look like Figure 5. Thus, these sets will always
be equal, no matter what the sets _A_ and _B_ are, because both sets will always
be the set of objects that are elements of either _A_ or _B_ but not both. This set
is called the _symmetric difference_ of _A_ and _B_ and is written _A_  _B_. In other
words, _A_  _B_ =( _A_ \ _B_ ),( _B_ \ _A_ )=( _A_ , _B_ )\( _A_ + _B_ ). Later in this section
we’ll see another explanation of why these sets are always equal.

```
Operations on Sets 37
```

```
Figure 5
```

Let’s return now to the question with which we began this section. If _A_ is
the truth set of a statement _P_ ( _x_ ) and _B_ is the truth set of _Q_ ( _x_ ), then, as we saw
in the last section, _x_ ∈ _A_ means the same thing as _P_ ( _x_ ) and _x_ ∈ _B_ means the
same thing as _Q_ ( _x_ ). Thus, the truth set of _P_ ( _x_ )and  _Q_ ( _x_ ) is { _x_ | _P_ ( _x_ )and  _Q_ ( _x_ )} =
{ _x_ | _x_ ∈ _A_ and  _x_ ∈ _B_ } = _A_ + _B_. This should make sense. It just says that the
truth set of _P_ ( _x_ )and  _Q_ ( _x_ ) consists of those elements that the truth sets of _P_ ( _x_ )
and _Q_ ( _x_ ) have in common – in other words, the values of _x_ that make both
_P_ ( _x_ ) and _Q_ ( _x_ ) come out true. We have already seen an example of this. In
Example 1.4.3 the sets _A_ and _B_ were the truth sets of the statements “ _x_ is a
man” and “ _x_ has brown hair,” and _A_ + _B_ turned out to be the truth set of “ _x_ is
a man and _x_ has brown hair.”
Similar reasoning shows that the truth set of _P_ ( _x_ )or  _Q_ ( _x_ ) is _A_ , _B_. To find
the truth set ofnot  _P_ ( _x_ ), we need to talk about the universe of discourse _U_. The
truth set ofnot  _P_ ( _x_ ) will consist of those elements of the universe for which _P_ ( _x_ )
is false, and we can find this set by starting with _U_ and removing from it those
elements for which _P_ ( _x_ ) is true. Thus, the truth set ofnot  _P_ ( _x_ ) is _U_ \ _A_.
These observations about truth sets illustrate the fact that the set theory
operations+,,, and\are related to the logical connectivesand ,or , andnot . This
shouldn’t be surprising, since after all the words _and_ , _or_ , and _not_ appear in
their definitions. (The word _not_ doesn’t appear explicitly, but it’s there, hidden
in the mathematical symbol∈in the definition of the difference of two sets.)
It is important to remember, though, that although the set theory operations
and logical connectives are related, they are not interchangeable. The logical
connectives can only be used to combine _statements_ , whereas the set theory
operations must be used to combine _sets_. For example, if _A_ is the truth set of
_P_ ( _x_ ) and _B_ is the truth set of _Q_ ( _x_ ), then we can say that _A_ + _B_ is the truth set of
_P_ ( _x_ )and  _Q_ ( _x_ ), but expressions such as _A_ and  _B_ or _P_ ( _x_ )+ _Q_ ( _x_ ) are completely
meaningless and should never be used.
The relationship between set theory operations and logical connectives also
becomes apparent when we analyze the logical forms of statements about

38 _Sentential Logic_

intersections, unions, and differences of sets. For example, according to the
definition of intersection, to say that _x_ ∈ _A_ + _B_ means that _x_ ∈ _A_ and  _x_ ∈ _B_.
Similarly, to say that _x_ ∈ _A_ , _B_ means that _x_ ∈ _A_ or  _x_ ∈ _B_ , and _x_ ∈ _A_ \ _B_
means _x_ ∈ _A_ and  _x_ ∈ _B_ , or in other words _x_ ∈ _A_ and  not  ( _x_ ∈ _B_ ). We can combine
these rules when analyzing statements about more complex sets.

**Example 1.4.4.** Analyze the logical forms of the following statements:

1. _x_ ∈ _A_ +( _B_ , _C_ ).
2. _x_ ∈ _A_ \( _B_ + _C_ ).
3. _x_ ∈( _A_ + _B_ ),( _A_ + _C_ ).

_Solutions_

1. _x_ ∈ _A_ +( _B_ , _C_ )
    is equivalent to _x_ ∈ _A_ and  _x_ ∈( _B_ , _C_ ) (definition of+),
which is equivalent to _x_ ∈ _A_ and ( _x_ ∈ _B_ or  _x_ ∈ _C_ ) (definition of,).
2. _x_ ∈ _A_ \( _B_ + _C_ )
    is equivalent to _x_ ∈ _A_ and  not  ( _x_ ∈ _B_ + _C_ ) (definition of\),
which is equivalent to _x_ ∈ _A_ and  not  ( _x_ ∈ _B_ and  _x_ ∈ _C_ ) (definition of+).
3. _x_ ∈( _A_ + _B_ ),( _A_ + _C_ )
    is equivalent to _x_ ∈( _A_ + _B_ )or  _x_ ∈( _A_ + _C_ ) (definition of,),
which is equivalent to ( _x_ ∈ _A_ and  _x_ ∈ _B_ )or ( _x_ ∈ _A_ and  _x_ ∈ _C_ )
(definition of+).

Look again at the solutions to parts 1 and 3 of Example 1.4.4. You should rec-
ognize that the statements we ended up with in these two parts are equivalent. (If
you don’t, look back at the distributive laws in Section 1.2.) This equivalence
means that the statements _x_ ∈ _A_ +( _B_ , _C_ ) and _x_ ∈( _A_ + _B_ ),( _A_ + _C_ ) are
equivalent. In other words, the objects that are elements of the set _A_ +( _B_ , _C_ )
will be precisely the same as the objects that are elements of ( _A_ + _B_ ),
( _A_ + _C_ ), no matter what the sets _A_ , _B_ , and _C_ are. But recall that sets with
the same elements are equal, so it follows that for any sets _A_ , _B_ , and _C_ , _A_ +
( _B_ , _C_ )=( _A_ + _B_ ),( _A_ + _C_ ). Another way to see this is with the Venn di-
agram in Figure 6. Our earlier Venn diagrams had two circles, because in
previous examples only two sets were being combined. This Venn diagram has
three circles, which represent the three sets _A_ , _B_ , and _C_ that are being combined
in this case. Although it is possible to create Venn diagrams for more than three
sets, it is rarely done, because it cannot be done with overlapping circles. For
more on Venn diagrams for more than three sets, see exercise 10.
Thus, we see that a distributive law for logical connectives has led to a
distributive law for set theory operations. You might guess that because there

```
Operations on Sets 39
```

```
Figure 6
```

were _two_ distributive laws for the logical connectives, withand andor playing
opposite roles in the two laws, there might be two distributive laws for set
theory operations too. The second distributive law for sets should say that for
any sets _A_ , _B_ , and _C_ , _A_ ,( _B_ + _C_ )=( _A_ , _B_ )+( _A_ , _C_ ). You can verify this
for yourself by writing out the statements _x_ ∈ _A_ ,( _B_ + _C_ ) and _x_ ∈( _A_ , _B_ )+
( _A_ , _C_ ) using logical connectives and verifying that they are equivalent, using
the second distributive law for the logical connectivesand andor . Another way
to see it is to make a Venn diagram.
We can derive another set theory identity by finding a statement equivalent
to the statement we ended up with in part 2 of Example 1.4.4:

_x_ ∈ _A_ \( _B_ + _C_ )
is equivalent to _x_ ∈ _A_ and  not  ( _x_ ∈ _B_ and  _x_ ∈ _C_ ) (Example 1.4.4),
which is equivalent to _x_ ∈ _A_ and ( _x_ ∈ _B_ or  _x_ ∈ _C_ ) (DeMorgan’s law),
which is equivalent to ( _x_ ∈ _A_ and  _x_ ∈ _B_ )or ( _x_ ∈ _A_ and  _x_ ∈ _C_ )
(distributive law),
which is equivalent to ( _x_ ∈ _A_ \ _B_ )or ( _x_ ∈ _A_ \ _C_ ) (definition of\),
which is equivalent to _x_ ∈( _A_ \ _B_ ),( _A_ \ _C_ ) (definition of,).

```
Thus, we have shown that for any sets A , B , and C , A \( B + C )=( A \ B ),
( A \ C ). Once again, you can verify this with a Venn diagram as well.
Earlier we promised an alternative way to check the identity ( A , B )\
( A + B )=( A \ B ),( B \ A ). You should see now how this can be done. First,
we write out the logical forms of the statements x ∈( A , B )\( A + B ) and
x ∈( A \ B ),( B \ A ):
```

```
x ∈( A , B )\( A + B ) means ( x ∈ A or  x ∈ B )and  not  ( x ∈ A and  x ∈ B );
x ∈( A \ B ),( B \ A ) means ( x ∈ A and  x ∈ B )or ( x ∈ B and  x ∈ A ).
```

40 _Sentential Logic_

You can now check, using equivalences from Section 1.2, that these statements
are equivalent. An alternative way to check the equivalence is with a truth table.
To simplify the truth table, let’s use _P_ and _Q_ as abbreviations for the statements
_x_ ∈ _A_ and _x_ ∈ _B_. Then we must check that the formulas ( _P_ or  _Q_ )and  not  ( _P_ and  _Q_ )
and ( _P_ and  not  _Q_ )or ( _Q_ and  not  _P_ ) are equivalent. The truth table in Figure 7 shows
this.

```
Figure 7
```

**Definition 1.4.5.** Suppose _A_ and _B_ are sets. We will say that _A_ is a _subset_ of
_B_ if every element of _A_ is also an element of _B_. We write _A_ ⊆ _B_ to mean that
_A_ is a subset of _B_. _A_ and _B_ are said to be _disjoint_ if they have no elements in
common. Note that this is the same as saying that the set of elements they have
in common is the empty set, or in other words _A_ + _B_ =∅.

**Example 1.4.6.** Suppose _A_ ={red, green}, _B_ ={red, yellow, green, purple},
and _C_ ={blue, purple}. Then the two elements of _A_ , red and green, are both
also in _B_ , and therefore _A_ ⊆ _B_. Also, _A_ + _C_ =∅, so _A_ and _C_ are disjoint.

If we know that _A_ ⊆ _B_ , or that _A_ and _B_ are disjoint, then we might draw a
Venn diagram for _A_ and _B_ differently to reflect this. Figures 8 and 9 illustrate
this.

```
Figure 8 Figure 9
```

Just asweearlier derivedidentities showingthat certain setsarealwaysequal,
it is also sometimes possible to show that certain sets are always disjoint, or
that one set is always a subset of another. For example, you can see in a Venn

```
Operations on Sets 41
diagram that the sets A + B and A \ B do not overlap, and therefore they will
always be disjoint for any sets A and B. Another way to see this would be to
write out what it means to say that x ∈( A + B )+( A \ B ):
```

```
x ∈( A + B )+( A \ B ) means ( x ∈ A and  x ∈ B )and ( x ∈ A and  x ∈ B ),
which is equivalent to x ∈ A and ( x ∈ B and  x ∈ B ).
```

But this last statement is clearly a contradiction, so the statement _x_ ∈( _A_ +
_B_ )+( _A_ \ _B_ ) will always be false, no matter what _x_ is. In other words, nothing
can be an element of ( _A_ + _B_ )+( _A_ \ _B_ ), so it must be the case that ( _A_ + _B_ )+
( _A_ \ _B_ )=∅. Therefore, _A_ + _B_ and _A_ \ _B_ are disjoint.
The next theorem gives another example of a general fact about set oper-
ations. The proof of this theorem illustrates that the principles of deductive
reasoning we have been studying are actually used in mathematical proofs.

```
Theorem 1.4.7. For any sets A and B, (A , B )\ B ⊆ A.
Proof. We must show that if something is an element of ( A , B )\ B , then it
must also be an element of A , so suppose that x ∈( A , B )\ B. This means
that x ∈ A , B and x ∈ B , or in other words x ∈ A or  x ∈ B and x ∈ B. But
notice that these statements have the logical form P or  Q andnot  Q , and this
is precisely the form of the premises of our very first example of a deductive
argument in Section 1.1!As we saw in that example, from these premises we
can conclude that x ∈ A must be true. Thus, anything that is an element of
( A , B )\ B must also be an element of A , so ( A , B )\ B ⊆ A. 
```

```
You might think that such a careful application of logical laws is not needed
to understand why Theorem 1.4.7 is correct. The set ( A , B )\ B could be
thought of as the result of starting with the set A , adding in the elements of
B , and then removing them again. Common sense suggests that the result will
just be the original set A ; in other words, it appears that ( A , B )\ B = A.
However, as you are asked to show in exercise 9, this conclusion is incorrect.
This illustrates that in mathematics, you must not allow imprecise reasoning
to lead you to jump to conclusions. Applying laws of logic carefully, as we did
in our proof of Theorem 1.4.7, may help you to avoid jumping to unwarranted
conclusions.
```

```
Exercises
```

```
∗1. Let A = { 1 , 3 , 12 , 35 }, B = { 3 , 7 , 12 , 20 }, and C = { x | x is a prime
number}. List the elements of the following sets. Are any of the sets
```

42 _Sentential Logic_

```
below disjoint from any of the others? Are any of the sets below subsets
of any others?
(a) A + B.
(b) ( A , B )\ C.
(c) A ,( B \ C ).
```

2. Let _A_ = { United States,Germany, China, Australia}, _B_ = { Germany,
    France, India, Brazil}, and _C_ = { _x_ | _x_ is a country in Europe}. List the
    elements of the following sets. Are any of the sets below disjoint from
    any of the others? Are any of the sets below subsets of any others?
    (a) _A_ , _B_.
    (b) ( _A_ + _B_ )\ _C_.
    (c) ( _B_ + _C_ )\ _A_.
3. Verify that the Venn diagrams for ( _A_ , _B_ )\( _A_ + _B_ ) and ( _A_ \ _B_ ),
    ( _B_ \ _A_ ) both look like Figure 5, as stated in this section.
∗4. Use Venn diagrams to verify the following identities:
(a) _A_ \( _A_ + _B_ )= _A_ \ _B_.
(b) _A_ ,( _B_ + _C_ )=( _A_ , _B_ )+( _A_ , _C_ ).
5. Verify the identities in exercise 4 by writing out (using logical symbols)
    what it means for an object _x_ to be an element of each set and then using
    logical equivalences.
6. Use Venn diagrams to verify the following identities:
    (a) ( _A_ , _B_ )\ _C_ =( _A_ \ _C_ ),( _B_ \ _C_ ).
    (b) _A_ ,( _B_ \ _C_ )=( _A_ , _B_ )\( _C_ \ _A_ ).
7. Verify the identities in exercise 6 by writing out (using logical symbols)
    what it means for an object _x_ to be an element of each set and then using
    logical equivalences.
∗8. For each of the following sets, write out (using logical symbols) what it
means for an object _x_ to be an element of the set. Then determine which
of these sets must be equal to each other by determining which statements
are equivalent.
(a) ( _A_ \ _B_ )\ _C_.
(b) _A_ \( _B_ \ _C_ ).
(c) ( _A_ \ _B_ ),( _A_ + _C_ ).
(d) ( _A_ \ _B_ )+( _A_ \ _C_ ).
(e) _A_ \( _B_ , _C_ ).
9. It was shown in this section that for any sets _A_ and _B_ , ( _A_ , _B_ )\ _B_ ⊆ _A_.
    Give an example of two sets _A_ and _B_ for which ( _A_ , _B_ )\ _B_ = _A_.
∗10. It is claimed in this section that you cannot make a Venn diagram for four
sets using overlapping circles.

```
The Conditional and Biconditional Connectives 43
(a) What’s wrong with the following diagram? (Hint: Where’s the set
( A + D )\( B , C )?)
```

```
(b) Can you make a Venn diagram for four sets using shapes other than
circles?
```

11. (a) Make Venn diagrams for the sets ( _A_ , _B_ )\ _C_ and _A_ ,( _B_ \ _C_ ). What
    can you conclude about whether one of these sets is necessarily a
    subset of the other?
(b)Give an example of sets _A_ , _B_ , and _C_ for which ( _A_ , _B_ )\ _C_ = _A_ ,
( _B_ \ _C_ ).
∗12. Use Venn diagrams to show that the associative law holds for symmetric

```
difference; that is, for any sets A , B , and C , A ( B  C )=( A  B ) C.
```

13. Use any method you wish to verify the following identities:
    (a) ( _A_  _B_ ), _C_ =( _A_ , _C_ )( _B_ \ _C_ ).
    (b) ( _A_  _B_ )+ _C_ =( _A_ + _C_ )( _B_ + _C_ ).
    (c) ( _A_  _B_ )\ _C_ =( _A_ \ _C_ )( _B_ \ _C_ ).
14. Use any method you wish to verify the following identities:
    (a) ( _A_ , _B_ ) _C_ =( _A_  _C_ )( _B_ \ _A_ ).
    (b) ( _A_ + _B_ ) _C_ =( _A_  _C_ )( _A_ \ _B_ ).
    (c) ( _A_ \ _B_ ) _C_ =( _A_  _C_ )( _A_ + _B_ ).
15. Fill in the blanks to make true identities:
    (a) ( _A_  _B_ )+ _C_ =( _C_ \ _A_ ).
    (b) _C_ \( _A_  _B_ )=( _A_ + _C_ ).
    (c) ( _B_ \ _A_ ) _C_ =( _A_  _C_ ).

## 1.5 The Conditional and Biconditional Connectives

It is time now to return to a question we left unanswered in Section 1.1. We
have seen how the reasoning in the first and third arguments in Example 1.1.1
can be understood by analyzing the connectivesor andnot . But what about the

44 _Sentential Logic_

reasoning in the second argument? Recall that the argument went like this:

```
If today is Sunday, then I don’t have to go to work today.
Today is Sunday.
Therefore, I don’t have to go to work today.
```

What makes this reasoning valid?
It appears that the crucial words here are _if_ and _then_ , which occur in the
first premise. We therefore introduce a new logical connective,→, and write
_P_ → _Q_ to represent the statement “If _P_ then _Q_ ” This statement is sometimes
called a _conditional_ statement, with _P_ as its _antecedent_ and _Q_ as its _consequent_.
If we let _P_ stand for the statement “Today is Sunday” and _Q_ for the statement “I
don’t have to go to work today,” then the logical form of the argument would be

```
P → Q
P
∴ Q
```

Our analysis of the new connective→should lead to the conclusion that this
argument is valid.

**Example 1.5.1.** Analyze the logical forms of the following statements:

1. If it’s raining and I don’t have my umbrella, then I’ll get wet.
2. If Mary did her homework, then the teacher won’t collect it, and if she didn’t,
    then he’ll ask her to do it on the board.

_Solutions_

1. Let _R_ stand for the statement “It’s raining,” _U_ for “I have my umbrella,” and
    W for “I’ll get wet.” Then statement 1 would be represented by the formula
    ( _R_ and  not  _U_ )→ _W_.
2. Let _H_ stand for “Mary did her homework,” _C_ for “The teacher will collect
    it,” and _B_ for “The teacher will ask Mary to do the homework on the board.”
    Then the given statement means ( _H_ → not  _C_ )and (not  _H_ → _B_ ).

To analyze arguments containing the connective→we must work out the
truth table for the formula _P_ → _Q_. Because _P_ → _Q_ is supposed to mean that
if _P_ is true then _Q_ is also true, we certainly want to say that if _P_ is true and
_Q_ is false then _P_ → _Q_ is false. If _P_ is true and _Q_ is also true, then it seems
reasonable to say that _P_ → _Q_ is true. This gives us the last two lines of the
truth table in Figure 1. The remaining two lines of the truth table are harder
to fill in, although some people might say that if _P_ and _Q_ are both false then

_The Conditional and Biconditional Connectives_ 45
_P_ → _Q_ should be considered true. Thus, we can sum up our conclusions so
far with the table in Figure 1.

```
Figure 1
```

To help us fill in the undetermined lines in this truth table, let’s look at
an example. Consider the statement “If _x_ >2 then _x_^2 >4,” which we could
represent with the formula _P_ ( _x_ )→ _Q_ ( _x_ ), where _P_ ( _x_ ) stands for the statement
_x_ >2 and _Q_ ( _x_ ) stands for _x_^2 >4. Of course, the statements _P_ ( _x_ ) and _Q_ ( _x_ )
contain _x_ as a free variable, and each will be true for some values of _x_ and false
for others. But surely, no matter what the value of _x_ is, we would say it is true
that _if x_ >2 then _x_^2 >4, so the conditional statement _P_ ( _x_ )→ _Q_ ( _x_ ) should
be true. Thus, the truth table should be completed in such a way that no matter
what value we plug in for _x_ , this conditional statement comes out true.
For example, suppose _x_ =3. In this case _x_ >2 and _x_^2 = 9 >4, so _P_ ( _x_ )
and _Q_ ( _x_ ) are both true. This corresponds to line four of the truth table in
Figure 1, and we’ve already decided that the statement _P_ ( _x_ )→ _Q_ ( _x_ ) should
come out true in this case. But now consider the case _x_ =1. Then _x_ <2 and
_x_^2 = 1 <4, so _P_ ( _x_ ) and _Q_ ( _x_ ) are both false, corresponding to line one in the
truth table. We have tentatively placed a _T_ in this line of the truth table, and
now we see that this tentative choice must be right. If we put an _F_ there, then
the statement _P_ ( _x_ )→ _Q_ ( _x_ ) would come out false in the case _x_ =1, and we’ve
already decided that it should be true for all values of _x_.
Finally, consider the case _x_ = - 5. Then _x_ <2, so _P_ ( _x_ ) is false, but _x_^2 =
25 >4, so _Q_ ( _x_ ) is true. Thus, in this case we find ourselves in the second line
of the truth table, and once again, if the conditional statement _P_ ( _x_ )→ _Q_ ( _x_ )
is to be true in this case, we must put a _T_ in this line. So it appears that all the
questionable lines in the truth table in Figure 1 must be filled in with T’s, and
the completed truth table for the connective→must be as shown in Figure 2.

```
Figure 2
```

46 _Sentential Logic_

Of course, there are many other values of _x_ that could be plugged into our
statement “If _x_ >2 then _x_^2 >4”; but if you try them, you’ll find that they all
lead to line one, two, or four of the truth table, as our examples _x_ = 1 ,-5,
and 3 did. No value of _x_ will lead to line three, because you could never have
_x_ >2 but _x_^2 ≤4. After all, that’s why we said that the statement “If _x_ > 2
then _x_^2 >4” was always true, no matter what _x_ was!The point of saying that
this conditional statement is always true is simply to say that you will never
find a value of _x_ such that _x_ >2 and _x_^2 ≤4 – in other words, there is no value
of _x_ for which _P_ ( _x_ ) is true but _Q_ ( _x_ ) is false. Thus, it should make sense that
in the truth table for _P_ → _Q_ , the only line that is false is the line in which _P_
is true and _Q_ is false.
As the truth table in Figure 3 shows, the formulanot  _P_ or  _Q_ is also true in
every case except when _P_ is true and _Q_ is false. Thus, if we accept the truth
table in Figure 2 as the correct truth table for the formula _P_ → _Q_ , then we
will be forced to accept the conclusion that the formulas _P_ → _Q_ andnot  _P_ or  _Q_
are equivalent. Is this consistent with the way the words _if_ and _then_ are used
in ordinary language? It may not seem to be at first, but, at least for some uses
of the words _if_ and _then_ , it is.

```
Figure 3
```

For example, imagine a teacher saying to a class, in a threatening tone of
voice, “You won’t neglect your homework, or you’ll fail the course.”Grammat-
ically, this statement has the formnot  _P_ or  _Q_ , where _P_ is the statement “You will
neglect your homework” and _Q_ is “You’ll fail the course.” But what message is
the teacher trying to convey with this statement? Clearly the intended message
is “If you neglect your homework, then you’ll fail the course,” or in other words
_P_ → _Q_. Thus, in this example, the statementsnot  _P_ or  _Q_ and _P_ → _Q_ seem to
mean the same thing.
There is a similar idea at work in the first statement from Example 1.1.2,
“Either John went to the store, or we’re out of eggs.” In Section 1.1 we repre-
sented this statement by the formula _P_ or  _Q_ , with _P_ standing for “John went to
the store” and _Q_ for “We’re out of eggs.” But someone who made this statement
would probably be trying to express the idea that if John didn’t go to the store,
then we’re out of eggs, or in other wordsnot  _P_ → _Q_. Thus, this example sug-
gests thatnot  _P_ → _Q_ means the same thing as _P_ or  _Q_. In fact, we can derive this
equivalence from the previous one by substitutingnot  _P_ for _P_. Because _P_ → _Q_

_The Conditional and Biconditional Connectives_ 47
is equivalent tonot  _P_ or  _Q_ , it follows thatnot  _P_ → _Q_ is equivalent tonot not  _P_ or  _Q_ ,
which is equivalent to _P_ or  _Q_ by the double negation law.
We can derive another useful equivalence as follows:
not  _P_ or  _Q_ is equivalent tonot  _P_ or  not not  _Q_ (double negation law),
which is equivalent tonot ( _P_ and  not  _Q_ ) (DeMorgan’s law).

Thus, _P_ → _Q_ is also equivalent tonot ( _P_ and  not  _Q_ ). In fact, this is precisely the
conclusion we reached earlier when discussing the statement “If _x_ >2 then
_x_^2 >4.” We decided then that the reason this statement is true for every value
of _x_ is that there is no value of _x_ for which _x_ >2 and _x_^2 ≤4. In other words,
the statement _P_ ( _x_ )and  not  _Q_ ( _x_ ) is never true, where as before _P_ ( _x_ ) stands for
_x_ >2 and _Q_ ( _x_ ) for _x_^2 >4. But that’s the same as saying that the statement
not ( _P_ ( _x_ )and  not  _Q_ ( _x_ )) is always true. Thus, to say that _P_ ( _x_ )→ _Q_ ( _x_ ) is always
true means the same thing as saying thatnot ( _P_ ( _x_ )and  not  _Q_ ( _x_ )) is always true.
For another example of this equivalence, consider the statement “If it’s going
to rain, then I’ll take my umbrella.” Of course, this statement has the form
_P_ → _Q_ , where _P_ stands for the statement “It’s going to rain” and _Q_ stands
for “I’ll take my umbrella.” But we could also think of this statement as a
declaration that I won’t be caught in the rain without my umbrella – in other
words,not ( _P_ and  not  _Q_ ).
To summarize, so far we have discovered the following equivalences involv-
ing conditional statements:
**Conditional laws**
_P_ → _Q_ is equivalent tonot  _P_ or  _Q_.
_P_ → _Q_ is equivalent tonot ( _P_ and  not  _Q_ ).
In case you’re still not convinced that the truth table in Figure 2 is right,
we give one more reason. We know that, using this truth table, we can now
analyze the validity of deductive arguments involving the words _if_ and _then_.
We’ll find, when we analyze a few simple arguments, that the truth table in
Figure 2 leads to reasonable conclusions about the validity of these arguments.
But if we were to make any changes in the truth table, we would end up with
conclusions that are clearly incorrect. For example, let’s return to the argument
form with which we started this section:

```
P → Q
P
∴ Q
We have already decided that this form of argument should be valid, and the
truth table in Figure 4 confirms this. The premises are both true only in line
four of the table, and in this line the conclusion is true as well.
```

48 _Sentential Logic_

Figure 4
You can also see from Figure 4 that both premises are needed to make this
argument valid. But if we were to change the truth table for the conditional
statement to make _P_ → _Q_ false in the first line of the table, then the second
premise of this argument would no longer be needed. We would end up with
the conclusion that, just from the single premise _P_ → _Q_ , we could infer that _Q_
must be true, since in the two lines of the truth table in which the premise _P_ →
_Q_ would still be true, lines two and four, the conclusion _Q_ is true too. But this
doesn’t seem right. Just knowing that _if P_ is true then _Q_ is true, but not knowing
that _P is_ true, it doesn’t seem reasonable that we should be able to conclude that
_Q_ is true. For example, suppose we know that the statement “If John didn’t go
to the store then we’re out of eggs” is true. Unless we also know whether or not
John has gone to the store, we can’t reach any conclusion about whether or not
we’re out of eggs. Thus, changing the first line of the truth table for _P_ → _Q_
would lead to an incorrect conclusion about the validity of an argument.
Changing the second line of the truth table would also lead to unacceptable
conclusions about the validity of arguments. To see this, consider the argument
form:

```
P → Q
Q
∴ P
```

This should _not_ be considered a valid form of reasoning. For example, consider
the following argument, which has this form:

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

_The Conditional and Biconditional Connectives_ 49
The truth table analysis in Figure 5 agrees with this conclusion. In line two of
the table, the conclusion _P_ is false, but both premises are true, so the argument
is invalid. But notice that if we were to change the truth table for _P_ → _Q_
and make it false in line two, then the truth table analysis would say that the
argument is valid. Thus, the analysis of this argument seems to support our
decision to put a T in the second line of the truth table for _P_ → _Q_.

Figure 5
The last example shows that from the premises _P_ → _Q_ and _Q_ it is incorrect
to infer _P_. But it would certainly be correct to infer _P_ from the premises _Q_ → _P_
and _Q_. This shows that the formulas _P_ → _Q_ and _Q_ → _P_ do _not_ mean the same
thing. You can check this by making a truth table for both and verifying that
they are not equivalent. For example, a person might believe that, in general,
the statement “If you are a convicted murderer then you are untrustworthy” is
true, without believing that the statement “If you are untrustworthy then you
are a convicted murderer” is generally true. The formula _Q_ → _P_ is called the
_converse_ of _P_ → _Q_. It is very important to make sure you never confuse a
conditional statement with its converse.
The _contrapositive_ of _P_ → _Q_ is the formulanot  _Q_ → not  _P_ , and it _is_ equivalent
to _P_ → _Q_. This may not be obvious at first, but you can verify it with a truth
table. For example, the statements “If John cashed the check I wrote then my
bank account is overdrawn” and “If my bank account isn’t overdrawn then John
hasn’t cashed the check I wrote” are equivalent. Both would be true in exactly
the same circumstances – namely, if the check I wrote was for more money
than I had in my account. The equivalence of conditional statements and their
contrapositives is used often in mathematical reasoning. We add it to our list
of important equivalences:

```
Contrapositive law
```

```
P → Q is equivalent tonot  Q → not  P.
```

**Example 1.5.2.** Which of the following statements are equivalent?

1. If it’s either raining or snowing, then the game has been canceled.
2. If the game hasn’t been canceled, then it’s not raining and it’s not snowing.

50 _Sentential Logic_

3. If the game has been canceled, then it’s either raining or snowing.
4. If it’s raining then the game has been canceled, and if it’s snowing then the
    game has been canceled.
5. If it’s neither raining nor snowing, then the game hasn’t been canceled.

_Solution_

We translate all of the statements into the notation of logic, using the follow-
ing abbreviations: _R_ stands for the statement “It’s raining,” _S_ stands for “It’s
snowing,” and _C_ stands for “The game has been canceled.”

1. ( _R_ or  _S_ )→ _C_.
2.not  _C_ →(not  _R_ and  not  _S_ ). By one of DeMorgan’s laws, this is equivalent to
    not  _C_ → not  ( _R_ or  _S_ ). This is the contrapositive of statement 1, so they are
    equivalent.
3. _C_ →( _R_ or  _S_ ). This is the converse of statement 1, which is _not_ equivalent
    to it. You can verify this with a truth table, or just think about what the state-
    ments mean. Statement 1 says that rain or snow would result in cancelation
    of the game. Statement 3 says that these are the _only_ circumstances in which
    the game will be canceled.
4. ( _R_ → _C_ )and ( _S_ → _C_ ). This is also equivalent to statement 1, as the following
    reasoning shows:

```
( R → C )and ( S → C )
is equivalent to (not  R or  C )and (not  S or  C ) (conditional law),
which is equivalent to (not  R and  not  S )or  C (distributive law),
which is equivalent tonot ( R or  S )or  C (DeMorgan’s law),
which is equivalent to ( R or  S )→ C (conditional law).
```

You should read statements 1 and 4 again and see if it makes sense to you
that they’re equivalent.
5.not ( _R_ or  _S_ )→ not  _C_. This is the contrapositive of statement 3, so they are
equivalent. It is not equivalent to statements 1, 2, and 4.
Statements that mean _P_ → _Q_ come up very often in mathematics, but
sometimes they are not written in the form “If _P_ then _Q_ .” Here are a few other
ways of expressing the idea _P_ → _Q_ that are used often in mathematics:

```
P implies Q.
Q , if P.
P only if Q.
P is a sufficient condition for Q.
Q is a necessary condition for P.
```

_The Conditional and Biconditional Connectives_ 51
Some of these may require further explanation. The second expression,
“ _Q_ , if _P_ ,” is just a slight rearrangement of the statement “If _P_ then _Q_ ,” so
it should make sense that it means _P_ → _Q_. As an example of a statement of
the form “ _P_ only if _Q_ ,” consider the sentence “You can run for president only if
you are a citizen.” In this case, _P_ is “You can run for president” and _Q_ is “You
are a citizen.” What the statement means is that if you’re not a citizen, then you
can’t run for president, or in other wordsnot  _Q_ → not  _P_. But by the contrapositive
law, this is equivalent to _P_ → _Q_.
Think of “ _P_ is a sufficient condition for _Q_ ” as meaning “The truth of _P_
suffices to guarantee the truth of _Q_ ,” and it should make sense that this should
be represented by _P_ → _Q_. Finally, “ _Q_ is a necessary condition for _P_ ” means
that in order for _P_ to be true, it is necessary for _Q_ to be true also. This means
that if _Q_ isn’t true, then _P_ can’t be true either, or in other words,not  _Q_ → not  _P_.
Once again, by the contrapositive law we get _P_ → _Q_.

**Example 1.5.3.** Analyze the logical forms of the following statements:

1. If at least ten people are there, then the lecture will be given.
2. The lecture will be given only if at least ten people are there.
3. The lecture will be given if at least ten people are there.
4. Having at least ten people there is a sufficient condition for the lecture being
    given.
5. Having at least ten people there is a necessary condition for the lecture being
    given.

_Solutions_

Let _T_ stand for the statement “At least ten people are there” and _L_ for “The
lecture will be given.”

1. _T_ → _L_.
2. _L_ → _T_. The given statement means that if there are not at least ten people
    there, then the lecture will not be given, or in other wordsnot  _T_ → not  _L_. By
    the contrapositive law, this is equivalent to _L_ → _T_.
3. _T_ → _L_. This is just a rephrasing of statement 1.
4. _T_ → _L_. The statement says that having at least ten people there suffices to
guarantee that the lecture will be given, and this means that if there are at
least ten people there, then the lecture will be given.
5. _L_ → _T_. This statement means the same thing as statement 2: If there are
not at least ten people there, then the lecture will not be given.

52 _Sentential Logic_

We have already seen that a conditional statement _P_ → _Q_ and its converse
_Q_ → _P_ are not equivalent. Often in mathematics we want to say that both
_P_ → _Q_ and _Q_ → _P_ are true, and it is therefore convenient to introduce a
new connective symbol,↔, to express this. You can think of _P_ ↔ _Q_ as just
an abbreviation for the formula ( _P_ → _Q_ )and ( _Q_ → _P_ ). A statement of the
form _P_ ↔ _Q_ is called a _biconditional_ statement, because it represents two
conditional statements. By making a truth table for ( _P_ → _Q_ )and ( _Q_ → _P_ ) you
can verify that the truth table for _P_ ↔ _Q_ is as shown in Figure 6. Note that, by
the contrapositive law, _P_ ↔ _Q_ is also equivalent to ( _P_ → _Q_ )and (not  _P_ → not  _Q_ ).

```
Figure 6
```

Because _Q_ → _P_ can be written “ _P_ if _Q_ ” and _P_ → _Q_ can be written “ _P_ only
if _Q_ ,” _P_ ↔ _Q_ means “ _P_ if _Q_ and _P_ only if _Q_ ,” and this is often written “ _P_ if
and only if _Q_ .” The phrase _if and only if_ occurs so often in mathematics that
there is a common abbreviation for it, _iff_. Thus, _P_ ↔ _Q_ is usually written “ _P_
iff _Q_ .” Another statement that means _P_ ↔ _Q_ is “ _P_ is a necessary and sufficient
condition for _Q_ .”

**Example 1.5.4.** Analyze the logical forms of the following statements:

1. The game will be canceled iff it’s either raining or snowing.
2. Having at least ten people there is a necessary and sufficient condition for
    the lecture being given.
3. If John went to the store then we have some eggs, and if he didn’t then we
    don’t.

_Solutions_

1. Let _C_ stand for “The game will be canceled,” _R_ for “It’s raining,” and _S_
    for “It’s snowing.” Then the statement would be represented by the formula
    _C_ ↔( _R_ or  _S_ ).
2. Let _T_ stand for “There are at least ten people there” and _L_ for “The lecture
    will be given.” Then the statement means _T_ ↔ _L_.
3. Let _S_ stand for “John went to the store” and _E_ for “We have some eggs.”
    Then a literal translation of the given statement would be ( _S_ → _E_ )and 
    (not  _S_ → not  _E_ ). This is equivalent to _S_ ↔ _E_.

_The Conditional and Biconditional Connectives_ 53
One of the reasons it’s so easy to confuse a conditional statement with its
converse is that in everyday speech we sometimes use a conditional statement
when what we mean to convey is actually a biconditional. For example, you
probably wouldn’t say “The lecture will be given if at least ten people are there”
unless it was also the case that if there were fewer than ten people, the lecture
wouldn’t be given. After all, why mention the number ten at all if it’s not the
minimum number of people required? Thus, the statement actually suggests
that the lecture will be given _iff_ there are at least ten people there. For another
example, suppose a child is told by his parents, “If you don’t eat your dinner,
you won’t get any dessert.” The child certainly expects that if he _does_ eat his
dinner, he _will_ get dessert, although that’s not literally what his parents said. In
other words, the child interprets the statement as meaning “Eating your dinner
is a necessary _and sufficient_ condition for getting dessert.”
Such a blurring of the distinction between _if_ and _iff_ is never acceptable in
mathematics. Mathematicians always use a phrase such as _iff_ or _necessary and
sufficient condition_ when they want to express a biconditional statement. You
should never interpret an if-then statement in mathematics as a biconditional
statement, the way you might in everyday speech.

```
Exercises
```

∗1. Analyze the logical forms of the following statements:

```
(a) If this gas either has an unpleasant smell or is not explosive, then it
isn’t hydrogen.
(b) Having both a fever and a headache is a sufficient condition forGeorge
to go to the doctor.
(c) Both having a fever and having a headache are sufficient conditions
forGeorge to go to the doctor.
(d) If x =2, then a necessary condition for x to be prime is that x be odd.
```

2. Analyze the logical forms of the following statements:
    (a) Mary will sell her house only if she can get a good price and find a
       nice apartment.
    (b) Having both a good credit history and an adequate down payment is a
       necessary condition for getting a mortgage.
    (c) John will kill himself, unless someone stops him. (Hint: First try to
       rephrase this using the words _if_ and _then_ instead of _unless_ .)
    (d) If _x_ is divisible by either 4 or 6, then it isn’t prime.
3. Analyze the logical form of the following statement:
    (a) If it is raining, then it is windy and the sun is not shining.

54 _Sentential Logic_

```
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
∗4. Use truth tables to determine whether or not the following arguments are
valid:
(a) Either sales or expenses will go up. If sales go up, then the boss will
be happy. If expenses go up, then the boss will be unhappy. Therefore,
sales and expenses will not both go up.
(b) If the tax rate and the unemployment rate both go up, then there will
be a recession. If theGNP goes up, then there will not be a recession.
TheGNP and taxes are both going up. Therefore, the unemployment
rate is not going up.
(c) Thewarninglightwillcomeonifandonlyifthepressureistoohighand
the relief valve is clogged. The relief valve is not clogged. Therefore,
the warning light will come on if and only if the pressure is too high.
```

5. (a) Show that _P_ ↔ _Q_ is equivalent to ( _P_ and  _Q_ )or (not  _P_ and  not  _Q_ ).
    (b) Show that ( _P_ → _Q_ )or ( _P_ → _R_ ) is equivalent to _P_ →( _Q_ or  _R_ ).
∗6. (a) Show that ( _P_ → _R_ )and ( _Q_ → _R_ ) is equivalent to ( _P_ or  _Q_ )→ _R_.
(b) Formulate and verify a similar equivalence involving ( _P_ → _R_ )or 
( _Q_ → _R_ ).
7. (a) Show that ( _P_ → _Q_ )and ( _Q_ → _R_ ) is equivalent to ( _P_ → _R_ )and 
    [( _P_ ↔ _Q_ )or ( _R_ ↔ _Q_ )].
(b) Show that ( _P_ → _Q_ )or ( _Q_ → _R_ ) is a tautology.
∗8. Find a formula involving only the connectivesnot and→that is equivalent
to _P_ and  _Q_.
9. Find a formula involving only the connectivesnot and→that is equivalent
    to _P_ ↔ _Q_.
10. Which of the following formulas are equivalent?
(a) _P_ →( _Q_ → _R_ ).
(b) _Q_ →( _P_ → _R_ ).
(c) ( _P_ → _Q_ )and ( _P_ → _R_ ).
(d) ( _P_ and  _Q_ )→ _R_.
(e) _P_ →( _Q_ and  _R_ ).

### 2 Quantificational Logic

## 2.1 Quantifiers

We have seen that a statement _P_ ( _x_ ) containing a free variable _x_ may be true
for some values of _x_ and false for others. Sometimes we want to say something
about _how many_ values of _x_ make _P_ ( _x_ ) come out true. In particular, we often
want to say either that _P_ ( _x_ ) is true for _every_ value of _x_ or that it is true for _at least
one_ value of _x_. We therefore introduce two more symbols, called _quantifiers_ ,
to help us express these ideas.
To say that _P_ ( _x_ ) is true for every value of _x_ in the universe of discourse
_U_ , we will write∀ _x P_ ( _x_ ). This is read “For all _x_ , _P_ ( _x_ ).” Think of the upside
down _A_ as standing for the word _all_. The symbol∀is called the _universal
quantifier_ , because the statement∀ _x P_ ( _x_ ) says that _P_ ( _x_ ) is _universally_ true. As
we discussed in Section 1.3, to say that _P_ ( _x_ ) is true for every value of _x_ in the
universe means that the truth set of _P_ ( _x_ ) will be the whole universe _U_. Thus,
you could also think of the statement∀ _x P_ ( _x_ ) as saying that the truth set of
_P_ ( _x_ ) is equal to _U_.
We write∃ _x P_ ( _x_ ) to say that there is at least one value of _x_ in the universe
for which _P_ ( _x_ ) is true. This is read “There exists an _x_ such that _P_ ( _x_ ).” The
backward _E_ comes from the word _exists_ and is called the _existential quantifier_.
Once again, you can interpret this statement as saying something about the
truth set of _P_ ( _x_ ). To say that _P_ ( _x_ ) is true for at least one value of _x_ means that
there is at least one element in the truth set of _P_ ( _x_ ), or in other words, the truth
set is not equal to∅.
For example, in Section 1.5 we discussed the statement “If _x_ >2 then
_x_^2 > 4 ,” where _x_ ranges over the set of all real numbers, and we claimed
that this statement was true for all values of _x_. We can now write this claim
symbolically as∀ _x_ ( _x_ > 2 → _x_^2 >4).

#### 55

56 _Quantificational Logic_

**Example 2.1.1.** What do the following formulas mean? Are they true or
false?

1. ∀ _x_ ( _x_^2 ≥0), where the universe of discourse isR, the set of all real numbers.
2. ∃ _x_ ( _x_^2 - 2 _x_ + 3 =0), with universeRagain.
3. ∃ _x_ ( _M_ ( _x_ )and  _B_ ( _x_ )), where the universe of discourse is the set of all people,
    _M_ ( _x_ ) stands for the statement “ _x_ is a man,” and _B_ ( _x_ ) means “ _x_ has brown
hair.”
4. ∀ _x_ ( _M_ ( _x_ )→ _B_ ( _x_ )), with the same universe and the same meanings for _M_ ( _x_ )
    and _B_ ( _x_ ).
5. ∀ _xL_ ( _x_ , _y_ ), where the universe is the set of all people, and _L_ ( _x_ , _y_ ) means
    “ _x_ likes _y_ .”

_Solutions_

1. This means that for every real number _x_ , _x_^2 ≥0. This is true.
2. This means that there is at least one real number _x_ that makes the equation
    _x_^2 - 2 _x_ + 3 =0 come out true. In other words, the equation has at least
    one real solution. If you solve the equation, you’ll find that this statement
    is false; the equation has no solutions. (Try either completing the square or
    using the quadratic formula.)
3. There is at least one person _x_ such that _x_ is a man and _x_ has brown hair. In
    other words, there is at least one man who has brown hair. Of course, this is
    true.
4. For every person _x_ , if _x_ is a man then _x_ has brown hair. In other words, all men
    have brown hair. If you’re not convinced that this is what the formula means,
    it might help to look back at the truth table for the conditional connective.
    According to this truth table, the statement _M_ ( _x_ )→ _B_ ( _x_ ) will be false only
    if _M_ ( _x_ ) is true and _B_ ( _x_ ) is false; that is, _x_ is a man and _x_ doesn’t have brown
    hair. Thus, to say that _M_ ( _x_ )→ _B_ ( _x_ ) is true for every person _x_ means that
    this situation never occurs, or in other words, that there are no men who
    don’t have brown hair. But that’s exactly what it means to say that all men
    have brown hair. Of course, this statement is false.
5. For every person _x_ , _x_ likes _y_. In other words, everyone likes _y_. We can’t tell
    if this is true or false unless we know who _y_ is.

Notice that in the fifth statement in this example, we needed to know who
_y_ was to determine if the statement was true or false, but not who _x_ was. The
statement says that everyone likes _y_ , and this is a statement about _y_ , but not _x_.
This means that _y_ is a free variable in this statement but _x_ is a bound variable.
Similarly,althoughalltheotherstatementscontaintheletter _x_ ,wedidn’tneed
to know the value of _x_ to determine their truth values, so _x_ is a bound variable in

_Quantifiers_ 57
every case. In general, even if _x_ is a free variable in some statement _P_ ( _x_ ), it is a
bound variable in the statements∀ _x P_ ( _x_ ) and∃ _x P_ ( _x_ ). For this reason, we say
that the quantifiers _bind_ a variable. As in Section 1.3, this means that a variable
that is bound by a quantifier can always be replaced with a new variable without
changing the meaning of the statement, and it is often possible to paraphrase
the statement without mentioning the bound variable at all. For example, the
statement∀ _xL_ ( _x_ , _y_ ) from Example 2.1.1 is equivalent to∀ _w L_ ( _w_ , _y_ ), because
both mean the same thing as “Everyone likes _y_ .” Words such as _everyone,
someone, everything_ , or _something_ are often used to express the meanings of
statements containing quantifiers. If you are translating an English statement
into symbols, these words will often tip you off that a quantifier will be needed.
As with the symbolnot , we follow the convention that the expressions∀ _x_
and∃ _x_ apply only to the statements that come immediately after them. For
example,∀ _x P_ ( _x_ )→ _Q_ ( _x_ ) means (∀ _x P_ ( _x_ ))→ _Q_ ( _x_ ), not∀ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )).

**Example 2.1.2.** Analyze the logical forms of the following statements.

1. Someone didn’t do the homework.
2. Everything in that store is either overpriced or poorly made.
3. Nobody’s perfect.
4. Susan likes everyone who dislikes Joe.
5. _A_ ⊆ _B_.
6. _A_ + _B_ ⊆ _B_ \ _C_.

_Solutions_

1. The word _someone_ tips us off that we should use an existential quantifier.
    As a first step, we write∃ _x_ ( _x_ didn’t do the homework). Now if we let _H_ ( _x_ )
    stand for the statement “ _x_ did the homework,” then we can rewrite this as
    ∃ _x_ not  _H_ ( _x_ ).
2. Think of this statement as saying “If it’s in that store, then it’s either over-
    priced or poorly made (no matter what _it_ is).” Thus, we start by writing∀ _x_ (if
    _x_ is in that store then _x_ is either overpriced or poorly made). To write the
    part in parentheses symbolically, we let _S_ ( _x_ ) stand for “ _x_ is in that store,”
       _O_ ( _x_ ) for “ _x_ is overpriced,” and _P_ ( _x_ ) for “ _x_ is poorly made.” Then our final
    answer is∀ _x_ [ _S_ ( _x_ )→( _O_ ( _x_ )or  _P_ ( _x_ ))].
       Note that, like statement 4 in Example 2.1.1, this statement has the form
    of a universal quantifier applied to a conditional statement. This form occurs
    quite often, and it is important to learn to recognize what it means and when
    it should be used. We can check our answer to this problem as we did before,
    by using the truth table for the conditional connective. The only way that

58 _Quantificational Logic_

```
the statement S ( x )→( O ( x )or  P ( x )) can be false is if x is in that store, but
is neither overpriced nor poorly made. Thus, to say that the statement is
true for all values of x means that this never happens, which is exactly what
it means to say that everything in that store is either overpriced or poorly
made.
```

3. This meansnot (somebody is perfect), or in other wordsnot ∃ _x P_ ( _x_ ), where
    _P_ ( _x_ ) stands for “ _x_ is perfect.”
4. As in statement 2 in this example, we could think of this as meaning “If a
    person dislikes Joe then Susan likes that person (no matter who the person
    is).” Thus, we can start by rewriting the given statement as∀ _x_ (if _x_ dislikes
    Joe then Susan likes _x_ ). Let _L_ ( _x_ , _y_ ) stand for “ _x_ likes _y_ .” In statements that
    talk about specific elements of the universe of discourse it is sometimes
    convenient to introduce letters to stand for those specific elements. In this
    case we need to talk about Joe and Susan, so let’s let _j_ stand for Joe and _s_ for
    Susan. Thus, we can write _L_ ( _s_ , _x_ ) to mean “Susan likes _x_ ,” andnot  _L_ ( _x_ , _j_ ) for
    “ _x_ dislikes Joe.” Filling these in, we end up with the answer∀ _x_ (not  _L_ ( _x_ , _j_ )→
       _L_ ( _s_ , _x_ )). Notice that, once again, we have a universal quantifier applied to a
    conditional statement. As before, you can check this answer using the truth
    table for the conditional connective.
5. According to Definition 1.4.5, to say that _A_ is a subset of _B_ means that
    everything in _A_ is in _B_. If you’ve caught on to the pattern of how universal
    quantifiers and conditionals are combined, you should recognize that this
    would be written symbolically as∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ ).
6. As in the previous statement, we first write this as∀ _x_ ( _x_ ∈ _A_ + _B_ → _x_ ∈
    _B_ \ _C_ ). Now using the definitions of intersection and difference, we can
    expand this further to get∀ _x_ [( _x_ ∈ _A_ and  _x_ ∈ _B_ )→( _x_ ∈ _B_ and  _x_ ∈/ _C_ )].

Although all of our examples so far have contained only one quantifier,
there’s no reason why a statement can’t have more than one quantifier. For
example, consider the statement “Some students are married.” The word _some_
indicates that this statement should be written using an existential quantifier,
so we can think of it as having the form∃ _x_ ( _x_ is a student and _x_ is married).
Let _S_ ( _x_ ) stand for “ _x_ is a student.” We could similarly choose a letter to stand
for “ _x_ is married,” but perhaps a better analysis would be to recognize that to
be married means to be married _to someone_. Thus, if we let _M_ ( _x_ , _y_ ) stand for
“ _x_ is married to _y_ ,” then we can write “ _x_ is married” as∃ _yM_ ( _x_ , _y_ ). We can
therefore represent the entire statement by the formula∃ _x_ ( _S_ ( _x_ )and  ∃ _yM_ ( _x_ , _y_ )),
a formula containing two existential quantifiers.
As another example, let’s analyze the statement “All parents are married.”
We start by writing it as∀ _x_ (if _x_ is a parent then _x_ is married). Parenthood,

_Quantifiers_ 59
like marriage, is a relationship between two people; to be a parent means to
be a parent _of someone_. Thus, it might be best to represent the statement “ _x_
is a parent” by the formula∃ _yP_ ( _x_ , _y_ ), where _P_ ( _x_ , _y_ ) means “ _x_ is a parent
of _y_ .” If we again represent “ _x_ is married” by the formula∃ _yM_ ( _x_ , _y_ ), then
our analysis of the original statement will be∀ _x_ (∃ _yP_ ( _x_ , _y_ )→ ∃ _yM_ ( _x_ , _y_ )).
Although this isn’t wrong, the double use of the variable _y_ could cause confu-
sion. Perhaps a better solution would be to replace the formula∃ _yM_ ( _x_ , _y_ ) with
the equivalent formula∃ _zM_ ( _x_ , _z_ ). (Recall that these are equivalent because a
bound variable in any statement can be replaced by another without changing
the meaning of the statement.) Our improved analysis of the statement would
then be∀ _x_ (∃ _yP_ ( _x_ , _y_ )→ ∃ _zM_ ( _x_ , _z_ )).

**Example 2.1.3.** Analyze the logical forms of the following statements.

1. Everybody in the dorm has a roommate he doesn’t like.
2. Nobody likes a sore loser.
3. Anyone who has a friend who has the measles will have to be quarantined.
4. If anyone in the dorm has a friend who has the measles, then everyone in
    the dorm will have to be quarantined.
5. If _A_ ⊆ _B_ , then _A_ and _C_ \ _B_ are disjoint.

```
Solutions
```

1. This means∀ _x_ (if _x_ lives in the dorm then _x_ has a roommate he doesn’t
    like). To say that _x_ has a roommate he doesn’t like, we could write∃ _y_ ( _x_
    and _y_ are roommates and _x_ doesn’t like _y_ ). If we let _R_ ( _x_ , _y_ ) stand for
    “ _x_ and _y_ are roommates” and _L_ ( _x_ , _y_ ) for “ _x_ likes _y_ ,” then this becomes
    ∃ _y_ ( _R_ ( _x_ , _y_ )and  not  _L_ ( _x_ , _y_ )). Finally, if we let _D_ ( _x_ ) mean “ _x_ lives in the dorm,”
    then the complete analysis of the original statement would be∀ _x_ [ _D_ ( _x_ )→
    ∃ _y_ ( _R_ ( _x_ , _y_ )and  not  _L_ ( _x_ , _y_ ))].
2. This is tricky, because the phrase _a sore loser_ doesn’t refer to a _particular_
    sore loser, it refers to _all_ sore losers. The statement means that all sore losers
    are disliked, or in other words∀ _x_ (if _x_ is a sore loser then nobody likes _x_ ). To
    say nobody likes _x_ we writenot (somebody likes _x_ ), which meansnot ∃ _yL_ ( _y_ , _x_ ),
    where _L_ ( _y_ , _x_ ) means “ _y_ likes _x_ .” If we let _S_ ( _x_ ) mean “ _x_ is a sore loser,” then
    the whole statement would be written∀ _x_ ( _S_ ( _x_ )→ not ∃ _yL_ ( _y_ , _x_ )).
3. You have probably realized by now that it is usually easiest to translate from
    English into symbols in several steps, translating only a little bit at a time.
    Here are the steps we might use to translate this statement:
    (i) ∀ _x_ (if _x_ has a friend who has the measles then _x_ will have to be quaran-
       tined).

60 _Quantificational Logic_

```
(ii)∀ x [∃ y ( y is a friend of x and y has the measles)→ x will have to be
quarantined].
Now, letting F ( y , x ) stand for “ y is a friend of x ,” M ( y ) for “ y has the
measles,” and Q ( x ) for “ x will have to be quarantined,” we get:
(iii)∀ x [∃ y ( F ( y , x )and  M ( y ))→ Q ( x )].
```

4. The word _anyone_ is difficult to interpret, because in different statements it
    means different things. In statement 3 it meant _everyone_ , but in this statement
    it means _someone_. Here are the steps of our analysis:
    (i) (Someone in the dorm has a friend who has the measles)→(everyone
       in the dorm will have to be quarantined).
    (ii)∃ _x_ ( _x_ lives in the dorm and _x_ has a friend who has the measles)→ ∀ _z_ (if
       _z_ lives in the dorm then _z_ will have to be quarantined).
    Using the same abbreviations as in the last statement and letting _D_ ( _x_ ) stand
    for “ _x_ lives in the dorm,” we end up with the following formula:
    (iii)∃ _x_ [ _D_ ( _x_ )and  ∃ _y_ ( _F_ ( _y_ , _x_ )and  _M_ ( _y_ ))]→ ∀ _z_ ( _D_ ( _z_ )→ _Q_ ( _z_ )).
5. Clearlytheanswerwillhavetheformofaconditionalstatement,( _A_ ⊆ _B_ )→
    ( _A_ and _C_ \ _B_ are disjoint). We have already written _A_ ⊆ _B_ symbolically in
    Example 2.1.2. To say that _A_ and _C_ \ _B_ are disjoint means that they have no
    elements in common, or in other wordsnot ∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈ _C_ \ _B_ ). Putting
    this all together, and filling in the definition of _C_ \ _B_ ,we end up with
    ∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ )→ not ∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈ _C_ and  _x_ ∈/ _B_ ).

When a statement contains more than one quantifier it is sometimes difficult
to figure out what it means and whether it is true or false. It may be best in this
case to think about the quantifiers one at a time, in order. For example, consider
the statement∀ _x_ ∃ _y_ ( _x_ + _y_ =5), where the universe of discourse is the set of
all real numbers. Thinking first about just the first quantifier expression∀ _x_ ,
we see that the statement means that for every real number _x_ , the statement
∃ _y_ ( _x_ + _y_ =5) is true. We can worry later about what∃ _y_ ( _x_ + _y_ =5) means;
thinking about two quantifiers at once is too confusing.
If we want to figure out whether or not the statement∃ _y_ ( _x_ + _y_ =5) is true for
every value of _x_ , it might help to try out a few values of _x_. For example, suppose
_x_ =2. Then we must determine whether or not the statement∃ _y_ (2+ _y_ =5) is
true. Now it’s time to think about the next quantifier,∃ _y_. This statement says
that there is at least one value of _y_ for which the equation 2+ _y_ =5 holds. In
other words, the equation 2+ _y_ =5 has at least one solution. Of course, this is
true, because the equation has the solution _y_ = 5 - 2 = 3 .Thus, the statement
∃ _y_ (2+ _y_ =5) is true.
Let’s try one more value of _x_. If _x_ =7, then we are interested in the statement
∃ _y_ (7+ _y_ =5),whichsaysthattheequation7+ _y_ =5hasatleastonesolution.

_Quantifiers_ 61
Once again, this is true, since the solution is _y_ = 5 - 7 = - 2. In fact, you
have probably realized by now that no matter what value we plug in for _x_ , the
equation _x_ + _y_ =5 will always have the solution _y_ = 5 - _x_ , so the statement
∃ _y_ ( _x_ + _y_ =5) will be true. Thus, the original statement∀ _x_ ∃ _y_ ( _x_ + _y_ =5) is
true.
On the other hand, the statement∃ _y_ ∀ _x_ ( _x_ + _y_ =5) means something entirely
different. This statement means that there is at least one value of _y_ for which the
statement∀ _x_ ( _x_ + _y_ =5) is true. Can we find such a value of _y_? Suppose, for
example, we try _y_ =4. Then we must determine whether or not the statement
∀ _x_ ( _x_ + 4 =5) is true. This statement says that no matter what value we plug in
for _x_ , the equation _x_ + 4 =5 holds, and this is clearly false. In fact, no value of
_x_ other than _x_ =1 works in this equation. Thus, the statement∀ _x_ ( _x_ + 4 =5)
is false.
We have seen that when _y_ =4 the statement∀ _x_ ( _x_ + _y_ =5) is false, but
maybe some other value of _y_ will work. Remember, we are trying to determine
whether or not there is _at least one_ value of _y_ that works. Let’s try one more, say,
_y_ =9. Then we must consider the statement∀ _x_ ( _x_ + 9 =5), which says that no
matter what _x_ is, the equation _x_ + 9 =5 holds. Once again this is clearly false,
since only _x_ = - 4 works in this equation. In fact, it should be clear by now
that no matter what value we plug in for _y_ , the equation _x_ + _y_ =5 will be true
for only one value of _x_ , namely _x_ = 5 - _y_ ,so the statement∀ _x_ ( _x_ + _y_ =5)
will be false. Thus there are _no_ values of _y_ for which∀ _x_ ( _x_ + _y_ =5) is true, so
the statement∃ _y_ ∀ _x_ ( _x_ + _y_ =5) is false.
Notice that we found that the statement ∀ _x_ ∃ _y_ ( _x_ + _y_ =5) is true, but
∃ _y_ ∀ _x_ ( _x_ + _y_ =5) is false. Apparently, the order of the quantifiers makes a
difference!What is responsible for this difference? The first statement says
that for every real number _x_ , there is a real number _y_ such that _x_ + _y_ =5. For
example, when we tried _x_ =2 we found that _y_ =3 worked in the equation
_x_ + _y_ =5, and with _x_ = 7 , _y_ = - 2 worked. Note that for different values of
_x_ , we had to use different values of _y_ to make the equation come out true. You
might think of this statement as saying that for each real number _x_ there is a
_corresponding_ real number _y_ such that _x_ + _y_ =5. On the other hand, when we
were analyzing the statement∃ _y_ ∀ _x_ ( _x_ + _y_ =5) we found ourselves searching
for a _single_ value of _y_ that made the equation _x_ + _y_ =5 true for all values of _x_ ,
and this turned out to be impossible. For each value of _x_ there is a correspond-
ing value of _y_ that makes the equation true, but no single value of _y_ works for
every _x_.
For another example, consider the statement∀ _x_ ∃ _yL_ ( _x_ , _y_ ), where the uni-
verse of discourse is the set of all people and _L_ ( _x_ , _y_ ) means “ _x_ likes _y_ .” This
statement says that for every person _x_ , the statement∃ _yL_ ( _x_ , _y_ ) is true. Now

62 _Quantificational Logic_

∃ _yL_ ( _x_ , _y_ ) could be written as “ _x_ likes someone,” so the original statement
means that for every person _x_ , _x_ likes someone. In other words, everyone likes
someone. On the other hand,∃ _y_ ∀ _xL_ ( _x_ , _y_ ) means that there is some person _y_
such that∀ _xL_ ( _x_ , _y_ ) is true. As we saw in Example 2.1.1,∀ _xL_ ( _x_ , _y_ ) means
“Everyone likes _y_ ,” so∃ _y_ ∀ _xL_ ( _x_ , _y_ ) means that there is some person _y_ such
that everyone likes _y_. In other words, there is someone who is universally liked.
These statements don’t mean the same thing. It might be the case that everyone
likes someone, but no one is universally liked.

**Example 2.1.4.** What do the following statements mean? Are they true or
false? The universe of discourse in each case isN, the set of all natural numbers.

1. ∀ _x_ ∃ _y_ ( _x_ < _y_ ).
2. ∃ _y_ ∀ _x_ ( _x_ < _y_ ).
3. ∃ _x_ ∀ _y_ ( _x_ < _y_ ).
4. ∀ _y_ ∃ _x_ ( _x_ < _y_ ).
5. ∃ _x_ ∃ _y_ ( _x_ < _y_ ).
6. ∀ _x_ ∀ _y_ ( _x_ < _y_ ).

_Solutions_

1. This means that for every natural number _x_ , the statement∃ _y_ ( _x_ < _y_ ) is true.
    In other words, for every natural number _x_ , there is a natural number bigger
    than _x_. This is true. For example, _x_ +1 is always bigger than _x_.
2. This means that there is some natural number _y_ such that the statement
    ∀ _x_ ( _x_ < _y_ ) is true. In other words, there is some natural number _y_ such that
    all natural numbers are smaller than _y_. This is false. No matter what natural
    number _y_ we pick, there will always be larger natural numbers.
3. Thismeansthatthereisanaturalnumber _x_ suchthatthestatement∀ _y_ ( _x_ < _y_ )
    is true. You might be tempted to say that this statement will be true if _x_ = 0 ,
    but this isn’t right. Since 0 is the smallest natural number, the statement
    0 < _y_ is true for all values of _y except y_ =0, but if _y_ =0, then the statement
    0 < _y_ is false, and therefore∀ _y_ (0< _y_ ) is false. Similar reasoning shows
    that for every value of _x_ the statement∀ _y_ ( _x_ < _y_ ) is false, so∃ _x_ ∀ _y_ ( _x_ < _y_ )
    is false.
4. This means that for every natural number _y_ , there is a natural number smaller
    than _y_. This is true for every natural number _y except y_ = 0 ,but there is no
    natural number smaller than 0. Therefore this statement is false.
5. This means that there is a natural number _x_ such that∃ _y_ ( _x_ < _y_ ) is true.
    But as we saw in the first statement, this is actually true for _every_ natural
    number _x_ , so it is certainly true for at least one. Thus,∃ _x_ ∃ _y_ ( _x_ < _y_ ) is true.

```
Quantifiers 63
```

6. This means that for every natural number _x_ , the statement∀ _y_ ( _x_ < _y_ ) is
    true. But as we saw in the third statement, there isn’t even _one_ value of _x_
    for which this statement is true. Thus,∀ _x_ ∀ _y_ ( _x_ < _y_ ) is false.

```
Exercises
```

∗1. Analyze the logical forms of the following statements.

```
(a) Anyone who has forgiven at least one person is a saint.
(b) Nobody in the calculus class is smarter than everybody in the discrete
math class.
(c) Everyone likes Mary, except Mary herself.
(d) Jane saw a police officer, and Roger saw one too.
(e) Jane saw a police officer, and Roger saw him too.
```

2. Analyze the logical forms of the following statements.
    (a) Anyone who has bought a Rolls Royce with cash must have a rich
       uncle.
    (b) If anyone in the dorm has the measles, then everyone who has a friend
       in the dorm will have to be quarantined.
    (c) If nobody failed the test, then everybody who got an A will tutor
       someone who got a D.
    (d) If anyone can do it, Jones can.
    (e) If Jones can do it, anyone can.
3. Analyze the logical forms of the following statements. The universe of
    discourse isR. What are the free variables in each statement?
    (a) Every number that is larger than _x_ is larger than _y_.
    (b) For every number _a_ , the equation _ax_^2 + 4 _x_ - 2 =0 has at least one
       solution iff _a_ ≥ - 2.
    (c) All solutions of the inequality _x_^3 - 3 _x_ <3 are smaller than 10.
    (d) If there is a number _x_ such that _x_^2 + 5 _x_ = _w_ and there is a number _y_
       such that 4- _y_^2 = _w_ ,then _w_ is between-10 and 10.
∗4. Translate the following statements into idiomatic English.

```
(a) ∀ x [( H ( x )and  not ∃ yM ( x , y ))→ U ( x )], where H ( x ) means “ x is a man,”
M ( x , y ) means “ x is married to y ,” and U ( x ) means “ x is unhappy.”
(b) ∃ z ( P ( z , x )and  S ( z , y )and  W ( y )), where P ( z , x ) means “ z is a parent of
x ,” S ( z , y ) means “ z and y are siblings,” and W ( y ) means “ y is a
woman.”
```

5. Translate the following statements into idiomatic mathematical English.
    (a) ∀ _x_ [( _P_ ( _x_ )and  not  ( _x_ =2))→ _O_ ( _x_ )], where _P_ ( _x_ ) means “ _x_ is a prime
       number” and _O_ ( _x_ ) means “ _x_ is odd.”

64 _Quantificational Logic_

```
(b) ∃ x [ P ( x )and  ∀ y ( P ( y )→ y ≤ x )], where P ( x ) means “ x is a perfect
number.”
```

6. Are these statements true or false? The universe of discourse is the set of
    all people, and _P_ ( _x_ , _y_ ) means “ _x_ is a parent of _y_ .”
    (a) ∃ _x_ ∀ _yP_ ( _x_ , _y_ ).
    (b) ∀ _x_ ∃ _yP_ ( _x_ , _y_ ).
    (c) not ∃ _x_ ∃ _yP_ ( _x_ , _y_ ).
    (d) ∃ _x_ not ∃ _yP_ ( _x_ , _y_ ).
    (e) ∃ _x_ ∃ _y_ not  _P_ ( _x_ , _y_ ).
∗7. Are these statements true or false? The universe of discourse isN.

```
(a) ∀ x ∃ y (2 x - y =0).
(b) ∃ y ∀ x (2 x - y =0).
(c) ∀ x ∃ y ( x - 2 y =0).
(d) ∀ x ( x < 10 → ∀ y ( y < x → y <9)).
(e) ∃ y ∃ z ( y + z =100).
(f) ∀ x ∃ y ( y > x and  ∃ z ( y + z =100)).
```

8. Same as exercise 7 but withRas the universe of discourse.
9. Same as exercise 7 but withZas the universe of discourse.

## 2.2 Equivalences Involving Quantifiers

In our study of logical connectives in Chapter 1 we found it useful to examine
equivalences between different formulas. In this section, we will see that there
are also a number of important equivalences involving quantifiers.
For example, in Example 2.1.2 we represented the statement “Nobody’s
perfect” by the formulanot ∃ _x P_ ( _x_ ), where _P_ ( _x_ ) meant “ _x_ is perfect.” But another
way to express the same idea would be to say that everyone fails to be perfect, or
in other words∀ _x_ not  _P_ ( _x_ ). This suggests that these two formulas are equivalent,
and a little thought should show that they are. No matter what _P_ ( _x_ ) stands
for, the formulanot ∃ _x P_ ( _x_ ) means that there’s no value of _x_ in the universe of
discourse for which _P_ ( _x_ ) is true. But that’s the same as saying that for every
value of _x_ in the universe, _P_ ( _x_ ) is false, or in other words∀ _x_ not  _P_ ( _x_ ). Thus,
not ∃ _x P_ ( _x_ ) is equivalent to∀ _x_ not  _P_ ( _x_ ).
Similar reasoning shows thatnot ∀ _x P_ ( _x_ ) is equivalent to∃ _x_ not  _P_ ( _x_ ). To say that
not ∀ _x P_ ( _x_ ) means that it is not the case that for all values of _x_ , _P_ ( _x_ ) is true. That’s
equivalent to saying there’s at least one value of _x_ for which _P_ ( _x_ ) is false, which
is what it means to say∃ _x_ not  _P_ ( _x_ ). For example, in Example 2.1.2 we translated
“Someone didn’t do the homework” as∃ _x_ not  _H_ ( _x_ ), where _H_ ( _x_ ) stands for “ _x_
did the homework.” An equivalent statement would be “Not everyone did the
homework,” which would be represented by the formulanot ∀ _x H_ ( _x_ ).

```
Equivalences Involving Quantifiers 65
Thus, we have the following two laws involving negation and quantifiers:
Quantifier Negation laws
not ∃ x P ( x ) is equivalent to∀ x not  P ( x ).
not ∀ x P ( x ) is equivalent to∃ x not  P ( x ).
```

Combining these laws with DeMorgan’s laws and other equivalences involv-
ing the logical connectives, we can often reexpress a negative statement as an
equivalent, but easier to understand, positive statement. This will turn out to be
an important skill when we begin to work with negative statements in proofs.

**Example 2.2.1.** Negate these statements and then reexpress the results as
equivalent positive statements.

1. _A_ ⊆ _B_.
2. Everyone has a relative he doesn’t like.

_Solutions_

1. We already know that _A_ ⊆ _B_ means∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ ). To reexpress the
    negation of this statement as an equivalent positive statement, we reason as
    follows:
       not ∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ )
          is equivalent to ∃ _x_ not ( _x_ ∈ _A_ → _x_ ∈ _B_ ) (quantifier negation law),
       which is equivalent to ∃ _x_ not ( _x_ ∈/ _A_ or  _x_ ∈ _B_ ) (conditional law),
       which is equivalent to ∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈/ _B_ ) (DeMorgan′s law).
    Thus, _A_ ⊆ _B_ means the same thing as∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈/ _B_ ). If you think
    about this, it should make sense. To say that _A_ is not a subset of _B_ is the
    same as saying that there’s something in _A_ that is not in _B_.
2. First of all, let’s write the original statement symbolically. You should be
able to check that if we let _R_ ( _x_ , _y_ ) stand for “ _x_ is related to _y_ ” and _L_ ( _x_ , _y_ )
for “ _x_ likes _y_ ,” then the original statement would be written∀ _x_ ∃ _y_ ( _R_ ( _x_ , _y_ )and 
not  _L_ ( _x_ , _y_ )). Now we negate this and try to find a simpler, equivalent positive
statement:
not ∀ _x_ ∃ _y_ ( _R_ ( _x_ , _y_ )and  not  _L_ ( _x_ , _y_ ))
is equivalent to∃ _x_ not ∃ _y_ ( _R_ ( _x_ , _y_ )and  not  _L_ ( _x_ , _y_ ))
(quantifier negation law),
which is equivalent to∃ _x_ ∀ _y_ not ( _R_ ( _x_ , _y_ )and  not  _L_ ( _x_ , _y_ ))
(quantifier negation law),
which is equivalent to∃ _x_ ∀ _y_ (not  _R_ ( _x_ , _y_ )or  _L_ ( _x_ , _y_ ))
(DeMorgan’s law),
which is equivalent to∃ _x_ ∀ _y_ ( _R_ ( _x_ , _y_ )→ _L_ ( _x_ , _y_ ))
(conditional law).

66 _Quantificational Logic_

```
Let’s translate this last formula back into colloquial English. Leaving
asidethefirstquantifierforthemoment,theformula∀ y ( R ( x , y )→ L ( x , y ))
means that for every person y , if x is related to y then x likes y. In other
words, x likes all his relatives. Adding∃ x to the beginning of this, we get the
statement “There is someone who likes all his relatives.” You should take a
minute to convince yourself that this really is equivalent to the negation of
the original statement “Everyone has a relative he doesn’t like.”
```

For another example of how the quantifier negation laws can help us un-
derstand statements, consider the statement “Everyone who Patricia likes, Sue
doesn’t like.” If we let _L_ ( _x_ , _y_ ) stand for “ _x_ likes _y_ ,” and we let _p_ stand for
Patricia and _s_ for Sue, then this statement would be represented by the formula
∀ _x_ ( _L_ ( _p_ , _x_ )→ not  _L_ ( _s_ , _x_ )). Now we can work out a formula equivalent to this
one as follows:

```
∀ x ( L ( p , x )→ not  L ( s , x ))
is equivalent to∀ x (not  L ( p , x )or  not  L ( s , x )) (conditional law),
which is equivalent to∀ x not ( L ( p , x )and  L ( s , x )) (DeMorgan’s law),
which is equivalent tonot ∃ x ( L ( p , x )and  L ( s , x )) (quantifier negation law).
```

Translating the last formula back into English, we get the statement “There’s
no one who both Patricia and Sue like,” and this does mean the same thing as
the statement we started with.
We saw in Section 2.1 that reversing the order of two quantifiers can some-
times change the meaning of a formula. However, if the quantifiers are the same
type (both∀or both∃), it turns out the order can always be switched with-
out affecting the meaning of the formula. For example, consider the statement
“Someone has a teacher who is younger than he is.” To write this symbolically
we first write∃ _x_ ( _x_ has a teacher who is younger than _x_ ). Now to say “ _x_ has a
teacher who is younger than _x_ ” we write∃ _y_ ( _T_ ( _y_ , _x_ )and  _P_ ( _y_ , _x_ )), where _T_ ( _y_ , _x_ )
means “ _y_ is a teacher of _x_ ” and _P_ ( _y_ , _x_ ) means “ _y_ is younger than _x_ .” Putting
this all together, the original statement would be represented by the formula
∃ _x_ ∃ _y_ ( _T_ ( _y_ , _x_ )and  _P_ ( _y_ , _x_ )).
Now what happens if we switch the quantifiers? In other words, what does
the formula∃ _y_ ∃ _x_ ( _T_ ( _y_ , _x_ )and  _P_ ( _y_ , _x_ )) mean? You should be able to convince
yourself that this formula says that there is a person _y_ such that _y_ is a teacher of
someone who is older than _y_. In other words, someone is a teacher of a person
who is older than he is. But this would be true in exactly the same circumstances
as the original statement, “Someone has a teacher who is younger than he is”!
Both mean that there are people _x_ and _y_ such that _y_ is a teacher of _x_ and _y_ is

_Equivalences Involving Quantifiers_ 67
younger than _x_. In fact, this suggests that a good way of reading the pair of
quantifiers∃ _y_ ∃ _x_ or∃ _x_ ∃ _y_ would be “there are objects _x_ and _y_ such that... .”
Similarly, two universal quantifiers in a row can always be switched without
changing the meaning of a formula, because∀ _x_ ∀ _y_ and∀ _y_ ∀ _x_ can both be
thought of as meaning “for all objects _x_ and _y_ ,... .” For example, consider
the formula∀ _x_ ∀ _y_ ( _L_ ( _x_ , _y_ )→ _A_ ( _x_ , _y_ )), where _L_ ( _x_ , _y_ ) means “ _x_ likes _y_ ” and
_A_ ( _x_ , _y_ ) means “ _x_ admires _y_ .” You could think of this formula as saying “For
all people _x_ and _y_ , if _x_ likes _y_ then _x_ admires _y_ .” In other words, people always
admire the people they like. The formula∀ _y_ ∀ _x_ ( _L_ ( _x_ , _y_ )→ _A_ ( _x_ , _y_ )) means
exactly the same thing.
It is important to realize that when we talk about objects _x_ and _y_ , we are
not ruling out the possibility that _x_ and _y_ are the same object. For example,
the formula∀ _x_ ∀ _y_ ( _L_ ( _x_ , _y_ )→ _A_ ( _x_ , _y_ )) means not just that a person who likes
another person always admires that other person, but also that people who like
themselves also admire themselves. As another example, suppose we wanted
to write a formula that means “ _x_ is a bigamist.” (Of course, _x_ will be a free
variable in this formula.) You might think you could express this with the
formula∃ _y_ ∃ _z_ ( _M_ ( _x_ , _y_ )and  _M_ ( _x_ , _z_ )), where _M_ ( _x_ , _y_ ) means “ _x_ is married to _y_ .”
But to say that _x_ is a bigamist you must say that there are two _different_ people
to whom _x_ is married, and this formula doesn’t say that _y_ and _z_ are different.
The right answer is∃ _y_ ∃ _z_ ( _M_ ( _x_ , _y_ )and  _M_ ( _x_ , _z_ )and  _y_ = _z_ ).

```
Example 2.2.2. Analyze the logical forms of the following statements.
```

1. All married couples have fights.
2. Everyone likes at least two people.
3. John likes exactly one person.

```
Solutions
```

```
1.∀ x ∀ y ( M ( x , y )→ F ( x , y )), where M ( x , y ) means “ x and y are married to
each other” and F ( x , y ) means “ x and y fight with each other.”
```

2. ∀ _x_ ∃ _y_ ∃ _z_ ( _L_ ( _x_ , _y_ )and  _L_ ( _x_ , _z_ )and  _y_ = _z_ ), where _L_ ( _x_ , _y_ ) stands for “ _x_ likes _y_ .”
    Note that the statement means that everyone likes at least two _different_
    people, so it would be incorrect to leave out the “ _y_ = _z_ ” at the end.
3. Let _L_ ( _x_ , _y_ ) mean “ _x_ likes _y_ ,” and let _j_ stand for John. We translate this
    statement into symbols gradually:
    (i) ∃ _x_ (John likes _x_ and John doesn’t like anyone other than _x_ ).
    (ii) ∃ _x_ ( _L_ ( _j_ , _x_ )and  not ∃ _y_ (John likes _y_ and _y_ = _x_ )).
    (iii) ∃ _x_ ( _L_ ( _j_ , _x_ )and  not ∃ _y_ ( _L_ ( _j_ , _y_ )and  _y_ = _x_ )).

68 _Quantificational Logic_

Note that for the third statement in this example we could not have given
the simpler answer∃ _xL_ ( _j_ , _x_ ), because this would mean that John likes _at least_
one person, not _exactly_ one person. The phrase _exactly one_ occurs so often in
mathematics that there is a special notation for it. We will write∃! _x P_ ( _x_ ) to
represent the statement “There is exactly one value of _x_ such that _P_ ( _x_ ) is true.”
It is sometimes also read “There is a unique _x_ such that _P_ ( _x_ ).” For example, the
third statement in Example 2.2.2 could be written symbolically as∃! _xL_ ( _j_ , _x_ ).
In fact, we could think of this as just an abbreviation for the formula given in
Example 2.2.2 as the answer for statement 3. Similarly, in general we can think
of∃! _x P_ ( _x_ ) as an abbreviation for the formula∃ _x_ ( _P_ ( _x_ )and  not ∃ _y_ ( _P_ ( _y_ )and  _y_ = _x_ )).
Recall that when we were discussing set theory, we sometimes found it
useful to write the truth set of _P_ ( _x_ ) as { _x_ ∈ _U_ | _P_ ( _x_ )}rather than{ _x_ | _P_ ( _x_ )}, to
make sure it was clear what the universe of discourse was. Similarly, instead
of writing∀ _x P_ ( _x_ ) to indicate that _P_ ( _x_ ) is true for every value of _x_ in some
universe _U_ , we might write∀ _x_ ∈ _U P_ ( _x_ ). This is read “For all _x_ in _U_ , _P_ ( _x_ ).”
Similarly, we can write∃ _x_ ∈ _U P_ ( _x_ ) to say that there is at least one value of _x_
in the universe _U_ such that _P_ ( _x_ ) is true. For example, the statement∀ _x_ ( _x_ ≥0)
would be false if the universe of discourse were the real numbers, but true if
it were the natural numbers. We could avoid confusion when discussing this
statement by writing either∀ _x_ ∈R( _x_ ≥0) or∀ _x_ ∈N( _x_ ≥0), to make it clear
which we meant.
As before, we sometimes use this notation not to specify the universe of
discourse but to restrict attention to a subset of the universe. For example, if
our universe of discourse is the real numbers and we want to say that some
real number _x_ has a square root, we could write∃ _y_ ( _y_^2 = _x_ ). To say that every
_positive_ real number has a square root, we would say∀ _x_ ∈R+∃ _y_ ( _y_^2 = _x_ ). We
could say that every positive real number has a negative square root by writing
∀ _x_ ∈R+∃ _y_ ∈R-( _y_^2 = _x_ ). In general, for any set _A_ , the formula∀ _x_ ∈ _AP_ ( _x_ )
means that for every value of _x in the set A_ , _P_ ( _x_ ) is true, and∃ _x_ ∈ _AP_ ( _x_ )
means that there is at least one value of _x in the set A_ such that _P_ ( _x_ ) is true. The
quantifiers in these formulas are sometimes called _bounded quantifiers_ , because
they place _bounds_ on which values of _x_ are to be considered. Occasionally
we may use variations on this notation to place other kinds of restrictions on
quantified variables. For example, the statement that every positive real number
has a negative square root could also be written∀ _x_ > 0 ∃ _y_ <0( _y_^2 = _x_ ).
Formulas containing bounded quantifiers can also be thought of as abbre-
viations for more complicated formulas containing only normal, unbounded
quantifiers. To say that∃ _x_ ∈ _AP_ ( _x_ ) means that there is some value of _x_ that
is in _A_ and that also makes _P_ ( _x_ ) come out true, and another way to write
this would be∃ _x_ ( _x_ ∈ _A_ and  _P_ ( _x_ )). Similarly, you should convince yourself

```
Equivalences Involving Quantifiers 69
that∀ x ∈ AP ( x ) means the same thing as∀ x ( x ∈ A → P ( x )). For exam-
ple, the formula∀ x ∈R+∃ y ∈R-( y^2 = x ) discussed earlier means the same
thing as∀ x ( x ∈R+→ ∃ y ∈R-( y^2 = x )), which in turn can be expanded as
∀ x ( x ∈R+→ ∃ y ( y ∈R-and  y^2 = x )). By the definitions ofR+andR-, an
equivalent way to say this would be∀ x ( x > 0 → ∃ y ( y < 0 and  y^2 = x )). You
should make sure you are convinced that this formula, like the original for-
mula, means that every positive real number has a negative square root. For
another example, note that the statement A ⊆ B , which by definition means
∀ x ( x ∈ A → x ∈ B ), could also be written as∀ x ∈ A ( x ∈ B ).
It is interesting to note that the quantifier negation laws work for bounded
quantifiers as well. In fact, we can derive these bounded quantifier negation laws
from the original laws by thinking of the bounded quantifiers as abbreviations,
as described earlier. For example,
```

```
not ∀ x ∈ AP ( x )
is equivalent tonot ∀ x ( x ∈ A → P ( x )) (expanding abbreviation),
which is equivalent to∃ x not ( x ∈ A → P ( x )) (quantifier negation law),
which is equivalent to∃ x not ( x ∈/ A or  P ( x )) (conditional law),
which is equivalent to∃ x ( x ∈ A and  not  P ( x )) (DeMorgan’s law),
which is equivalent to∃ x ∈ A not  P ( x ) (abbreviation).
```

```
Thus, we have shown thatnot ∀ x ∈ AP ( x ) is equivalent to∃ x ∈ A not  P ( x ). You
are asked in exercise 5 to prove the other bounded quantifier negation law, that
not ∃ x ∈ AP ( x ) is equivalent to∀ x ∈ A not  P ( x ).
It should be clear that if A =∅then∃ x ∈ AP ( x ) will be false no matter
what the statement P ( x ) is. There can be nothing in A that, when plugged in
for x , makes P ( x ) come out true, because there is nothing in A at all!It may
not be so clear whether∀ x ∈ AP ( x ) should be considered true or false, but we
can find the answer using the quantifier negation laws:
```

```
∀ x ∈ AP ( x )
is equivalent tonot not ∀ x ∈ AP ( x ) (double negation law),
which is equivalent tonot ∃ x ∈ A not  P ( x ) (quantifier negation law).
```

Now if _A_ =∅then this last formula will be true, no matter what the statement
_P_ ( _x_ ) is, because, as we have seen,∃ _x_ ∈ _A_ not  _P_ ( _x_ ) must be false. Thus,∀ _x_ ∈
_AP_ ( _x_ ) is always true if _A_ = ∅. Mathematicians sometimes say that such a
statement is _vacuously_ true. Another way to see this is to rewrite the statement
∀ _x_ ∈ _AP_ ( _x_ ) in the equivalent form∀ _x_ ( _x_ ∈ _A_ → _P_ ( _x_ )). Now according to the
truth table for the conditional connective, the only way this can be false is if
there is some value of _x_ such that _x_ ∈ _A_ is true but _P_ ( _x_ ) is false. But there is

70 _Quantificational Logic_

no such value of _x_ , simply because there isn’t a value of _x_ for which _x_ ∈ _A_ is
true.
As an application of this principle, we note that the empty set is a subset
of every set. To see why, just rewrite the statement _A_ ⊆ _B_ in the equivalent
form∀ _x_ ∈ _A_ ( _x_ ∈ _B_ ). Now if _A_ = ∅ then, as we have just observed, this
statement will be vacuously true. Thus, no matter what the set _B_ is,∅⊆ _B_.
Another example of a vacuously true statement is the statement “All unicorns
are purple.” We could represent this by the formula∀ _x_ ∈ _AP_ ( _x_ ), where _A_ is
the set of all unicorns and _P_ ( _x_ ) stands for “ _x_ is purple.” Since there are no
unicorns, _A_ is the empty set, so the statement is vacuously true.
Perhaps you have noticed by now that, although in Chapter 1 we were al-
ways able to check equivalences involving logical connectives by making truth
tables, we have no such simple way of checking equivalences involving quan-
tifiers. So far, we have justified our equivalences involving quantifiers by just
looking at examples and using common sense. As the formulas we work with
get more complicated, this method will become unreliable and difficult to use.
Fortunately, in Chapter 3 we will develop better methods for reasoning about
statements involving quantifiers. To get more practice in thinking about quan-
tifiers, we will work out a few somewhat more complicated equivalences using
common sense. If you’re not completely convinced that these equivalences are
right, you’ll be able to check them more carefully when you get to Chapter 3.
Consider the statement “Everyone is bright-eyed and bushy-tailed.” If we let
_E_ ( _x_ ) mean “ _x_ is bright-eyed” and _T_ ( _x_ ) mean “ _x_ is bushy-tailed,” then we could
represent this statement by the formula∀ _x_ ( _E_ ( _x_ )and  _T_ ( _x_ )). Is this equivalent
to the formula∀ _x E_ ( _x_ )and  ∀ _xT_ ( _x_ )? This latter formula means “Everyone is
bright-eyed, and also everyone is bushy-tailed,” and intuitively this means the
same thing as the original statement. Thus, it appears that∀ _x_ ( _E_ ( _x_ )and  _T_ ( _x_ )) is
equivalent to∀ _x E_ ( _x_ )and  ∀ _xT_ ( _x_ ). In other words, we could say that the universal
quantifier _distributes over_ conjunction.
However, the corresponding distributive law doesn’t work for the existential
quantifier. Consider the formulas∃ _x_ ( _E_ ( _x_ )and  _T_ ( _x_ )) and∃ _x E_ ( _x_ )and  ∃ _xT_ ( _x_ ). The
first means that there is someone who is both bright-eyed and bushy-tailed, and
the second means that there is someone who is bright-eyed, and there is also
someone who is bushy-tailed. These don’t mean the same thing at all. In the
second statement the bright-eyed person and the bushy-tailed person don’t
have to be the same, but in the first statement they do. Another way to see the
difference between the two statements is to think about truth sets. Let _A_ be the
truth set of _E_ ( _x_ ) and _B_ the truth set of _T_ ( _x_ ). In other words, _A_ is the set of
bright-eyed people, and _B_ is the set of bushy-tailed people. Then the second
statement says that neither _A_ nor _B_ is the empty set, but the first says that _A_ + _B_
is not the empty set, or in other words that _A_ and _B_ are not disjoint.

_Equivalences Involving Quantifiers_ 71
As an application of the distributive law for the universal quantifier and
conjunction, suppose _A_ and _B_ are sets and consider the equation _A_ = _B_. We
know that two sets are equal when they have exactly the same elements.
Thus, the equation _A_ = _B_ means∀ _x_ ( _x_ ∈ _A_ ↔ _x_ ∈ _B_ ), which is equivalent
to∀ _x_ [( _x_ ∈ _A_ → _x_ ∈ _B_ )and ( _x_ ∈ _B_ → _x_ ∈ _A_ )]. Because the universal quanti-
fier distributes over conjuction, this is equivalent to the formula∀ _x_ ( _x_ ∈ _A_ →
_x_ ∈ _B_ )and  ∀ _x_ ( _x_ ∈ _B_ → _x_ ∈ _A_ ), and by the definition of subset this means
_A_ ⊆ _B_ and  _B_ ⊆ _A_ .Thus, we have shown that the equation _A_ = _B_ is also equi-
valent to the formula _A_ ⊆ _B_ and  _B_ ⊆ _A_.
We have now introduced seven basic logical symbols: the connectivesand ,
or ,not ,→, and↔, and the quantifiers∀and∃. It is a remarkable fact that the
structureofallmathematicalstatementscanbeunderstoodusingthesesymbols,
and all mathematical reasoning can be analyzed in terms of the proper use of
these symbols. To illustrate the power of the symbols we have introduced, we
conclude this section by writing out a few more mathematical statements in
logical notation.

**Example 2.2.3.** Analyze the logical forms of the following statements.

1. Statements about the natural numbers. The universe of discourse isN.
    (a) _x_ is a perfect square.
    (b) _x_ is a multiple of _y_.
    (c) _x_ is prime.
    (d) _x_ is the smallest number that is a multiple of both _y_ and _z_.
2. Statements about the real numbers. The universe of discourse isR.
    (a) The identity element for addition is 0.
    (b) Every real number has an additive inverse.
    (c) Negative numbers don’t have square roots.
    (d) Every positive number has exactly two square roots.

_Solutions_

1. (a) This means that _x_ is the square of some natural number, or in other
    words∃ _y_ ( _x_ = _y_^2 ).
(b) This means that _x_ is equal to _y_ times some natural number, or in other
words∃ _z_ ( _x_ = _yz_ ).
(c) This means that _x_ >1, and _x_ cannot be written as a product of two
smaller natural numbers. In symbols: _x_ > 1 and  not ∃ _y_ ∃ _z_ ( _x_ = _yz_ and  _y_ <
_x_ and  _z_ < _x_ ).
(d) We translate this in several steps:
(i) _x_ is a multiple of both _y_ and _z_ and there is no smaller number that
is a multiple of both _y_ and _z_.

72 _Quantificational Logic_

```
(ii) ∃ a ( x = ya )and  ∃ b ( x = zb )and  not ∃ w ( w < x and ( w is a multiple of
both y and z )).
(iii) ∃ a ( x = ya )and  ∃ b ( x = zb )and  not ∃ w ( w < x and  ∃ c ( w = yc )and 
∃ d ( w = zd )).
```

2. (a) ∀ _x_ ( _x_ + 0 = _x_ ).
    (b) ∀ _x_ ∃ _y_ ( _x_ + _y_ =0).
    (c) ∀ _x_ ( _x_ < 0 → not ∃ _y_ ( _y_^2 = _x_ )).
    (d) We translate this gradually:
       (i) ∀ _x_ ( _x_ > 0 → _x_ has exactly two square roots).
       (ii) ∀ _x_ ( _x_ > 0 → ∃ _y_ ∃ _z_ ( _y_ and _z_ are square roots of _x_ and _y_ = _z_ and
          nothing else is a square root of _x_ )).
       (iii) ∀ _x_ ( _x_ > 0 → ∃ _y_ ∃ _z_ ( _y_^2 = _x_ and  _z_^2 = _x_ and  _y_ = _z_ and  not ∃ _w_ ( _w_^2 =
          _x_ and  _w_ = _y_ and  _w_ = _z_ ))).

```
Exercises
```

```
∗1. Negate these statements and then reexpress the results as equivalent
positive statements. (See Example 2.2.1.)
(a) Everyone who is majoring in math has a friend who needs help with
his homework.
(b) Everyone has a roommate who dislikes everyone.
(c) A , B ⊆ C \ D.
(d) ∃ x ∀ y [ y > x → ∃ z ( z^2 + 5 z = y )].
```

2. Negate these statements and then reexpress the results as equivalent
    positive statements. (See Example 2.2.1.)
    (a) There is someone in the freshman class who doesn’t have a roommate.
(b) Everyone likes someone, but no one likes everyone.
(c) ∀ _a_ ∈ _A_ ∃ _b_ ∈ _B_ ( _a_ ∈ _C_ ↔ _b_ ∈ _C_ ).
(d) ∀ _y_ > 0 ∃ _x_ ( _ax_^2 + _bx_ + _c_ = _y_ ).
3. Are these statements true or false? The universe of discourse isN.
    (a) ∀ _x_ ( _x_ < 7 → ∃ _a_ ∃ _b_ ∃ _c_ ( _a_^2 + _b_^2 + _c_^2 = _x_ )).
(b) ∃! _x_ (( _x_ -4)^2 =9).
(c) ∃! _x_ (( _x_ -4)^2 =25).
(d) ∃ _x_ ∃ _y_ (( _x_ -4)^2 = 25 and ( _y_ -4)^2 =25).
∗4. Show that the second quantifier negation law, which says thatnot ∀ _x P_ ( _x_ )
is equivalent to∃ _x_ not  _P_ ( _x_ ), can be derived from the first, which says that
not ∃ _x P_ ( _x_ ) is equivalent to∀ _x_ not  _P_ ( _x_ ). (Hint: Use the double negation law.)
5. Show thatnot ∃ _x_ ∈ _AP_ ( _x_ ) is equivalent to∀ _x_ ∈ _A_ not  _P_ ( _x_ ).
∗6. Show that the existential quantifier distributes over disjunction. In other
words, show that∃ _x_ ( _P_ ( _x_ )or  _Q_ ( _x_ )) is equivalent to∃ _x P_ ( _x_ )or  ∃ _x Q_ ( _x_ ).

```
More Operations on Sets 73
(Hint: Use the fact, discussed in this section, that the universal quantifier
distributes over conjunction.)
```

7. Show that∃ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )) is equivalent to∀ _x P_ ( _x_ )→ ∃ _x Q_ ( _x_ ).
∗8. Show that (∀ _x_ ∈ _AP_ ( _x_ ))and (∀ _x_ ∈ _B P_ ( _x_ )) is equivalent to ∀ _x_ ∈
( _A_ , _B_ ) _P_ ( _x_ ). (Hint: Start by writing out the meanings of the bounded
quantifiers in terms of unbounded quantifiers.)
9. Is∀ _x_ ( _P_ ( _x_ )or  _Q_ ( _x_ )) equivalent to∀ _x P_ ( _x_ )or  ∀ _x Q_ ( _x_ )? Explain. (Hint: Try
    assigning meanings to _P_ ( _x_ ) and _Q_ ( _x_ ).)
10. (a) Showthat∃ _x_ ∈ _A P_ ( _x_ )or  ∃ _x_ ∈ _B P_ ( _x_ )isequivalentto∃ _x_ ∈( _A_ , _B_ )
_P_ ( _x_ ).
    (b) Is ∃ _x_ ∈ _A P_ ( _x_ )and  ∃ _x_ ∈ _B P_ ( _x_ ) equivalent to ∃ _x_ ∈( _A_ + _B_ ) _P_ ( _x_ )?
       Explain.
∗11. Showthatthestatements _A_ ⊆ _B_ and _A_ \ _B_ =∅areequivalentbywriting

```
each in logical symbols and then showing that the resulting formulas are
equivalent.
```

12. Let _T_ ( _x_ , _y_ ) mean “ _x_ is a teacher of _y_ .” What do the following statements
    mean? Under what circumstances would each one be true? Are any of
    them equivalent to each other?
    (a) ∃! _yT_ ( _x_ , _y_ ).
(b) ∃ _x_ ∃! _yT_ ( _x_ , _y_ ).
(c) ∃! _x_ ∃ _yT_ ( _x_ , _y_ ).
(d) ∃ _y_ ∃! _xT_ ( _x_ , _y_ ).
(e) ∃! _x_ ∃! _yT_ ( _x_ , _y_ ).
(f ) ∃ _x_ ∃ _y_ [ _T_ ( _x_ , _y_ )and  not ∃ _u_ ∃ _v_ ( _T_ ( _u_ , _v_ )and ( _u_ = _x_ or  _v_ = _y_ ))].

## 2.3 More Operations on Sets

Now that we know how to work with quantifiers, we are ready to discuss some
more advanced topics in set theory.
So far, the only way we have to define sets, other than listing their elements
one by one, is to use the elementhood test notation{ _x_ | _P_ ( _x_ )}. Sometimes this
notation is modified by allowing the _x_ before the vertical line to be replaced
with a more complex expression. For example, suppose we wanted to define _S_
to be the set of all perfect squares. Perhaps the easiest way to describe this set
is to say that it consists of all numbers of the form _n_^2 , where _n_ is a natural num-
ber. This is written _S_ = { _n_^2 | _n_ ∈N}. Note that, using our solution for the first
statement from Example 2.2.3, we could also define this set by writing _S_ =
{ _x_ | ∃ _n_ ∈N( _x_ = _n_^2 )}. Thus, { _n_^2 | _n_ ∈N} = { _x_ | ∃ _n_ ∈N( _x_ = _n_^2 )}, and there-
fore _x_ ∈ { _n_^2 | _n_ ∈N}means the same thing as∃ _n_ ∈N( _x_ = _n_^2 ).

74 _Quantificational Logic_

Similar notation is often used if the elements of a set have been numbered.
For example, suppose we wanted to form the set whose elements are the first
100 prime numbers. We might start by numbering the prime numbers, calling
them _p_ 1 , _p_ 2 , _p_ 3 ,.... In other words, _p_ 1 = 2 , _p_ 2 = 3 , _p_ 3 = 5 ,and so on. Then
the set we are looking for would be the set _P_ = { _p_ 1 , _p_ 2 , _p_ 3 ,... , _p_ 100 }. Another
way of describing this set would be to say that it consists of all numbers _pi_ , for
_i_ an element of the set _I_ = { 1 , 2 , 3 ,... , 100 } = { _i_ ∈N| 1 ≤ _i_ ≤ 100 }. This
could be written _P_ = { _pi_ | _i_ ∈ _I_ }. Each element _pi_ in this set is identified by
a number _i_ ∈ _I_ , called the _index_ of the element. A set defined in this way is
sometimes called an _indexed family_ , and _I_ is called the _index set_.
Although the indices for an indexed family are often numbers, they need not
be. For example, suppose _S_ is the set of all students at your school. If we wanted
to form the set of all mothers of students, we might let _ms_ stand for the mother
of _s_ , for any student _s_. Then the set of all mothers of students could be written
_M_ = { _ms_ | _s_ ∈ _S_ }. This is an indexed family in which the index set is _S_ , the set
of all students. Each mother in the set is identified by naming the student who
is her child. Note that we could also define this set using an elementhood
test, by writing _M_ = { _m_ | _m_ is the mother of some student}= { _m_ | ∃ _s_ ∈
_S_ ( _m_ = _ms_ )}. In general, any indexed family _A_ = { _xi_ | _i_ ∈ _I_ }can also be de-
fined as _A_ = { _x_ | ∃ _i_ ∈ _I_ ( _x_ = _xi_ )}. It follows that the statement _x_ ∈ { _xi_ | _i_ ∈ _I_ }
means the same thing as∃ _i_ ∈ _I_ ( _x_ = _xi_ ).

**Example 2.3.1.** Analyze the logical forms of the following statements by
writing out the definitions of the set theory notation used.

1. _y_ ∈ {^3

#### √

```
x | x ∈Q}.
```

2. { _xi_ | _i_ ∈ _I_ } ⊆ _A_.
3. { _n_^2 | _n_ ∈N}and{ _n_^3 | _n_ ∈N}are not disjoint.

_Solutions_

1. ∃ _x_ ∈Q( _y_ =^3

#### √

```
x ).
```

2. By the definition of subset we must say that every element of{ _xi_ | _i_ ∈ _I_ }
    is also an element of _A_ , so we could start by writing∀ _x_ ( _x_ ∈ { _xi_ | _i_ ∈ _I_ } →
       _x_ ∈ _A_ ). Filling in the meaning of _x_ ∈ { _xi_ | _i_ ∈ _I_ }, which we worked out
    earlier, we would end up with∀ _x_ (∃ _i_ ∈ _I_ ( _x_ = _xi_ )→ _x_ ∈ _A_ ). But since the
    elements of{ _xi_ | _i_ ∈ _I_ }are just the _xi_ ’s, for all _i_ ∈ _I_ , perhaps an easier
    way of saying that every element of{ _xi_ | _i_ ∈ _I_ }is an element of _A_ would be
    ∀ _i_ ∈ _I_ ( _xi_ ∈ _A_ ). The two answers we have given are equivalent, but showing
    this would require the methods we will be studying in Chapter 3.

```
More Operations on Sets 75
```

3. We must say that the two sets have a common element, so one solution
    is to start by writing∃ _x_ ( _x_ ∈ { _n_^2 | _n_ ∈N} and  _x_ ∈ { _n_^3 | _n_ ∈N}). However, as
    in the last statement, there is an easier way. An element common to the
    two sets would have to be the square of some natural number and also the
    cube of some (possibly different) natural number. Thus, we could say that
    there is such a common element by saying∃ _n_ ∈N∃ _m_ ∈N( _n_^2 = _m_^3 ). Note
    that it would be wrong to write∃ _n_ ∈N( _n_^2 = _n_^3 ), because this wouldn’t
    allow for the possibility of the two natural numbers being different. By the
    way, this statement is true, since 64= 82 = 43 , so 64 is an element of both
    sets.

Anything at all can be an element of a set. Some interesting and useful ideas
arise when we consider the possibility of a set having _other sets_ as elements.
For example, suppose _A_ = { 1 , 2 , 3 }, _B_ = { 4 }, and _C_ =∅. There is no reason
why we couldn’t form the setF= { _A_ , _B_ , _C_ }, whose elements are the three
sets _A_ , _B_ , and _C_. Filling in the definitions of _A_ , _B_ , and _C_ , we could write
this in another way:F= {{ 1 , 2 , 3 },{ 4 },∅}. Note that 1∈ _A_ and _A_ ∈Fbut
1 ∈/F.Fhas only three elements, and all three of them are sets, not numbers.
Sets such asF, whose elements are all sets, are sometimes called _families_ of
sets.
It is often convenient to define families of sets as indexed families. For
example, suppose we again let _S_ stand for the set of all students, and for each
student _s_ we let _Cs_ be the set of courses that _s_ has taken. Then the collection
of all of these sets _Cs_ would be an indexed family of setsF= { _Cs_ | _s_ ∈ _S_ }.
Remember that the elements of this family are not courses but _sets_ of courses. If
we let _t_ stand for some particular student Tina, and if Tina has taken Calculus,
English Composition, and American History, then _Ct_ = { Calculus, English
Composition, American History}and _Ct_ ∈F, but Calculus∈/F.
An important example of a family of sets is given by the power set of
a set.

**Definition 2.3.2.** Suppose _A_ is a set. The _power set_ of _A_ , denotedP( _A_ ), is
the set whose elements are all the subsets of _A_. In other words,

```
P( A )= { x | x ⊆ A }.
```

For example, the set _A_ = { 7 , 12 }has four subsets:∅,{ 7 },{ 12 },and{ 7 , 12 }.
Thus,P( _A_ )= { ∅,{ 7 },{ 12 },{ 7 , 12 }}. What aboutP(∅)? Although∅has
no elements, it does have one subset, namely∅. Thus,P(∅)={∅}. Note
that, as we saw in Section 1.3,{∅}is not the same as∅.

76 _Quantificational Logic_

Any time you are working with some subsets of a set _X_ , it may be helpful to
remember that all of these subsets of _X_ are elements ofP( _X_ ), by the definition
of power set. For example, if we let _C_ be the set of all courses offered at your
school, then each of the sets _Cs_ from our previous example is a subset of _C_.
Thus, for each student _s_ , _Cs_ ∈P( _C_ ). This means that every element of the
familyF= { _Cs_ | _s_ ∈ _S_ }is an element ofP( _C_ ), soF⊆P( _C_ ).

**Example 2.3.3.** Analyze the logical forms of the following statements.

1. _x_ ∈P( _A_ ).
2. P( _A_ )⊆P( _B_ ).
3. _B_ ∈ { P( _A_ )| _A_ ∈F}.
4. _x_ ∈P( _A_ + _B_ ).
5. _x_ ∈P( _A_ )+P( _B_ ).

_Solutions_

1. By the definition of power set, the elements ofP( _A_ ) are the subsets of _A_.
    Thus, to say that _x_ ∈P( _A_ ) means that _x_ ⊆ _A_ , which we already know can
    be written as∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _A_ ).
2. By the definition of subset, this means∀ _x_ ( _x_ ∈P( _A_ )→ _x_ ∈P( _B_ )). Now,
    writing out _x_ ∈P( _A_ ) and _x_ ∈P( _B_ ) as before, we get∀ _x_ [∀ _y_ ( _y_ ∈ _x_ →
       _y_ ∈ _A_ )→ ∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _B_ )].
3. As before, this means∃ _A_ ∈F( _B_ =P( _A_ )). Now, to say that _B_ =P( _A_ )
    means that the elements of _B_ are precisely the subsets of _A_ , or in other words
    ∀ _x_ ( _x_ ∈ _B_ ↔ _x_ ⊆ _A_ ). Filling this in, and writing out the definition of subset,
    we get our final answer,∃ _A_ ∈F∀ _x_ ( _x_ ∈ _B_ ↔ ∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _A_ )).
4. Asinthefirststatement,westartbywritingthisas∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _A_ + _B_ ).
    Now, filling in the definition of intersection, we get∀ _y_ ( _y_ ∈ _x_ →( _y_ ∈ _A_ and 
       _y_ ∈ _B_ )).
5. By the definition of intersection, this means ( _x_ ∈P( _A_ ))and ( _x_ ∈P( _B_ )).
    Now, writing out the definition of power set as before, we get∀ _y_ ( _y_ ∈ _x_ →
       _y_ ∈ _A_ )and  ∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _B_ ).

Note that for statement 5 in this example we first wrote out the definition
of intersection and then used the definition of power set, whereas in statement
4 we started by writing out the definition of power set and then used the
definition of intersection. As you learn the definitions of more mathematical
terms and symbols, it will become more important to be able to choose which
definition to think about first when working out the meaning of a complex
mathematical statement. A good rule of thumb is to always start with the
“outermost” symbol. In statement 4 in Example 2.3.3, the intersection symbol

_More Operations on Sets_ 77
occurred inside the power set notation, so we wrote out the definition of power
set first. In statement 5, the power set notation occurred within both sides of
the notation for the intersection of two sets, so we started with the definition of
intersection. Similar considerations led us to use the definition of subset first,
rather than power set, in statement 2.
It is interesting to note that our answers for statements 4 and 5 in
Example 2.3.3 are equivalent. (You are asked to verify this in exercise 10.) As in
Section 1.4, it follows that for any sets _A_ and _B_ ,P( _A_ + _B_ )=P( _A_ )+P( _B_ ).
You are asked in exercise 11 to show that this equation is not true in general if
we change+to,.
Consider once again the family of setsF= { _Cs_ | _s_ ∈ _S_ }, where _S_ is the set
of all students and for each student _s_ , _Cs_ is the set of all courses that _s_ has taken.
If we wanted to know which courses had been taken by all students, we would
need to find those elements that all the sets inFhave in common. The set of all
these common elements is called the intersection of the familyFand is written
+F. Similarly, the union of the familyF, written,F, is the set resulting from
throwing all the elements of all the sets inFtogether into one set. In this case,
,Fwould be the set of all courses that had been taken by any student.

```
Example 2.3.4. LetF= {{ 1 , 2 , 3 , 4 },{ 2 , 3 , 4 , 5 },{ 3 , 4 , 5 , 6 }}. Find+Fand
,F.
```

```
Solution
```

```
+F= { 1 , 2 , 3 , 4 } + { 2 , 3 , 4 , 5 } + { 3 , 4 , 5 , 6 } = { 3 , 4 }.
,F= { 1 , 2 , 3 , 4 } , { 2 , 3 , 4 , 5 } , { 3 , 4 , 5 , 6 } = { 1 , 2 , 3 , 4 , 5 , 6 }.
```

```
Although these examples may make it clear what we mean by+Fand,F,
we still have not given careful definitions for these sets. In general, ifFis any
family of sets, then we want+Fto contain the elements that all the sets inF
have in common. Thus, to be an element of+F, an object will have to be an
element of every set inF. On the other hand, anything that is an element of
any of the sets inFshould be in,F, so to be in ,Fan object only needs to be
an element of at least one set inF. Thus, we are led to the following general
definitions.
```

```
Definition 2.3.5. SupposeFis a family of sets. Then the intersection and
union ofFare the sets+Fand,Fdefined as follows:
```

```
+F= { x | ∀ A ∈F( x ∈ A )} = { x | ∀ A ( A ∈F→ x ∈ A )}.
,F= { x | ∃ A ∈F( x ∈ A )} = { x | ∃ A ( A ∈Fand  x ∈ A )}.
```

78 _Quantificational Logic_

Some mathematicians consider+Fto be undefined ifF=∅. For an ex-
planation of the reason for this, see exercise 14. We will use the notation+F
only whenF=∅.
Notice that if _A_ and _B_ are any two sets andF= { _A_ , _B_ }, then+F= _A_ + _B_
and,F= _A_ , _B_. Thus, the definitions of intersection and union of a family
of sets are actually generalizations of our old definitions of the intersection and
union of two sets.

**Example 2.3.6.** Analyze the logical forms of the following statements.

1. _x_ ∈ + F.
2. +F⊆ , G.
3. _x_ ∈P(,F).
4. _x_ ∈ ,{ P( _A_ )| _A_ ∈F}.

_Solutions_

1. By the definition of the intersection of a family of sets, this means∀ _A_ ∈
    F( _x_ ∈ _A_ ), or equivalently,∀ _A_ ( _A_ ∈F→ _x_ ∈ _A_ ).
2. As we saw in Example 2.2.1, to say that one set is not a subset of an-
    other means that there is something that is an element of the first but not
    the second. Thus, we start by writing∃ _x_ ( _x_ ∈ + Fand  _x_ ∈ , / G). We have al-
    ready written out what _x_ ∈ + Fmeans in solution 1. By the definition of the
    union of a family of sets, _x_ ∈ , Gmeans∃ _A_ ∈G( _x_ ∈ _A_ ), so _x_ ∈ , / Gmeans
    not ∃ _A_ ∈G( _x_ ∈ _A_ ). By the quantifier negation laws, this is equivalent to
    ∀ _A_ ∈G( _x_ ∈/ _A_ ). Putting this all together, our answer is ∃ _x_ [∀ _A_ ∈
    F( _x_ ∈ _A_ )and  ∀ _A_ ∈G( _x_ ∈/ _A_ )].
3. Because the union symbol occurs within the power set notation, we start by
    writing out the definition of power set. As in Example 2.3.3, we get _x_ ⊆ , F,
    or in other words∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ , F). Now we use the definition of union
    to write out _y_ ∈ , Fas∃ _A_ ∈F( _y_ ∈ _A_ ). The final answer is∀ _y_ ( _y_ ∈ _x_ →
    ∃ _A_ ∈F( _y_ ∈ _A_ )).
4. This time we start by writing out the definition of union. According to
    this definition, the statement means that _x_ is an element of at least one of
    the setsP( _A_ ), for _A_ ∈F. In other words,∃ _A_ ∈F( _x_ ∈P( _A_ )). Inserting
    our analysis of the statement _x_ ∈P( _A_ ) from Example 2.3.3, we get∃ _A_ ∈
    F∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _A_ ).

Writing complex mathematical statements in logical symbols, as we did in
the last example, may sometimes help you understand what the statements
mean and whether they are true or false. For example, suppose that we once
again let _Cs_ be the set of all courses that have been taken by student _s_.

_More Operations on Sets_ 79
Let _M_ be the set of math majors and _E_ the set of English majors, and let
F= { _Cs_ | _s_ ∈ _M_ }andG= { _Cs_ | _s_ ∈ _E_ }. With these definitions, what does
statement 2 of Example 2.3.6 mean, and under what circumstances would
it be true? According to our solution for this example, the statement means
∃ _x_ [∀ _A_ ∈F( _x_ ∈ _A_ )and  ∀ _A_ ∈G( _x_ ∈/ _A_ )], or in other words, there is something
that is an element of each set inF, and that fails to be an element of each set in
G. Taking into account the definitions ofFandGthat we are using, this means
that there is some course that has been taken by all of the math majors but
none of the English majors. If, for example, all of the math majors have taken
Calculus but none of the English majors have, then the statement would be true.
As another example, supposeF= {{ 1 , 2 , 3 },{ 2 , 3 , 4 },{ 3 , 4 , 5 }}, and _x_ =
{ 4 , 5 , 6 }. With these definitions, would statement 3 of Example 2.3.6 be true?
You could determine this by findingP(,F) and then checking to see if _x_
is an element of it, but this would take a very long time, because it turns
out thatP(,F) has 32 elements. It is easier to use the translation into logical
symbolsgiveninoursolutionforthisexample.Accordingtothattranslation,the
statement means∀ _y_ ( _y_ ∈ _x_ → ∃ _A_ ∈F( _y_ ∈ _A_ )); in other words, every element
of _x_ is in at least one set inF. Looking back at our definitions ofFand _x_ , it is not
hard to see that this is false, because 6∈ _x_ , but 6 is not in any of the sets inF.
An alternative notation is sometimes used for the union or intersection
of an indexed family of sets. SupposeF= { _Ai_ | _i_ ∈ _I_ }, where each _Ai_ is a
set. Then+Fwould be the set of all elements common to all the _Ai_ ’s, for
_i_ ∈ _I_ , and this can also be written as+ _i_ ∈ _IAi_. In other words,+F= + _i_ ∈ _IAi_ =
{ _x_ | ∀ _i_ ∈ _I_ ( _x_ ∈ _Ai_ )}. Similarly, an alternative notation for,F is, _i_ ∈ _IAi_ , so
,F= , _i_ ∈ _IAi_ = { _x_ | ∃ _i_ ∈ _I_ ( _x_ ∈ _Ai_ )}. Returning to our example of courses
taken by students, we could use this notation to write the set of courses taken
by all students as+ _s_ ∈ _SCs_.

```
Example 2.3.7. Let I = { 1 , 2 , 3 }, and for each i ∈ I let Ai = { i , i + 1 , i +
2 , i + 3 }. Find+ i ∈ IAi and, i ∈ IAi.
```

```
Solution
First we list the elements of the sets Ai , for i ∈ I :
```

```
A 1 = { 1 , 2 , 3 , 4 }, A 2 = { 2 , 3 , 4 , 5 }, A 3 = { 3 , 4 , 5 , 6 }.
```

```
Then+ i ∈ IAi = A 1 + A 2 + A 3 = { 1 , 2 , 3 , 4 } + { 2 , 3 , 4 , 5 } + { 3 , 4 , 5 , 6 } =
{ 3 , 4 }, and similarly, i ∈ IAi = { 1 , 2 , 3 , 4 } , { 2 , 3 , 4 , 5 } , { 3 , 4 , 5 , 6 } = { 1 , 2 ,
3 , 4 , 5 , 6 }. In fact, we can now see that the question asked in this example is
exactly the same as the one in Example 2.3.4, but with different notation.
```

80 _Quantificational Logic_

**Example 2.3.8.** For this example our universe of discourse will be the set S
of all students. Let _L_ ( _x_ , _y_ ) stand for “ _x_ likes _y_ ” and _A_ ( _x_ , _y_ ) for “ _x_ admires
_y_ .” For each student _s_ , let _Ls_ be the set of all students that _s_ likes. In other
words _Ls_ = { _t_ ∈ _S_ | _L_ ( _s_ , _t_ )}. Similarly, let _As_ = { _t_ ∈ _S_ | _A_ ( _s_ , _t_ )} = the set of
all students that _s_ admires. Describe the following sets.

1. - _s_ ∈ _SLs_.
2. , _s_ ∈ _SLs_.
3. , _s_ ∈ _SLs_ \ , _s_ ∈ _SAs_.
4. , _s_ ∈ _S_ ( _Ls_ \ _As_ ).
5. (+ _s_ ∈ _SLs_ )+(+ _s_ ∈ _SAs_ ).
6. - _s_ ∈ _S_ ( _Ls_ + _As_ ).
7. , _b_ ∈ _BLb_ ,where _B_ = + _s_ ∈ _SAs_.

_Solutions_

First of all, note that in general _t_ ∈ _Ls_ means the same thing as _L_ ( _s_ , _t_ ), and
similarly _t_ ∈ _As_ means _A_ ( _s_ , _t_ ).

1. - _s_ ∈ _SLs_ = { _t_ | ∀ _s_ ∈ _S_ ( _t_ ∈ _Ls_ )} = { _t_ ∈ _S_ | ∀ _s_ ∈ _S L_ ( _s_ , _t_ )} = the set of all
    students who are liked by all students.
2. , _s_ ∈ _SLs_ = { _t_ | ∃ _s_ ∈ _S_ ( _t_ ∈ _Ls_ )} = { _t_ ∈ _S_ | ∃ _s_ ∈ _S L_ ( _s_ , _t_ )} = the set of all
    students who are liked by at least one student.
3. As we saw in solution 2,, _s_ ∈ _SLs_ =the set of all students who are liked
    by at least one student. Similarly,, _s_ ∈ _SAs_ =the set of all students who are
    admired by at least one student. Thus, _s_ ∈ _SLs_ \ , _s_ ∈ _SAs_ = { _t_ | _t_ ∈ , _s_ ∈ _SLs_
    and _t_ ∈ , / _s_ ∈ _SAs_ } = the set of all students who are liked by at least one
    student, but are not admired by any students.
4. , _s_ ∈ _S_ ( _Ls_ \ _As_ )= { _t_ | ∃ _s_ ∈ _S_ ( _t_ ∈ _Ls_ \ _As_ )} = { _t_ ∈ _S_ | ∃ _s_ ∈ _S_ ( _L_ ( _s_ , _t_ )and 
    not  _A_ ( _s_ , _t_ ))} = the set of all students _t_ such that some student likes _t_ , but
    doesn’t admire _t_. Note that this is different from the set in part 3. For a
    student _t_ to be in this set, there must be a student who likes _t_ but doesn’t
    admire _t_ , but there could be other students who admire _t_. To be in the set in
    part 3, _t_ must be admired by _nobody_.
5. (+ _s_ ∈ _SLs_ )+(+ _s_ ∈ _SAs_ )= { _t_ | _t_ ∈ + _s_ ∈ _SLs_ and _t_ ∈ + _s_ ∈ _SAs_ } = { _t_ | ∀ _s_ ∈
    _S_ ( _t_ ∈ _Ls_ )and  ∀ _s_ ∈ _S_ ( _t_ ∈ _As_ )} = { _t_ ∈ _S_ | ∀ _s_ ∈ _S L_ ( _s_ , _t_ )and  ∀ _s_ ∈ _S A_ ( _s_ , _t_ )} =
    the set of all students who are liked by all students and also admired by all
    students.
6. - _s_ ∈ _S_ ( _Ls_ + _As_ )= { _t_ | ∀ _s_ ∈ _S_ ( _t_ ∈ _Ls_ + _As_ )} = { _t_ ∈ _S_ | ∀ _s_ ∈ _S_ ( _L_ ( _s_ , _t_ )and 
    _A_ ( _s_ , _t_ ))} = the set of all students who are both liked and admired by all
    students. This is the same as the set in part 5. In fact, you can use the

_More Operations on Sets_ 81
distributive law for universal quantification and conjunction to show that
the elementhood tests for the two sets are equivalent.
7., _b_ ∈ _BLb_ = { _t_ | ∃ _b_ ∈ _B_ ( _t_ ∈ _Lb_ )} = { _t_ ∈ _S_ | ∃ _b_ ( _b_ ∈ _B_ and  _L_ ( _b_ , _t_ ))}. But
_B_ was defined to be the set of all students who are admired by all
students, so _b_ ∈ _B_ means _b_ ∈ _S_ and  ∀ _s_ ∈ _S A_ ( _s_ , _b_ ). Inserting this, we get
, _b_ ∈ _BLb_ = { _t_ ∈ _S_ | ∃ _b_ ( _b_ ∈ _S_ and  ∀ _s_ ∈ _S A_ ( _s_ , _b_ )and  _L_ ( _b_ , _t_ ))} = the set of all
students who are liked by some student who is admired by all students.

```
Exercises
```

```
∗1. Analyze the logical forms of the following statements. You may use the
symbols∈,∈/,=,=,and ,or ,→,↔,∀, and∃in your answers, but not
⊆,⊆,P,+,,,\,{,}, or not . (Thus, you must write out the definitions
of some set theory notation, and you must use equivalences to get rid of
any occurrences ofnot .)
(a) F⊆P( A ).
(b) A ⊆ { 2 n + 1 | n ∈N}.
(c) { n^2 + n + 1 | n ∈N} ⊆ { 2 n + 1 | n ∈N}.
(d) P(, i ∈ IAi )⊆ , i ∈ I P( Ai ).
```

2. Analyze the logical forms of the following statements. You may use the
    symbols∈,∈/,=,=,and ,or ,→,↔,∀, and∃in your answers, but not
    ⊆,⊆,P,+,,,\,{,}, or not . (Thus, you must write out the definitions
    of some set theory notation, and you must use equivalences to get rid of
    any occurrences ofnot .)
    (a) _x_ ∈ , F\ , G.
(b) { _x_ ∈ _B_ | _x_ ∈/ _C_ } ∈ P( _A_ ).
(c) _x_ ∈ + _i_ ∈ _I_ ( _Ai_ , _Bi_ ).
(d) _x_ ∈(+ _i_ ∈ _IAi_ ),(+ _i_ ∈ _IBi_ ).
3. We’ve seen thatP(∅)={∅}, and{∅}=∅. What isP({∅})?
∗4. SupposeF={{red, green, blue},{orange, red, blue},{purple, red,
green, blue}}. Find+Fand,F.
5. SupposeF= {{ 3 , 7 , 12 },{ 5 , 7 , 16 },{ 5 , 12 , 23 }}. Find+Fand,F.
6. Let _I_ = { 2 , 3 , 4 , 5 }, and for each _i_ ∈ _I_ let _Ai_ = { _i_ , _i_ + 1 , _i_ - 1 , 2 _i_ }.
    (a) List the elements of all the sets _Ai_ , for _i_ ∈ _I_.
(b) Find+ _i_ ∈ _IAi_ and, _i_ ∈ _IAi_.
7. Let _P_ = { Johann Sebastian Bach, Napoleon Bonaparte, Johann
    Wolfgang vonGoethe, David Hume, Wolfgang Amadeus Mozart, Isaac
    Newton,George Washington}and let _Y_ = { 1750, 1751, 1752,... , 1759}.

82 _Quantificational Logic_

```
For each y ∈ Y , let Ay = { p ∈ P |the person p was alive at some time
during the year y }. Find, y ∈ YAy and+ y ∈ YAy.
∗8. Let I = { 2 , 3 }, and for each i ∈ I let Ai = { i , 2 i }and Bi = { i , i + 1 }.
(a) List the elements of the sets Ai and Bi for i ∈ I.
(b) Find+ i ∈ I ( Ai , Bi ) and (+ i ∈ IAi ),(+ i ∈ IBi ). Are they the same?
(c) In parts (c) and (d) of exercise 2 you analyzed the statements x ∈
+ i ∈ I ( Ai , Bi ) and x ∈(+ i ∈ IAi ),(+ i ∈ IBi ). What can you conclude
from your answer to part (b) about whether or not these statements
are equivalent?
```

9. Give an example of an index set _I_ and indexed families of sets{ _Ai_ | _i_ ∈ _I_ }
    and{ _Bi_ | _i_ ∈ _I_ }such that, _i_ ∈ _I_ ( _Ai_ + _Bi_ )=(, _i_ ∈ _IAi_ )+(, _i_ ∈ _IBi_ ).
10. Showthatforanysets _A_ and _B_ ,P( _A_ + _B_ )=P( _A_ )+P( _B_ ),byshowing
that the statements _x_ ∈P( _A_ + _B_ ) and _x_ ∈P( _A_ )+P( _B_ ) are equiva-
lent. (See Example 2.3.3.)
∗11. Give examples of sets _A_ and _B_ for whichP( _A_ , _B_ )=P( _A_ ),P( _B_ ).
12. Verify the following identities by writing out (using logical symbols)
what it means for an object _x_ to be an element of each set and then using
logical equivalences.
(a) , _i_ ∈ _I_ ( _Ai_ , _Bi_ )=(, _i_ ∈ _IAi_ ),(, _i_ ∈ _IBi_ ).
(b) (+F)+(+G)= + (F,G).
(c) + _i_ ∈ _I_ ( _Ai_ \ _Bi_ )=(+ _i_ ∈ _IAi_ )\(, _i_ ∈ _IBi_ ).
∗13. Sometimes each set in an indexed family of sets has _two_ indices. For
this problem, use the following definitions: _I_ = { 1 , 2 }, _J_ = { 3 , 4 }. For
each _i_ ∈ _I_ and _j_ ∈ _J_ , let _Ai_ , _j_ = { _i_ , _j_ , _i_ + _j_ }. Thus, for example, _A_ 2 , 3 =
{ 2 , 3 , 5 }.
(a) For each _j_ ∈ _J_ let _Bj_ = , _i_ ∈ _IAi_ , _j_ = _A_ 1 , _j_ , _A_ 2 , _j_. Find _B_ 3 and _B_ 4.
(b) Find+ _j_ ∈ _JBj_. (Note that, replacing _Bj_ with its definition, we could
say that+ _j_ ∈ _JBj_ = + _j_ ∈ _J_ (, _i_ ∈ _IAi_ , _j_ ).)
(c) Find , _i_ ∈ _I_ (+ _j_ ∈ _JAi_ , _j_ ). (Hint: You may want to do this in two
steps, corresponding to parts (a) and (b).) Are+ _j_ ∈ _J_ (, _i_ ∈ _IAi_ , _j_ ) and
, _i_ ∈ _I_ (+ _j_ ∈ _JAi_ , _j_ ) equal?
(d) Analyze the logical forms of the statements _x_ ∈ + _j_ ∈ _J_ (, _i_ ∈ _IAi_ , _j_ ) and
_x_ ∈ , _i_ ∈ _I_ (+ _j_ ∈ _JAi_ , _j_ ). Are they equivalent?
14. (a) Show that ifF= ∅, then the statement _x_ ∈ , Fwill be false no
matter what _x_ is. It follows that,∅=∅.
(b) Show that ifF= ∅, then the statement _x_ ∈ + F will be true no
matter what _x_ is. In a context in which it is clear what the universe
of discourse _U_ is, we might therefore want to say that+∅ = _U_.
However, this has the unfortunate consequence that the notation+∅
will mean different things in different contexts. Furthermore, when

```
More Operations on Sets 83
working with sets whose elements are sets, mathematicians often
do not use a universe of discourse at all. (For more on this, see the
next exercise.) For these reasons, some mathematicians consider the
notation+∅to be meaningless. We will avoid this problem in this
book by using the notation+Fonly in contexts in which we can be
sure thatF=∅.
```

15. In Section 2.3 we saw that a set can have other sets as elements. When
    discussing sets whose elements are sets, it might seem most natural to
    consider the universe of discourse to be the collection of all sets. However,
    as we will see in this problem, assuming that there is such a universe leads
    to contradictions.
       Suppose _U_ were the collection of all sets. Note that in particular _U_ is
    a set, so we would have _U_ ∈ _U_. This is not yet a contradiction; although
    most sets are not elements of themselves, perhaps some sets are elements
    of themselves. But it suggests that the sets in the universe _U_ could be
    split into two categories: the unusual sets that, like _U_ itself, are elements
    of themselves, and the more typical sets that are not. Let _R_ be the set of
    sets in the second category. In other words, _R_ = { _A_ ∈ _U_ | _A_ ∈/ _A_ }. This
    means that for any set _A_ in the universe _U_ , _A_ will be an element of _R_ iff
       _A_ ∈/ _A_. In other words, we have∀ _A_ ∈ _U_ ( _A_ ∈ _R_ ↔ _A_ ∈/ _A_ ).
    (a) Show that applying this last fact to the set _R_ itself (in other words,
       plugging in _R_ for _A_ ) leads to a contradiction. This contradiction was
       discovered by Bertrand Russell in 1901, and is known as _Russell’s_
       _Paradox_.
(b) Think some more about the paradox in part (a). What do you think it
tells us about sets?

### 3 Proofs

## 3.1 Proof Strategies

Mathematicians are skeptical people. They use many methods, including exper-
imentation with examples, trial and error, and guesswork, to try to find answers
to mathematical questions, but they are generally not convinced that an answer
is correct unless they can prove it. You have probably seen some mathematical
proofs before, but you may not have any experience writing them yourself. In
this chapter you’ll learn more about how proofs are put together, so you can
start writing your own proofs.
Proofs are a lot like jigsaw puzzles. There are no rules about how jigsaw
puzzles must be solved. The only rule concerns the final product: All the
pieces must fit together, and the picture must look right. The same holds for
proofs.
Although there are no rules about how jigsaw puzzles must be solved, some
techniques for solving them work better than others. For example, you’d never
do a jigsaw puzzle by filling in every _other_ piece, and then going back and
filling in the holes!But you also don’t do it by starting at the top and filling in
the pieces in order until you reach the bottom. You probably fill in the border
first, and then gradually put other chunks of the puzzle together and figure out
where they go. Sometimes you try to put pieces in the wrong places, realize that
they don’t fit, and feel that you’re not making any progress. And every once
in a while you see, in a satisfyingflash, how two big chunks fit together and
feel that you’ve suddenly made a lot of progress. As the pieces of the puzzle
fall into place, a picture emerges. You suddenly realize that the patch of blue
you’ve been putting together is a lake, or part of the sky. But it’s only when the
puzzle is complete that you can see the whole picture.
Similar things could be said about the process of figuring out a proof. And
I think one more similarity should be mentioned. When you finish a jigsaw

```
84
```

```
Proof Strategies 85
```

puzzle, you don’t take it apart right away, do you? You probably leave it out
for a day or two, so you can admire it. You should do the same thing with a
proof. You figured out how to fit it together yourself, and once it’s all done,
isn’t it pretty?
In this chapter we will discuss the proof-writing techniques that mathemati-
cians use most often and explain how to use them to begin writing proofs your-
self. Understanding these techniques may also help you read and understand
proofs written by other people. Unfortunately, the techniques in this chapter
do not give a step-by-step procedure for solving every proof problem. When
trying to write a proof you may make a few false starts before finding the right
way to proceed, and some proofs may require some cleverness or insight. With
practice your proof-writing skills should improve, and you’ll be able to tackle
more and more challenging proofs.
Mathematicians usually state the answer to a mathematical question in the
form of a _theorem_ that says that if certain assumptions called the _hypotheses_
of the theorem are true, then some conclusion must also be true. Often the hy-
potheses and conclusion contain free variables, and in this case it is understood
that these variables can stand for any elements of the universe of discourse.
An assignment of particular values to these variables is called an _instance_ of
the theorem, and in order for the theorem to be correct it must be the case that
for every instance of the theorem that makes the hypotheses come out true, the
conclusion is also true. If there is even one instance in which the hypotheses are
true but the conclusion is false, then the theorem is incorrect. Such an instance
is called a _counterexample_ to the theorem.

**Example 3.1.1.** Consider the following theorem:

**Theorem.** _Suppose x_ > 3 _and y_ < 2_. Then x_^2 - 2 _y_ > 5_._

This theorem is correct. (You are asked to prove it in exercise 14.) The
hypotheses of the theorem are _x_ >3 and _y_ <2, and the conclusion is
_x_^2 - 2 _y_ >5. As an instance of the theorem, we could plug in 5 for _x_ and
1 for y. Clearly with these values of the variables the hypotheses _x_ >3 and
_y_ <2 are both true, so the theorem tells us that the conclusion _x_^2 - 2 _y_ > 5
must also be true. In fact, plugging in the values of _x_ and _y_ we find that
_x_^2 - 2 _y_ = 25 - 2 =23, and certainly 23>5. Note that this calculation does
not constitute a proof of the theorem. We have only checked one instance of
the theorem, and a proof would have to show that _all_ instances are correct.
If we drop the second hypothesis, then we get an incorrect theorem:

**Incorrect Theorem.** _Suppose x_ > 3_. Then x_^2 - 2 _y_ > 5_._

86 _Proofs_

We can see that this theorem is incorrect by finding a counterexample. For
example, suppose we let _x_ =4 and _y_ =6. Then the only remaining hypothe-
sis, _x_ >3, is true, but _x_^2 - 2 _y_ = 16 - 12 =4, so the conclusion _x_^2 - 2 _y_ > 5
is false.

If you find a counterexample to a theorem, then you can be sure that the
theorem is incorrect, but the only way to know for sure that a theorem is
correct is to prove it. A proof of a theorem is simply a deductive argument
whose premises are the hypotheses of the theorem and whose conclusion is the
conclusion of the theorem. Of course the argument should be valid, so we can
be sure that if the hypotheses of the theorem are true, then the conclusion must
be true as well. How you figure out and write up the proof of a theorem will
depend mostly on the logical form of the conclusion. Often it will also depend
on the logical forms of the hypotheses. The proof-writing techniques we will
discuss in this chapter will tell you which proof strategies are most likely to
work for various forms of hypotheses and conclusions.
Proof-writing techniques that are based on the logical forms of the hypothe-
ses usually suggest ways of drawing inferences from the hypotheses. When
you draw an inference from the hypotheses, you use the assumption that the
hypotheses are true to justify the assertion that some other statement is also
true. Once you have shown that a statement is true, you can use it later in
the proof exactly as if it were a hypothesis. Perhaps the most important rule
to keep in mind when drawing such inferences is this: _Never assert anything
until you can justify it completely_ using the hypotheses or using conclusions
reached from them earlier in the proof. Your motto should be: “I shall make
no assertion before its time.” Following this rule will prevent you from us-
ing circular reasoning or jumping to conclusions and will guarantee that, if
the hypotheses are true, then the conclusion must also be true. And this is
the primary purpose of any proof: to provide a guarantee that the conclusion
is true if the hypotheses are.
To make sure your assertions are adequately justified, you must be skeptical
about every inference in your proof. If there is any doubt in your mind about
whether the justification you have given for an assertion is adequate, then it
isn’t. After all, if your own reasoning doesn’t even convince _you_ , how can you
expect it to convince anybody else?
Proof-writing techniques based on the logical form of the conclusion are
often somewhat different from techniques based on the forms of the hypothe-
ses. They usually suggest ways of transforming the problem into one that is
equivalent but easier to solve. The idea of solving a problem by transforming it
into an easier problem should be familiar to you. For example, adding the same

```
Proof Strategies 87
```

number to both sides of an equation transforms the equation into an equivalent
equation, and the resulting equation is sometimes easier to solve than the orig-
inal one. Students who have studied calculus may be familiar with techniques
of evaluating integrals, such as substitution or integration by parts, that can be
used to transform a difficult integration problem into an easier one.
Proofs that are written using these transformation strategies often include
steps in which you assume for the sake of argument that some statement is
true without providing any justification for that assumption. It may seem at
first that such reasoning would violate the rule that assertions must always
be justified, but it doesn’t, because _assuming_ something is not the same as
_asserting_ it. To assert a statement is to claim that it is true, and such a claim
is never acceptable in a proof unless it can be justified. However, the purpose
of making an assumption in a proof is not to make a claim about what _is_ true,
but rather to enable you to find out what _would be_ true _if_ the assumption were
correct. You must always keep in mind that any conclusion you reach that is
based on an assumption might turn out to be false if the assumption is incorrect.
Whenever you make a statement in a proof, it’s important to be sure you know
whether it’s an assertion or an assumption.
Perhaps an example will help clarify this. Suppose during the course of a
proof you decide to assume that some statement, call it _P_ , is true, and you
use this assumption to conclude that another statement _Q_ is true. It would be
wrong to call this a proof that _Q_ is true, because you can’t be sure that your
assumption about the truth of _P_ was correct. All you can conclude at this
point is that _if P_ is true, then you can be sure that _Q_ is true as well. In other
words, you know that the statement _P_ → _Q_ is true. If the conclusion of the
theorem being proven was _Q_ , then the proof is incomplete at best. But if the
conclusion was _P_ → _Q_ , then the proof is complete. This brings us to our first
proof strategy.

```
To prove a conclusion of the form P → Q :
Assume P is true and then prove Q.
```

Here’s another way of looking at what this proof technique means. As-
suming that _P_ is true amounts to the same thing as adding _P_ to your list
of hypotheses. Although _P_ might not originally have been one of your
hypotheses, once you have assumed it, you can use it exactly the way
you would use any other hypothesis. Proving _Q_ means treating _Q_ as your con-
clusion and forgetting about the original conclusion. So this technique says that
if the conclusion of the theorem you are trying to prove has the form _P_ → _Q_ ,
then you can _transform the problem_ by adding _P_ to your list of hypotheses and

88 _Proofs_

changing your conclusion from _P_ → _Q_ to _Q_. This gives you a new, perhaps
easier proof problem to work on. If you can solve the new problem, then you
will have shown that _if P_ is true then _Q_ is also true, thus solving the origi-
nal problem of proving _P_ → _Q_. How you solve this new problem will now
be guided by the logical form of the new conclusion _Q_ (which might itself
be a complex statement), and perhaps also by the logical form of the new
hypothesis _P_.
Note that this technique doesn’t tell you how to do the whole proof, it just
gives you one step, leaving you with a new problem to solve in order to finish
the proof. Proofs are usually not written all at once, but are created gradually
by applying several proof techniques one after another. Often the use of these
techniques will lead you to transform the problem several times. In discussing
this process it will be helpful to have some way to keep track of the results of
this sequence of transformations. We therefore introduce the following termi-
nology. We will refer to the statements that are known or assumed to be true
at some point in the course of figuring out a proof as _givens_ , and the statement
that remains to be proven at that point as the _goal_. When you are starting to
figure out a proof, the givens will be just the hypotheses of the theorem you
are proving, but they may later include other statements that have been in-
ferred from the hypotheses or added as new assumptions as the result of some
transformation of the problem. The goal will initially be the conclusion of the
theorem, but it may be changed several times in the course of figuring out a
proof.
To keep in mind that all of our proof strategies apply not only to the original
proof problem but also to the results of any transformation of the problem,
we will talk from now on only about givens and goals, rather than hypothe-
ses and conclusions, when discussing proof-writing strategies. For example,
the strategy stated earlier should really be called a strategy for proving a _goal_
of the form _P_ → _Q_ , rather than a conclusion of this form. Even if the con-
clusion of the theorem you are proving is not a conditional statement, if you
transform the problem in such a way that a conditional statement becomes
the goal, then you can apply this strategy as the next step in figuring out the
proof.

**Example 3.1.2.** Suppose _a_ and _b_ are real numbers. Prove that if 0< _a_ < _b_
then _a_^2 < _b_^2.

_Scratch work_

We are given as a hypothesis that _a_ and _b_ are real numbers. Our conclusion has
the form _P_ → _Q_ , where _P_ is the statement 0< _a_ < _b_ and _Q_ is the statement

```
Proof Strategies 89
```

_a_^2 < _b_^2. Thus we start with these statements as given and goal:

```
Givens Goal
a and b are real numbers (0< a < b )→( a^2 < b^2 )
According to our proof technique we should assume that 0< a < b and try
to use this assumption to prove that a^2 < b^2. In other words, we transform the
problem by adding 0< a < b to the list of givens and making a^2 < b^2 our
goal:
Givens Goal
a and b are real numbers a^2 < b^2
0 < a < b
```

Comparing the inequalities _a_ < _b_ and _a_^2 < _b_^2 suggests that multiplying
both sides of the given inequality _a_ < _b_ by either _a_ or _b_ might get us closer
to our goal. Because we are given that _a_ and _b_ are positive, we won’t need
to reverse the direction of the inequality if we do this. Multiplying _a_ < _b_
by _a_ gives us _a_^2 < _ab_ , and multiplying it by _b_ gives us _ab_ < _b_^2. Thus
_a_^2 < _ab_ < _b_^2 , so _a_^2 < _b_^2.

```
Solution
Theorem. Suppose a and b are real numbers. If 0 < a < b then a^2 < b^2.
Proof. Suppose 0< a < b. Multiplying the inequality a < b by the posi-
tive number a we can conclude that a^2 < ab , and similarly multiplying by
b we get ab < b^2. Therefore a^2 < ab < b^2 , so a^2 < b^2 , as required. Thus, if
0 < a < b then a^2 < b^2. 
```

```
As you can see from the preceding example, there’s a difference between
the reasoning you use when you are figuring out a proof and the steps you
write down when you write the final version of the proof. In particular, al-
though we will often talk about givens and goals when trying to figure out
a proof, the final write-up will rarely refer to them. Throughout this chap-
ter, and sometimes in later chapters as well, we will precede our proofs with
the scratch work used to figure out the proof, but this is just to help you
understand how proofs are constructed. When mathematicians write proofs,
they usually just write the steps needed to justify their conclusions with no
explanation of how they thought of them. Some of these steps will be sen-
tences indicating that the problem has been transformed (usually according
to some proof strategy based on the logical form of the goal); some steps
will be assertions that are justified by inferences from the givens (often using
some proof strategy based on the logical form of a given). However, there
```

90 _Proofs_

will usually be no explanation of how the mathematician thought of these
transformations and inferences. For example, the proof in Example 3.1.2 starts
with the sentence “Suppose 0< _a_ < _b_ ,” indicating that the problem has been
transformed according to our strategy, and then proceeds with a sequence
of inferences leading to the conclusion that _a_^2 < _b_^2. No other explanations
were necessary to justify the final conclusion, in the last sentence, that if
0 < _a_ < _b_ then _a_^2 < _b_^2.
Although this lack of explanation sometimes makes proofs hard to read, it
serves the purpose of keeping two distinct objectives separate: _explaining your
thought processes_ and _justifying your conclusions_. The first is psychology; the
second, mathematics. The primary purpose of a proof is to justify the claim that
the conclusion follows from the hypotheses, and no explanation of your thought
processes can substitute for adequate justification of this claim. Keeping any
discussion of thought processes to a minimum in a proof helps to keep this
distinction clear. Occasionally, in a very complicated proof, a mathematician
may include some discussion of the strategy behind the proof to make the
proof easier to read. Usually, however, it is up to readers to figure this out
for themselves. Don’t worry if you don’t immediately understand the strategy
behind a proof you are reading. Just try to follow the justifications of the steps,
and the strategy will eventually become clear. If it doesn’t, a second reading of
the proof might help.
To keep the distinction between the proof and the strategy behind the proof
clear, in the future when we state a proof strategy we will often describe both
the scratch work you might use to figure out the proof and the form that the
final write-up of the proof should take. For example, here’s a restatement of
the proof strategy we discussed earlier, in the form we will be using to present
proof strategies from now on.

```
To prove a goal of the form P → Q :
Assume P is true and then prove Q.
```

_Scratch work_

Before using strategy:
_Givens Goal_
— _P_ → _Q_
—
After using strategy:
_Givens Goal_
— _Q_
—
_P_

```
Proof Strategies 91
Form of final proof:
```

```
Suppose P.
[Proof of Q goes here.]
Therefore P → Q.
```

```
Note that the suggested form for the final proof tells you how the beginning
and end of the proof will go, but more steps will have to be added in the middle.
The givens and goal list under the heading “After using strategy” tells you what
is known or can be assumed and what needs to be proven in order to fill in this
gap in the proof. Many of our proof strategies will tell you how to write either
the beginning or the end of your proof, leaving a gap to be filled in with further
reasoning.
There is a second method that is sometimes used for proving goals of the
form P → Q. Because any conditional statement P → Q is equivalent to its
contrapositivenot  Q → not  P , you can prove P → Q by provingnot  Q → not  P
instead, using the strategy discussed earlier. In other words:
```

```
To prove a goal of the form P → Q :
Assume Q is false and prove that P is false.
```

_Scratch work_

Before using strategy:

_Givens Goal_
— _P_ → _Q_
—
After using strategy:

```
Givens Goal
— not  P
—
not  Q
```

_Form of final proof:_

```
Suppose Q is false.
[Proof ofnot  P goes here.]
Therefore P → Q.
```

**Example 3.1.3.** Suppose _a, b,_ and _c_ are real numbers and _a_ > _b_. Prove that if
_ac_ ≤ _bc_ then _c_ ≤0.

92 _Proofs_

_Scratch work_

```
Givens Goal
a , b ,and c are real numbers ( ac ≤ bc )→( c ≤0)
a > b
```

The contrapositive of the goal isnot ( _c_ ≤0)→ not  ( _ac_ ≤ _bc_ ), or in other words
( _c_ >0)→( _ac_ > _bc_ ), so we can prove it by adding _c_ >0 to the list of givens
and making _ac_ > _bc_ our new goal:

```
Givens Goal
a , b ,and c are real numbers ac > bc
a > b
c > 0
```

We can also now write the first and last sentences of the proof. According to
the strategy, the final proof should have this form:

```
Suppose c >0.
[Proof of ac > bc goes here.]
Therefore, if ac ≤ bc then c ≤0.
```

Using the new given _c_ >0, we see that the goal _ac_ > _bc_ follows im-
mediately from the given _a_ > _b_ by multiplying both sides by the positive
number _c_. Inserting this step between the first and last sentences completes
the proof.

_Solution_

**Theorem.** _Suppose a, b, and c are real numbers and a_ > _b. If ac_ ≤ _bc then
c_ ≤ 0_.
Proof._ We will prove the contrapositive. Suppose _c_ >0. Then we can multi-
ply both sides of the given inequality _a_ > _b_ by _c_ and conclude that _ac_ > _bc_.
Therefore, if _ac_ ≤ _bc_ then _c_ ≤0. 

Notice that, although we have used the symbols of logic freely in the scratch
work, we have not used them in the final write-up of the proof. Although
it would not be incorrect to use logical symbols in a proof, mathematicians
usually try to avoid it. Using the notation and rules of logic can be very helpful
when you are figuring out the strategy for a proof, but in the final write-up you
should try to stick to ordinary English as much as possible.
The reader may be wondering how we knew in Example 3.1.3 that we
should use the second method for proving a goal of the form _P_ → _Q_

```
Proof Strategies 93
```

rather than the first. The answer is simple: We tried both methods, and the
second worked. When there is more than one strategy for proving a goal of a
particular form, you may have to try a few different strategies before you hit
on one that works. With practice, you will get better at guessing which strategy
is most likely to work for a particular proof.
Notice that in each of the examples we have given our strategy involved
making changes in our givens and goal to try to make the problem easier. The
beginning and end of the proof, which were supplied for us in the statement of
the proof technique, serve to tell a reader of the proof that these changes have
been made and how the solution to this revised problem solves the original prob-
lem. The rest of the proof contains the solution to this easier, revised problem.
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
∗1. Consider the following theorem. (This theorem was proven in the intro-
duction.)
```

```
Theorem. Suppose n is an integer larger than 1 and n is not prime. Then
2 n - 1 is not prime.
```

```
(a) Identify the hypotheses and conclusion of the theorem. Are the hy-
potheses true when n =6? What does the theorem tell you in this
instance? Is it right?
(b) What can you conclude from the theorem in the case n =15? Check
directly that this conclusion is correct.
(c) What can you conclude from the theorem in the case n =11?
```

2. Consider the following theorem. (The theorem is correct, but we will not
    ask you to prove it here.)

94 _Proofs_

```
Theorem. Suppose that b^2 > 4 ac. Then the quadratic equation ax^2 +
bx + c = 0 has exactly two real solutions.
```

```
(a) Identify the hypotheses and conclusion of the theorem.
(b) To give an instance of the theorem, you must specify values for a , b ,
and c , but not x. Why?
(c) What can you conclude from the theorem in the case a =2, b = - 5,
c =3? Check directly that this conclusion is correct.
(d) What can you conclude from the theorem in the case a =2, b =4,
c =3?
```

3. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose n is a natural number larger than 2, and
n is not a prime number. Then 2n + 13 is not a prime number.
```

```
What are the hypotheses and conclusion of this theorem? Show that
the theorem is incorrect by finding a counterexample.
∗4. CompletethefollowingalternativeproofofthetheoreminExample3.1.2.
```

```
Proof. Suppose 0< a < b. Then b - a >0.
[Fill in a proof of b^2 - a^2 >0 here.]
Since b^2 - a^2 >0, it follows that a^2 < b^2. Therefore if 0< a < b then
a^2 < b^2. 
```

5. Suppose _a_ and _b_ are real numbers. Prove that if _a_ < _b_ <0 then _a_^2 > _b_^2.
6. Suppose _a_ and _b_ are real numbers. Prove that if 0< _a_ < _b_ then 1/ _b_ <
    1 / _a_.
7. Suppose that _a_ is a real number. Prove that if _a_^3 > _a_ then _a_^5 > _a_. (Hint:
    One approach is to start by completing the following equation: _a_^5 - _a_ =
    ( _a_^3 - _a_ )· ?.)
8. Suppose _A_ \ _B_ ⊆ _C_ + _D_ and _x_ ∈ _A_. Prove that if _x_ ∈/ _D_ then _x_ ∈ _B_.
∗9. Suppose _a_ and _b_ are real numbers. Prove that if _a_ < _b_ then _a_ + _b_
2 < _b_.
10. Suppose _x_ is a real number and _x_ =0. Prove that if

√ (^3) _x_ + 5
_x_^2 + 6 =
1
_x_ then
_x_ =8.
∗11. Suppose _a_ , _b_ , _c_ , and _d_ are real numbers, 0< _a_ < _b_ , and _d_ >0. Prove
that if _ac_ ≥ _bd_ then _c_ > _d_.

12. Suppose _x_ and _y_ are real numbers, and 3 _x_ + 2 _y_ ≤5. Prove that if _x_ > 1
    then _y_ <1.
13. Suppose that _x_ and _y_ are real numbers. Prove that if _x_^2 + _y_ = - 3 and
    2 _x_ - _y_ =2 then _x_ = - 1.

_Proofs Involving Negations and Conditionals_ 95
∗14. Prove the first theorem in Example 3.1.1. (Hint: You might find it useful

```
to apply the theorem from Example 3.1.2.)
```

15. Consider the following theorem.

```
Theorem. Suppose x is a real number and x = 4. If^2 xx -- 45 = 3 then
x = 7.
```

```
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Suppose x =7. Then^2 xx -- 45 =2(7) 7 -- 45 =^93 =3. Therefore if
2 x - 5
x - 4 =3 then x =7. 
(b) Give a correct proof of the theorem.
```

16. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose that x and y are real numbers and x = 3.
If x^2 y = 9 y then y = 0.
```

```
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Suppose that x^2 y = 9 y. Then ( x^2 -9) y =0. Since x =3,
x^2 =9, so x^2 - 9 =0. Therefore we can divide both sides of the
equation ( x^2 -9) y =0 by x^2 -9, which leads to the conclusion
that y =0. Thus, if x^2 y = 9 y then y =0. 
```

```
(b) Show that the theorem is incorrect by finding a counterexample.
```

## 3.2 Proofs Involving Negations and Conditionals

We turn now to proofs in which the goal has the formnot  _P_. Usually it’s easier
to prove a positive than a negative statement, so it is often helpful to reexpress
a goal of the formnot  _P_ before proving it. Instead of using a goal that says what
_shouldn’t_ be true, see if you can rephrase it as a goal that says what _should_
be true. Fortunately, we have already studied several equivalences that will
help with this reexpression. Thus, our first strategy for proving negated state-
ments is:

**To prove a goal of the form** not  _P_ **:**
If possible, reexpress the goal in some other form and then use one of the
proof strategies for this other goal form.

**Example 3.2.1.** Suppose _A_ + _C_ ⊆ _B_ and _a_ ∈ _C_. Prove that _a_ ∈/ _A_ \ _B_.

96 _Proofs_

_Scratch Work_

```
Givens Goal
A + C ⊆ B a ∈/ A \ B
a ∈ C
```

Because the goal is a negated statement, we try to reexpress it:

```
a ∈/ A \ B is equivalent tonot ( a ∈ A and  a ∈/ B ) (definition of A \ B ),
which is equivalent to a ∈/ A or  a ∈ B (DeMorgan’s law),
which is equivalent to a ∈ A → a ∈ B (conditional law).
```

Rewriting the goal in this way gives us:

_Givens Goal
A_ + _C_ ⊆ _B a_ ∈ _A_ → _a_ ∈ _B
a_ ∈ _C_
We now prove the goal in this new form, using the first strategy from Sec-
tion 3.1. Thus, we add _a_ ∈ _A_ to our list of givens and make _a_ ∈ _B_ our goal:

```
Givens Goal
A + C ⊆ B a ∈ B
a ∈ C
a ∈ A
```

The proof is now easy: From the givens _a_ ∈ _A_ and _a_ ∈ _C_ we can conclude that
_a_ ∈ _A_ + _C_ , and then, since _A_ + _C_ ⊆ _B_ , it follows that _a_ ∈ _B_.

_Solution_

**Theorem.** _Suppose A_ + _C_ ⊆ _B and a_ ∈ _C. Then a_ ∈/ _A_ \ _B.
Proof._ Suppose _a_ ∈ _A_. Then since _a_ ∈ _C_ , _a_ ∈ _A_ + _C_. But then since _A_ + _C_ ⊆
_B_ it follows that _a_ ∈ _B_. Thus, it cannot be the case that _a_ is an element of _A_
but not _B_ , so _a_ ∈/ _A_ \ _B_. 

Sometimes a goal of the formnot  _P_ cannot be reexpressed as a positive state-
ment, and therefore this strategy cannot be used. In this case it is usually best
to do a _proof by contradiction_. Start by assuming that _P_ is true, and try to
use this assumption to prove something that you know is false. Often this is
done by proving a statement that contradicts one of the givens. Because you
know that the statement you have proven is false, the assumption that _P_ was
true must have been incorrect. The only remaining possibility then is that _P_ is
false.

_Proofs Involving Negations and Conditionals_ 97
**To prove a goal of the form** not  _P_ **:**
Assume _P_ is true and try to reach a contradiction. Once you have reached
a contradiction, you can conclude that _P_ must be false.

_Scratch work_

Before using strategy:

```
Givens Goal
— not  P
—
```

After using strategy:

```
Givens Goal
— Contradiction
—
P
```

_Form of final proof:_

```
Suppose P is true.
[Proof of contradiction goes here.]
Thus, P is false.
```

**Example 3.2.2.** Prove that if _x_^2 + _y_ =13 and _y_ =4 then _x_ =3.

_Scratch work_

The goal is a conditional statement, so according to the first proof strategy in
Section 3.1 we can treat the antecedent as given and make the consequent our
new goal:

```
Givens Goal
x^2 + y = 13 x = 3
y = 4
```

This proof strategy also suggests what form the final proof should take.
According to the strategy, the proof should look like this:

```
Suppose x^2 + y =13 and y =4.
[Proof of x =3 goes here.]
Thus, if x^2 + y =13 and y =4 then x =3.
```

In other words, the first and last sentences of the final proof have already been
written, and the problem that remains to be solved is to fill in a proof of _x_ = 3

98 _Proofs_

between these two sentences. The givens–goal list summarizes what we know
and what we have to prove in order to solve this problem.
The goal _x_ =3 meansnot ( _x_ =3), but because _x_ =3 has no logical connec-
tives in it, none of the equivalences we know can be used to reexpress this goal
in a positive form. We therefore try proof by contradiction and transform the
problem as follows:

_Givens Goal
x_^2 + _y_ = 13 Contradiction
_y_ = 4
_x_ = 3
Once again, the proof strategy that suggested this transformation also tells
us how to fill in a few more sentences of the final proof. As we indicated earlier,
these sentences go between the first and last sentences of the proof, which were
written before.

```
Suppose x^2 + y =13 and y =4.
Suppose x =3.
[Proof of contradiction goes here.]
Therefore x =3.
Thus, if x^2 + y =13 and y =4 then x =3.
```

The indenting in this outline of the proof will not be part of the final proof.
We have done it here to make the underlying structure of the proof clear. The
first and last lines go together and indicate that we are proving a conditional
statement by assuming the antecedent and proving the consequent. Between
these lines is a proof of the consequent, _x_ =3, which we have set off from the
first and last lines by indenting it. This inner proof has the form of a proof by
contradiction, as indicated by its first and last lines. Between these lines we
still need to fill in a proof of a contradiction.
At this point we don’t have a particular statement as our goal; any impossible
conclusion will do. We must therefore look more closely at the givens to see if
some of them contradict others. In this case, the first and third together imply
that _y_ =4, which contradicts the second.

_Solution_

**Theorem.** _If x_^2 + _y_ = 13 _and y_ = 4 _then x_ = 3_.
Proof._ Suppose _x_^2 + _y_ =13 and _y_ =4. Suppose _x_ =3. Substituting this into
the equation _x_^2 + _y_ =13, we get 9+ _y_ =13, so _y_ =4. But this contradicts
the fact that _y_ =4. Therefore _x_ =3. Thus, if _x_^2 + _y_ =13 and _y_ =4 then
_x_ =3. 

_Proofs Involving Negations and Conditionals_ 99
You may be wondering at this point why we were justified in conclud-
ing, when we reached a contradiction in the proof, that _x_ =3. After all, the
second list of givens in our scratch work contained three given. How could
we be sure, when we reached a contradiction, that the culprit was the third
given, _x_ =3? To answer this question, look back at the first givens and goal
analysis for this example. According to that analysis, there were two givens,
_x_^2 + _y_ =13 and _y_ =4, from which we had to prove the goal _x_ =3. Re-
member that a proof only has to guarantee that the goal is true _if_ the givens
are. Thus, we didn’t have to show that _x_ =3, only that _if x_^2 + _y_ =13 and
_y_ =4 then _x_ =3. When we reached a contradiction, we knew that one of
the three statements in the second list of givens had to be false. We didn’t
try to figure out which one it was because we didn’t need to. We were cer-
tainly justified in concluding that _if_ neither of the first two was the culprit,
then it had to be the third, and that was all that was required to finish the
proof.
Proving a goal by contradiction has the advantage that it allows you to
assume that your conclusion is false, providing you with another given to
work with. But it has the disadvantage that it leaves you with a rather vague
goal: produce a contradiction by proving something that you know is false.
Because all the proof strategies we have discussed so far depend on analyzing
the logical form of the goal, it appears that none of them will help you to
achieve the goal of producing a contradiction. In the preceding proof we were
forced to look more closely at our givens to find a contradiction. In this case
we did it by proving that _y_ =4, contradicting the given _y_ =4. This illustrates
a pattern that occurs often in proofs by contradiction: If one of the givens has
the formnot  _P_ , then you can produce a contradiction by proving _P_. This is our
first strategy based on the logical form of a _given_.

**To use a given of the form** not  _P_ **:**
If you’re doing a proof by contradiction, try making _P_ your goal. If
you can prove _P_ , then the proof will be complete, because _P_ contradicts the
givennot  _P_.

_Scratch work_

Before using strategy:

```
Givens Goal
not  P Contradiction
—
—
```

100 _Proofs_

After using strategy:

```
Givens Goal
not  P P
—
—
```

_Form of final proof:_

```
[Proof of P goes here.]
Since we already knownot  P , this is a contradiction.
```

Although we have recommended proof by contradiction for proving goals
of the formnot  _P_ , it can be used for any goal. Usually it’s best to try the other
strategies first if any of them apply; but if you’re stuck, you can try proof by
contradiction in any proof.
The next example illustrates this and also another important rule of proof-
writing: In many cases the logical form of a statement can be discovered
by _writing out the definition_ of some mathematical word or symbol that
occurs in the statement. For this reason, knowing the precise statements of
the definitions of all mathematical terms is extremely important when you’re
writing a proof.

**Example 3.2.3.** Suppose _A, B,_ and _C_ are sets, _A_ \ _B_ ⊆ _C_ , and _x_ is anything
at all. Prove that if _x_ ∈ _A_ \ _C_ then _x_ ∈ _B_.

_Scratch work_

We’re given that _A_ \ _B_ ⊆ _C_ , and our goal is _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_. Because the
goal is a conditional statement, our first step is to transform the problem by
adding _x_ ∈ _A_ \ _C_ as a second given and making _x_ ∈ _B_ our goal:

```
Givens Goal
A \ B ⊆ C x ∈ B
x ∈ A \ C
```

The form of the final proof will therefore be as follows:

```
Suppose x ∈ A \ C.
[Proof of x ∈ B goes here.]
Thus, if x ∈ A \ C then x ∈ B.
```

The goal _x_ ∈ _B_ contains no logical connectives, so none of the techniques
we have studied so far apply, and it is not obvious why the goal follows from

```
Proofs Involving Negations and Conditionals 101
```

the givens. Lacking anything else to do, we try proof by contradiction:

```
Givens Goal
A \ B ⊆ C Contradiction
x ∈ A \ C
x ∈/ B
```

As before, this transformation of the problem also enables us to fill in a few
more sentences of the proof:

```
Suppose x ∈ A \ C.
Suppose x ∈/ B.
[Proof of contradiction goes here.]
Therefore x ∈ B.
Thus, if x ∈ A \ C then x ∈ B.
```

Because we’re doing a proof by contradiction and our last given is now a
negated statement, we could try using our strategy for using givens of the form
not  _P_. Unfortunately, this strategy suggests making _x_ ∈ _B_ our goal, which just
gets us back to where we started. We must look at the other givens to try to find
the contradiction.
In this case, writing out the definition of the second given is the key to
the proof, since this definition also contains a negated statement. By definition,
_x_ ∈ _A_ \ _C_ means _x_ ∈ _A_ and _x_ ∈/ _C_. Replacing this given by its definition gives
us:

_Givens Goal
A_ \ _B_ ⊆ _C_ Contradiction
_x_ ∈ _A
x_ ∈/ _C
x_ ∈/ _B_
Now the third given also has the formnot  _P_ , where _P_ is the statement _x_ ∈ _C_ , so
we can apply the strategy for using givens of the formnot  _P_ and make _x_ ∈ _C_ our
goal. Showing that _x_ ∈ _C_ would complete the proof because it would contradict
the given _x_ ∈/ _C_.

_Givens Goal
A_ \ _B_ ⊆ _C x_ ∈ _C
x_ ∈ _A
x_ ∈/ _C
x_ ∈/ _B_
Once again, we can add a little more to the proof we are gradually writing
by filling in the fact that we plan to derive our contradiction by proving _x_ ∈ _C_.

102 _Proofs_

We also add the definition of _x_ ∈ _A_ \ _C_ to the proof, inserting it in what seems
like the most logical place, right after we stated that _x_ ∈ _A_ \ _C_ :

```
Suppose x ∈ A \ C. This means that x ∈ A and x ∈/ C.
Suppose x ∈/ B.
[Proof of x ∈ C goes here.]
This contradicts the fact that x ∈/ C.
Therefore x ∈ B.
Thus, if x ∈ A \ C then x ∈ B.
```

We have finally reached a point where the goal follows easily from the
givens. From _x_ ∈ _A_ and _x_ ∈/ _B_ we conclude that _x_ ∈ _A_ \ _B_. Since _A_ \ _B_ ⊆ _C_
it follows that _x_ ∈ _C_.

_Solution_

**Theorem.** _Suppose A, B, and C are sets, A_ \ _B_ ⊆ _C, and x is anything at all.
If x_ ∈ _A_ \ _C then x_ ∈ _B.
Proof._ Suppose _x_ ∈ _A_ \ _C_. This means that _x_ ∈ _A_ and _x_ ∈/ _C_. Suppose _x_ ∈/ _B_.
Then _x_ ∈ _A_ \ _B_ , so since _A_ \ _B_ ⊆ _C_ , _x_ ∈ _C_. But this contradicts the fact that
_x_ ∈/ _C_. Therefore _x_ ∈ _B_. Thus, if _x_ ∈ _A_ \ _C_ then _x_ ∈ _B_. 

The strategy we’ve recommended for using givens of the formnot  _P_ only
applies if you are doing a proof by contradiction. For other kinds of proofs,
the next strategy can be used. This strategy is based on the fact that givens of
the formnot  _P_ , like goals of this form, may be easier to work with if they are
reexpressed as positive statements.

**To use a given of the form** not  _P_ **:**
If possible, reexpress this given in some other form.
We have discussed strategies for working with both givens and goals of
the formnot  _P_ , but only strategies for goals of the form _P_ → _Q_. We now fill
this gap by giving two strategies for using givens of the form _P_ → _Q_. We
said before that many strategies for using givens suggest ways of drawing
inferences from the givens. Such strategies are called _rules of inference_. Both
of our strategies for using givens of the form _P_ → _Q_ are examples of rules of
inference.

**To use a given of the form** _P_ → _Q_ **:**
If you are also given _P_ , or if you can prove that _P_ is true, then you can
use this given to conclude that _Q_ is true. Since it is equivalent tonot  _Q_ → not  _P_ ,

_Proofs Involving Negations and Conditionals_ 103
if you can prove that _Q_ is false, you can use this given to conclude that _P_ is
false.
The first of these rules of inference says that if you know that both _P_ and
_P_ → _Q_ are true, you can conclude that _Q_ must also be true. Logicians call this
rule _modus ponens_. We saw this rule used in one of our first examples of valid
deductive reasoning in Chapter 1, argument 2 in Example 1.1.1. The validity
of this form of reasoning was verified using the truth table for the conditional
connective in Section 1.5.
The second rule, called _modus tollens_ , says that if you know that _P_ → _Q_
is true and _Q_ is false, you can conclude that _P_ must also be false. The validity
of this rule can also be checked with truth tables, as you are asked to show in
exercise 13. Usually you won’t find a given of the form _P_ → _Q_ to be much use
until you are able to prove either _P_ ornot  _Q_. However, if you ever reach a point
in your proof where you have determined that _P_ is true, you should probably
use this given immediately to conclude that _Q_ is true. Similarly, if you ever
establishnot  _Q_ , immediately use this given to concludenot  _P_.
Although most of our examples will involve specific mathematical state-
ments, occasionally we will do examples of proofs containing letters standing
for unspecified statements. Later in this chapter we will be able to use this
method to verify some of the equivalences from Chapter 2 that could only be
justified on intuitive grounds before. Here’s an example of this kind, illustrating
the use of modus ponens and modus tollens.

```
Example 3.2.4. Suppose P →( Q → R ). Prove thatnot  R →( P → not  Q ).
```

_Scratch work_

This could actually be done with a truth table, as you are asked to show in
exercise 14, but let’s do it using the proof strategies we’ve been discussing. We
start with the following situation:

```
Givens Goal
P →( Q → R ) not  R →( P → not  Q )
```

Our only given is a conditional statement. By the rules of inference just
discussed, if we knew _P_ we could use modus ponens to conclude _Q_ → _R_ , and
if we knewnot ( _Q_ → _R_ ) we could use modus tollens to concludenot  _P_. Because
we don’t, at this point, know either of these, we can’t yet do anything with
this given. If either _P_ ornot ( _Q_ → _R_ ) ever gets added to the givens list, then we
should consider using modus ponens or modus tollens. For now, we need to
concentrate on the goal.

104 _Proofs_

The goal is also a conditional statement, so we assume the antecedent and
set the consequent as our new goal:

```
Givens Goal
P →( Q → R ) P → not  Q
not  R
```

We can also now write a little bit of the proof:

Supposenot  _R_.
[Proof of _P_ → not  _Q_ goes here.]
Thereforenot  _R_ →( _P_ → not  _Q_ ).
We still can’t do anything with the givens, but the goal is another conditional,
so we use the same strategy again:

```
Givens Goal
P →( Q → R ) not  Q
not  R
P
```

Now the proof looks like this:

Supposenot  _R_.
Suppose _P_.
[Proof ofnot  _Q_ goes here.]
Therefore _P_ → not  _Q_.
Thereforenot  _R_ →( _P_ → not  _Q_ ).
We’ve been watching for our chance to use our first given by applying
either modus ponens or modus tollens, and now we can do it. Since we know
_P_ →( _Q_ → _R_ ) and _P_ , by modus ponens we can infer _Q_ → _R_. Any conclusion
inferred from the givens can be added to the givens column:

```
Givens Goal
P →( Q → R ) not  Q
not  R
P
Q → R
```

We also add one more line to the proof:

```
Supposenot  R.
Suppose P.
Since P and P →( Q → R ), it follows that Q → R.
[Proof ofnot  Q goes here.]
Therefore P → not  Q.
Thereforenot  R →( P → not  Q ).
```

```
Proofs Involving Negations and Conditionals 105
Finally, our last step is to use modus tollens. We now know Q → R and
not  R , so by modus tollens we can concludenot  Q. This is our goal, so the proof
is done.
```

```
Solution
```

**Theorem.** _Suppose P_ →( _Q_ → _R_ )_. Then_ not  _R_ →( _P_ → not  _Q_ )_.
Proof._ Supposenot  _R_. Suppose _P_. Since _P_ and _P_ →( _Q_ → _R_ ), it follows that
_Q_ → _R_. But then, sincenot  _R_ , we can concludenot  _Q_. Thus, _P_ → not  _Q_. Therefore
not  _R_ →( _P_ → not  _Q_ ). 

Sometimes if you’re stuck you can use rules of inference to work backward.
For example, suppose one of your givens has the form _P_ → _Q_ and your goal
is _Q_. If only you could prove _P_ , you could use modus ponens to reach your
goal. This suggests treating _P_ as your goal instead of _Q_. If you can prove _P_ ,
then you’ll just have to add one more step to the proof to reach your original
goal _Q_.

```
Example 3.2.5. Suppose that A ⊆ B , a ∈ A , and a ∈/ B \ C. Prove that a ∈ C.
Scratch work
```

```
Givens Goal
A ⊆ B a ∈ C
a ∈ A
a ∈/ B \ C
```

Our third given is a negative statement, so we begin by reexpressing it
as an equivalent positive statement. According to the definition of the dif-
ference of two sets, this given meansnot ( _a_ ∈ _B_ and  _a_ ∈/ _C_ ), and by one of
DeMorgan’s laws, this is equivalent to _a_ ∈/ _B_ or  _a_ ∈ _C_. Because our goal is
_a_ ∈ _C_ ,itisprobablymoreusefultorewritethisintheequivalentform _a_ ∈ _B_ →
_a_ ∈ _C_ :

```
Givens Goal
A ⊆ B a ∈ C
a ∈ A
a ∈ B → a ∈ C
```

```
Now we can use our strategy for using givens of the form P → Q. Our goal
is a ∈ C , and we are given that a ∈ B → a ∈ C. If we could prove that a ∈ B ,
```

106 _Proofs_

then we could use modus ponens to reach our goal. So let’s try treating _a_ ∈ _B_
as our goal and see if that makes the problem easier:

```
Givens Goal
A ⊆ B a ∈ B
a ∈ A
a ∈ B → a ∈ C
```

```
Now it is clear how to reach the goal. Since a ∈ A and A ⊆ B , a ∈ B.
```

_Solution_

**Theorem.** _Suppose that A_ ⊆ _B, a_ ∈ _A, and a_ ∈/ _B_ \ _C. Then a_ ∈ _C.
Proof._ Since _a_ ∈ _A_ and _A_ ⊆ _B_ , we can conclude that _a_ ∈ _B_. But _a_ ∈/ _B_ \ _C_ ,
so it follows that _a_ ∈ _C_. 

```
Exercises
```

```
∗1. This problem could be solved by using truth tables, but don’t do it that
way. Instead, use the methods for writing proofs discussed so far in this
chapter. (See Example 3.2.4.)
(a) Suppose P → Q and Q → R are both true. Prove that P → R is
true.
(b) Supposenot  R →( P → not  Q ) is true. Prove that P →( Q → R ) is
true.
```

2. This problem could be solved by using truth tables, but don’t do it that
    way. Instead, use the methods for writing proofs discussed so far in this
    chapter. (See Example 3.2.4.)
    (a) Suppose _P_ → _Q_ and _R_ → not  _Q_ are both true. Prove that _P_ → not  _R_
       is true.
    (b) Suppose that _P_ is true. Prove that _Q_ → not  ( _Q_ → not  _P_ ) is true.
3. Suppose _A_ ⊆ _C_ , and _B_ and _C_ are disjoint. Prove that if _x_ ∈ _A_ then
    _x_ ∈/ _B_.
4. Suppose that _A_ \ _B_ is disjoint from _C_ and _x_ ∈ _A_. Prove that if _x_ ∈ _C_
    then _x_ ∈ _B_.
∗5. Use the method of proof by contradiction to prove the theorem in
Example 3.2.1.
6. Use the method of proof by contradiction to prove the theorem in
    Example 3.2.5.
7. Suppose that _y_ + _x_ = 2 _y_ - _x_ , and _x_ and _y_ are not both zero. Prove that
    _y_ =0.

```
Proofs Involving Negations and Conditionals 107
∗8. Suppose that a and b are nonzero real numbers. Prove that if a < 1 / a <
b < 1 / b then a <-1.
```

9. Suppose that _x_ and _y_ are real numbers. Prove that if _x_^2 _y_ = 2 _x_ + _y_ , then
    if _y_ =0 then _x_ =0.
10. Suppose that _x_ and _y_ are real numbers. Prove that if _x_ =0, then if _y_ =
3 _x_^2 + 2 _y_
∗ _x_^2 +^2 then _y_ =3.
11. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose x and y are real numbers and x + y = 10.
Then x = 3 and y = 8.
```

```
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Suppose the conclusion of the theorem is false. Then x =
3 and y =8. But then x + y =11, which contradicts the given
information that x + y =10. Therefore the conclusion must be
true. 
```

```
(b) Show that the theorem is incorrect by finding a counterexample.
```

12. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose that A ⊆ C, B ⊆ C, and x ∈ A. Then
x ∈ B.
```

```
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Suppose that x ∈/ B. Since x ∈ A and A ⊆ C , x ∈ C. Since
x ∈/ B and B ⊆ C , x ∈/ C. But now we have proven both x ∈
C and x ∈/ C , so we have reached a contradiction. Therefore
x ∈ B. 
```

```
(b) Show that the theorem is incorrect by finding a counterexample.
```

13. Use truth tables to show that modus tollens is a valid rule of inference.
*14. Use truth tables to check the correctness of the theorem in Example 3.2.4.
15. Use truth tables to check the correctness of the statements in
exercise 1.
16. Use truth tables to check the correctness of the statements in exercise 2.
17. Can the proof in Example 3.2.2 be modified to prove that if _x_^2 + _y_ = 13
and _x_ =3 then _y_ =4? Explain.

108 _Proofs_

## 3.3 Proofs Involving Quantifiers

Look again at Example 3.2.3. In that example we said that _x_ could be any-
thing at all, and we proved the statement _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_. Because the
reasoning we used would apply no matter what _x_ was, our proof actually shows
that _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_ is true for all _x_. In other words, we can conclude
∀ _x_ ( _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_ ).
This illustrates the easiest and most straightforward way of proving a goal
of the form∀ _x P_ ( _x_ ). If you can give a proof of the goal _P_ ( _x_ ) that would work
no matter what _x_ was, then you can conclude that∀ _x P_ ( _x_ ) must be true. To
make sure that your proof would work for any value of _x_ , it is important to
start your proof with no assumptions about _x_. Mathematicians express this by
saying that _x_ must be _arbitrary_. In particular, you must not assume that _x_ is
equal to any other object already under discussion in the proof. Thus, if the
letter _x_ is already being used in the proof to stand for some particular object,
then you cannot use it to stand for an arbitrary object. In this case you must
choose a different variable that is not already being used in the proof, say _y_ ,
and replace the goal∀ _x P_ ( _x_ ) with the equivalent statement∀ _yP_ ( _y_ ). Now you
can proceed by letting _y_ stand for an arbitrary object and proving _P_ ( _y_ ).

**To prove a goal of the form** ∀ _x P_ ( _x_ ) **:**
Let _x_ stand for an arbitrary object and prove _P_ ( _x_ ). The letter _x_ must be a
new variable in the proof. If _x_ is already being used in the proof to stand for
something, then you must choose an unused variable, say _y_ , to stand for the
arbitrary object, and prove _P_ ( _y_ ).

_Scratch work_

Before using strategy:

```
Givens Goal
— ∀ x P ( x )
—
After using strategy:
Givens Goal
— P ( x )
—
```

_Form of final proof:_

```
Let x be arbitrary.
[Proof of P ( x ) goes here.]
Since x was arbitrary, we can conclude that∀ x P ( x ).
```

```
Proofs Involving Quantifiers 109
Example 3.3.1. Suppose A , B , and C are sets, and A \ B ⊆ C. Prove that
A \ C ⊆ B.
```

```
Scratch work
```

_Givens Goal
A_ \ _B_ ⊆ _C A_ \ _C_ ⊆ _B_
As usual, we look first at the logical form of the goal to plan our strategy. In
this case we must write out the definition of⊆to determine the logical form
of the goal.
_Givens Goal
A_ \ _B_ ⊆ _C_ ∀ _x_ ( _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_ )
Because the goal has the form∀ _x P_ ( _x_ ), where _P_ ( _x_ ) is the statement _x_ ∈
_A_ \ _C_ → _x_ ∈ _B_ , we will introduce a new variable _x_ into the proof to stand for
an arbitrary object and then try to prove _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_. Note that _x is_
a new variable in the proof. It appeared in the logical form of the goal as a
bound variable, but remember that bound variables don’t stand for anything in
particular. We have not yet used _x_ as a free variable in any statement, so it has
not been used to stand for any particular object. To make sure _x_ is arbitrary
we must be careful not to add any assumptions about _x_ to the givens column.
However, we do change our goal:

```
Givens Goal
A \ B ⊆ C x ∈ A \ C → x ∈ B
According to our strategy, the final proof should look like this:
```

```
Let x be arbitrary.
[Proof of x ∈ A \ C → x ∈ B goes here.]
Since x was arbitrary, we can conclude that∀ x ( x ∈ A \ C → x ∈ B ),
so A \ C ⊆ B.
```

```
The problem is now exactly the same as in Example 3.2.3, so the rest of the
solution is the same as well. In other words, we can simply insert the proof we
wrote in Example 3.2.3 between the first and last sentences of the proof written
here.
```

```
Solution
```

```
Theorem. Suppose A, B, and C are sets, and A \ B ⊆ C. Then A \ C ⊆ B.
Proof. Let x be arbitrary. Suppose x ∈ A \ C. This means that x ∈ A and
x ∈/ C. Suppose x ∈/ B. Then x ∈ A \ B , so since A \ B ⊆ C , x ∈ C. But
```

110 _Proofs_

this contradicts the fact that _x_ ∈/ _C_. Therefore _x_ ∈ _B_. Thus, if _x_ ∈ _A_ \ _C_ then
_x_ ∈ _B_. Since _x_ was arbitrary, we can conclude that∀ _x_ ( _x_ ∈ _A_ \ _C_ → _x_ ∈ _B_ ),
so _A_ \ _C_ ⊆ _B_. 

Notice that, although this proof shows that every element of _A_ \ _C_ is also
an element of _B_ , it does not contain phrases such as “every element of _A_ \ _C_ ”
or “all elements of _A_ \ _C_ .” For most of the proof we simply reason about _x_ ,
which is treated as a single, fixed element of _A_ \ _C_. We pretend that _x_ stands for
some particular element of _A_ \ _C_ , being careful to make no assumptions about
_which_ element it stands for. It is only at the end of the proof that we observe
that, because _x_ was arbitrary, our conclusions about _x_ would be true no matter
what _x_ was. This is the main advantage of using this strategy to prove a goal of
the form∀ _x P_ ( _x_ ). It enables you to prove a goal about _all_ objects by reasoning
about only _one_ object, as long as that object is arbitrary. If you are proving a
goal of the form∀ _x P_ ( _x_ ) and you find yourself saying a lot about “all _x_ ’s” or
“every _x_ ,” you are probably making your proof unnecessarily complicated by
not using this strategy.
As we saw in Chapter 2, statements of the form∀ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )) are quite
common in mathematics. It might be worthwhile, therefore, to consider how
the strategies we’ve discussed can be combined to prove a goal of this form.
Because the goal starts with∀ _x_ , the first step is to let _x_ be arbitrary and try to
prove _P_ ( _x_ )→ _Q_ ( _x_ ). To prove this goal, you will probably want to assume that
_P_ ( _x_ ) is true and prove _Q_ ( _x_ ). Thus, the proof will probably start like this: “Let _x_
be arbitrary. Suppose _P_ ( _x_ ).” It will then proceed with the steps needed to reach
the goal _Q_ ( _x_ ). Often in this type of proof the statement that _x_ is arbitrary is left
out, and the proof simply starts with “Suppose _P_ ( _x_ ).” When a new variable _x_
is introduced into a proof in this way, it is usually understood that _x_ is arbitrary.
In other words, no assumptions are being made about _x_ other than the stated
one that _P_ ( _x_ ) is true.
An important example of this type of proof is a proof in which the goal
has the form∀ _x_ ∈ _A P_ ( _x_ ). Recall that∀ _x_ ∈ _A P_ ( _x_ ) means the same thing as
∀ _x_ ( _x_ ∈ _A_ → _P_ ( _x_ )), so according to our strategy the proof should start with
“Suppose _x_ ∈ _A_ ” and then proceed with the steps needed to conclude that _P_ ( _x_ )
is true. Once again, it is understood that no assumptions are being made about
_x_ other than the stated assumption that _x_ ∈ _A_ , so _x_ stands for an arbitrary
element of _A_.
Mathematicians sometimesskipotherstepsinproofs,ifknowledgeableread-
ers could be expected to fill them in themselves. In particular, many of our proof
strategies have suggested that the proof end with a sentence that sums up why
the reasoning that has been given in the proof leads to the desired conclusion.

```
Proofs Involving Quantifiers 111
In a proof in which several of these strategies have been combined, there might
be several of these summing up sentences, one after another, at the end of the
proof. Mathematicians often condense this summing up into one sentence, or
even skip it entirely. When you are reading a proof written by someone else,
you may find it helpful to fill in these skipped steps.
```

```
Example 3.3.2. Suppose A and B are sets. Prove that if A + B = A then
A ⊆ B.
```

```
Scratch work
Our goal is A + B = A → A ⊆ B. Because the goal is a conditional statement,
we add the antecedent to the givens list and make the consequent the goal. We
will also write out the definition of⊆in the new goal to show what its logical
form is.
Givens Goal
A + B = A ∀ x ( x ∈ A → x ∈ B )
```

```
Now the goal has the form∀ x ( P ( x )→ Q ( x )), where P ( x ) is the statement
x ∈ A and Q ( x ) is the statement x ∈ B. We therefore let x be arbitrary, assume
x ∈ A , and prove x ∈ B :
Givens Goal
A + B = A x ∈ B
x ∈ A
```

```
Combining the proof strategies we have used, we see that the final proof will
have this form:
```

```
Suppose A + B = A.
Let x be arbitrary.
Suppose x ∈ A.
[Proof of x ∈ B goes here.]
Therefore x ∈ A → x ∈ B.
Since x was arbitrary, we can conclude that∀ x ( x ∈ A → x ∈ B ), so
A ⊆ B.
Therefore, if A + B = A then A ⊆ B.
```

As discussed earlier, when we write up the final proof we can skip the sentence
“Let _x_ be arbitrary,” and we can also skip some or all of the last three sentences.
We have now reached the point at which we can analyze the logical form of
the goal no further. Fortunately, when we look at the givens, we discover that
the goal follows easily. Since _x_ ∈ _A_ and _A_ + _B_ = _A_ , it follows that _x_ ∈ _A_ + _B_ ,

112 _Proofs_

so _x_ ∈ _B_. (In this last step we are using the definition of+: _x_ ∈ _A_ + _B_ means
_x_ ∈ _A_ and _x_ ∈ _B_ .)

_Solution_

**Theorem.** _Suppose A and B are sets. If A_ + _B_ = _A then A_ ⊆ _B.
Proof._ Suppose _A_ + _B_ = _A_ , and suppose _x_ ∈ _A_. Then since _A_ + _B_ = _A_ , _x_ ∈
_A_ + _B_ , so _x_ ∈ _B_. Since _x_ was an arbitrary element of _A_ , we can conclude
that _A_ ⊆ _B_. 

Proving a goal of the form∃ _x P_ ( _x_ ) also involves introducing a new variable _x_
into the proof and proving _P_ ( _x_ ), but in this case _x_ will not be arbitrary. Because
you only need to prove that _P_ ( _x_ ) is true for _at least one x_ , it suffices to assign
a particular value to _x_ and prove _P_ ( _x_ ) for this one value of _x_.

**To prove a goal of the form** ∃ _x P_ ( _x_ ) **:**
Try to find a value of _x_ for which you think _P_ ( _x_ ) will be true. Then start
your proof with “Let _x_ =(the value you decided on)” and proceed to prove
_P_ ( _x_ ) for this value of _x_. Once again, _x_ should be a new variable. If the letter
_x_ is already being used in the proof for some other purpose, then you should
choose an unused variable, say _y_ , and rewrite the goal in the equivalent form
∃ _yP_ ( _y_ ). Now proceed as before by starting your proof with “Let _y_ =(the value
you decided on)” and prove _P_ ( _y_ ).

_Scratch work_

Before using strategy:

```
Givens Goal
— ∃ x P ( x )
—
```

After using strategy:

```
Givens Goal
— P ( x )
—
x =(the value you decided on)
```

_Form of final proof:_

```
Let x =(the value you decided on).
[Proof of P ( x ) goes here.]
Thus,∃ x P ( x ).
```

_Proofs Involving Quantifiers_ 113
Finding the right value to use for _x_ may be difficult in some cases. One
method that is sometimes helpful is to assume that _P_ ( _x_ ) is true and then see
if you can figure out what _x_ must be, based on this assumption. If _P_ ( _x_ ) is an
equation involving _x_ , this amounts to solving the equation for _x_. However, if
this doesn’t work, you may use any other method you please to try to find a
value to use for _x_ , including trial-and-error and guessing. The reason you have
such freedom with this step is that _the reasoning you use to find a value for x
will not appear in the final proof_. This is because of our rule that a proof should
only contain the reasoning needed to justify the conclusion of the proof, not
an explanation of how you thought of that reasoning. To justify the conclusion
that∃ _x P_ ( _x_ ) is true it is only necessary to verify that _P_ ( _x_ ) comes out true when
_x_ is assigned some particular value. How you thought of that value is your own
business, and not part of the justification of the conclusion.

**Example 3.3.3.** Prove that for every real number _x_ , if _x_ >0 then there is a
real number _y_ such that _y_ ( _y_ +1)= _x_.

_Scratch work_

In symbols, our goal is∀ _x_ ( _x_ > 0 → ∃ _y_ [ _y_ ( _y_ +1)= _x_ ]), where the variables
_x_ and _y_ in this statement are understood to range overR. We therefore start by
letting _x_ be an arbitrary real number, and we then assume that _x_ >0 and try
to prove that∃ _y_ [ _y_ ( _y_ +1)= _x_ ]. Thus, we now have the following given and
goal:

```
Givens Goal
x > 0 ∃ y [ y ( y +1)= x ]
```

Because our goal has the form ∃ _yP_ ( _y_ ), where _P_ ( _y_ ) is the statement
_y_ ( _y_ +1)= _x_ , according to our strategy we should try to find a value of _y_
for which _P_ ( _y_ ) is true. In this case we can do it by solving the equation
_y_ ( _y_ +1)= _x_ for _y_. It’s a quadratic equation and can be solved using the
quadratic formula:

```
y ( y +1)= x ⇒ y^2 + y - x = 0 ⇒ y =
```

#### - 1 ±

#### √

```
1 + 4 x
2
```

#### 

Note that

#### √

1 + 4 _x_ is defined, since we have _x_ >0 as a given. We have actually
found two solutions for _y_ , but to prove that∃ _y_ [ _y_ ( _y_ +1)= _x_ ] we only need
to exhibit one value of _y_ that makes the equation _y_ ( _y_ +1)= _x_ true. Either
of the two solutions could be used in the proof. We will use the solution
_y_ =(- 1 +

#### √

```
1 + 4 x )/2.
```

114 _Proofs_

_The steps we’ve used to solve for y should not appear in the final proof._ In the
final proof we will simply say “Let _y_ =(- 1 +

#### √

1 + 4 _x_ )/2” and then prove
that _y_ ( _y_ +1)= _x_. In other words, the final proof will have this form:

```
Let x be an arbitrary real number.
Suppose x >0.
Let y =(- 1 +
```

#### √

```
1 + 4 x )/2.
[Proof of y ( y +1)= x goes here.]
Thus,∃ y [ y ( y +1)= x ].
Therefore x > 0 → ∃ y [ y ( y +1)= x ].
Since x was arbitrary, we can conclude that∀ x ( x > 0 → ∃ y [ y ( y +1)
= x ]).
```

```
To see what must be done to fill in the remaining gap in the proof, we add
y =(- 1 +
```

#### √

```
1 + 4 x )/2 to the givens list and make y ( y +1)= x the goal:
```

```
Givens Goal
x > 0 y ( y +1)= x
```

```
y =
```

#### - 1 +

#### √

1 + 4 _x_
2
We can now prove that the equation _y_ ( _y_ +1)= _x_ is true by simply sub-
stituting (- 1 +

#### √

1 + 4 _x_ )/2 for _y_ and verifying that the resulting equation is
true.

_Solution_

**Theorem.** _For every real number x, if x_ > 0 _then there is a real number y such
that y_ ( _y_ +1)= _x.
Proof._ Let _x_ be an arbitrary real number, and suppose _x_ >0. Let

```
y =
```

#### - 1 +

#### √

```
1 + 4 x
2
```

which is defined since _x_ >0. Then,

```
y ( y +1)=
```

#### (

#### - 1 +

#### √

```
1 + 4 x
2
```

#### )

#### ·

#### (

#### - 1 +

#### √

```
1 + 4 x
2
```

#### + 1

#### )

#### =

#### (√

```
1 + 4 x - 1
2
```

#### )

#### ·

#### (√

```
1 + 4 x + 1
2
```

#### )

#### =

```
1 + 4 x - 1
4
```

#### =

```
4 x
4
```

```
= x. 
```

```
Proofs Involving Quantifiers 115
Sometimes when you’re proving a goal of the form∃ yQ ( y ) you won’t
be able to tell just by looking at the statement Q ( y ) what value you should
plug in for y. In this case you may want to look more closely at the givens
to see if they suggest a value to use for y. In particular, a given of the form
∃ x P ( x ) may be helpful in this situation. This given says that an object with a
certain property exists. It is probably a good idea to imagine that a particular
object with this property has been chosen and to introduce a new variable,
say x 0 , into the proof to stand for this object. Thus, for the rest of the proof
you will be using x 0 to stand for some particular object, and you can assume
that with x 0 standing for this object, P ( x 0 ) is true. In other words, you
can add P ( x 0 ) to your givens list. This object x 0 , or something related to
it, might turn out to be the right thing to plug in for y to make Q ( y ) come out true.
```

```
To use a given of the form ∃ x P ( x ) :
Introduce a new variable x 0 into the proof to stand for an object for which
P ( x 0 ) is true. This means that you can now assume that P ( x 0 ) is true. Logicians
call this rule of inference existential instantiation.
```

Note that using a given of the form∃ _x P_ ( _x_ ) is very different from proving a
goal of the form∃ _x P_ ( _x_ ), because when using a given of the form∃ _x P_ ( _x_ ), _you
don’t get to choose a particular value to plug in for x_. You can assume that _x_ 0
stands for some object for which _P_ ( _x_ 0 ) is true, but you can’t assume anything
else about _x_ 0. On the other hand, a given of the form∀ _x P_ ( _x_ ) says that _P_ ( _x_ )
would be true _no matter what_ value is assigned to _x_. You can therefore _choose
any value you wish_ to plug in for _x_ and use this given to conclude that _P_ ( _x_ ) is
true.

**To use a given of the form** ∀ _x P_ ( _x_ ) **:**
You can plug in any value, say _a_ , for _x_ and use this given to conclude that
_P_ ( _a_ ) is true. This rule is called _universal instantiation_.
Usually, if you have a given of the form∃ _x P_ ( _x_ ), you should apply existen-
tial instantiation to it immediately. On the other hand, you won’t be able to
apply universal instantiation to a given of the form∀ _x P_ ( _x_ ) unless you have
a particular value _a_ to plug in for _x_ , so you might want to wait until a likely
choice for _a_ pops up in the proof. For example, consider a given of the form
∀ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )). You can use this given to conclude that _P_ ( _a_ )→ _Q_ ( _a_ ) for
any _a_ , but according to our rule for using givens that are conditional state-
ments, this conclusion probably won’t be very useful unless you know either
_P_ ( _a_ ) or not  _Q_ ( _a_ ). You should probably wait until an object _a_ appears in the proof

116 _Proofs_

for which you know either _P_ ( _a_ ) or not  _Q_ ( _a_ ), and plug this _a_ in for _x_ when it
appears.
We’ve already used this technique in some of our earlier proofs when dealing
with givens of the form _A_ ⊆ _B_. For instance, in Example 3.2.5 we used the
givens _A_ ⊆ _B_ and _a_ ∈ _A_ to conclude that _a_ ∈ _B_. The justification for this rea-
soning is that _A_ ⊆ _B_ means∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ ), so by universal instantiation
we can plug in _a_ for _x_ and conclude that _a_ ∈ _A_ → _a_ ∈ _B_. Since we also know
_a_ ∈ _A_ , it follows by modus ponens that _a_ ∈ _B_.

**Example 3.3.4.** SupposeFandGare families of sets andF+G=∅. Prove
that+F⊆ , G.

_Scratch work_

Our first step in analyzing the logical form of the goal is to write out the meaning
of the subset symbol, which gives us the statement∀ _x_ ( _x_ ∈ + F→ _x_ ∈ , G).
We could go further with this analysis by writing out the definitions of union
and intersection, but the part of the analysis that we have already done will be
enough to allow us to decide how to get started on the proof. The definitions
of union and intersection will be needed later in the proof, but we will wait
until they are needed before filling them in. When analyzing the logical forms
of givens and goals in order to figure out a proof, it is usually best to do only
as much of the analysis as is needed to determine the next step of the proof.
Going further with the logical analysis usually just introduces unnecessary
complication, without providing any benefit.
Because the goal means∀ _x_ ( _x_ ∈ + F→ _x_ ∈ , G), we let _x_ be arbitrary,
assume _x_ ∈ + F, and try to prove _x_ ∈ , G.

```
Givens Goal
F+G=∅ x ∈ , G
x ∈ + F
```

The new goal means∃ _A_ ∈G( _x_ ∈ _A_ ), so to prove it we should try to find a
value that will “work” for _A_. Just looking at the goal doesn’t make it clear how
to choose _A_ , so we look more closely at the givens. We begin by writing them
out in logical symbols:

```
Givens Goal
∃ A ( A ∈F+G) ∃ A ∈G( x ∈ A )
∀ A ∈F( x ∈ A )
```

The second given starts with∀ _A_ , so we may not be able to use this given
until a likely value to plug in for _A_ pops up during the course of the proof. In

```
Proofs Involving Quantifiers 117
```

particular, we should keep in mind that if we ever come across an element ofF
while trying to figure out the proof, we can plug it in for _A_ in the second given
and conclude that it contains _x_ as an element. The first given, however, starts
with∃ _A_ , so we should use it immediately. It says that there is some object that
is an element ofF+G. By existential instantiation, we can introduce a name,
say _A_ 0 , for this object. Thus, we can treat _A_ 0 ∈F+Gas a given from now on.
Because we now have a name, _A_ 0 , for a particular element ofF+G, it would
be redundant to continue to discuss the given statement∃ _A_ ( _A_ ∈F+G), so we
will drop it from our list of givens. Since our new given _A_ 0 ∈F+Gmeans
_A_ 0 ∈Fand _A_ 0 ∈G, we now have the following situation:

```
Givens Goal
A 0 ∈F ∃ A ∈G( x ∈ A )
A 0 ∈G
∀ A ∈F( x ∈ A )
```

If you’ve been paying close attention, you should know what the next step
should be. We decided before to keep our eyes open for any elements ofFthat
might come up during the proof, because we might want to plug them in for _A_
in the last given. An element ofFhas come up: _A_ 0 !Plugging _A_ 0 in for _A_ in
the last given, we can conclude that _x_ ∈ _A_ 0. Any conclusions can be treated in
the future as givens, so you can add this statement to the givens column if you
like.
Remember that we decided to look at the givens because we didn’t know
what value to assign to _A_ in the goal. What we need is a value for _A_ that is inG
and that will make the statement _x_ ∈ _A_ come out true. Has this consideration
of the givens suggested a value to use for _A_? Yes !Use _A_ = _A_ 0.
Although we translated the given statements _x_ ∈ + F, _x_ ∈ , G, and F+
G=∅ into logical symbols in order to figure out how to use them in the
proof, these translations are not usually written out when the proof is written
up in final form. In the final proof we just write these statements in their original
form and leave it to the reader of the proof to work out their logical forms in
order to follow our reasoning.

_Solution_

**Theorem.** _Suppose_ F _and_ G _are families of sets, and_ F+G=∅_. Then_
+F⊆ , G_.
Proof._ Suppose _x_ ∈ + F. SinceF+G=∅, we can let _A_ 0 be an element of
F+G. Thus, _A_ 0 ∈Fand _A_ 0 ∈G. Since _x_ ∈ + Fand _A_ 0 ∈F, it follows that
_x_ ∈ _A_ 0. But we also know that _A_ 0 ∈G, so we can conclude that _x_ ∈ , G. 

118 _Proofs_

Proofs involving the quantifiers _for all_ and _there exists_ are often difficult for
them.
Thatlastsentenceconfusedyou,didn’tit?You’reprobablywondering,“Who
are _they_ ?” Readers of your proofs will experience the same sort of confusion
if you use variables without explaining what they stand for. Beginning proof-
writers are sometimes careless about this, and that’s why proofs involving the
quantifiers _for all_ and _there exists_ are often difficult for them. (It made more
sense that time, didn’t it?) When you use the strategies we’ve discussed in this
section, you’ll be introducing new variables into your proof, and when you
do this, you must always be careful to make it clear to the reader what they
stand for.
For example, if you were proving a goal of the form∀ _x_ ∈ _A P_ ( _x_ ), you would
probably start by introducing a variable _x_ to stand for an arbitrary element of
_A_. Your reader won’t know what _x_ means, though, unless you begin your proof
with “Let _x_ be an arbitrary element of _A_ ,” or “Suppose _x_ ∈ _A_ .” Of course,
you must be clear in your own mind about what _x_ stands for. In particular,
because _x_ is to be arbitrary, you must be careful not to assume anything about
_x_ other than the fact that _x_ ∈ _A_. It might help to think of _x_ as being chosen
by _someone else_ ; you have no control over which element of _A_ they’ll pick.
Using a given of the form∃ _x P_ ( _x_ ) is similar. This given tells you that you
can introduce a new variable _x_ 0 into the proof to stand for some object for
which _P_ ( _x_ 0 ) is true, but you cannot assume anything else about _x_ 0. On the
other hand, if you are _proving_ ∃ _x P_ ( _x_ ), your proof will probably start “Let
_x_ =... ” This time _you_ get to choose the value of _x_ , and you must tell the
reader explicitly that you are choosing the value of _x_ and what value you have
chosen.
It’s also important, when you’re introducing a new variable _x_ , to be sure you
know what _kind_ of object _x_ is. Is it a number? a set? a function? a matrix? You’d
better not write _a_ ∈ _X_ unless _X_ is a set, for example. If you aren’t careful about
this,youmightendupwritingnonsense.Youalsosometimesneedtoknowwhat
kind of object a variable stands for to figure out the logical form of a statement
involving that variable. For example, _A_ = _B_ means∀ _x_ ( _x_ ∈ _A_ ↔ _x_ ∈ _B_ ) if _A_
and _B_ are sets, but not if they’re numbers.
The most important thing to keep in mind about introducing variables into
a proof is simply the fact that variables must always be introduced before they
are used. If you make a statement about _x_ (i.e., a statement in which _x_ occurs
as a free variable) without first explaining what _x_ stands for, a reader of your
proof won’t know what you’re talking about – and there’s a good chance that
you won’t know what you’re talking about either!

```
Proofs Involving Quantifiers 119
Because proofs involving quantifiers may require more practice than the
other proofs we have discussed so far, we end this section with two more
examples.
```

```
Example 3.3.5. Suppose B is a set andFis a family of sets. Prove that if
,F⊆ B thenF⊆P( B ).
```

_Scratch Work_
We assume,F⊆ _B_ and try to proveF⊆P( _B_ ). Because this goal means
∀ _x_ ( _x_ ∈F→ _x_ ∈P( _B_ )), we let _x_ be arbitrary, assume _x_ ∈F, and set _x_ ∈
P( _B_ ) as our goal. Recall thatFis a family of sets, so since _x_ ∈F, _x_ is a set.
Thus, we now have the following givens and goal:

_Givens Goal_
,F⊆ _B x_ ∈P( _B_ )
_x_ ∈F
To figure out how to prove this goal, we must use the definition of power set.
The statement _x_ ∈P( _B_ ) means _x_ ⊆ _B_ , or in other words∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _B_ ).
We must therefore introduce another arbitrary object into the proof. We let _y_
be arbitrary, assume _y_ ∈ _x_ , and try to prove _y_ ∈ _B_.
_Givens Goal_
,F⊆ _B y_ ∈ _B
x_ ∈F
_y_ ∈ _x_
The goal can be analyzed no further, so we must look more closely at the
givens. Our goal is _y_ ∈ _B_ , and the only given that even mentions _B_ is the first.
In fact, the first given would enable us to reach this goal, if only we knew that
_y_ ∈ , F. This suggests that we might try treating _y_ ∈ , Fas our goal. If we can
reach this goal, then we can just add one more step, applying the first given,
and the proof will be done.
_Givens Goal_
,F⊆ _B y_ ∈ , F
_x_ ∈F
_y_ ∈ _x_
Once again, we have a goal whose logical form can be analyzed, so we use
the form of the goal to guide our strategy. The goal means∃ _A_ ∈F( _y_ ∈ _A_ ), so
to prove it we must find a set _A_ such that _A_ ∈Fand _y_ ∈ _A_. Looking at the
givens, we see that _x_ is such a set, so the proof is done.

120 _Proofs_

_Solution_

**Theorem.** _Suppose B is a set and_ F _is a family of sets. If_ ,F⊆ _B then_
F⊆P( _B_ )_.
Proof._ Suppose,F⊆ _B_. Let _x_ be an arbitrary element ofF. Let _y_ be an
arbitrary element of _x_. Since _y_ ∈ _x_ and _x_ ∈F, clearly _y_ ∈ , F. But then since
,F⊆ _B_ , _y_ ∈ _B_. Since _y_ was an arbitrary element of _x_ , we can conclude that
_x_ ⊆ _B_ , so _x_ ∈P( _B_ ). But _x_ was an arbitrary element ofF, so this shows that
F⊆P( _B_ ), as required. 

This is probably the most complex proof we’ve done so far. Read it again
and make sure you understand its structure and the purpose of every sentence.
Isn’t it remarkable how much logical complexity has been packed into just a
few lines?
It is not uncommon for a short proof to have such a rich logical structure.
This efficiency of exposition is one of the most attractive features of proofs, but
it also often makes them difficult to read. Although we’ve been concentrating
so far on _writing_ proofs, it is also important to learn how to _read_ proofs written
by other people. To give you some practice with this, we present our last proof
in this section without the scratch work. See if you can follow the structure of
the proof as you read it. We’ll provide a commentary after the proof that should
help you to understand it.
For this proof we need the following definition: For any integers _x_ and _y_ ,
we’ll say that _x divides y_ (or _y is divisible by x_ ) if ∃ _k_ ∈Z( _kx_ = _y_ ). We use the
notation _x_ | _y_ to mean “ _x_ divides _y_ .” For example, 4|20, since 5· 4 =20.

**Theorem 3.3.6.** _For all integers a, b, and c, if a_ | _b and b_ | _c then a_ | _c.
Proof._ Let _a_ , _b_ , and _c_ be arbitrary integers and suppose _a_ | _b_ and _b_ | _c_. Since
_a_ | _b_ , we can choose some integer _m_ such that _ma_ = _b_. Similarly, since _b_ | _c_ ,
we can choose an integer _n_ such that _nb_ = _c_. Therefore _c_ = _nb_ = _nma_ , so
since _nm_ is an integer, _a_ | _c_. 

_Commentary._ The theorem says∀ _a_ ∈Z∀ _b_ ∈Z∀ _c_ ∈Z( _a_ | _b_ and  _b_ | _c_ → _a_ | _c_ ),
so the most natural way to proceed is to let _a_ , _b_ , and _c_ be arbitrary integers,
assume _a_ | _b_ and _b_ | _c_ , and then prove _a_ | _c_. The first sentence of the proof indi-
cates that this strategy is being used, so the goal for the rest of the proof must
be to prove that _a_ | _c_. The fact that this is the goal for the rest of the proof is not
explicitly stated. You are expected to figure this out for yourself by using your
knowledge of proof strategies. You might even want to make a givens and goal
list to help you keep track of what is known and what remains to be proven as

```
Proofs Involving Quantifiers 121
```

you continue to read the proof. At this point in the proof, the list would look
like this:

```
Givens Goal
a , b ,and c are integers a | c
a | b
b | c
```

Because the new goal means∃ _k_ ∈Z( _ka_ = _c_ ), the proof will probably pro-
ceed by finding an integer _k_ such that _ka_ = _c_. As with many proofs of existential
statements, the first step in finding such a _k_ involves looking more closely at the
givens. The next sentence of the proof uses the given _a_ | _b_ to conclude that we
can choose an integer _m_ such that _ma_ = _b_. The proof doesn’t say what rule of
inference justifies this. It is up to you to figure it out by working out the logical
form of the given statement _a_ | _b_ , using the definition of _divides_. Because this
given means∃ _k_ ∈Z( _ka_ = _b_ ), you should recognize that the rule of inference
being used is existential instantiation. Existential instantiation is also used in
the next sentence of the proof to justify choosing an integer _n_ such that _nb_ = _c_.
The equations _ma_ = _b_ and _nb_ = _c_ can now be added to the list of givens.
Some steps have also been skipped in the last sentence of the proof. We
expected that the goal _a_ | _c_ would be proven by finding an integer _k_ such that
_ka_ = _c_. From the equation _c_ = _nma_ and the fact that _nm_ is an integer, it follows
that _k_ = _nm_ will work, but the proof doesn’t explicitly say that this value of
_k_ is being used; in fact, the variable _k_ is not mentioned at all in the proof. Of
course, the variable _k_ is not mentioned in the statement of the theorem either.
It is not uncommon for a proof of an existential statement to be written in this
way, especially when, as in this case, the goal is not written out explicitly in the
statement of the theorem as an existential statement. In this case, the existential
nature of the goal became apparent only when we filled in the definition of
_divides_.

```
Exercises
```

Note: Exercises marked with the symbolpdcan be done with Proof Designer.
For more information about Proof Designer, see Appendix 2.

```
∗1. In exercise 7 of Section 2.2 you used logical equivalences to show that
∃ x ( P ( x )→ Q ( x )) is equivalent to∀ x P ( x )→ ∃ x Q ( x ). Now use the
methods of this section to prove that if∃ x ( P ( x )→ Q ( x )) is true, then
∀ x P ( x )→ ∃ x Q ( x ) is true. (Note: The other direction of the equivalence
is quite a bit harder to prove. See exercise 29 of Section 3.5.)
```

122 _Proofs_

2. Prove that if _A_ and _B_ \ _C_ are disjoint, then _A_ + _B_ ⊆ _C_.
∗3. Prove that if _A_ ⊆ _B_ \ _C_ then _A_ and _C_ are disjoint.
pd4. Suppose _A_ ⊆P( _A_ ). Prove thatP( _A_ )⊆P(P( _A_ )).
5. The hypothesis of the theorem proven in exercise 4 is _A_ ⊆P( _A_ ).
(a) Can you think of a set _A_ for which this hypothesis is true?
(b) Can you think of another?
6. Suppose _x_ is a real number.
(a) Prove that if _x_ =1 then there is a real number _y_ such that _yy_ +-^12 = _x_.
(b) Prove that if there is a real number _y_ such that _yy_ +-^12 = _x_ , then _x_ =1.
∗7. Prove that for every real number _x_ , if _x_ >2 then there is a real number
_y_ such that _y_ +^1 _y_ = _x_.
pd8. Prove that ifFis a family of sets and _A_ ∈F, then _A_ ⊆ , F.
∗9. Prove that ifFis a family of sets and _A_ ∈F, then+F⊆ _A_.
10. Suppose thatFis a nonempty family of sets, _B_ is a set, and∀ _A_ ∈F( _B_ ⊆
_A_ ). Prove that _B_ ⊆ + F.
11. Suppose thatFis a family of sets. Prove that if∅∈Fthen+F=∅.
pd∗12. SupposeFandGare families of sets. Prove that ifF⊆Gthen,F⊆
,G.
13. SupposeFandGare nonempty families of sets. Prove that ifF⊆G
then+G⊆ + F.
∗14. Suppose { _Ai_ | _i_ ∈ _I_ } is an indexed family of sets. Prove that
, _i_ ∈ _I_ P( _Ai_ )⊆P(, _i_ ∈ _IAi_ ). (Hint: First make sure you know what all
the notation means!)
15. Suppose{ _Ai_ | _i_ ∈ _I_ }is an indexed family of sets and _I_ =∅. Prove that

+ _i_ ∈ _IAi_ ∈ + _i_ ∈ _I_ P( _Ai_ ).
pd16. Prove the converse of the statement proven in Example 3.3.5. In other
words, prove that ifF⊆P( _B_ ) then,F⊆ _B_.
∗17. SupposeFandGare nonempty families of sets, and every element of
Fis a subset of every element ofG. Prove that,F⊆ + G.

18. In this problem all variables range overZ, the set of all integers.
(a) Prove that if _a_ | _b_ and _a_ | _c_ , then _a_ |( _b_ + _c_ ).
(b) Prove that if _ac_ | _bc_ and _c_ =0, then _a_ | _b_.
19. (a) Prove that for all real numbers _x_ and _y_ there is a real number _z_ such
that _x_ + _z_ = _y_ - _z_.
(b) Would the statement in part (a) be correct if “real number” were
changed to “integer”? Justify your answer.
∗20. Consider the following theorem:

```
Theorem. For every real number x , x^2 ≥ 0.
What’s wrong with the following proof of the theorem?
```

```
Proofs Involving Quantifiers 123
Proof. Suppose not. Then for every real number x , x^2 <0. In particular,
plugging in x =3 we would get 9<0, which is clearly false. This
contradiction shows that for every number x , x^2 ≥0. 
```

21. Consider the following incorrect theorem:

```
Incorrect Theorem. If ∀ x ∈ A ( x =0) and A ⊆ B then ∀ x ∈ B ( x
=0).
```

(a) What’s wrong with the following proof of the theorem?
_Proof._ Let _x_ be an arbitrary element of _A_. Since∀ _x_ ∈ _A_ ( _x_ =0),
we can conclude that _x_ =0. Also, since _A_ ⊆ _B_ , _x_ ∈ _B_. Since
_x_ ∈ _B_ , _x_ =0, and _x_ was arbitrary, we can conclude that∀ _x_ ∈
_B_ ( _x_ =0). 
(b) Find a counterexample to the theorem. In other words, find an ex-
ample of sets _A_ and _B_ for which the hypotheses of the theorem are
true but the conclusion is false.
∗22. Consider the following incorrect theorem:

```
Incorrect Theorem. ∃ x ∈R∀ y ∈R( xy^2 = y - x ).
```

```
What’s wrong with the following proof of the theorem?
```

```
Proof. Let x = y /( y^2 +1). Then
```

```
y - x = y -
```

```
y
y^2 + 1
```

#### =

```
y^3
y^2 + 1
```

#### =

```
y
y^2 + 1
```

```
· y^2 = xy^2. 
```

23. Consider the following incorrect theorem:

```
Incorrect Theorem. Suppose F and G are families of sets. If ,F and
,G are disjoint, then so are F and G.
```

```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose,Fand,Gare disjoint. SupposeFandGare not
disjoint. Then we can choose some set A such that A ∈Fand A ∈G.
Since A ∈F, by exercise 8, A ⊆ , F, so every element of A is in
,F. Similarly, since A ∈G, every element of A is in,G. But then
every element of A is in both,Fand,G, and this is impossible since
,Fand,Gare disjoint. Thus, we have reached a contradiction, so
FandGmust be disjoint. 
(b) Find a counterexample to the theorem.
```

124 _Proofs_

24. Consider the following putative theorem:

```
Theorem? For all real numbers x and y, x^2 + xy - 2 y^2 = 0.
```

```
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Let x and y be equal to some arbitrary real number r. Then
x^2 + xy - 2 y^2 = r^2 + r · r - 2 r^2 = 0.
Since x and y were both arbitrary, this shows that for all real numbers
x and y , x^2 + xy - 2 y^2 =0. 
```

```
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
∗25. Prove that for every real number x there is a real number y such that for
every real number z , yz =( x + z )^2 -( x^2 + z^2 ).
```

26. (a) Comparing the various rules for dealing with quantifiers in proofs,
    you should see a similarity between the rules for goals of the form
    ∀ _x P_ ( _x_ ) and givens of the form∃ _x P_ ( _x_ ). What is this similarity?
    What about the rules for goals of the form∃ _x P_ ( _x_ ) and givens of the
    form∀ _x P_ ( _x_ )?
(b) Can you think of a reason why these similarities might be expected?
(Hint: Think about how proof by contradiction works when the goal
starts with a quantifier.)

## 3.4 Proofs Involving Conjunctions and Biconditionals

The method for proving a goal of the form _P_ and  _Q_ is so simple it hardly seems
worth mentioning:

```
To prove a goal of the form P and  Q :
Prove P and Q separately.
```

In other words, a goal of the form _P_ and  _Q_ is treated as two separate goals:
_P_ , and _Q_. The same is true of givens of the form _P_ and  _Q_ :

**To use a given of the form** _P_ and  _Q_ **:**
Treat this given as two separate givens: _P_ , and _Q_.
We’ve already used these ideas, without mention, in some of our previous
examples. For example, the definition of the given _x_ ∈ _A_ \ _C_ in Example 3.2.3
was _x_ ∈ _A_ and  _x_ ∈/ _C_ , but we treated it as two separate givens: _x_ ∈ _A_ , and _x_ ∈/ _C_.

```
Proofs Involving Conjunctions and Biconditionals 125
Example 3.4.1. Suppose A ⊆ B , and A and C are disjoint. Prove that
A ⊆ B \ C.
```

```
Scratch work
```

_Givens Goal
A_ ⊆ _B A_ ⊆ _B_ \ _C
A_ + _C_ =∅
Analyzing the logical form of the goal, we see that it has the form∀ _x_ ( _x_ ∈
_A_ → _x_ ∈ _B_ \ _C_ ), so we let _x_ be arbitrary, assume _x_ ∈ _A_ , and try to prove that
_x_ ∈ _B_ \ _C_. The new goal _x_ ∈ _B_ \ _C_ means _x_ ∈ _B_ and  _x_ ∈/ _C_ , so according to
our strategy we should split this into two goals, _x_ ∈ _B_ and _x_ ∈/ _C_ , and prove
them separately.

```
Givens Goals
A ⊆ B x ∈ B
A + C =∅ x ∈/ C
x ∈ A
The final proof will have this form:
```

```
Let x be arbitrary.
Suppose x ∈ A.
[Proof of x ∈ B goes here.]
[Proof of x ∈/ C goes here.]
Thus, x ∈ B and  x ∈/ C , so x ∈ B \ C.
Therefore x ∈ A → x ∈ B \ C.
Since x was arbitrary,∀ x ( x ∈ A → x ∈ B \ C ), so A ⊆ B \ C.
```

The first goal, _x_ ∈ _B_ , clearly follows from the fact that _x_ ∈ _A_ and _A_ ⊆ _B_.
The second goal, _x_ ∈/ _C_ , follows from _x_ ∈ _A_ and _A_ + _C_ =∅. You can see
this by analyzing the logical form of the statement _A_ + _C_ =∅. It is a negative
statement, but it can be reexpressed as an equivalent positive statement:
_A_ + _C_ =∅is equivalent tonot ∃ _y_ ( _y_ ∈ _A_ and  _y_ ∈ _C_ ) (definitions of+and∅),
which is equivalent to∀ _y_ not ( _y_ ∈ _A_ and  _y_ ∈ _C_ ) (quantifier negation law),
which is equivalent to∀ _y_ ( _y_ ∈/ _A_ or  _y_ ∈/ _C_ ) (DeMorgan’s law),
which is equivalent to∀ _y_ ( _y_ ∈ _A_ → _y_ ∈/ _C_ ) (conditional law).
Plugging in _x_ for _y_ in this last statement, we see that _x_ ∈ _A_ → _x_ ∈/ _C_ , and since
we already know _x_ ∈ _A_ , we can conclude that _x_ ∈/ _C_.

```
Solution
```

```
Theorem. Suppose A ⊆ B, and A and C are disjoint. Then A ⊆ B \ C
```

126 _Proofs_

_Proof._ Suppose _x_ ∈ _A_. Since _A_ ⊆ _B_ , it follows that _x_ ∈ _B_ , and since _A_ and _C_
are disjoint, we must have _x_ ∈/ _C_. Thus, _x_ ∈ _B_ \ _C_. Since _x_ was an arbitrary
element of _A_ , we can conclude that _A_ ⊆ _B_ \ _C_. 

Using our strategies for working with conjunctions, we can now work out
the proper way to deal with statements of the form _P_ ↔ _Q_ in proofs. Because
_P_ ↔ _Q_ is equivalent to ( _P_ → _Q_ )and ( _Q_ → _P_ ), according to our strategies a
given or goal of the form _P_ ↔ _Q_ should be treated as two separate givens or
goals: _P_ → _Q_ , and _Q_ → _P_.

```
To prove a goal of the form P ↔ Q :
Prove P → Q and Q → P separately.
```

```
To use a given of the form P ↔ Q :
Treat this as two separate givens: P → Q , and Q → P.
```

This is illustrated in the next example, in which we use the following
definitions: An integer _x_ is _even_ if∃ _k_ ∈Z( _x_ = 2 _k_ ), and _x_ is _odd_ if∃ _k_ ∈
Z( _x_ = 2 _k_ +1). We also use the fact that every integer is either even or odd,
but not both. We’ll see a proof of this fact in Chapter 6.

**Example 3.4.2.** Suppose _x_ is an integer. Prove that _x_ is even iff _x_^2 is even.

_Scratch work_

The goal is ( _x_ is even)↔( _x_^2 is even), so we prove the two goals ( _x_ is even)→
( _x_^2 is even) and ( _x_^2 is even)→( _x_ is even) separately. For the first, we assume
that _x_ is even and prove that _x_^2 is even:

```
Givens Goal
x ∈Z x^2 is even
x is even
```

Writing out the definition of _even_ in both the given and the goal will reveal
their logical forms:

```
Givens Goal
x ∈Z ∃ k ∈Z( x^2 = 2 k )
∃ k ∈Z( x = 2 k )
```

Because the second given starts with∃ _k_ , we immediately use it and let _k_
stand for some particular integer for which the statement _x_ = 2 _k_ is true. Thus,

```
Proofs Involving Conjunctions and Biconditionals 127
```

we have two new given statements: _k_ ∈Z, and _x_ = 2 _k_.

```
Givens Goal
x ∈Z ∃ k ∈Z( x^2 = 2 k )
k ∈Z
x = 2 k
```

The goal starts with∃ _k_ , but since _k_ is already being used to stand for a
particular number, we cannot assign a new value to _k_ to prove the goal. We
must therefore switch to a different letter, say _j_. One way to understand this is
to think of rewriting the goal in the equivalent form∃ _j_ ∈Z( _x_^2 = 2 _j_ ). To prove
this goal we must come up with a value to plug in for _j_. It must be an integer,
and it must satisfy the equation _x_^2 = 2 _j_. Using the given equation _x_ = 2 _k_ , we
see that _x_^2 =(2 _k_ )^2 = 4 _k_^2 =2(2 _k_^2 ), so it looks like the right value to choose
for _j_ is _j_ = 2 _k_^2. Clearly 2 _k_^2 is an integer, so this choice for _j_ will work to
complete the proof of our first goal.
To prove the second goal ( _x_^2 is even)→( _x_ is even), we’ll prove the con-
trapositive ( _x_ is not even)→( _x_^2 is not even) instead. Since any integer is
either even or odd but not both, this is equivalent to the statement ( _x_ is odd)→
(x^2 is odd).

```
Givens Goal
x ∈Z x^2 is odd
x is odd
```

The steps are now quite similar to the first part of the proof. As before, we
begin by writing out the definition of _odd_ in both the second given and the
goal. This time, to avoid the conflict of variable names we ran into in the first
part of the proof, we use different names for the bound variables in the two
statements.

```
Givens Goal
x ∈Z ∃ j ∈Z( x^2 = 2 j +1)
∃ k ∈Z( x = 2 k +1)
```

Next we use the second given and let _k_ stand for a particular integer for
which _x_ = 2 _k_ +1.

```
Givens Goal
x ∈Z ∃ j ∈Z( x^2 = 2 j +1)
k ∈Z
x = 2 k + 1
```

128 _Proofs_

We must now find an integer _j_ such that _x_^2 = 2 _j_ +1. Plugging in 2 _k_ +1 for
_x_ we get _x_^2 =(2 _k_ +1)^2 = 4 _k_^2 + 4 _k_ + 1 =2(2 _k_^2 + 2 _k_ )+1, so _j_ = 2 _k_^2 + 2 _k_
looks like the right choice.
Before giving the final write-up of the proof, we should make a few explana-
tory remarks. The two conditional statements we’ve proven can be thought of
as representing the two directions→and←of the biconditional symbol↔in
the original goal. These two parts of the proof are sometimes labeled with the
symbols→and←. In each part, we end up proving a statement that asserts the
existence of a number with certain properties. We called this number _j_ in the
scratch work, but note that _j_ was not mentioned explicitly in the statement of
the problem. As in the proof of Theorem 3.3.6, we have chosen not to mention
_j_ explicitly in the final proof either.

_Solution_

**Theorem.** _Suppose x is an integer. Then x is even iff x_^2 _is even.
Proof._ (→) Suppose _x_ is even. Then for some integer _k_ , _x_ = 2 _k_. Therefore,
_x_^2 = 4 _k_^2 =2(2 _k_^2 ), so since 2 _k_^2 is an integer, _x_^2 is even. Thus, if _x_ is even
then _x_^2 is even.
(←) Suppose _x_ is odd. Then _x_ = 2 _k_ +1 for some integer _k_. Therefore,
_x_^2 =(2 _k_ +1)^2 = 4 _k_^2 + 4 _k_ + 1 =2(2 _k_^2 + 2 _k_ )+1, so since 2 _k_^2 + 2 _k_ is an
integer, _x_^2 is odd. Thus, if _x_^2 is even then _x_ is even. 

Using the proof techniques we’ve developed, we can now verify some of the
equivalences that we were only able to justify on intuitive grounds in Chapter

2. As an example of this, let’s prove that the formulas∀ _x_ not  _P_ ( _x_ ) andnot ∃ _x P_ ( _x_ )
are equivalent. To say that these formulas are equivalent means that they will
always have the same truth value. In other words, no matter what statement
    _P_ ( _x_ ) stands for, the statement∀ _x_ not  _P_ ( _x_ )↔ not ∃ _x P_ ( _x_ ) will be true. We can
prove this using our technique for proving biconditional statements.

**Example 3.4.3.** Prove that∀ _x_ not  _P_ ( _x_ )↔ not ∃ _x P_ ( _x_ ).

_Scratch work_

(→) We must prove∀ _x_ not  _P_ ( _x_ )→ not ∃ _x P_ ( _x_ ), so we assume∀ _x_ not  _P_ ( _x_ ) and try
to provenot ∃ _x P_ ( _x_ ). Our goal is now a negated statement, and reexpressing it
would require the use of the very equivalence that we are trying to prove!We
therefore fall back on our only other strategy for dealing with negative goals,
proof by contradiction. We now have the following situation:

```
Givens Goal
∀ x not  P ( x ) Contradiction
∃ x P ( x )
```

```
Proofs Involving Conjunctions and Biconditionals 129
The second given starts with an existential quantifier, so we use it immedi-
ately and let x 0 stand for some object for which the statement P ( x 0 ) is true.
But now plugging in x 0 for x in the first given we can conclude thatnot  P ( x 0 ),
which gives us the contradiction we need.
(←) For this direction of the biconditional we should assumenot ∃ x P ( x ) and
try to prove∀ x not  P ( x ). Because this goal starts with a universal quantifier, we
let x be arbitrary and try to provenot  P ( x ). Once again, we now have a negated
goal that can’t be reexpressed, so we use proof by contradiction:
Givens Goal
not ∃ x P ( x ) Contradiction
P ( x )
```

Our first given is also a negated statement, and this suggests that we could
get the contradiction we need by proving∃ _x P_ ( _x_ ). We therefore set this as our
goal.

_Givens Goal_
not ∃ _x P_ ( _x_ ) ∃ _x P_ ( _x_ )
_P_ ( _x_ )
To keep from confusing the _x_ that appears as a free variable in the second
given (the arbitrary _x_ introduced earlier in the proof) with the _x_ that appears
as a bound variable in the goal, you might want to rewrite the goal in the
equivalent form∃ _yP_ ( _y_ ). To prove this goal we have to find a value of _y_ that
makes _P_ ( _y_ ) come out true. But this is easy!Our second given, _P_ ( _x_ ), tells us
that our arbitrary _x_ is the value we need.

_Solution_

**Theorem.** ∀ _x_ not  _P_ ( _x_ )↔ not ∃ _x P_ ( _x_ )_.
Proof._ (→) Suppose∀ _x_ not  _P_ ( _x_ ), and suppose∃ _x P_ ( _x_ ). Then we can choose
some _x_ 0 such that _P_ ( _x_ 0 ) is true. But since∀ _x_ not  _P_ ( _x_ ), we can conclude that
not  _P_ ( _x_ 0 ), and this is a contradiction. Therefore∀ _x_ not  _P_ ( _x_ )→ not ∃ _x P_ ( _x_ ).
(←) Supposenot ∃ _x P_ ( _x_ ). Let _x_ be arbitrary, and suppose _P_ ( _x_ ). Since we
have a specific _x_ for which _P_ ( _x_ ) is true, it follows that∃ _x P_ ( _x_ ), which is a
contradiction. Therefore,not  _P_ ( _x_ ). Since _x_ was arbitrary, we can conclude that
∀ _x_ not  _P_ ( _x_ ), sonot ∃ _x P_ ( _x_ )→ ∀ _x_ not  _P_ ( _x_ ). 

Sometimes in a proof of a goal of the form _P_ ↔ _Q_ the steps in the proof of
_Q_ → _P_ are the same as the steps used to prove _P_ → _Q_ , but in reverse order.
In this case you may be able to simplify the proof by writing it as a string of
equivalences, starting with _P_ and ending with _Q_. For example, suppose you
found that you could prove _P_ → _Q_ by first assuming _P_ , then using _P_ to infer

130 _Proofs_

some other statement _R_ , and then using _R_ to deduce _Q_ ; and suppose that the
same steps could be used, in reverse order, to prove that _Q_ → _P_. In other
words, you could assume _Q_ , use this assumption to conclude that _R_ was true,
and then use _R_ to prove _P_. Since you would be asserting both _P_ → _R_ and
_R_ → _P_ , you could sum up these two steps by saying _P_ ↔ _R_. Similarly, the
other two steps of the proof tell you that _R_ ↔ _Q_. These two statements imply
the goal _P_ ↔ _Q_. Mathematicians sometimes present this kind of proof by
simply writing the string of equivalences

```
P iff R iff Q.
```

You can think of this as an abbreviation for “ _P_ iff _R_ and _R_ iff _Q_ (and therefore
_P_ iff _Q_ ).” This is illustrated in the next example.

**Example 3.4.4.** Suppose _A, B,_ and _C_ are sets. Prove that _A_ +( _B_ \ _C_ )=
( _A_ + _B_ )\ _C_.

_Scratch work_

As we saw in Chapter 2, the equation _A_ +( _B_ \ _C_ )=( _A_ + _B_ )\ _C_ means
∀ _x_ ( _x_ ∈ _A_ +( _B_ \ _C_ )↔ _x_ ∈( _A_ + _B_ )\ _C_ ), but it is also equivalent to
the statement [ _A_ +( _B_ \ _C_ )⊆( _A_ + _B_ )\ _C_ ]and [( _A_ + _B_ )\ _C_ ⊆ _A_ +( _B_ \ _C_ )].
This suggests two approaches to the proof. We could let _x_ be arbitrary and then
prove _x_ ∈ _A_ +( _B_ \ _C_ )↔ _x_ ∈( _A_ + _B_ )\ _C_ , or we could prove the two state-
ments _A_ +( _B_ \ _C_ )⊆( _A_ + _B_ )\ _C_ and ( _A_ + _B_ )\ _C_ ⊆ _A_ +( _B_ \ _C_ ). In fact,
almost every proof that two sets are equal will involve one of these two ap-
proaches. In this case we will use the first approach, so once we have introduced
our arbitrary _x_ , we will have an iff goal.
For the (→) half of the proof we assume _x_ ∈ _A_ +( _B_ \ _C_ ) and try to prove
_x_ ∈( _A_ + _B_ )\ _C_ :
_Givens Goal
x_ ∈ _A_ +( _B_ \ _C_ ) _x_ ∈( _A_ + _B_ )\ _C_
To see the logical forms of the given and goal, we write out their definitions
as follows:

```
x ∈ A +( B \ C ) iff x ∈ A and  x ∈ B \ C iff x ∈ A and  x ∈ B and  x ∈/ C ;
x ∈( A + B )\ C iff x ∈ A + B and  x ∈/ C iff x ∈ A and  x ∈ B and  x ∈/ C.
```

At this point it is clear that the given implies the goal, since the last steps
in both strings of equivalences turned out to be identical. In fact, it is also
clear that the reasoning involved in the (←) direction of the proof will be
exactly the same, but with the given and goal columns reversed. Thus, we

```
Proofs Involving Conjunctions and Biconditionals 131
might try to shorten the proof by writing it as a string of equivalences, starting
with x ∈ A +( B \ C ) and ending with x ∈( A + B )\ C. In this case, if we
start with x ∈ A +( B \ C ) and follow the first string of equivalences displayed
above, we come to a statement that is the same as the last statement in the
second string of equivalences. We can then continue by following the second
string of equivalences backward , ending with x ∈( A + B )\ C.
```

```
Solution
Theorem. Suppose A, B, and C are sets. Then A +( B \ C )=( A + B )\ C.
Proof. Let x be arbitrary. Then
```

```
x ∈ A +( B \ C ) iff x ∈ A and  x ∈ B \ C
iff x ∈ A and  x ∈ B and  x ∈/ C
iff x ∈( A + B )and  x ∈/ C
iff x ∈( A + B )\ C.
```

```
Thus,∀ x ( x ∈ A +( B \ C )↔ x ∈( A + B )\ C ),so A +( B \ C )=( A + B )\ C.

```

The technique of figuring out a sequence of equivalences in one order and
then writing it in the reverse order is used quite often in proofs. The order in
which the steps should be written in the final proof is determined by our rule
that an assertion should never be made until it can be justified. In particular,
if you are trying to prove _P_ ↔ _Q_ , it is wrong to start your write-up of the
proof with the unjustified statement _P_ ↔ _Q_ and then work out the meanings
of the two sides _P_ and _Q_ , showing that they are the same. You should instead
start with equivalences you can justify and string them together to produce a
justification of the goal _P_ ↔ _Q_ before you assert this goal. A similar technique
can sometimes be used to figure out proofs of equations, as the next example
shows.

**Example 3.4.5.** Prove that for any real numbers _a_ and _b_ ,

```
( a + b )^2 -4( a - b )^2 =(3 b - a )(3 a - b ).
```

```
Scratch work
```

```
The goal has the form∀ a ∀ b (( a + b )^2 -4( a - b )^2 =(3 b - a )(3 a - b )), so we
start by letting a and b be arbitrary real numbers and try to prove the equation.
```

132 _Proofs_

Multiplying out both sides gives us:

```
( a + b )^2 -4( a - b )^2 = a^2 + 2 ab + b^2 -4( a^2 - 2 ab + b^2 )
= - 3 a^2 + 10 ab - 3 b^2 ;
(3 b - a )(3 a - b )= 9 ab - 3 a^2 - 3 b^2 + ab = - 3 a^2 + 10 ab - 3 b^2.
```

Clearly the two sides are equal. The simplest way to write the proof of this
is to write a string of equalities starting with ( _a_ + _b_ )^2 -4( _a_ - _b_ )^2 and ending
with (3 _b_ - _a_ )(3 _a_ - _b_ ). We can do this by copying down the first string of
equalities displayed above, and then following it with the second line, written
backward.

_Solution_

**Theorem.** _For any real numbers a and b,_

```
( a + b )^2 -4( a - b )^2 =(3 b - a )(3 a - b ).
```

_Proof._ Let _a_ and _b_ be arbitrary real numbers. Then

```
( a + b )^2 -4( a - b )^2 = a^2 + 2 ab + b^2 -4( a^2 - 2 ab + b^2 )
= - 3 a^2 + 10 ab - 3 b^2
= 9 ab - 3 a^2 - 3 b^2 + ab =(3 b - a )(3 a - b ). 
```

We end this section by presenting another proof without preliminary scratch
work, but with a commentary to help you read the proof.

**Theorem 3.4.6.** _For every integer n_ , 6 | _n_ iff 2| _n and_ 3 | _n.
Proof._ Let _n_ be an arbitrary integer.
(→) Suppose 6| _n_. Then we can choose an integer _k_ such that 6 _k_ = _n_.
Therefore _n_ = 6 _k_ =2(3 _k_ ), so 2| _n_ , and similarly _n_ = 6 _k_ =3(2 _k_ ), so 3| _n_.
(←) Suppose 2| _n_ and 3| _n_. Then we can choose integers _j_ and _k_ such
that _n_ = 2 _j_ and _n_ = 3 _k_. Therefore 6( _j_ - _k_ )= 6 _j_ - 6 _k_ =3(2 _j_ )-2(3 _k_ )=
3 _n_ - 2 _n_ = _n_ , so 6 | _n_. 

_Commentary._ Thestatementtobeprovenis∀ _n_ ∈Z(6| _n_ ↔(2| _n_ and  3 | _n_ )),and
the most natural strategy for proving a goal of this form is to let _n_ be arbitrary
and then prove both directions of the biconditional separately. It should be clear
that this is the strategy being used in the proof.
For the left-to-right direction of the biconditional, we assume 6| _n_ and then
prove 2| _n_ and 3| _n_ , treating this as two separate goals. The introduction of

```
Proofs Involving Conjunctions and Biconditionals 133
the integer k is justified by existential instantiation, since the assumption 6| n
means∃ k ∈Z(6 k = n ). At this point in the proof we have the following givens
and goals:
```

```
Givens Goals
n ∈Z 2 | n
k ∈Z 3 | n
6 k = n
```

The first goal, 2| _n_ , means∃ _j_ ∈Z(2 _j_ = _n_ ), so we must find an integer _j_
such that 2 _j_ = _n_. Although the proof doesn’t say so explicitly, the equation
_n_ =2(3 _k_ ), which is derived in the proof, suggests that the value being used for
_j_ is _j_ = 3 _k_. Clearly, 3 _k_ is an integer (another step skipped in the proof), so this
choice for _j_ works. The proof of 3| _n_ is similar.
For the right-to-left direction we assume 2| _n_ and 3| _n_ and prove 6| _n_.
Once again, the introduction of _j_ and _k_ is justified by existential instantia-
tion. No explanation is given for why we should compute 6( _j_ - _k_ ), but a proof
need not provide such explanations. The reason for the calculation should be-
come clear when, surprisingly, it turns out that 6( _j_ - _k_ )= _n_. Such surprises
provide part of the pleasure of working with proofs. As in the first half of the
proof, since _j_ - _k_ is an integer, this shows that 6| _n_.

```
Exercises
```

```
∗1. Use the methods of this chapter to prove that∀ x ( P ( x )and  Q ( x )) is
equivalent to∀ x P ( x )and  ∀ x Q ( x ).
pd2. Prove that if A ⊆ B and A ⊆ C then A ⊆ B + C.
pd3. Suppose A ⊆ B. Prove that for every set C , C \ B ⊆ C \ A.
pd∗4. Prove that if A ⊆ B and A ⊆ C then B ⊆ C.
pd5. Prove that if A ⊆ B \ C and A =∅then B ⊆ C.
```

6. Prove that for any sets _A_ , _B_ , and _C_ , _A_ \( _B_ + _C_ )=( _A_ \ _B_ ),( _A_ \ _C_ ),
    by finding a string of equivalences starting with _x_ ∈ _A_ \( _B_ + _C_ ) and
    ending with _x_ ∈( _A_ \ _B_ ),( _A_ \ _C_ ). (See Example 3.4.4.)
pd∗7. Usethemethodsofthischaptertoprovethatforanysets _A_ and _B_ ,P( _A_ +
_B_ )=P( _A_ )+P( _B_ ).
pd8. Prove that _A_ ⊆ _B_ iffP( _A_ )⊆P( _B_ ).
∗9. Prove that if _x_ and _y_ are odd integers, then _xy_ is odd.
10. Prove that for every integer _n_ , _n_^3 is even iff _n_ is even.

134 _Proofs_

11. Consider the following putative theorem:
    **Theorem?** _Suppose m is an even integer and n is an odd integer. Then_
    _n_^2 - _m_^2 = _n_ + _m._
    (a) What’s wrong with the following proof of the theorem?
       _Proof._ Since _m_ is even, we can choose some integer _k_ such that
       _m_ = 2 _k_. Similarly, since _n_ is odd we have _n_ = 2 _k_ +1. Therefore
          _n_^2 - _m_^2 =(2 _k_ +1)^2 -(2 _k_ )^2 = 4 _k_^2 + 4 _k_ + 1 - 4 _k_^2 = 4 _k_ + 1
             =(2 _k_ +1)+(2 _k_ )= _n_ + _m_. 
    (b) Is the theorem correct? Justify your answer with either a proof or a
       counterexample.
∗12. Prove that∀ _x_ ∈R[∃ _y_ ∈R( _x_ + _y_ = _xy_ )↔ _x_ =1].
13. Prove that∃ _z_ ∈R∀ _x_ ∈R+[∃ _y_ ∈R( _y_ - _x_ = _y_ / _x_ )↔ _x_ = _z_ ].
pd14. Suppose _B_ is a set andFis a family of sets. Prove that,{ _A_ \ _B_ | _A_ ∈
F} ⊆ , (F\P( _B_ )).
∗15. SupposeFandGare nonempty families of sets and every element ofF
is disjoint from some element ofG. Prove that,Fand+Gare disjoint.
pd16. Prove that for any set _A_ , _A_ = , P( _A_ ).
pd∗17. SupposeFandGare families of sets.
(a) Prove that,(F+G)⊆(,F)+(,G).
(b) What’s wrong with the following proof that (,F)+(,G)⊆
,(F+G)?

```
Proof. Suppose x ∈(,F)+(,G). This means that x ∈ , F and
x ∈ , G, so ∃ A ∈F( x ∈ A ) and∃ A ∈G( x ∈ A ). Thus, we can
choose a set A such that A ∈F, A ∈G, and x ∈ A. Since A ∈Fand
A ∈G, A ∈F+G. Therefore∃ A ∈F+G( x ∈ A ), so x ∈ , (F+
G). Since x was arbitrary, we can conclude that (,F)+(,G)⊆
,(F+G). 
```

```
(c) Find an example of families of setsFandGfor which,(F+G)=
(,F)+(,G).
pd18. SupposeF and G are families of sets. Prove that (,F)+(,G)⊆
,(F+G) iff ∀ A ∈F∀ B ∈G( A + B ⊆ , (F+G)).
pd19. SupposeFandGare families of sets. Prove that,Fand,Gare disjoint
iff for all A ∈Fand B ∈G, A and B are disjoint.
pd20. SupposeFandGare families of sets.
(a) Prove that (,F)\(,G)⊆ , (F\G).
(b) What’s wrong with the following proof that,(F\G)⊆(,F)\
(,G)?
```

_Proofs Involving Conjunctions and Biconditionals_ 135
_Proof._ Suppose _x_ ∈ , (F\G). Then we can choose some _A_ ∈F\
Gsuchthat _x_ ∈ _A_ .Since _A_ ∈F\G, _A_ ∈Fand _A_ ∈/G.Since _x_ ∈ _A_
and _A_ ∈F, _x_ ∈ , F. Since _x_ ∈ _A_ and _A_ ∈/G, _x_ ∈ , / G. Therefore
_x_ ∈(,F)\(,G). 
(c) Prove that,(F\G)⊆(,F)\(,G) iff ∀ _A_ ∈(F\G)∀ _B_ ∈G( _A_ +
_B_ =∅).
(d) Find an example of families of setsFandGfor which,(F\G)=
(,F)\(,G).
pd∗21. SupposeFandGare families of sets. Prove that if,F⊆ , G, then there

```
is some A ∈Fsuch that for all B ∈G, A ⊆ B.
```

22. Suppose _B_ is a set,{ _Ai_ | _i_ ∈ _I_ }is an indexed family of sets, and _I_ =∅.
    (a) What proof strategies are used in the following proof that _B_ +
       (, _i_ ∈ _IAi_ )= , _i_ ∈ _I_ ( _B_ + _Ai_ )?
       _Proof._ Let _x_ be arbitrary. Suppose _x_ ∈ _B_ +(, _i_ ∈ _IAi_ ). Then _x_ ∈ _B_
       and _x_ ∈ , _i_ ∈ _IAi_ , so we can choose some _i_ 0 ∈ _I_ such that _x_ ∈ _Ai_ 0.
       Since _x_ ∈ _B_ and _x_ ∈ _Ai_ 0 , _x_ ∈ _B_ + _Ai_ 0. Therefore _x_ ∈ , _i_ ∈ _I_ ( _B_ +
          _Ai_ ).
             Now suppose _x_ ∈ , _i_ ∈ _I_ ( _B_ + _Ai_ ). Then we can choose some _i_ 0 ∈
          _I_ such that _x_ ∈ _B_ + _Ai_ 0. Therefore _x_ ∈ _B_ and _x_ ∈ _Ai_ 0. Since _x_ ∈
          _Ai_ 0 , _x_ ∈ , _i_ ∈ _IAi_. Since _x_ ∈ _B_ and _x_ ∈ , _i_ ∈ _IAi_ , _x_ ∈ _B_ +(, _i_ ∈ _IAi_ ).
             Since _x_ was arbitrary, we have shown that ∀ _x_ [ _x_ ∈ _B_ +
       (, _i_ ∈ _IAi_ )↔ _x_ ∈ , _i_ ∈ _I_ ( _B_ + _Ai_ )], so _B_ +(, _i_ ∈ _IAi_ )= , _i_ ∈ _I_ ( _B_ + _Ai_ ).
          
    (b) Prove that _B_ \(, _i_ ∈ _IAi_ )= + _i_ ∈ _I_ ( _B_ \ _Ai_ ).
    (c) Can you discover and prove a similar theorem about _B_ \(+ _i_ ∈ _IAi_ )?
       (Hint: Try to guess the theorem, and then try to prove it. If you can’t
       finish the proof, it might be because your guess was wrong. Change
       your guess and try again.)
*23. Suppose{ _Ai_ | _i_ ∈ _I_ }and{ _Bi_ | _i_ ∈ _I_ }are indexed families of sets and
_I_ =∅.
    (a) Prove that, _i_ ∈ _I_ ( _Ai_ \ _Bi_ )⊆(, _i_ ∈ _IAi_ )\(+ _i_ ∈ _IBi_ ).
    (b) Find an example for which, _i_ ∈ _I_ ( _Ai_ \ _Bi_ )=(, _i_ ∈ _IAi_ )\(+ _i_ ∈ _IBi_ ).
24. Suppose{ _Ai_ | _i_ ∈ _I_ }and{ _Bi_ | _i_ ∈ _I_ }are indexed families of sets.
    (a) Prove that, _i_ ∈ _I_ ( _Ai_ + _Bi_ )⊆(, _i_ ∈ _IAi_ )+(, _i_ ∈ _IBi_ ).
    (b) Find an example for which, _i_ ∈ _I_ ( _Ai_ + _Bi_ )=(, _i_ ∈ _IAi_ )+(, _i_ ∈ _IBi_ ).
25. Prove that for all integers _a_ and _b_ there is an integer _c_ such that _a_ | _c_
    and _b_ | _c_.
26. (a) Prove that for every integer _n_ , 15 | _n_ iff 3| _n_ and 5| _n_.
    (b) Prove that it is _not_ true that for every integer _n_ , 60 | _n_ iff 6| _n_ and
       10 | _n_.

136 _Proofs_

## 3.5 Proofs Involving Disjunctions

Suppose one of your givens in a proof has the form _P_ or  _Q_. This given tells
you that either _P_ or _Q_ is true, but it doesn’t tell you which. Thus, there are two
possibilities that you must take into account. One way to do the proof would
be to consider these two possibilities in turn. In other words, first assume that
_P_ is true and use this assumption to prove your goal. Then assume _Q_ is true
and give another proof that the goal is true. Although you don’t know which of
these assumptions is correct, the given _P_ or  _Q_ tells you that _one_ of them must
be correct. Whichever one it is, you have shown that it implies the goal. Thus,
the goal must be true.
The two possibilities that are considered separately in this type of proof –
the possibility that _P_ is true and the possibility that _Q_ is true – are called _cases_.
The given _P_ or  _Q_ justifies the use of these two cases by guaranteeing that these
cases cover all of the possibilities. Mathematicians say in this situation that the
cases are _exhaustive_. Any proof can be broken into two or more cases at any
time, as long as the cases are exhaustive.

**To use a given of the form** _P_ or  _Q_ **:**
Break your proof into cases. For case 1, assume that _P_ is true and use this
assumption to prove the goal. For case 2, assume _Q_ is true and give another
proof of the goal.

_Scratch work_

Before using strategy:

_Givens Goal
P_ or  _Q_ —
—
After using strategy:

_Case 1: Givens Goal
P_ —
—
_Case 2: Givens Goal
Q_ —
—
_Form of final proof:_

```
Case 1. P is true.
[Proof of goal goes here.]
```

```
Proofs Involving Disjunctions 137
Case 2. Q is true.
[Proof of goal goes here.]
Since we know P or  Q , these cases cover all the possibilities. Therefore
the goal must be true.
```

**Example 3.5.1.** Suppose that A, B, and C are sets. Prove that if _A_ ⊆ _C_ and
_B_ ⊆ _C_ then _A_ , _B_ ⊆ _C_.

_Scratch work_

We assume _A_ ⊆ _C_ and _B_ ⊆ _C_ and prove _A_ , _B_ ⊆ _C_. Writing out the goal
using logical symbols gives us the following givens and goal:

```
Givens Goal
A ⊆ C ∀ x ( x ∈ A , B → x ∈ C )
B ⊆ C
```

To prove the goal we let _x_ be arbitrary, assume _x_ ∈ _A_ , _B_ , and try to prove
_x_ ∈ _C_. Thus, we now have a new given _x_ ∈ _A_ , _B_ , which we write as _x_ ∈
_A_ or  _x_ ∈ _B_ , and our goal is now _x_ ∈ _C_.
_Givens Goal
A_ ⊆ _C x_ ∈ _C
B_ ⊆ _C
x_ ∈ _A_ or  _x_ ∈ _B_

Because the goal cannot be analyzed any further at this point, we look more
closely at the givens. The first given will be useful if we ever come across an
object that is an element of _A_ , since it would allow us to conclude immediately
that this object must also be an element of _C_. Similarly, the second given will
be useful if we come across an element of _B_. Keeping in mind that we should
watch for any elements of _A_ or _B_ that might come up, we move on to the third
given. Because this given has the form _P_ or  _Q_ , we try proof by cases. For the
first case we assume _x_ ∈ _A_ , and for the second we assume _x_ ∈ _B_. In the first
case we therefore have the following givens and goal:

```
Givens Goal
A ⊆ C x ∈ C
B ⊆ C
x ∈ A
```

We’ve already decided that if we ever come across an element of _A_ , we can
use the first given to conclude that it is also an element of _C_. Since we now
have _x_ ∈ _A_ as a given, we can conclude that _x_ ∈ _C_ , which is our goal. The

138 _Proofs_

reasoning for the second case is quite similar, using the second given instead
of the first.

_Solution_

**Theorem.** _Suppose that A, B, and C are sets. If A_ ⊆ _C and B_ ⊆ _C then A_ ,
_B_ ⊆ _C.
Proof._ Suppose _A_ ⊆ _C_ and _B_ ⊆ _C_ , and let _x_ be an arbitrary element of _A_ , _B_.
Then either _x_ ∈ _A_ or _x_ ∈ _B_.
_Case 1. x_ ∈ _A_. Then since _A_ ⊆ _C_ , _x_ ∈ _C_.
_Case 2. x_ ∈ _B_. Then since _B_ ⊆ _C_ , _x_ ∈ _C_.
Since we know that either _x_ ∈ _A_ or _x_ ∈ _B_ , these cases cover all the possi-
bilities, so we can conclude that _x_ ∈ _C_. Since _x_ was an arbitrary element of
_A_ , _B_ , this means that _A_ , _B_ ⊆ _C_. 

Note that the cases in this proof are not _exclusive_. In other words, it is possible
for both _x_ ∈ _A_ and _x_ ∈ _B_ to be true, so some values of _x_ might fall under both
cases. There is nothing wrong with this. The cases in a proof by cases must
cover all possibilities, but there is no harm in covering some possibilities more
than once. In other words, the cases must be exhaustive, but they need not be
exclusive.
Proof by cases is sometimes also helpful if you are proving a goal of the
form _P_ or  _Q_. If you can prove _P_ in some cases and _Q_ in others, then as long as
your cases are exhaustive you can conclude that _P_ or  _Q_ is true. This method
is particularly useful if one of the givens also has the form of a disjunction,
because then you can use the cases suggested by this given.

```
To prove a goal of the form P or  Q :
Break your proof into cases. In each case, either prove P or prove Q.
```

**Example 3.5.2.** Suppose that _A, B_ and _C_ are sets. Prove that _A_ \( _B_ \ _C_ )⊆
( _A_ \ _B_ ), _C_.

_Scratch work_

Because the goal is∀ _x_ ( _x_ ∈ _A_ \( _B_ \ _C_ )→ _x_ ∈( _A_ \ _B_ ), _C_ ), we let _x_ be ar-
bitrary, assume _x_ ∈ _A_ \( _B_ \ _C_ ), and try to prove _x_ ∈( _A_ \ _B_ ), _C_. Writing
these statements out in logical symbols gives us:

_Givens Goal
x_ ∈ _A_ and  not  ( _x_ ∈ _B_ and  _x_ ∈/ _C_ ) ( _x_ ∈ _A_ and  _x_ ∈/ _B_ )or  _x_ ∈ _C_
We split the given into two separate givens, _x_ ∈ _A_ andnot ( _x_ ∈ _B_ and  _x_ ∈/ _C_ ),
and since the second is a negated statement we use one of DeMorgan’s laws to

```
Proofs Involving Disjunctions 139
reexpress it as the positive statement x ∈/ B or  x ∈ C.
```

```
Givens Goal
x ∈ A ( x ∈ A and  x ∈/ B )or  x ∈ C
x ∈/ B or  x ∈ C
```

```
Now the second given and the goal are both disjunctions, so we’ll try consid-
ering the two cases x ∈/ B and x ∈ C suggested by the second given. According
to our strategy for proving goals of the form P or  Q , if in each case we can
either prove x ∈ A and  x ∈/ B or prove x ∈ C , then the proof will be complete.
For the first case we assume x ∈/ B.
Givens Goal
x ∈ A ( x ∈ A and  x ∈/ B )or  x ∈ C
x ∈/ B
```

```
In this case the goal is clearly true, because in fact we can conclude that
x ∈ A and  x ∈/ B. For the second case we assume x ∈ C , and once again the
goal is clearly true.
```

```
Solution
```

**Theorem.** _SupposethatA,B,andCaresets.Then A_ \( _B_ \ _C_ )⊆( _A_ \ _B_ ), _C.
Proof._ Suppose _x_ ∈ _A_ \( _B_ \ _C_ ). Then _x_ ∈ _A_ and _x_ ∈/ _B_ \ _C_. Since _x_ ∈/ _B_ \
_C_ , it follows that either _x_ ∈/ _B_ or _x_ ∈ _C_. We will consider these cases separately.
_Case 1. x_ ∈/ _B_. Then since _x_ ∈ _A_ , _x_ ∈ _A_ \ _B_ , so _x_ ∈( _A_ \ _B_ ), _C_.
_Case 2. x_ ∈ _C_. Then clearly _x_ ∈( _A_ \ _B_ ), _C_.
Since _x_ was an arbitrary element of _A_ \( _B_ \ _C_ ), we can conclude that _A_ \
( _B_ \ _C_ )⊆( _A_ \ _B_ ), _C_. 

```
Sometimes you may find it useful to break a proof into cases even if the cases
are not suggested by a given of the form P or  Q .Any proof can be broken into
cases at any time, as long as the cases exhaust all of the possibilities.
```

```
Example 3.5.3. Prove that for every integer x , the remainder when x^2 is divided
by 4 is either 0 or 1.
Scratch work
```

```
We start by letting x be an arbitrary integer and then try to prove that the
remainder when x^2 is divided by 4 is either 0 or 1.
Givens Goal
x ∈Z ( x^2 ÷4 has remainder 0)or ( x^2 ÷4 has remainder 1)
```

140 _Proofs_

Because the goal is a disjunction, breaking the proof into cases seems like a
likely approach, but there is no given that suggests what cases to use. However,
trying out a few values for _x_ suggests the right cases:

```
x x^2 quotient of x^2 ÷4 remainder of x^2 ÷ 4
1 1 0 1
2 4 1 0
3 9 2 1
4 16 4 0
5 25 6 1
6 36 9 0
```

It appears that the remainder is 0 when _x_ is even and 1 when _x_ is odd. These
are the cases we will use. Thus, for case 1 we assume _x_ is even and try to prove
that the remainder is 0, and for case 2 we assume _x_ is odd and prove that the
remainder is 1. Because every integer is either even or odd, these cases are
exhaustive.
Filling in the definition of _even_ , here are our givens and goal for case 1:

```
Givens Goal
x ∈Z x^2 ÷4 has remainder 0
∃ k ∈Z( x = 2 k )
```

We immediately use the second given and let _k_ stand for some particular integer
for which _x_ = 2 _k_. Then _x_^2 =(2 _k_ )^2 = 4 _k_^2 , so clearly when we divide _x_^2 by 4
the quotient is _k_^2 and the remainder is 0.
Case 2 is quite similar:

```
Givens Goal
x ∈Z x^2 ÷4 has remainder 1
∃ k ∈Z( x = 2 k +1)
```

Once again we use the second given immediately and let _k_ stand for an integer
forwhich _x_ = 2 _k_ +1.Then _x_^2 =(2 _k_ +1)^2 = 4 _k_^2 + 4 _k_ + 1 =4( _k_^2 + _k_ )+1,
so when _x_^2 is divided by 4 the quotient is _k_^2 + _k_ and the remainder is 1.

_Solution_

**Theorem.** _For every integer x, the remainder when x_^2 _is divided by 4 is either
0 or 1.
Proof._ Suppose _x_ is an integer. We consider two cases.
_Case 1. x_ is even. Then _x_ = 2 _k_ for some integer _k_ , so _x_^2 = 4 _k_^2. Clearly the
remainder when _x_^2 is divided by 4 is 0.

_Proofs Involving Disjunctions_ 141
_Case 2. x_ is odd. Then _x_ = 2 _k_ +1 for some integer _k_ , so _x_^2 = 4 _k_^2 + 4 _k_ +1.
Clearly in this case the remainder when _x_^2 is divided by 4 is 1. 

Sometimes in a proof of a goal that has the form _P_ or  _Q_ it is hard to figure
out how to break the proof into cases. Here’s a way of doing it that is often
helpful. Simply assume that _P_ is true in case 1 and assume that it is false in
case 2. Certainly _P_ is either true or false, so these cases are exhaustive. In the
first case you have assumed that _P_ is true, so certainly the goal _P_ or  _Q_ is true.
Thus, no further reasoning is needed in case 1. In the second case you have
assumed that _P_ is false, so the only way the goal _P_ or  _Q_ could be true is if _Q_
is true. Thus, to complete this case you should try to prove _Q_.

**To prove a goal of the form** _P_ or  _Q_ **:**
If _P_ is true, then clearly the goal _P_ or  _Q_ is true, so you only need to worry
about the case in which _P_ is false. You can complete the proof in this case by
proving that _Q_ is true.

_Scratch work_

Before using strategy:

_Givens Goal_
— _P_ or  _Q_
—
After using strategy:

```
Givens Goal
— Q
—
not  P
```

_Form of final proof:_

```
If P is true, then of course P or  Q is true. Now suppose P is false.
[Proof of Q goes here.]
Thus, P or  Q is true.
```

Thus, this strategy for proving _P_ or  _Q_ suggests that you transform the prob-
lem by addingnot  _P_ as a new given and changing the goal to _Q_. It is interesting
to note that this is exactly the same as the transformation you would use if
you were proving the goalnot  _P_ → _Q_ !This is not really surprising, because we
already know that the statements _P_ or  _Q_ andnot  _P_ → _Q_ are equivalent. But we

142 _Proofs_

derived this equivalence before from the truth table for the conditional connec-
tive, and this truth table may have been hard to understand at first. Perhaps the
reasoning we’ve given makes this equivalence, and therefore the truth table for
the conditional connective, seem more natural.
Of course, the roles of _P_ and _Q_ could be reversed in using this strategy. Thus,
you can also prove _P_ or  _Q_ by assuming that _Q_ is false and proving _P_.

**Example 3.5.4.** Prove that for every real number _x_ , if _x_^2 ≥ _x_ then either _x_ ≤ 0
or _x_ ≥1.

_Scratch work_

Our goal is∀ _x_ ( _x_^2 ≥ _x_ →( _x_ ≤ 0 or  _x_ ≥1)), so to get started we let _x_ be an
arbitrary real number, assume _x_^2 ≥ _x_ , and set _x_ ≤ 0 or  _x_ ≥1 as our goal:

```
Givens Goal
x^2 ≥ x x ≤ 0 or  x ≥ 1
```

According to our strategy, to prove this goal we can either assume _x_ > 0
and prove _x_ ≥1 or assume _x_ <1 and prove _x_ ≤0. The assumption that _x_ is
positive seems more likely to be useful in reasoning about inequalities, so we
take the first approach.

```
Givens Goal
x^2 ≥ x x ≥ 1
x > 0
```

```
The proof is now easy. Since x >0, we can divide the given inequality
x^2 ≥ x by x to get the goal x ≥1.
```

_Solution_

**Theorem.** _For every real number x, if x_^2 ≥ _x then either x_ ≤ 0 _or x_ ≥ 1_.
Proof._ Suppose _x_^2 ≥ _x_. If _x_ ≤0, then of course _x_ ≤0 or _x_ ≥1. Now suppose
_x_ >0. Then we can divide both sides of the inequality _x_^2 ≥ _x_ by _x_ to conclude
that _x_ ≥1. Thus, either _x_ ≤0 or _x_ ≥1. 

The equivalence of _P_ or  _Q_ andnot  _P_ → _Q_ also suggests a rule of inference
called _disjunctive syllogism_ for using a given statement of the form _P_ or  _Q_ :

**To use a given of the form** _P_ or  _Q_ **:**
If you are also givennot  _P_ , or you can prove that _P_ is false, then you can
use this given to conclude that _Q_ is true. Similarly, if you are givennot  _Q_ or can
prove that _Q_ is false, then you can conclude that _P_ is true.

_Proofs Involving Disjunctions_ 143
In fact, this rule is the one we used in our first example of deductive reasoning
in Chapter 1!
Once again, we end this section with a proof for you to read without the
benefit of a preliminary scratch work analysis.

**Theorem 3.5.5.** _Suppose m and n are integers. If mn is even, then either m is
even or n is even.
Proof._ Suppose _mn_ is even. Then we can choose an integer _k_ such that _mn_ =
2 _k_. If _m_ is even then there is nothing more to prove, so suppose _m_ is odd. Then
_m_ = 2 _j_ +1 for some integer _j_. Substituting this into the equation _mn_ = 2 _k_ , we
get (2 _j_ +1) _n_ = 2 _k_ , so 2 _jn_ + _n_ = 2 _k_ , and therefore _n_ = 2 _k_ - 2 _jn_ =2( _k_ -
_jn_ ). Since _k_ - _jn_ is an integer, it follows that _n_ is even. 

_Commentary._ The overall form of the proof is the following:

```
Suppose mn is even.
If m is even, then clearly either m is even or n is even. Now suppose
m is not even. Then m is odd.
[Proof that n is even goes here.]
Therefore either m is even or n is even.
Therefore if mn is even then either m is even or n is even.
```

The assumptions that _mn_ is even and _m_ is odd lead, by existential instanti-
ation, to the equations _mn_ = 2 _k_ and _m_ = 2 _j_ +1. Although the proof doesn’t
say so explicitly, you are expected to work out for yourself that in order to prove
that _n_ is even it suffices to find an integer _c_ such that _n_ = 2 _c_. Straightforward
algebra leads to the equation _n_ =2( _k_ - _jn_ ), so the choice _c_ = _k_ - _jn_ works.

```
Exercises
```

```
pd∗1. Suppose A , B , and C are sets. Prove that A +( B , C )⊆( A + B ), C.
pd2. Suppose A , B , and C are sets. Prove that ( A , B )\ C ⊆ A ,( B \ C ).
pd3. Suppose A and B are sets. Prove that A \( A \ B )= A + B.
pd∗4. Suppose A + C ⊆ B + C and A , C ⊆ B , C. Prove that A ⊆ B.
pd5. Recall from Section 1.4 that the symmetric difference of two sets A and B
is the set A  B =( A \ B ),( B \ A )=( A , B )\( A + B ). Prove that
if A  B ⊆ A then B ⊆ A.
pd6. Suppose A , B , and C are sets. Prove that A , C ⊆ B , C iff A \ C ⊆
B \ C.
pd∗7. Prove that for any sets A and B ,P( A ),P( B )⊆P( A , B ).
```

144 _Proofs_
pd8. Prove that for any sets _A_ and _B_ , if P( _A_ ),P( _B_ )=P( _A_ , _B_ ) then
either _A_ ⊆ _B_ or _B_ ⊆ _A_.

9. Suppose _x_ and _y_ are real numbers and _x_ =0. Prove that _y_ + 1 / _x_ =
    1 + _y_ / _x_ iff either _x_ =1 or _y_ =1.
10. Prove that for every real number _x_ , if | _x_ - 3 |>3 then _x_^2 > 6 _x_. (Hint:
According to the definition of| _x_ - 3 |, if _x_ - 3 ≥0 then| _x_ - 3 | = _x_ -
3, and if _x_ - 3 <0 then| _x_ - 3 | = 3 - _x_. The easiest way to use this
fact is to break your proof into cases. Assume that _x_ - 3 ≥0 in case 1,
and _x_ - 3 <0 in case 2.)
∗11. Prove that for every real number _x_ ,| 2 _x_ - 6 |> _x_ iff| _x_ - 4 |>2. (Hint:
Read the hint for exercise 10.)
12. (a) Prove that for all real numbers _a_ and _b_ ,| _a_ | ≤ _b_ iff- _b_ ≤ _a_ ≤ _b_.
(b) Prove that for any real number _x_ ,-| _x_ | ≤ _x_ ≤ | _x_ |. (Hint: Use
part (a).)
(c) Prove that for all real numbers _x_ and _y_ ,| _x_ + _y_ | ≤ | _x_ | + | _y_ |. (This is
called the _triangle inequality_. One way to prove this is to combine
parts (a) and (b), but you can also do it by considering a number of
cases.)
13. Prove that for every integer _x_ , _x_^2 + _x_ is even.
14. Prove that for every integer _x_ , the remainder when _x_^4 is divided by 8 is
either 0 or 1.
∗15. SupposeFandGare nonempty families of sets.
pd(a) Prove that,(F,G)=(,F),(,G).
(b) Can you discover and prove a similar theorem about+(F,G)?
16. SupposeFis a nonempty family of sets and _B_ is a set.
pd(a) Prove that _B_ ,(,F)= , (F, { _B_ }).
(b) Prove that _B_ ,(+F)= + _A_ ∈F( _B_ , _A_ ).
(c) Can you discover and prove a similar theorem about _B_ +(+F)?
17. SupposeF,G, andHare nonempty families of sets and for every _A_ ∈F
and every _B_ ∈G, _A_ , _B_ ∈H. Prove that+H⊆(+F),(+G).
pd18. Suppose _A_ and _B_ are sets. Prove that∀ _x_ ( _x_ ∈ _A_  _B_ ↔( _x_ ∈ _A_ ↔
_x_ ∈/ _B_ )).
pd∗19. Suppose _A_ , _B_ , and _C_ are sets. Prove that _A_  _B_ and _C_ are disjoint iff
_A_ + _C_ = _B_ + _C_.
pd20. Suppose _A_ , _B_ , and _C_ are sets. Prove that _A_  _B_ ⊆ _C_ iff _A_ , _C_ =
_B_ , _C_.
pd21. Suppose _A_ , _B_ , and _C_ are sets. Prove that _C_ ⊆ _A_  _B_ iff _C_ ⊆ _A_ , _B_
and _A_ + _B_ + _C_ =∅.
pd∗22. Suppose _A_ , _B_ , and _C_ are sets.
(a) Prove that _A_ \ _C_ ⊆( _A_ \ _B_ ),( _B_ \ _C_ ).
(b) Prove that _A_  _C_ ⊆( _A_  _B_ ),( _B_  _C_ ).

_Proofs Involving Disjunctions_ 145
pd∗23. Suppose _A_ , _B_ , and _C_ are sets.

```
(a) Prove that ( A , B ) C ⊆( A  C ),( B  C ).
(b) Find an example of sets A , B , and C such that ( A , B ) C =
( A  C ),( B  C )
pd24. Suppose A , B , and C are sets.
(a) Prove that ( A  C )+( B  C )⊆( A + B ) C.
(b) Is it always true that ( A + B ) C ⊆( A  C )+( B  C )? Give
either a proof or a counterexample.
pd25. Suppose A , B , and C are sets. Consider the sets ( A \ B ) C and
( A  C )\( B  C ). Can you prove that either is a subset of the other?
Justify your conclusions with either proofs or counterexamples.
∗26. Consider the following putative theorem.
```

```
Theorem? For every real number x, if | x - 3 |< 3 then 0 < x < 6.
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
Proof. Let x be an arbitrary real number, and suppose| x - 3 |<3. We
consider two cases:
Case 1. x - 3 ≥0. Then| x - 3 | = x -3. Plugging this into the as-
sumption that| x - 3 |<3, we get x - 3 <3, so clearly x <6.
Case 2. x - 3 <0. Then| x - 3 | = 3 - x , so the assumption| x -
3 |<3 means that 3- x <3. Therefore 3< 3 + x , so 0 < x.
Since we have proven both 0< x and x <6, we can conclude that
0 < x <6. 
```

27. Consider the following putative theorem.

```
Theorem? For any sets A , B, and C , if A \ B ⊆ C and A ⊆ C then
A + B =∅.
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
Proof. Since A ⊆ C , we can choose some x such that x ∈ A and x ∈/
C. Since x ∈/ C and A \ B ⊆ C , x ∈/ A \ B. Therefore either x ∈/ A or
x ∈ B. But we already know that x ∈ A , so it follows that x ∈ B. Since
x ∈ A and x ∈ B , x ∈ A + B. Therefore A + B =∅. 
```

```
*28. Consider the following putative theorem.
```

```
Theorem? ∀ x ∈R∃ y ∈R( xy^2 = y - x ).
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```

146 _Proofs_

```
Proof. Let x be an arbitrary real number.
Case 1. x =0. Let y =1. Then xy^2 =0 and y - x = 1 - 0 =1, so
xy^2 = y - x.
Case 2. x =0. Let y =0. Then xy^2 =0 and y - x = - x =0, so
xy^2 = y - x.
Since these cases are exhaustive, we have shown that∃ y ∈R( xy^2 =
y - x ). Since x was arbitrary, this shows that∀ x ∈R∃ y ∈R( xy^2 =
y - x ). 
```

29. Prove that if∀ _x P_ ( _x_ )→ ∃ _x Q_ ( _x_ ) then∃ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )). (Hint: Re-
    member that _P_ → _Q_ is equivalent tonot  _P_ or  _Q_ ).
*30. Consider the following putative theorem.
**Theorem?** _Suppose A, B, and C are sets and A_ ⊆ _B_ , _C. Then either
A_ ⊆ _B or A_ ⊆ _C._
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
_Proof._ Let _x_ be an arbitrary element of _A_. Since _A_ ⊆ _B_ , _C_ , it follows
that either _x_ ∈ _B_ or _x_ ∈ _C_.
_Case 1. x_ ∈ _B_. Since _x_ was an arbitrary element of _A_ , it follows that
∀ _x_ ∈ _A_ ( _x_ ∈ _B_ ), which means that _A_ ⊆ _B_.
_Case 2. x_ ∈ _C_. Similarly, since _x_ was an arbitrary element of _A_ , we
can conclude that _A_ ⊆ _C_.
Thus, either _A_ ⊆ _B_ or _A_ ⊆ _C_. 
31. Prove∃ _x_ ( _P_ ( _x_ )→ ∀ _y P_ ( _y_ )).

## 3.6 Existence and Uniqueness Proofs

In this section we consider proofs in which the goal has the form∃! _x P_ ( _x_ ). As
we saw in Section 2.2, this can be thought of as an abbreviation for the formula
∃ _x_ ( _P_ ( _x_ )and  not ∃ _y_ ( _P_ ( _y_ )and  _y_ = _x_ )). According to the proof strategies discussed
in previous sections, we could therefore prove this goal by finding a particular
value of _x_ for which we could prove both _P_ ( _x_ ) andnot ∃ _y_ ( _P_ ( _y_ )and  _y_ = _x_ ). The
last part of this proof would involve proving a negated statement, but we can
reexpress it as an equivalent positive statement:

```
not ∃ y ( P ( y )and  y = x )
is equivalent to∀ y not ( P ( y )and  y = x ) (quantifier negation law),
which is equivalent to∀ y (not  P ( y )or  y = x ) (DeMorgan’s law),
which is equivalent to∀ y ( P ( y )→ y = x ) (conditional law).
```

_Existence and Uniqueness Proofs_ 147
Thus, we see that∃! _x P_ ( _x_ ) could also be written as∃ _x_ ( _P_ ( _x_ )and  ∀ _y_ ( _P_ ( _y_ )→
_y_ = _x_ )). In fact, as the next example shows, several other formulas are also
equivalent to∃! _x P_ ( _x_ ), and they suggest other approaches to proving goals of
this form.

**Example 3.6.1.** Prove that the following formulas are all equivalent:

```
1.∃ x ( P ( x )and  ∀ y ( P ( y )→ y = x )).
2.∃ x ∀ y ( P ( y )↔ y = x ).
3.∃ x P ( x )and  ∀ y ∀ z (( P ( y )and  P ( z ))→ y = z ).
```

_Scratch work_

If we prove directly that each of these statements is equivalent to each of the
others, then we will have three biconditionals to prove: statement 1 iff statement
2, statement 1 iff statement 3, and statement 2 iff statement 3. If we prove
each biconditional by the methods of Section 3.4, then each will involve two
conditional proofs, so we will need a total of six conditional proofs. Fortunately,
there is an easier way. We will prove that statement 1 implies statement 2,
statement 2 implies statement 3, and statement 3 implies statement 1 – just three
conditionals.Althoughwewillnotgiveaseparateproofthatstatement2implies
statement 1, it will follow from the fact that statement 2 implies statement 3 and
statement 3 implies statement 1. Similarly, the other two conditionals follow
from the three we will prove. Mathematicians almost always use some such
shortcut when proving that several statements are all equivalent. Because we’ll
be proving three conditional statements, our proof will have three parts, which
we will label 1→ 2 , 2 →3, and 3→1. We’ll need to work out our strategy
for the three parts separately.
1 →2. We assume statement 1 and prove statement 2. Because statement 1
starts with an existential quantifier, we choose a name, say _x_ 0 , for some object
for which both _P_ ( _x_ 0 ) and∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ 0 ) are true. Thus, we now have the
following situation:

```
Givens Goal
P ( x 0 ) ∃ x ∀ y ( P ( y )↔ y = x )
∀ y ( P ( y )→ y = x 0 )
```

Our goal also starts with an existential quantifier, so to prove it we should
try to find a value of _x_ that makes the rest of the statement come out true.
Of course, the obvious choice is _x_ = _x_ 0. Plugging in _x_ 0 for _x_ , we see that we
must now prove∀ _y_ ( _P_ ( _y_ )↔ _y_ = _x_ 0 ). We let _y_ be arbitrary and prove both
directions of the biconditional. The→direction is clear by the second given.

148 _Proofs_

For the←direction, suppose _y_ = _x_ 0. We also have _P_ ( _x_ 0 ) as a given, and
plugging in _y_ for _x_ 0 in this given we get _P_ ( _y_ ).
2 →3. Statement 2 is an existential statement, so we let _x_ 0 be some object
such that∀ _y_ ( _P_ ( _y_ )↔ _y_ = _x_ 0 ). The goal, statement 3, is a conjunction, so we
treat it as two separate goals.

```
Givens Goals
∀ y ( P ( y )↔ y = x 0 ) ∃ x P ( x )
∀ y ∀ z (( P ( y )and  P ( z ))→ y = z )
```

To prove the first goal we must choose a value for _x_ , and of course the
obvious value is _x_ = _x_ 0 again. Thus, we must prove _P_ ( _x_ 0 ). The natural way to
use our only given is to plug in something for _y_ ; and to prove the goal _P_ ( _x_ 0 ),
the obvious thing to plug in is _x_ 0. This gives us _P_ ( _x_ 0 )↔ _x_ 0 = _x_ 0. Of course,
_x_ 0 = _x_ 0 is true, so by the←direction of the biconditional, we get _P_ ( _x_ 0 ).
For the second goal, we let _y_ and _z_ be arbitrary, assume _P_ ( _y_ ) and _P_ ( _z_ ), and
try to prove _y_ = _z_.

```
Givens Goal
∀ y ( P ( y )↔ y = x 0 ) y = z
P ( y )
P ( z )
```

Plugging in each of _y_ and _z_ in the first given we get _P_ ( _y_ )↔ _y_ = _x_ 0 and
_P_ ( _z_ )↔ _z_ = _x_ 0. Since we’ve assumed _P_ ( _y_ ) and _P_ ( _z_ ), this time we use the→
directions of these biconditionals to conclude that _y_ = _x_ 0 and _z_ = _x_ 0. Our goal
_y_ = _z_ clearly follows.
3 →1. Because statement 3 is a conjunction, we treat it as two separate
givens. The first is an existential statement, so we let _x_ 0 stand for some object
such that _P_ ( _x_ 0 ) is true. To prove statement 1 we again let _x_ = _x_ 0 , so we have
this situation:

```
Givens Goal
P ( x 0 ) P ( x 0 )and  ∀ y ( P ( y )→ y = x 0 )
∀ y ∀ z (( P ( y )and  P ( z ))→ y = z )
```

We already know the first half of the goal, so we only need to prove the
second. For this we let _y_ be arbitrary, assume _P_ ( _y_ ), and make _y_ = _x_ 0 our goal.

```
Givens Goal
P ( x 0 ) y = x 0
∀ y ∀ z (( P ( y )and  P ( z ))→ y = z )
P ( y )
```

```
Existence and Uniqueness Proofs 149
But now we know both P ( y ) and P ( x 0 ), so the goal y = x 0 follows from the
second given.
```

```
Solution
Theorem. The following are equivalent:
1.∃ x ( P ( x )and  ∀ y ( P ( y )→ y = x )).
2.∃ x ∀ y ( P ( y )↔ y = x ).
3.∃ x P ( x )and  ∀ y ∀ z (( P ( y )and  P ( z ))→ y = z ).
```

_Proof._ 1 →2. By statement 1, we can let _x_ 0 be some object such that _P_ ( _x_ 0 ) and
∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ 0 ). To prove statement 2 we will show that∀ _y_ ( _P_ ( _y_ )↔ _y_ =
_x_ 0 ). We already know the→direction. For the←direction, suppose _y_ = _x_ 0.
Then since we know _P_ ( _x_ 0 ), we can conclude _P_ ( _y_ ).
2 →3. By statement 2, choose _x_ 0 such that∀ _y_ ( _P_ ( _y_ )↔ _y_ = _x_ 0 ). Then, in
particular, _P_ ( _x_ 0 )↔ _x_ 0 = _x_ 0 , and since clearly _x_ 0 = _x_ 0 , it follows that _P_ ( _x_ 0 )
is true. Thus,∃ _x P_ ( _x_ ). To prove the second half of statement 3, let _y_ and _z_ be
arbitrary and suppose _P_ ( _y_ ) and _P_ ( _z_ ). Then by our choice of _x_ 0 (as something
for which∀ _y_ ( _P_ ( _y_ )↔ _y_ = _x_ 0 ) is true), it follows that _y_ = _x_ 0 and _z_ = _x_ 0 , so
_y_ = _z_.
3 →1. By the first half of statement 3, let _x_ 0 be some object such that _P_ ( _x_ 0 ).
Statement 1 will follow if we can show that∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ 0 ), so suppose
_P_ ( _y_ ). Since we now have both _P_ ( _x_ 0 ) and _P_ ( _y_ ), by the second half of statement
3 we can conclude that _y_ = _x_ 0 , as required. 

Because all three of the statements in the theorem are equivalent to∃! _x P_ ( _x_ ),
we can prove a goal of this form by proving any of the three statements in the
theorem. Probably the most common technique for proving a goal of the form
∃! _x P_ ( _x_ ) is to prove statement 3 of the theorem.

**To prove a goal of the form** ∃! _x P_ ( _x_ ) **:**
Prove∃ _x P_ ( _x_ ) and∀ _y_ ∀ _z_ (( _P_ ( _y_ )and  _P_ ( _z_ ))→ _y_ = _z_ ). The first of these goals
shows that there exists an _x_ such that _P_ ( _x_ ) is true, and the second shows that it
is unique. The two parts of the proof are therefore sometimes labeled _existence_
and _uniqueness_. Each part is proven using strategies discussed earlier.

_Form of final proof_ :

```
Existence: [Proof of∃ x P ( x ) goes here.]
Uniqueness: [Proof of∀ y ∀ z (( P ( y )and  P ( z ))→ y = z ) goes here.]
```

**Example 3.6.2.** Prove that there is a unique set _A_ such that for every set _B_ ,
_A_ , _B_ = _B_.

150 _Proofs_

_Scratch work_

Our goal is∃! _AP_ ( _A_ ), where _P_ ( _A_ ) is the statement∀ _B_ ( _A_ , _B_ = _B_ ). Accord-
ing to our strategy, we can prove this by proving existence and uniqueness
separately. For the existence half of the proof we must prove∃ _AP_ ( _A_ ), so we
try to find a value of _A_ that makes _P_ ( _A_ ) true. There is no formula for finding
this set _A_ , but if you think about what the statement _P_ ( _A_ ) means, you should
realize that the right choice is _A_ =∅. Plugging this value in for _A_ , we see that
to complete the existence half of the proof we must show that∀ _B_ (∅, _B_ = _B_ ).
This is clearly true. (If you’re not sure of this, work out the proof!)
For the uniqueness half of the proof we prove∀ _C_ ∀ _D_ (( _P_ ( _C_ )and  _P_ ( _D_ ))→
_C_ = _D_ ). To do this, we let _C_ and _D_ be arbitrary, assume _P_ ( _C_ ) and _P_ ( _D_ ), and
prove _C_ = _D_. Writing out what the statements _P_ ( _C_ ) and _P_ ( _D_ ) mean, we have
the following givens and goal:

```
Givens Goal
∀ B ( C , B = B ) C = D
∀ B ( D , B = B )
```

To use the givens, we should try to find something to plug in for _B_ in each of
them. There is a clever choice that makes the rest of the proof easy: We plug in
_D_ for _B_ in the first given, and _C_ for _B_ in the second. This gives us _C_ , _D_ = _D_
and _D_ , _C_ = _C_. But clearly _C_ , _D_ = _D_ , _C_. (If you don’t see why, prove it!)
The goal _C_ = _D_ follows immediately.

_Solution_

**Theorem.** _There is a unique set A such that for every set B_ , _A_ , _B_ = _B.
Proof._ Existence: Clearly∀ _B_ (∅, _B_ = _B_ ), so∅has the required property.
Uniqueness: Suppose∀ _B_ ( _C_ , _B_ = _B_ ) and∀ _B_ ( _D_ , _B_ = _B_ ). Applying the
first of these assumptions to D we see that _C_ , _D_ = _D_ , and applying the second
to C we get _D_ , _C_ = _C_. But clearly _C_ , _D_ = _D_ , _C_ , so _C_ = _D_. 

Sometimes a statement of the form∃! _x P_ ( _x_ ) is proven by proving statement
1 from Example 3.6.1. This leads to the following proof strategy.

**To prove a goal of the form** ∃! _x P_ ( _x_ ) **:**
Prove ∃ _x_ ( _P_ ( _x_ )and  ∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ )), using strategies from previous
sections.

**Example 3.6.3.** Prove that for every real number x, if _x_ =2 then there is a
unique real number _y_ such that 2 _y_ /( _y_ +1)= _x_.

```
Existence and Uniqueness Proofs 151
```

_Scratch work_

Our goal is∀ _x_ ( _x_ = 2 → ∃! _y_ (2 _y_ /( _y_ +1)= _x_ )). We therefore let _x_ be arbi-
trary, assume _x_ =2, and prove∃! _y_ (2 _y_ /( _y_ +1)= _x_ ). According to the pre-
ceding strategy, we can prove this goal by proving the equivalent statement
∃ _y_ (2 _y_ /( _y_ +1)= _x_ and  ∀ _z_ (2 _z_ /( _z_ +1)= _x_ → _z_ = _y_ )).Westartbytryingtofind
a value of _y_ that will make the equation 2 _y_ /( _y_ +1)= _x_ come out true. In other
words, we solve this equation for _y_ :

```
2 y
y + 1
```

```
= x ⇒ 2 y = x ( y +1) ⇒ y (2- x )= x ⇒ y =
```

```
x
2 - x
```

#### 

Note that we have _x_ =2 as a given, so the division by 2- _x_ in the last step
makes sense. Of course, these steps will not appear in the proof. We simply
let _y_ = _x_ /(2- _x_ ) and try to prove both 2 _y_ /( _y_ +1)= _x_ and∀ _z_ (2 _z_ /( _z_ +1)=
_x_ → _z_ = _y_ ).

```
Givens Goals
x = 2
```

```
2 y
y + 1
```

```
= x
```

```
y =
```

```
x
2 - x
```

```
∀ z
```

#### (

```
2 z
z + 1
```

```
= x → z = y
```

#### )

The first goal is easy to verify by simply plugging in _x_ /(2- _x_ ) for _y_. For
the second, we let _z_ be arbitrary, assume 2 _z_ /( _z_ +1)= _x_ , and prove _z_ = _y_ :

```
Givens Goal
x = 2 z = y
y =
```

```
x
2 - x
2 z
z + 1
```

```
= x
```

```
We can show that z = y now by solving for z in the third given:
```

```
2 z
z + 1
```

```
= x ⇒ 2 z = x ( z +1) ⇒ z (2- x )= x ⇒ z =
```

```
x
2 - x
```

```
= y.
```

Note that the steps we used here are exactly the same as the steps we used
earlier in solving for _y_. This is a common pattern in existence and uniqueness
proofs. Although the scratch work for figuring out an existence proof should not
appear in the proof, this scratch work, or reasoning similar to it, can sometimes
be used to prove that the object shown to exist is unique.

152 _Proofs_

_Solution_

**Theorem.** _For every real number x, if x_ = 2 _then there is a unique real number
y such that_ 2 _y_ /( _y_ +1)= _x.
Proof._ Let _x_ be an arbitrary real number, and suppose _x_ =2. Let _y_ =
_x_ /(2- _x_ ), which is defined since _x_ =2. Then
2 _y
y_ + 1

#### =

```
2 x
2 - x
x
2 - x +^1
```

#### =

```
2 x
2 - x
2
2 - x
```

#### =

```
2 x
2
```

```
= x.
```

To see that this solution is unique, suppose 2 _z_ /( _z_ +1)= _x_. Then 2 _z_ =
_x_ ( _z_ +1), so _z_ (2- _x_ )= _x_. Since _x_ =2 we can divide both sides by 2- _x_
to get _z_ = _x_ /(2- _x_ )= _y_. 

The theorem in Example 3.6.1 can also be used to formulate strategies for
using givens of the form∃! _x P_ ( _x_ ). Once again, statement 3 of the theorem is
the one used most often.

**To use a given of the form** ∃! _x P_ ( _x_ ) **:**
Treat this as two given statements,∃ _x P_ ( _x_ ) and∀ _y_ ∀ _z_ (( _P_ ( _y_ )and  _P_ ( _z_ ))→
_y_ = _z_ ). To use the first statement you should probably choose a name, say _x_ 0 ,
to stand for some object such that _P_ ( _x_ 0 ) is true. The second tells you that if
you ever come across two objects _y_ and _z_ such that _P_ ( _y_ ) and _P_ ( _z_ ) are both
true, you can conclude that _y_ = _z_.

**Example 3.6.4.** Suppose _A, B,_ and _C_ are sets, _A_ and _B_ are not disjoint, _A_ and
_C_ are not disjoint, and _A_ has exactly one element. Prove that _B_ and _C_ are not
disjoint.

_Scratch work_

_Givens Goal
A_ + _B_ =∅ _B_ + _C_ =∅
_A_ + _C_ =∅
∃! _x_ ( _x_ ∈ _A_ )
We treat the last given as two separate givens, as suggested by our strategy.
Writing out the meanings of the other givens and the goal, we have the following
situation:

_Givens Goal_
∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈ _B_ ) ∃ _x_ ( _x_ ∈ _B_ and  _x_ ∈ _C_ )
∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈ _C_ )
∃ _x_ ( _x_ ∈ _A_ )
∀ _y_ ∀ _z_ (( _y_ ∈ _A_ and  _z_ ∈ _A_ )→ _y_ = _z_ )
To prove the goal, we must find something that is an element of both _B_ and
_C_. To do this, we turn to the givens. The first given tells us that we can choose a

```
Existence and Uniqueness Proofs 153
```

name, say _b_ , for something such that _b_ ∈ _A_ and _b_ ∈ _B_. Similarly, by the second
given we can let _c_ be something such that _c_ ∈ _A_ and _c_ ∈ _C_. At this point the
third given is redundant. We already know that there’s something in _A_ , because
in fact we already know that _b_ ∈ _A_ and _c_ ∈ _A_. We may as well skip to the last
given, which says that if we ever come across two objects that are elements of
_A_ , we can conclude that they are equal. But as we have just observed, we know
that _b_ ∈ _A_ and _c_ ∈ _A_ !We can therefore conclude that _b_ = _c_. Since _b_ ∈ _B_ and
_b_ = _c_ ∈ _C_ , we have found something that is an element of both _B_ and _C_ , as
required to prove the goal.

_Solution_

**Theorem.** _Suppose A, B, and C are sets, A and B are not disjoint, A and C are
not disjoint, and A has exactly one element. Then B and C are not disjoint.
Proof._ Since _A_ and _B_ are not disjoint, we can let _b_ be something such that
_b_ ∈ _A_ and _b_ ∈ _B_. Similarly, since _A_ and _C_ are not disjoint, there is some object
_c_ such that _c_ ∈ _A_ and _c_ ∈ _C_. Since _A_ has only one element, we must have
_b_ = _c_. Thus _b_ = _c_ ∈ _B_ + _C_ and therefore _B_ and _C_ are not disjoint. 

```
Exercises
```

```
∗1. Prove that for every real number x there is a unique real number y such
that x^2 y = x - y.
```

2. Prove that there is a unique real number _x_ such that for every real number
    _y_ , _xy_ + _x_ - 4 = 4 _y_.
3. Prove that for every real number _x_ , if _x_ =0 and _x_ =1 then there is a
    unique real number _y_ such that _y_ / _x_ = _y_ - _x_.
∗4. Prove that for every real number _x_ , if _x_ =0 then there is a unique real
number _y_ such that for every real number _z_ , _zy_ = _z_ / _x_.
5. Recall that ifFis a family of sets, then,F= { _x_ | ∃ _A_ ( _A_ ∈Fand  _x_ ∈ _A_ )}.
    Suppose we define a new set,!Fby the formula,!F= { _x_ | ∃! _A_ ( _A_ ∈
    Fand  _x_ ∈ _A_ )}.
    (a) Prove that for any family of setsF,,!F⊆ , F.
    (b) A family of setsFis said to be _pairwise disjoint_ if every pair of
       distinct elements ofFare disjoint; that is,∀ _A_ ∈F∀ _B_ ∈F( _A_ =
          _B_ → _A_ + _B_ =∅). Prove that for any family of setsF,,!F= , F
       iffFis pairwise disjoint.
pd∗6. Let _U_ be any set.
(a) Prove that there is a unique _A_ ∈P( _U_ ) such that for every _B_ ∈
P( _U_ ), _A_ , _B_ = _B_.

154 _Proofs_

```
(b) Prove that there is a unique A ∈P( U ) such that for every B ∈
P( U ), A , B = A.
pd7. Let U be any set.
(a) Prove that there is a unique A ∈P( U ) such that for every B ∈
P( U ), A + B = B.
(b) Prove that there is a unique A ∈P( U ) such that for every B ∈
P( U ), A + B = A.
pd8. Let U be any set.
(a) Prove that for every A ∈P( U ) there is a unique B ∈P( U ) such
that for every C ∈P( U ), C \ A = C + B.
(b) Prove that for every A ∈P( U ) there is a unique B ∈P( U ) such
that for every C ∈P( U ), C + A = C \ B.
pd9. Recall that you showed in exercise 12 of Section 1.4 that symmet-
ric difference is associative; in other words, for all sets A , B , and C ,
A ( B  C )=( A  B ) C. You may also find it useful in this prob-
lem to note that symmetric difference is clearly commutative; in other
words, for all sets A and B , A  B = B  A.
(a) Prove that there is a unique identity element for symmetric differ-
ence. In other words, there is a unique set X such that for every set
A , A  X = A.
(b) Prove that every set has a unique inverse for the operation of symme-
tric difference. In other words, for every set A there is a unique set B
such that A  B = X , where X is the identity element from part (a).
(c) Prove that for any sets A and B there is a unique set C such that
A  C = B.
(d) Prove that for every set A there is a unique set B ⊆ A such that for
every set C ⊆ A , B  C = A \ C.
pd10. Suppose A is a set, and for every family of setsF, if ,F= A then
A ∈F. Prove that A has exactly one element. (Hint: For both the exis-
tence and uniqueness parts of the proof, try proof by contradiction.)
pd∗11. SupposeFis a family of sets that has the property that for everyG⊆
F,,G∈F. Prove that there is a unique set A such that A ∈F and
∀ B ∈F( B ⊆ A ).
```

12. (a) Suppose _P_ ( _x_ ) is a statement with a free variable _x_. Find a formula,
    using the logical symbols we have studied, that means “there are
    exactly two values of _x_ for which _P_ ( _x_ ) is true.”
(b) Based on your answer to part (a), design a proof strategy for proving
a statement of the form “there are exactly two values of _x_ for which
_P_ ( _x_ ) is true.”
(c) Prove that there are exactly two solutions to the equation _x_^3 = _x_^2.

```
More Examples of Proofs 155
```

## 3.7 More Examples of Proofs

```
So far, most of our proofs have involved fairly straightforward applications of
the proof techniques we’ve discussed. We end this chapter with a few exam-
ples of somewhat more difficult proofs. These proofs use the techniques of this
chapter, but for various reasons they’re a little harder than most of our earlier
proofs. Some are simply longer, involving the application of more proof strate-
gies. Some require clever choices of which strategies to use. In some cases it’s
clear what strategy to use, but some insight is required to see exactly how to
use it. Our earlier examples, which were intended only to illustrate and clarify
the proof techniques, may have made proof-writing seem mechanical and dull.
We hope that by studying these more difficult examples you will begin to see
that mathematical reasoning can also be surprising and beautiful.
Some proof techniques are particularly difficult to apply. For example, when
you’re proving a goal of the form∃ x P ( x ), the obvious way to proceed is to try
to find a value of x that makes the statement P ( x ) true, but sometimes it will
not be obvious how to find that value of x. Using a given of the form∀ x P ( x ) is
similar. You’ll probably want to plug in a particular value for x , but to complete
the proof you may have to make a clever choice of what to plug in. Proofs that
must be broken down into cases are also sometimes difficult to figure out. It is
sometimes hard to know when to use cases and what cases to use.
We begin by looking again at the proofs from the introduction. Some aspects
of these proofs probably seemed somewhat mysterious when you read them
in the introduction. See if they make more sense to you now that you have a
better understanding of how proofs are constructed. We will present each proof
exactly as it appeared in the introduction and then follow it with a commentary
discussing the proof techniques used.
```

**Theorem 3.7.1.** _Suppose n is an integer larger than_ 1 _and n is not prime. Then_
2 _n_ - 1 _is not prime.
Proof._ Since _n_ is not prime, there are positive integers _a_ and _b_ such that
_a_ < _n_ , _b_ < _n_ , and _n_ = _ab_. Let _x_ = 2 _b_ -1 and _y_ = 1 + 2 _b_ + 22 _b_ + · · · +
2 ( _a_ -1) _b_. Then

```
xy =(2 b -1)·(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
= 2 b ·(1+ 2 b + 22 b + · · · + 2 ( a -1) b )-(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
=(2 b + 22 b + 23 b + · · · + 2 ab )-(1+ 2 b + 22 b + · · · + 2 ( a -1) b )
= 2 ab - 1
= 2 n - 1.
```

156 _Proofs_

Since _b_ < _n_ , we can conclude that _x_ = 2 _b_ - 1 < 2 _n_ -1. Also, since
_ab_ = _n_ > _a_ , it follows that _b_ >1. Therefore, _x_ = 2 _b_ - 1 > 21 - 1 =1, so
_y_ < _xy_ = 2 _n_ -1. Thus, we have shown that 2 _n_ -1 can be written as the prod-
uct of two positive integers _x_ and _y_ , both of which are smaller than 2 _n_ -1, so
2 _n_ -1 is not prime. 

_Commentary._ We are given that _n_ is not prime, and we must prove that
2 _n_ -1 is not prime. Both of these are negative statements, but fortunately
it is easy to reexpress them as positive statements. To say that an integer
larger than 1 is not prime means that it can be written as a product of two
smaller positive integers. Thus, the hypothesis that _n_ is not prime means
∃ _a_ ∈Z+∃ _b_ ∈Z+( _ab_ = _n_ and  _a_ < _n_ and  _b_ < _n_ ), and what we must prove is that
2 _n_ -1 is not prime, which means∃ _x_ ∈Z+∃ _y_ ∈Z+( _xy_ = 2 _n_ - 1 and  _x_ < 2 _n_ -
1 and  _y_ < 2 _n_ -1). In the second sentence of the proof we apply existential in-
stantiation to the hypothesis that _n_ is not prime, and the rest of the proof is
devoted to exhibiting numbers _x_ and _y_ with the properties required to prove
that 2 _n_ -1 is not prime.
As usual in proofs of existential statements, the proof doesn’t explain how
the values of _x_ and _y_ were chosen, it simply demonstrates that these values
work. After the values of _x_ and _y_ have been given, the goal remaining to be
proven is _xy_ = 2 _n_ - 1 and  _x_ < 2 _n_ - 1 and  _y_ < 2 _n_ -1. Of course, this is treated
as three separate goals, which are proven one at a time. The proofs of these
three goals involve only elementary algebra.
One of the attractive features of this proof is the calculation used to show
that _xy_ = 2 _n_ -1. The formulas for _x_ and _y_ are somewhat complicated, and at
first their product looks even more complicated. It is a pleasant surprise when
most of the terms in this product cancel and, as if by magic, the answer 2 _n_ - 1
appears. Of course, we can see with hindsight that it was this calculation that
motivated the choice of _x_ and _y_. There is, however, one aspect of this calculation
that may bother you. The use of “· · · ” in the formulas indicates that the proof
depends on a pattern in the calculation that is not being spelled out. We’ll give
a more rigorous proof that _xy_ = 2 _n_ -1 in Chapter 6, after we have introduced
the method of proof by mathematical induction.

**Theorem 3.7.2.** _There are infinitely many prime numbers.
Proof._ Suppose there are only finitely many prime numbers. Let _p_ 1 , _p_ 2 ,... , _pn_
be a list of all prime numbers. Let _m_ = _p_ 1 _p_ 2 · · · _pn_ +1. Note that _m_ is not
divisible by _p_ 1 , since dividing _m_ by _p_ 1 gives a quotient of _p_ 2 _p_ 3 · · · _pn_ and a
remainder of 1. Similarly, _m_ is not divisible by any of _p_ 2 , _p_ 3... , _pn_.

_More Examples of Proofs_ 157
We now use the fact that every integer larger than 1 is either prime or can
be written as a product of primes. (We’ll see a proof of this fact in Chapter 6.)
Clearly _m_ is larger than 1, so _m_ is either prime or a product of primes. Suppose
first that _m_ is prime. Note that _m_ is larger than all of the numbers in the
list _p_ 1 , _p_ 2 ,... , _pn_ , so we’ve found a prime number not in this list. But this
contradicts our assumption that this was a list of _all_ prime numbers.
Now suppose _m_ is a product of primes. Let _q_ be one of the primes in this
product. Then _m_ is divisible by _q_. But we’ve already seen that _m_ is not di-
visible by any of the numbers in the list _p_ 1 , _p_ 2 ,... , _pn_ , so once again we
have a contradiction with the assumption that this list included all prime
numbers.
Since the assumption that there are finitely many prime numbers has led to
a contradiction, there must be infinitely many prime numbers. 

_Commentary._ Because _infinite_ means _not finite_ , the statement of the theorem
might be considered to be a negative statement. It is therefore not surprising
that the proof proceeds by contradiction. The assumption that there are finitely
many primes means that there exists a natural number _n_ such that there are _n_
primes, and the statement that there are _n_ primes means that there is a list of
distinct numbers _p_ 1 , _p_ 2 ,... , _pn_ such that every number in the list is prime, and
there are no primes that are not in the list. Thus, the second sentence of the proof
applies existential instantiation to introduce the numbers _n_ and _p_ 1 , _p_ 2 ,... , _pn_
into the proof. At this point in the proof we have the following situation:

_Givens Goal
p_ 1 , _p_ 2 ,... , _pn_ are all prime Contradiction
not ∃ _q_ ( _q_ is primeand  _q_ ∈ { / _p_ 1 , _p_ 2... , _pn_ })
The second given could be reexpressed as a positive statement, but since we
are doing a proof by contradiction, another reasonable approach would be to try
to reach a contradiction by proving that∃ _q_ ( _q_ is primeand  _q_ ∈ { / _p_ 1 , _p_ 2 ,... , _pn_ }).
This is the strategy used in the proof. Thus, the goal for the rest of the proof is to
show that there is a prime number not in the list _p_ 1 , _p_ 2 ,... , _pn_ – an “unlisted
prime.”
Because our goal is now an existential statement, it is not surprising that
the next step in the proof is to introduce the new number _m_ , without any
explanation of how _m_ was chosen. What _is_ surprising is that _m_ may or may not
be the unlisted prime we are looking for. The problem is that _m_ might not be
prime. All we can be sure of is that _m_ is either prime or a product of primes.
Because this statement is a disjunction, it suggests proof by cases, and this is

158 _Proofs_

the method used in the rest of the proof. Although the cases are not explicitly
labeled as cases in the proof, it is important to realize that the rest of the proof
has the form of a proof by cases. In case 1 we assume that _m_ is prime, and in
case 2 we assume that it is a product of primes. In both cases we are able to
produce an unlisted prime as required to complete the proof.

**Theorem 3.7.3.** _For every positive integer n, there is a sequence of n consec-
utive positive integers containing no primes._

_Proof._ Suppose _n_ is a positive integer. Let _x_ =( _n_ +1)!+2. We will show that
none of the numbers _x_ , _x_ + 1 , _x_ + 2 ,· · · , _x_ +( _n_ -1) is prime. Since this is a
sequence of _n_ consecutive positive integers, this will prove the theorem.
To see that _x_ is not prime, note that
_x_ = 1 · 2 · 3 · 4 · · · ( _n_ +1)+ 2
= 2 ·(1· 3 · 4 · · · ( _n_ +1)+1).

Thus, _x_ can be written as a product of two smaller positive integers, so _x_ is not
prime.
Similarly, we have
_x_ + 1 = 1 · 2 · 3 · 4 · · · ( _n_ +1)+ 3
= 3 ·(1· 2 · 4 · · · ( _n_ +1)+1),

so _x_ +1 is also not prime. In general, consider any number _x_ + _i_ , where
0 ≤ _i_ ≤ _n_ -1. Then we have

```
x + i = 1 · 2 · 3 · 4 · · · ( n +1)+( i +2)
=( i +2)·(1· 2 · 3 · · · ( i +1)·( i +3)· · · ( n +1)+1),
```

so _x_ + _i_ is not prime. 

_Commentary._ A sequence of _n_ consecutive positive integers is a sequence of
the form _x_ , _x_ + 1 , _x_ + 2 ,... , _x_ +( _n_ -1), where _x_ is a positive integer. Thus,
the logical form of the statement to be proven is∀ _n_ > 0 ∃ _x_ > 0 ∀ _i_ (0≤ _i_ ≤
_n_ - 1 → _x_ + _i_ is not prime), where all variables range over the integers. The
overall plan of the proof is exactly what one would expect for a proof of a
statement of this form: We let _n_ >0 be arbitrary, specify a value for _x_ , let _i_
be arbitrary, and then assume that 0≤ _i_ ≤ _n_ -1 and prove that _x_ + _i_ is not
prime. As in the proof of Theorem 3.7.1, to prove that _x_ + _i_ is not prime we
show how to write it as a product of two smaller integers.
Before the demonstration that _x_ + _i_ is not prime, where _i_ is an arbitrary
integer between 0 and _n_ -1, the proof includes verifications that _x_ and _x_ + 1

```
More Examples of Proofs 159
```

are not prime. These are completely unnecessary and are only included to make
the proof easier to read.

For readers who are familiar with the definition of limits from calculus, we
give one more example, showing how proofs involving limits can be worked
out using the techniques in this chapter. Readers who are not familiar with this
definition should skip this example.

**Example 3.7.4.** Show that lim _x_ → 3

```
2 x^2 - 5 x - 3
x - 3
```

#### = 7

_Scratch work_

According to the definition of limits, our goal means that for every positive
numberεthere is a positive numberδsuch that if _x_ is any number such that 0<
| _x_ - 3 |< δ , then

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

< ε. Translating this into logical symbols, we
have

```
∀ε > 0 ∃δ > 0 ∀ x
```

#### (

```
0 <| x - 3 |< δ →
```

#### ∣∣

```
∣∣^2 x
```

(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

```
∣∣< ε
```

#### )

#### 

We therefore start by lettingεbe an arbitrary positive number and then try to
find a positive numberδ for which we can prove

```
∀ x
```

#### (

```
0 <| x - 3 |< δ →
```

#### ∣∣

```
∣∣^2 x
```

(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

```
∣∣< ε
```

#### )

#### 

The scratch work involved in findingδwill not appear in the proof, of course.
In the final proof we’ll just write “Letδ =(some positive number)” and then
proceed to prove

```
∀ x
```

#### (

```
0 <| x - 3 |< δ →
```

#### ∣∣

```
∣∣^2 x
```

(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

```
∣∣< ε
```

#### )

#### 

Before working out the value ofδ, let’s figure out what the rest of the proof
will look like. Based on the form of the goal at this point, we should proceed by
letting _x_ be arbitrary, assuming 0<| _x_ - 3 |< δ , and then proving

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -
7

#### ∣∣

```
< ε. Thus, the entire proof will have the following form:
```

```
Letεbe an arbitrary positive number.
Letδ =(some positive number).
Let x be arbitrary.
Suppose 0<| x - 3 |< δ.
[Proof of
```

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

```
< ε goes here.]
Therefore 0<| x - 3 |< δ →
```

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

```
< ε.
```

160 _Proofs_

```
Since∣ x was arbitrary, we can conclude that∀ x (0<| x - 3 |< δ →
∣^2 x^2 x --^5 x 3 -^3 - 7 ∣∣< ε ).
Therefore∃δ > 0 ∀ x
```

#### (

```
0 <| x - 3 |< δ →
```

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

```
< ε
```

#### )

#### 

```
Sinceεwas arbitrary, it follows that ∀ε > 0 ∃δ > 0 ∀ x
```

#### (

```
0 <| x - 3 |<
δ →
```

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

```
< ε
```

#### )

#### 

Two steps remain to be worked out. We must decide what value to assign
to δ, and we must fill in the proof of

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

< ε. We’ll work on the
second of these steps first, and in the course of working out this step it will
become clear what value we should use for δ. The givens and goal for this
second step are as follows:

```
Givens Goal
ε > 0
```

#### ∣∣

```
∣∣^2 x
```

(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

```
∣∣< ε
```

```
δ=(some positive number)
0 <| x - 3 |< δ
```

First of all, note that we have 0<| _x_ - 3 |as a given, so _x_ =3 and therefore
the fraction^2 _x_^2 _x_ --^5 _x_ 3 -^3 is defined. Factoring the numerator, we find that
∣∣
∣∣^2 _x_

(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

#### ∣∣=

#### ∣∣

```
∣∣(2 x +1)( x -3)
x - 3
```

#### - 7

#### ∣∣

#### ∣∣

```
= | 2 x + 1 - 7 | = | 2 x - 6 | = 2 | x - 3 |.
```

Now we also have as a given that| _x_ - 3 |< δ , so 2 | _x_ - 3 |< 2 δ. Combining
this with the previous equation, we get

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

```
< 2 δ, and our goal is
```

∣∣ 2 _x_ (^2) - 5 _x_ - 3
_x_ - 3 -^7

#### ∣∣

< ε. Thus, if we choseδso that 2δ =ε, we’d be done. In other
words, we should letδ =ε/2. Note that sinceε > 0, this is a positive number,
as required.

_Solution_

**Theorem.** _x_ lim→ 32 _x_

(^2) - 5 _x_ - 3
_x_ - 3 =^7_.
Proof._ Supposeε > 0. Letδ =ε/2, which is also clearly positive. Let _x_ be an
arbitrary real number, and suppose that 0<| _x_ - 3 |< δ. Then
∣∣
∣∣^2 _x_
(^2) - 5 _x_ - 3
_x_ - 3

#### - 7

#### ∣∣

#### ∣∣=

#### ∣∣

```
∣∣(2 x +1)( x -3)
x - 3
```

#### - 7

#### ∣∣

#### ∣∣

```
= | 2 x + 1 - 7 | = | 2 x - 6 |
= 2 | x - 3 |< 2 δ = 2
```

```
(ε
2
```

#### )

```
=ε. 
```

```
More Examples of Proofs 161
Exercises
```

pd∗1. SupposeFis a family of sets. Prove that there is a unique set _A_ that has

```
the following two properties:
(a) F⊆P( A ).
(b) ∀ B (F⊆P( B )→ A ⊆ B ).
(Hint: First try an example. LetF= {{ 1 , 2 , 3 },{ 2 , 3 , 4 },{ 3 , 4 , 5 }}. Can
you find the set A that has properties (a) and (b)?)
pd2. Suppose A and B are sets. What can you prove aboutP( A \ B )\(P( A )\
P( B ))? (No, it’s not equal to∅. Try some examples and see what you
get.)
pd3. Suppose that A , B , and C are sets. Prove that the following statements
are equivalent:
(a) ( A  C )+( B  C )=∅.
(b) A + B ⊆ C ⊆ A , B.
(c) A  C ⊆ A  B.
∗4. Suppose{ Ai | i ∈ I }is a family of sets. Prove that if P(, i ∈ IAi )⊆
, i ∈ I P( Ai ), then there is some i ∈ I such that∀ j ∈ I ( Aj ⊆ Ai ).
```

5. SupposeF is a nonempty family of sets. Let _I_ = , F and _J_ = + F.
    Suppose also that _J_ =∅, and notice that it follows that for every _X_ ∈F,
       _X_ =∅, and also that _I_ =∅. Finally, suppose that{ _Ai_ | _i_ ∈ _I_ }is an
    indexed family of sets.
    (a) Prove that, _i_ ∈ _IAi_ = , _X_ ∈F(, _i_ ∈ _XAi_ ).
    (b) Prove that+ _i_ ∈ _IAi_ = + _X_ ∈F(+ _i_ ∈ _XAi_ ).
    (c) Prove that, _i_ ∈ _JAi_ ⊆ + _X_ ∈F(, _i_ ∈ _XAi_ ). Is it always true that, _i_ ∈ _JAi_ =
       + _X_ ∈F(, _i_ ∈ _XAi_ )?Give either a proof or a counterexample to justify
       your answer.
    (d) Discover and prove a theorem relating+ _i_ ∈ _JAi_ and, _X_ ∈F(+ _i_ ∈ _XAi_ ).
6. Prove that lim
    _x_ → 2

```
3 x^2 - 12
x - 2 =12.
∗7. Prove that if lim
x → cf ( x )= L and L >0, then there is some numberδ >^0
such that for all x , if 0 <| x - c |< δ then f ( x )>0.
```

8. Prove that if lim _x_ → _cf_ ( _x_ )= _L_ then lim _x_ → _c_ 7 _f_ ( _x_ )= 7 _L_.
∗9. Consider the following putative theorem.

```
Theorem. There are irrational numbers a and b such that abis rational.
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct? (Note: The proof uses the
fact that
```

#### √

```
2 is irrational, which we’ll prove in Chapter 6.)
```

162 _Proofs_

```
Proof. Either
```

#### √

#### 2

```
√ 2
is rational or it’s irrational.
Case 1.
```

#### √

#### 2

```
√ 2
is rational. Let a = b =
```

#### √

2. Then _a_ and _b_ are irrational,
and _ab_ =

#### √

#### 2

```
√ 2
, which we are assuming in this case is rational.
Case 2.
```

#### √

#### 2

```
√ 2
is irrational. Let a =
```

#### √

#### 2

```
√ 2
and b =
```

#### √

2. Then _a_ is
irrational by assumption, and we know that _b_ is also irrational. Also,
_ab_ =

#### (√

#### 2

#### √ 2 )√

(^2) =√ 2 (
√ 2 ·√2)
=(

#### √

```
2)^2 =2, which is rational. 
```

### 4 Relations

## 4.1 Ordered Pairs and Cartesian Products

In Chapter 1 we discussed truth sets for statements containing a single free
variable. In this chapter we extend this idea to include statements with more
than one free variable.
For example, suppose _P_ ( _x_ , _y_ ) is a statement with two free variables _x_ and _y_.
Wecan’tspeakofthisstatementasbeingtrueorfalseuntilwehavespecifiedtwo
values – one for _x_ and one for _y_. Thus, if we want the truth set to identify which
assignments of values to free variables make the statement come out true, then
the truth set will have to contain not individual values, but pairs of values. We
will specify a pair of values by writing the two values in parentheses separated
by a comma. For example, let _D_ ( _x_ , _y_ ) mean “ _x_ divides _y_ .” Then _D_ (6,18) is
true, since 6|18, so the pair of values (6, 18) is an assignment of values to the
variables _x_ and _y_ that makes the statement _D_ ( _x_ , _y_ ) come out true. Note that 18
does not divide 6, so the pair of values (18, 6) makes the statement _D_ ( _x_ , _y_ ) false.
We must therefore distinguish between the pairs (18, 6) and (6, 18). Because
the order of the values in the pair makes a difference, we will refer to a pair
( _a_ , _b_ ) as an _ordered pair_ , with _first coordinate a_ and _second coordinate b_.
You have probably seen ordered pairs before when studying points in the
_xy_ plane. The use of _x_ and _y_ coordinates to identify points in the plane works
by assigning to each point in the plane an ordered pair, whose coordinates
are the _x_ and _y_ coordinates of the point. The pairs must be ordered because,
for example, the points (2, 5) and (5, 2) are different points in the plane. In
this case the coordinates of the ordered pairs are real numbers, but ordered
pairs can have anything at all as their coordinates. For example, suppose we
let _C_ ( _x_ , _y_ ) stand for the statement “ _x_ has _y_ children.” In this statement the
variable _x_ ranges over the set of all people, and _y_ ranges over the set of all
natural numbers. Thus, the only ordered pairs it makes sense to consider when
163

164 _Relations_

discussing assignments of values to the variables _x_ and _y_ in this statement
are pairs in which the first coordinate is a person and the second is a natural
number. For example, the assignment (Prince Charles, 2) makes the statement
_C_ ( _x_ , _y_ ) come out true, because Prince Charles does have two children, whereas
the assignment (Johnny Carson, 37) makes the statement false. Note that the
assignment (2, Prince Charles) makes no sense, because it would lead to the
nonsensical statement “2 has Prince Charles children.”
In general, if _P_ ( _x_ , _y_ ) is a statement in which _x_ ranges over some set _A_ and
_y_ ranges over a set _B_ , then the only assignments of values to _x_ and _y_ that will
make sense in _P_ ( _x_ , _y_ ) will be ordered pairs in which the first coordinate is an
element of _A_ and the second comes from _B_. We therefore make the following
definition:

**Definition 4.1.1.** Suppose _A_ and _B_ are sets. Then the _Cartesian product_ of
_A_ and _B_ , denoted _A_ × _B_ , is the set of all ordered pairs in which the first coor-
dinate is an element of _A_ and the second is an element of _B_. In other words,

```
A × B = { ( a , b )| a ∈ A and b ∈ B }.
```

**Example 4.1.2.**

1. If _A_ = { red,green} and _B_ = { 2 , 3 , 5 } then _A_ × _B_ = { (red,2),(red,3),
    (red,5),(green,2),(green,3),(green,5)}.
2. If _P_ =the set of all people then _P_ ×N= { ( _p_ , _n_ )| _p_ is a person and _n_
    is a natural number}={(Prince Charles, 0), (Prince Charles, 1), (Prince
    Charles, 2),... , (Johnny Carson, 0), (Johnny Carson, 1),... }. These are the
    ordered pairs that make sense as assignments of values to the free variables
    _x_ and _y_ in the statement _C_ ( _x_ , _y_ ).
3.R×R= { ( _x_ , _y_ )| _x_ and _y_ are real numbers}. These are the coordinates of all
    the points in the plane. For obvious reasons, this set is sometimes writtenR^2.

The introduction of a new mathematical concept gives us an opportunity
to practice our proof-writing techniques by proving some basic properties of
the new concept. Here’s a theorem giving some basic properties of Cartesian
products.

**Theorem 4.1.3.** _Suppose A, B, C, and D are sets._

1. _A_ ×( _B_ + _C_ )=( _A_ × _B_ )+( _A_ × _C_ ).
2. _A_ ×( _B_ , _C_ )=( _A_ × _B_ ),( _A_ × _C_ ).
3. ( _A_ × _B_ )+( _C_ × _D_ )=( _A_ + _C_ )×( _B_ + _D_ ).
4. ( _A_ × _B_ ),( _C_ × _D_ )⊆( _A_ , _C_ )×( _B_ , _D_ ).
5. _A_ ×∅=∅× _A_ =∅.

```
Ordered Pairs and Cartesian Products 165
Proof of 1. Let p be an arbitrary element of A ×( B + C ). Then by the defi-
nition of Cartesian product, p must be an ordered pair whose first coordinate
is an element of A and second coordinate is an element of B + C. In other
words, p =( x , y ) for some x ∈ A and y ∈ B + C. Since y ∈ B + C , y ∈ B
and y ∈ C. Since x ∈ A and y ∈ B , p =( x , y )∈ A × B , and similarly p ∈
A × C. Thus, p ∈( A × B )+( A × C ). Since p was an arbitrary element of
A ×( B + C ), it follows that A ×( B + C )⊆( A × B )+( A × C ).
Now let p be an arbitrary element of ( A × B )+( A × C ). Then p ∈ A × B ,
so p =( x , y ) for some x ∈ A and y ∈ B. Also, ( x , y )= p ∈ A × C , so
y ∈ C. Since y ∈ B and y ∈ C , y ∈ B + C. Thus, p =( x , y )∈ A ×( B + C ).
Since p was an arbitrary element of ( A × B )+( A × C ) we can con-
clude that ( A × B )+( A × C )⊆ A ×( B + C ), so A ×( B + C )=( A × B )+
( A × C ). 
```

_Commentary._ Before continuing with the proofs of the other parts, we give a
brief commentary on the proof just given. Statement 1 is an equation between
two sets, so as we saw in Example 3.4.4, there are two natural approaches
we could take to prove it. We could prove ∀ _p_ [ _p_ ∈ _A_ ×( _B_ + _C_ )↔ _p_ ∈
( _A_ × _B_ )+( _A_ × _C_ )] or we could prove both _A_ ×( _B_ + _C_ )⊆( _A_ × _B_ )+( _A_ ×
_C_ ) and ( _A_ × _B_ )+( _A_ × _C_ )⊆ _A_ ×( _B_ + _C_ ). In this proof, we have taken the
second approach. The first paragraph gives the proof that _A_ ×( _B_ + _C_ )⊆
( _A_ × _B_ )+( _A_ × _C_ ) and the second gives the proof that ( _A_ × _B_ )+( _A_ × _C_ )⊆
_A_ ×( _B_ + _C_ ).
In the first of these proofs we take the usual approach of letting _p_ be an arbi-
trary element of _A_ ×( _B_ + _C_ ) and then proving _p_ ∈( _A_ × _B_ )+( _A_ × _C_ ). Be-
cause _p_ ∈ _A_ ×( _B_ + _C_ ) means∃ _x_ ∃ _y_ ( _x_ ∈ _A_ and  _y_ ∈ _B_ + _C_ and  _p_ =( _x_ , _y_ )), we
immediately introduce the variables _x_ and _y_ by existential instantiation. The
rest of the proof involves simply working out the definitions of the set theory op-
erations involved. The proof of the opposite inclusion in the second paragraph
is similar.
Note that in both parts of this proof we introduced an arbitrary object _p_
that turned out to be an ordered pair, and we were therefore able to say that
_p_ =( _x_ , _y_ )forsomeobjects _x_ and _y_ .InmostproofsinvolvingCartesianproducts
mathematicians suppress this step. If it is clear from the beginning that an object
will turn out to be an ordered pair, it is usually just called ( _x_ , _y_ ) from the outset.
We will follow this practice in our proofs.
We leave the proofs of statements 2 and 3 as exercises (see exercise 5).

_Proof of 4._ Let ( _x_ , _y_ ) be an arbitrary element of ( _A_ × _B_ ),( _C_ × _D_ ). Then
either ( _x_ , _y_ )∈ _A_ × _B_ or ( _x_ , _y_ )∈ _C_ × _D_.

166 _Relations_

_Case 1_. ( _x_ , _y_ )∈ _A_ × _B_. Then _x_ ∈ _A_ and _y_ ∈ _B_ , so clearly _x_ ∈ _A_ , _C_ and
_y_ ∈ _B_ , _D_. Therefore ( _x_ , _y_ )∈( _A_ , _C_ )×( _B_ , _D_ ).
_Case 2_. ( _x_ , _y_ )∈ _C_ × _D_. A similar argument shows that ( _x_ , _y_ )∈( _A_ , _C_ )×
( _B_ , _D_ ).
Since ( _x_ , _y_ ) was an arbitrary element of ( _A_ × _B_ ),( _C_ × _D_ ), it follows that
( _A_ × _B_ ),( _C_ × _D_ )⊆( _A_ , _C_ )×( _B_ , _D_ ). 

_Proof of 5._ Suppose _A_ ×∅=∅. Then _A_ ×∅has at least one element, and by
the definition of Cartesian product this element must be an ordered pair ( _x_ , _y_ )
for some _x_ ∈ _A_ and _y_ ∈∅. But this is impossible, because∅has no elements.
Thus, _A_ ×∅=∅. The proof that∅× _A_ =∅is similar. 

_Commentary._ Statement 4 says that one set is a subset of another, and the proof
follows the usual pattern for statements of this form: We start with an arbitrary
element of the first set and then prove that it’s an element of the second. It is
clear that the arbitrary element of the first set must be an ordered pair, so we
have written it as an ordered pair from the beginning.
Thus, for the rest of the proof we have ( _x_ , _y_ )∈( _A_ × _B_ ),( _C_ × _D_ ) as a
given, and the goal is to prove that ( _x_ , _y_ )∈( _A_ , _C_ )×( _B_ , _D_ ). The given
means ( _x_ , _y_ )∈ _A_ × _B_ or ( _x_ , _y_ )∈ _C_ × _D_ , so proof by cases is an appropriate
strategy. In each case it is easy to prove the goal.
Statement 5 means _A_ ×∅=∅and ∅× _A_ =∅, so we treat this as two goals
and prove _A_ ×∅=∅and∅× _A_ =∅separately. To say that a set equals the
empty set is actually a negative statement, although it may not look like it on
the surface, because it means that the set does _not_ have any elements. Thus,
it is not surprising that the proof that _A_ ×∅=∅proceeds by contradiction.
The assumption that _A_ ×∅=∅means∃ _p_ ( _p_ ∈ _A_ ×∅), so our next step is
to introduce a name for an element of _A_ ×∅. Once again, it is clear that the
new object being introduced in the proof is an ordered pair, so we have written
it as an ordered pair ( _x_ , _y_ ) from the beginning. Writing out the meaning of
( _x_ , _y_ )∈ _A_ ×∅leads immediately to a contradiction.
The proof that∅× _A_ =∅is similar, but simply _saying_ this doesn’t _prove_
it. Thus, the claim in the proof that this part of the proof is similar is really
an indication that the second half of the proof is being left as an exercise. You
should work through the details of this proof in your head (or if necessary write
them out on paper) to make sure that a proof similar to the proof in the first
half will really work.
Because the order of the coordinates in an ordered pair matters, _A_ × _B_
and _B_ × _A_ mean different things. Does it ever happen that _A_ × _B_ = _B_ × _A_?
Well, one way this could happen is if _A_ = _B_. Clearly if _A_ = _B_ then _A_ × _B_ =
_A_ × _A_ = _B_ × _A_ .Are there any other possibilities?

_Ordered Pairs and Cartesian Products_ 167
Here’s an incorrect proof that _A_ × _B_ = _B_ × _A_ only if _A_ = _B_ : The first
coordinates of the ordered pairs in _A_ × _B_ come from _A_ , and the first coordinates
of the ordered pairs in _B_ × _A_ come from _B_. But if _A_ × _B_ = _B_ × _A_ , then the
first coordinates in these two sets must be the same, so _A_ = _B_.
This is a good example of why it’s important to stick to the rules of proof-
writing we’ve studied rather than allowing yourself to be convinced by any rea-
soning that looks plausible. The informal reasoning in the preceding paragraph
is incorrect, and we can find the error by trying to reformulate this reasoning
as a formal proof. Suppose _A_ × _B_ = _B_ × _A_. To prove that _A_ = _B_ we could
let _x_ be arbitrary and then try to prove _x_ ∈ _A_ → _x_ ∈ _B_ and _x_ ∈ _B_ → _x_ ∈ _A_.
For the first of these we assume _x_ ∈ _A_ and try to prove _x_ ∈ _B_. Now the incor-
rect proof suggests that we should try to show that _x_ is the first coordinate of
some ordered pair in _A_ × _B_ and then use the fact that _A_ × _B_ = _B_ × _A_. We
could do this by trying to find some object _y_ ∈ _B_ and then forming the ordered
pair ( _x_ , _y_ ). Then we would have ( _x_ , _y_ )∈ _A_ × _B_ and _A_ × _B_ = _B_ × _A_ , and it
would follow that ( _x_ , _y_ )∈ _B_ × _A_ and therefore _x_ ∈ _B_. But how can we find
an object _y_ ∈ _B_? We don’t have any given information about _B_ , other than the
fact that _A_ × _B_ = _B_ × _A_. In fact, _B could be the empty set!_ This is theflaw in
the proof. If _B_ =∅, then it will be impossible to choose _y_ ∈ _B_ , and the proof
will fall apart. For similar reasons, the other half of the proof won’t work if
_A_ =∅.
Not only have we found theflaw in the proof, but we can now figure out
what to do about it. We must take into account the possibility that _A_ or _B_ might
be the empty set.

**Theorem 4.1.4.** _Suppose A and B are sets. Then A_ × _B_ = _B_ × _A iff either
A_ =∅, _B_ =∅ _, or A_ = _B.
Proof._ (→) Suppose _A_ × _B_ = _B_ × _A_. If either _A_ =∅or _B_ =∅, then there
is nothing more to prove, so suppose _A_ =∅and _B_ =∅. We will show that
_A_ = _B_. Let _x_ be arbitrary, and suppose _x_ ∈ _A_. Since _B_ =∅we can choose
some _y_ ∈ _B_. Then ( _x_ , _y_ )∈ _A_ × _B_ = _B_ × _A_ , so _x_ ∈ _B_.
Now suppose _x_ ∈ _B_. Since _A_ =∅we can choose some _z_ ∈ _A_. Therefore
( _x_ , _z_ )∈ _B_ × _A_ = _A_ × _B_ , so _x_ ∈ _A_. Thus _A_ = _B_ , as required.
(←) Suppose either _A_ =∅, _B_ =∅, or _A_ = _B_.
_Case 1_. _A_ =∅. Then _A_ × _B_ =∅× _B_ =∅= _B_ ×∅= _B_ × _A_.
_Case 2_. _B_ =∅. Similar to case 1.
_Case 3_. _A_ = _B_. Then _A_ × _B_ = _A_ × _A_ = _B_ × _A_. 

_Commentary._ Of course, the statement to be proven is an iff statement, so
we prove both directions separately. For the→direction, our goal is _A_ =
∅or  _B_ =∅or  _A_ = _B_ , which could be written as ( _A_ =∅or  _B_ =∅)or  _A_ = _B_ ,

168 _Relations_

so by one of our strategies for disjunctions from Chapter 3 we can assume
not ( _A_ =∅or  _B_ =∅) and prove _A_ = _B_. Note that by one of DeMorgan’s laws,
not ( _A_ =∅or  _B_ =∅) is equivalent to _A_ =∅and  _B_ =∅, so we treat this as two
assumptions, _A_ =∅and _B_ =∅. Of course we could also have proceeded dif-
ferently, for example by assuming _A_ = _B_ and _B_ =∅and then proving _A_ =∅.
But recall from the commentary on part 5 of Theorem 4.1.3 that _A_ =∅and
_B_ =∅are actually negative statements, so because it is generally better to
work with positive than negative statements, we’re better off negating both of
them to get the assumptions _A_ =∅and _B_ =∅ and then proving the pos-
itive statement _A_ = _B_. The assumptions _A_ =∅and _B_ =∅are existential
statements, so they are used in the proof to justify the introduction of _y_ and _z_.
The proof that _A_ = _B_ proceeds in the obvious way, by introducing an arbitrary
object _x_ and then proving _x_ ∈ _A_ ↔ _x_ ∈ _B_.
For the←direction of the proof, we have _A_ =∅or  _B_ =∅or  _A_ = _B_ as a
given, so it is natural to use proof by cases. In each case, the goal is easy to
prove.

This theorem is a better illustration of how mathematics is really done than
most of the examples we’ve seen so far. Usually when you’re trying to find
the answer to a mathematical question you won’t know in advance what the
answer is going to be. You might be able to take a guess at the answer and you
might have an idea for how the proof might go, but your guess might be wrong
and your idea for the proof might beflawed. It is only by turning your idea into
a formal proof, according to the rules in Chapter 3, that you can be sure your
answer is right. Often in the course of trying to construct a formal proof you will
discover aflaw in your reasoning, as we did earlier, and you may have to revise
your ideas to overcome theflaw. The final theorem and proof are often the result
of repeated mistakes and corrections. Of course, when mathematicians write
up their theorems and proofs, they follow our rule that proofs are for justifying
theorems, not for explaining thought processes, and so they don’t describe
all the mistakes they made. But just because mathematicians don’t explain
their mistakes in their proofs, you shouldn’t be fooled into thinking they don’t
make any!
Now that we know how to use ordered pairs and Cartesian products to talk
about assigning values to free variables, we’re ready to define truth sets for
statements containing two free variables.

**Definition 4.1.5.** Suppose _P_ ( _x_ , _y_ ) is a statement with two free variables in
which _x_ ranges over a set _A_ and _y_ ranges over another set _B_. Then _A_ × _B_ is the
set of all assignments to _x_ and _y_ that make sense in the statement _P_ ( _x_ , _y_ ). The

```
Ordered Pairs and Cartesian Products 169
truth set of P ( x , y ) is the subset of A × B consisting of those assignments that
make the statement come out true. In other words,
```

```
truth set of P ( x , y )= { ( a , b )∈ A × B | P ( a , b )}.
```

```
Example 4.1.6. What are the truth sets of the following statements?
```

1. “ _x_ has _y_ children,” where _x_ ranges over the set _P_ of all people and _y_ ranges
    overN.
2. “ _x_ is located in _y_ ,” where _x_ ranges over the set _C_ of all cities and _y_ ranges
    over the set _N_ of all countries.
3. “ _y_ = 2 _x_ -3,” where _x_ and _y_ range overR.

_Solutions_

1.{( _p_ , _n_ )∈ _P_ ×N|the person _p_ has _n_ children}={(Prince Charles, 2),... }.
2.{( _c_ , _n_ )∈ _C_ × _N_ |the city _c_ is located in the country _n_ }={(New York,
United States), (Tokyo, Japan), (Paris, France),... }.
3.{( _x_ , _y_ )∈R×R| _y_ = 2 _x_ - 3 } = { (0,-3),(1,-1),(2,1),... }. You are
probably already familiar with the fact that the ordered pairs in this set
are the coordinates of points in the plane that lie along a certain straight
line, called the _graph_ of the equation _y_ = 2 _x_ -3. Thus, you can think of
the graph of the equation as a picture of its truth set!

Many of the facts about truth sets for statements with one free variable that
we discussed in Chapter 1 carry over to truth sets for statements with two free
variables. For example, suppose _T_ is the truth set of a statement _P_ ( _x_ , _y_ ), where
_x_ ranges over some set _A_ and _y_ ranges over _B_. Then for any _a_ ∈ _A_ and _b_ ∈ _B_
the statement ( _a_ , _b_ )∈ _T_ means the same thing as _P_ ( _a_ , _b_ ). Also, if _P_ ( _x_ , _y_ ) is
true for every _x_ ∈ _A_ and _y_ ∈ _B_ , then _T_ = _A_ × _B_ , and if _P_ ( _x_ , _y_ ) is false for
every _x_ ∈ _A_ and _y_ ∈ _B_ , then _T_ =∅. If _S_ is the truth set of another statement
_Q_ ( _x_ , _y_ ), then the truth set of the statement _P_ ( _x_ , _y_ )and  _Q_ ( _x_ , _y_ ) is _T_ + _S_ , and the
truth set of _P_ ( _x_ , _y_ )or  _Q_ ( _x_ , _y_ ) is _T_ , _S_.
Although we’ll be concentrating on ordered pairs for the rest of this chapter,
it is possible to work with ordered triples, ordered quadruples, and so on. These
might be used to talk about truth sets for statements containing three or more
free variables. For example, let _L_ ( _x_ , _y_ , _z_ ) be the statement “ _x_ has lived in _y_ for
_z_ years,” where _x_ ranges over the set _P_ of all people, _y_ ranges over the set _C_
of all cities, and _z_ ranges overN. Then the assignments of values to the free
variables that make sense in this statement would be ordered triples ( _p_ , _c_ , _n_ ),
where _p_ is a person, _c_ is a city, and _n_ is a natural number. The set of all such
ordered triples would be written _P_ × _C_ ×N, and the truth set of the statement

170 _Relations_

_L_ ( _x_ , _y_ , _z_ ) would be the set{( _p_ , _c_ , _n_ )∈ _P_ × _C_ ×N|the person _p_ has lived in
the city _c_ for _n_ years}.

```
Exercises
```

```
∗1. What are the truth sets of the following statements? List a few elements
of each truth set.
(a) “ x is a parent of y ,” where x and y both range over the set P of all
people.
(b) “Thereissomeonewholivesin x andattends y ,”where x rangesover
the set C of all cities and y ranges over the set U of all universities.
```

2. What are the truth sets of the following statements? List a few elements
    of each truth set.
    (a) “ _x_ lives in _y_ ,” where _x_ ranges over the set _P_ of all people and _y_
       ranges over the set _C_ of all cities.
    (b) “The population of _x_ is _y_ ,” where _x_ ranges over the set _C_ of all
       cities and _y_ ranges overN.
3. The truth sets of the following statements are subsets ofR^2. List a few
    elements of each truth set. Draw a picture showing all the points in the
    plane whose coordinates are in the truth set.
    (a) _y_ = _x_^2 - _x_ -2.
(b) _y_ < _x_.
(c) Either _y_ = _x_^2 - _x_ -2 or _y_ = 3 _x_ -2.
(d) _y_ < _x_ , and either _y_ = _x_^2 - _x_ -2 or _y_ = 3 _x_ -2.
∗4. Let _A_ = { 1 , 2 , 3 }, _B_ = { 1 , 4 }, _C_ = { 3 , 4 }, and _D_ = { 5 }. Compute all
the sets mentioned in Theorem 4.1.3 and verify that all parts of the
theorem are true.
5. Prove parts 2 and 3 of Theorem 4.1.3.
∗6. What’s wrong with the following proof that for any sets _A, B, C,_ and
_D_ , ( _A_ , _C_ )×( _B_ , _D_ )⊆( _A_ × _B_ ),( _C_ × _D_ )? (Note that this is the re-
verse of the inclusion in part 4 of Theorem 4.1.3.)

```
Proof. Suppose ( x , y )∈( A , C )×( B , D ). Then x ∈ A , C and y ∈
B , D , so either x ∈ A or x ∈ C , and either y ∈ B or y ∈ D. We con-
sider these cases separately.
Case 1. x ∈ A and y ∈ B. Then ( x , y )∈ A × B.
Case 2. x ∈ C and y ∈ D. Then ( x , y )∈ C × D.
Thus, either ( x , y )∈ A × B or ( x , y )∈ C × D , so ( x , y )∈( A × B ),
( C × D ). 
```

```
Relations 171
```

7. If _A_ has _m_ elements and _B_ has _n_ elements, how many elements does
    _A_ × _B_ have?
pd∗8. Is it true that for any sets _A_ , _B_ , and _C_ , _A_ ×( _B_ \ _C_ )=( _A_ × _B_ )\( _A_ × _C_ )?
Give either a proof or a counterexample to justify your answer.
pd9. Prove that for any sets _A_ , _B_ , _C_ , and _D_ , ( _A_ × _B_ )\( _C_ × _D_ )=[ _A_ ×
( _B_ \ _D_ )],[( _A_ \ _C_ )× _B_ ].
pd10. Prove that for any sets _A_ , _B_ , _C_ , and _D_ , if _A_ × _B_ and _C_ × _D_ are disjoint,
then either _A_ and _C_ are disjoint or _B_ and _D_ are disjoint.
11. Suppose{ _Ai_ | _i_ ∈ _I_ }and{ _Bi_ | _i_ ∈ _I_ }are indexed families of sets.
(a) Prove that, _i_ ∈ _I_ ( _Ai_ × _Bi_ )⊆(, _i_ ∈ _IAi_ )×(, _i_ ∈ _IBi_ ).
(b) For each ( _i_ , _j_ )∈ _I_ × _I_ let _C_ ( _i_ , _j_ )= _Ai_ × _Bj_ , and let _P_ = _I_ × _I_.
Prove that, _p_ ∈ _PCp_ =(, _i_ ∈ _IAi_ )×(, _i_ ∈ _IBi_ ).
∗12. This problem was suggested by Prof. Alan Taylor of Union College.
Consider the following putative theorem.

```
Theorem? For any sets A, B, C, and D, if A × B ⊆ C × D then A ⊆ C
and B ⊆ D.
```

```
Is the following proof correct? If so, what proof strategies does it use?
If not, can it be fixed? Is the theorem correct?
```

```
Proof. Suppose A × B ⊆ C × D. Let a be an arbitrary element of A
and let b be an arbitrary element of B. Then ( a , b )∈ A × B , so since
A × B ⊆ C × D ,( a , b )∈ C × D. Therefore a ∈ C and b ∈ D. Since
a and b were arbitrary elements of A and B , respectively, this shows that
A ⊆ C and B ⊆ D. 
```

## 4.2 Relations

Suppose _P_ ( _x_ , _y_ ) is a statement with two free variables _x_ and _y_. Often such a
statement can be thought of as expressing a _relationship_ between _x_ and _y_. The
truth set of the statement _P_ ( _x_ , _y_ ) is a set of ordered pairs that records when this
relationship holds. In fact, it is often useful to think of any set of ordered pairs
in this way, as a record of when some relationship holds. This is the motivation
behind the following definition.

**Definition 4.2.1.** Suppose _A_ and _B_ are sets. Then a set _R_ ⊆ _A_ × _B_ is called a
_relation from A to B_.

If _x_ ranges over _A_ and _y_ ranges over _B_ , then clearly the truth set of
any statement _P_ ( _x_ , _y_ ) will be a relation from _A_ to _B_. However, note that

172 _Relations_

Definition 4.2.1 does not require that a set of ordered pairs be defined as the
truth set of some statement for the set to be a relation. Although thinking about
truth sets was the motivation for this definition, the definition says nothing
explicitly about truth sets. According to the definition, _any_ subset of _A_ × _B_ is
to be called a relation from _A_ to _B_.

**Example 4.2.2.** Here are some examples of relations from one set to another.

1. Let _A_ = { 1 , 2 , 3 }, _B_ = { 3 , 4 , 5 }, and _R_ = { (1,3),(1,5),(3,3)}. Then _R_ ⊆
    _A_ × _B_ , so _R_ is a relation from _A_ to _B_.
2. Let _G_ = { ( _x_ , _y_ )∈R×R| _x_ > _y_ }. Then _G_ is a relation fromRtoR.
3. Let _A_ = { 1 , 2 }and _B_ =P( _A_ )={∅,{ 1 },{ 2 },{ 1 , 2 }}. Let _E_ = { ( _x_ , _y_ )∈
    _A_ × _B_ | _x_ ∈ _y_ }. Then _E_ is a relation from _A_ to _B_. In this case, _E_ =
{(1,{ 1 }),(1,{ 1 , 2 }),(2,{ 2 }),(2,{ 1 , 2 })}.
For the next three examples, let _S_ be the set of all students at your school,
_R_ the set of all dorm rooms, _P_ the set of all professors, and _C_ the set of all
courses.
4. Let _L_ = { ( _s_ , _r_ )∈ _S_ × _R_ |the student _s_ lives in the dorm room _r_ }. Then _L_
    is a relation from _S_ to _R_.
5. Let _E_ = { ( _s_ , _c_ )∈ _S_ × _C_ |the student _s_ is enrolled in the course _c_ }. Then _E_
    is a relation from _S_ to _C_.
6. Let _T_ = { ( _c_ , _p_ )∈ _C_ × _P_ |the course _c_ is taught by the professor _p_ }. Then
    _T_ is a relation from _C_ to _P_.

So far we have concentrated mostly on developing your proof-writing skills.
Another important skill in mathematics is the ability to understand and apply
new definitions. Here are the definitions for several new concepts involving
relations. We’ll soon give examples illustrating these concepts, but first see if
you can understand the concepts based on their definitions.

**Definition 4.2.3.** Suppose _R_ is a relation from _A_ to _B_. Then the _domain_ of _R_
is the set

```
Dom( R )= { a ∈ A | ∃ b ∈ B (( a , b )∈ R )}.
```

The _range_ of _R_ is the set

```
Ran( R )= { b ∈ B | ∃ a ∈ A (( a , b )∈ R )}.
```

The _inverse_ of _R_ is the relation _R_ -^1 from _B_ to _A_ defined as follows:

```
R -^1 = { ( b , a )∈ B × A |( a , b )∈ R }.
```

```
Relations 173
Finally, suppose R is a relation from A to B and S is a relation from B to C.
Then the composition of S and R is the relation S ◦ R from A to C defined as
follows:
S ◦ R = { ( a , c )∈ A × C | ∃ b ∈ B (( a , b )∈ R and ( b , c )∈ S )}.
```

```
Notice that we have assumed that the second coordinates of pairs in R and the
first coordinates of pairs in S both come from the same set, B. If these sets were
not the same, the composition S ◦ R would be undefined.
```

According to Definition 4.2.3, the domain of a relation from _A_ to _B_ is the
set containing all the first coordinates of ordered pairs in the relation. This will
in general be a subset of _A_ , but it need not be all of _A_. For example, consider
the relation _L_ from part 4 of Example 4.2.2, which pairs up students with the
dorm rooms in which they live. The domain of _L_ would contain all students
who appear as the first coordinate in some ordered pair in _L_ – in other words,
all students who live in some dorm room – but would not contain, for example,
students who live in apartments off campus. Working it out more carefully from
the definition as stated, we have

```
Dom( L )= { s ∈ S | ∃ r ∈ R (( s , r )∈ L )}
= { s ∈ S | ∃ r ∈ R (the student s lives in the dorm room r )}
= { s ∈ S |the student s lives in some dorm room}.
```

Similarly, the range of a relation is the set containing all the second coordinates
of its ordered pairs. For example, the range of the relation _L_ would be the set
of all dorm rooms in which some student lives. Any dorm rooms that are
unoccupied would not be in the range of _L_.
The inverse of a relation contains exactly the same ordered pairs as the
original relation, but with the order of the coordinates of each pair reversed.
Thus, in the case of the relation _L_ , if Joe Smith lives in room 213 Davis Hall,
then (Joe Smith, 213 Davis Hall)∈ _L_ and (213 Davis Hall, Joe Smith)∈ _L_ -^1.
In general, for any student _s_ and dorm room _r_ , we would have ( _r_ , _s_ )∈ _L_ -^1
iff ( _s_ , _r_ )∈ _L_. For another example, consider the relation _G_ from part 2 of
Example 4.2.2. It contains all ordered pairs of real numbers ( _x_ , _y_ ) in which _x_
is greater than _y_. We might call it the “greater-than” relation. Its inverse is

```
G -^1 = { ( x , y )∈R×R|( y , x )∈ G }
= { ( x , y )∈R×R| y > x }
= { ( x , y )∈R×R| x < y }.
```

```
In other words, the inverse of the greater-than relation is the less-than relation!
```

174 _Relations_

The most difficult concept introduced in Definition 4.2.3 is the concept of
the composition of two relations. For an example of this concept, consider
the relations _E_ and _T_ from parts 5 and 6 of Example 4.2.2. Recall that _E_
is a relation from the set _S_ of all students to the set _C_ of all courses, and
_T_ is a relation from _C_ to the set _P_ of all professors. According to Defini-
tion 4.2.3, the composition _T_ ◦ _E_ will be the relation from _S_ to _P_ defined as
follows:

```
T ◦ E = { ( s , p )∈ S × P | ∃ c ∈ C (( s , c )∈ E and ( c , p )∈ T )}
= { ( s , p )∈ S × P | ∃ c ∈ C (the student s is enrolled in the course c
and the course c is taught by the professor p )}
= { ( s , p )∈ S × P |the student s is enrolled in some course
taught by the professor p }.
```

Thus, if Joe Smith is enrolled in Biology 12 and Biology 12 is taught by
Professor Evans, then (Joe Smith, Biology 12)∈ _E_ and (Biology 12, Professor
Evans)∈ _T_ , and therefore (Joe Smith, Professor Evans)∈ _T_ ◦ _E_. In general, if
_s_ is some particular student and _p_ is a particular professor, then ( _s_ , _p_ )∈ _T_ ◦ _E_
iff there is some course _c_ such that ( _s_ , _c_ )∈ _E_ and ( _c_ , _p_ )∈ _T_. This notation may
seem backward at first. If ( _s_ , _c_ )∈ _E_ and ( _c_ , _p_ )∈ _T_ , then you might be tempted
to write ( _s_ , _p_ )∈ _E_ ◦ _T_ , but according to our definition, the proper notation is
( _s_ , _p_ )∈ _T_ ◦ _E_. In fact, _E_ ◦ _T_ is undefined, because the second coordinates of
ordered pairs in _T_ and the first coordinates of pairs in _E_ do not come from
the same set. The reason we’ve chosen to write compositions of relations in
this way will become clear in Chapter 5. For the moment, you’ll just have
to be careful about this notational detail when working with compositions of
relations.

**Example 4.2.4.** Let _S_ , _R_ , _C_ , and _P_ be the sets of students, dorm rooms,
courses, and professors at your school, as before, and let _L_ , _E_ , and _T_ be
the relations defined in parts 4–6 of Example 4.2.2. Describe the following
relations.

1. _E_ -^1.
2. _E_ ◦ _L_ -^1.
3. _E_ -^1 ◦ _E_.
4. _E_ ◦ _E_ -^1.
5. _T_ ◦( _E_ ◦ _L_ -^1 ).
6. ( _T_ ◦ _E_ )◦ _L_ -^1.

```
Relations 175
```

_Solutions_

1. _E_ -^1 = { ( _c_ , _s_ )∈ _C_ × _S_ |( _s_ , _c_ )∈ _E_ } = { ( _c_ , _s_ )∈ _C_ × _S_ |the student _s_ is en-
    rolled in the course _c_ }. For example, if Joe Smith is enrolled in Biology 12,
    then (Joe Smith, Biology 12)∈ _E_ and (Biology 12, Joe Smith)∈ _E_ -^1.
2. Because _L_ -^1 is a relation from _R_ to _S_ and _E_ is a relation from _S_ to _C_ , _E_ ◦ _L_ -^1
    will be the relation from _R_ to _C_ defined as follows.

```
E ◦ L -^1 = { ( r , c )∈ R × C | ∃ s ∈ S (( r , s )∈ L -^1 and ( s , c )∈ E )}
= { ( r , c )∈ R × C | ∃ s ∈ S (( s , r )∈ L and ( s , c )∈ E )}
= { ( r , c )∈ R × C | ∃ s ∈ S (the student s lives in the dorm
room r and is enrolled in the course c )}
= { ( r , c )∈ R × C |some student who lives in the room r
is enrolled in the course c }.
```

```
Returning to our favorite student Joe Smith, who is enrolled in Biology 12
and lives in room 213 Davis Hall, we have (213 Davis Hall, Joe Smith)
∈ L -^1 and (Joe Smith, Biology 12)∈ E , and therefore (213 Davis Hall,
Biology 12)∈ E ◦ L -^1.
```

3. Because _E_ is a relation from _S_ to _C_ and _E_ -^1 is a relation from _C_ to _S_ ,
    _E_ -^1 ◦ _E_ is the relation from _S_ to _S_ defined as follows.

```
E -^1 ◦ E = { ( s , t )∈ S × S | ∃ c ∈ C (( s , c )∈ E and ( c , t )∈ E -^1 )}
= { ( s , t )∈ S × S | ∃ c ∈ C (the student s is enrolled in the
course c ,and so is the student t )}
= { ( s , t )∈ S × S |there is some course that the students s
and t are both enrolled in}.
(Note that an arbitrary element of S × S is written ( s , t ), not ( s , s ), because
we don’t want to assume that the two coordinates are equal.)
```

4. This is not the same as the last example!Because _E_ -^1 is a relation from
    _C_ to _S_ and _E_ is a relation from _S_ to _C_ , _E_ ◦ _E_ -^1 is a relation from _C_ to _C_. It
    is defined as follows.

```
E ◦ E -^1 = { ( c , d )∈ C × C | ∃ s ∈ S (( c , s )∈ E -^1 and ( s , d )∈ E )}
= { ( c , d )∈ C × C | ∃ s ∈ S (the student s is enrolled in the
course c ,and he is also enrolled in the course d )}
= { ( c , d )∈ C × C |there is some student who is enrolled in
both of the courses c and d }.
```

176 _Relations_

5. We saw in part 2 that _E_ ◦ _L_ -^1 is a relation from _R_ to _C_ , and _T_ is a relation
    from _C_ to _P_ , so _T_ ◦( _E_ ◦ _L_ -^1 ) is the relation from _R_ to _P_ defined as follows.

```
T ◦( E ◦ L -^1 )= { ( r , p )∈ R × P | ∃ c ∈ C (( r , c )∈ E ◦ L -^1 and
( c , p )∈ T )}
= { ( r , p )∈ R × P | ∃ c ∈ C (some student who lives
in the room r is enrolled in the course c ,and c
is taught by the professor p )}
= { ( r , p )∈ R × P |some student who lives in
the room r is enrolled in some course taught by
the professor p }.
```

6. ( _T_ ◦ _E_ )◦ _L_ -^1 = { ( _r_ , _p_ )∈ _R_ × _P_ | ∃ _s_ ∈ _S_ (( _r_ , _s_ )∈ _L_ -^1 and

```
( s , p )∈ T ◦ E )}
= { ( r , p )∈ R × P | ∃ s ∈ S (the student s lives in the
room r ,and is enrolled in some course taught
by the professor p )}
= { ( r , p )∈ R × P |some student who lives in
the room r is enrolled in some course taught by
the professor p }.
```

Notice that our answers for parts 3 and 4 of Example 4.2.4 were different. so
composition of relations is not commutative. However, our answers for parts
5 and 6 turned out to be the same. Is this a coincidence, or is it true in general
that composition of relations is associative? Often, looking at examples of a
new concept will suggest general rules that might apply to it. Although one
counterexample is enough to show that a rule is incorrect, we should never
accept a rule as correct without a proof. The next theorem summarizes some
of the basic properties of the new concepts we have introduced.

**Theorem 4.2.5.** _Suppose R is a relation from A to B, S is a relation from B to
C, and T is a relation from C to D. Then:_

1. ( _R_ -^1 )-^1 = _R_.
2. Dom( _R_ -^1 )=Ran( _R_ ).
3. Ran( _R_ -^1 )=Dom( _R_ ).
4. _T_ ◦( _S_ ◦ _R_ )=( _T_ ◦ _S_ )◦ _R_.
5. ( _S_ ◦ _R_ )-^1 = _R_ -^1 ◦ _S_ -^1.

```
Relations 177
```

_Proof._ We will prove 1, 2, and half of 4, and leave the rest as exercises. (See
exercise 6.)

1. First of all, note that _R_ -^1 is a relation from _B_ to _A_ , so ( _R_ -^1 )-^1 is a relation
    from _A_ to _B_ , just like _R_. To see that ( _R_ -^1 )-^1 = _R_ , let ( _a_ , _b_ ) be an arbitrary
    ordered pair in _A_ × _B_. Then

```
( a , b )∈( R -^1 )-^1 iff ( b , a )∈ R -^1 iff ( a , b )∈ R.
```

2. First note that Dom( _R_ -^1 ) and Ran( _R_ ) are both subsets of _B_. Now let _b_ be
    an arbitrary element of _B_. Then

```
b ∈Dom( R -^1 ) iff ∃ a ∈ A (( b , a )∈ R -^1 )
iff∃ a ∈ A (( a , b )∈ R ) iff b ∈Ran( R ).
```

4. Clearly _T_ ◦( _S_ ◦ _R_ ) and ( _T_ ◦ _S_ )◦ _R_ are both relations from _A_ to _D_. Let
    ( _a_ , _d_ ) be an arbitrary element of _A_ × _D_.
       First, suppose ( _a_ , _d_ )∈ _T_ ◦( _S_ ◦ _R_ ). By the definition of composition, this
    means that we can choose some _c_ ∈ _C_ such that ( _a_ , _c_ )∈ _S_ ◦ _R_ and ( _c_ , _d_ )∈
       _T_. Since ( _a_ , _c_ )∈ _S_ ◦ _R_ , we can again use the definition of composition
    and choose some _b_ ∈ _B_ such that ( _a_ , _b_ )∈ _R_ and ( _b_ , _c_ )∈ _S_. Now since
    ( _b_ , _c_ )∈ _S_ and ( _c_ , _d_ )∈ _T_ , we can conclude that ( _b_ , _d_ )∈ _T_ ◦ _S_. Similarly,
    since ( _a_ , _b_ )∈ _R_ and ( _b_ , _d_ )∈ _T_ ◦ _S_ , it follows that ( _a_ , _d_ )∈( _T_ ◦ _S_ )◦ _R_.
       Now suppose ( _a_ , _d_ )∈( _T_ ◦ _S_ )◦ _R_. A similar argument, which is
    left to the reader, shows that ( _a_ , _d_ )∈ _T_ ◦( _S_ ◦ _R_ ). Thus, _T_ ◦( _S_ ◦ _R_ )=
    ( _T_ ◦ _S_ )◦ _R_. 

_Commentary._ Statement 1 means∀ _p_ ( _p_ ∈( _R_ -^1 )-^1 ↔ _p_ ∈ _R_ ), so the proof
should proceed by introducing an arbitrary object _p_ and then proving _p_ ∈
( _R_ -^1 )-^1 ↔ _p_ ∈ _R_. But because _R_ and ( _R_ -^1 )-^1 are both relations from _A_ to
_B_ , we could think of the universe over which _p_ ranges as being _A_ × _B_ , so
_p_ must be an ordered pair. Thus, in the preceding proof we’ve written it as
an ordered pair ( _a_ , _b_ ) from the start. The proof of the biconditional statement
( _a_ , _b_ )∈( _R_ -^1 )-^1 ↔( _a_ , _b_ )∈ _R_ uses the method, introduced in Example 3.4.4,
of stringing together a sequence of equivalences.
The proofs of statements 2 and 4 are similar, except that the biconditional
proof for statement 4 cannot easily be done by stringing together equivalences,
so we prove the two directions separately. Only one direction was proven.
The key to this proof is to recognize that the given ( _a_ , _d_ )∈ _T_ ◦( _S_ ◦ _R_ ) is an
existential statement, since it means∃ _c_ ∈ _C_ (( _a_ , _c_ )∈ _S_ ◦ _R_ and ( _c_ , _d_ )∈ _T_ ), so
we should introduce a new variable _c_ into the proof to stand for some element
of _C_ such that ( _a_ , _c_ )∈ _S_ ◦ _R_ and ( _c_ , _d_ )∈ _T_. Similarly, ( _a_ , _c_ )∈ _S_ ◦ _R_ is an

178 _Relations_

existential statement, so it suggests introducing the variable _b_. Once these new
variables have been introduced, it is easy to prove the goal ( _a_ , _d_ )∈( _T_ ◦ _S_ )◦ _R_.

Statement 5 of Theorem 4.2.5 perhaps deserves some comment. First of all,
notice that the right-hand side of the equation is _R_ -^1 ◦ _S_ -^1 , _not S_ -^1 ◦ _R_ -^1 ;
the order of the relations has been reversed. You are asked to prove statement 5
in exercise 6, but it might be worthwhile to try an example first. We’ve already
seen that, for the relations _E_ and _T_ from parts 5 and 6 of Example 4.2.2,

```
T ◦ E = { ( s , p )∈ S × P |the student s is enrolled in some course
taught by the professor p }.
```

It follows that

```
( T ◦ E )-^1 = { ( p , s )∈ P × S |the student s is enrolled in some course
taught by the professor p }.
```

To compute _E_ -^1 ◦ _T_ -^1 , first note that _T_ -^1 is a relation from _P_ to _C_ and _E_ -^1 is
a relation from _C_ to _S_ , so _E_ -^1 ◦ _T_ -^1 is a relation from _P_ to _S_. Now, applying
the definition of composition, we get

```
E -^1 ◦ T -^1 = { ( p , s )∈ P × S | ∃ c ∈ C (( p , c )∈ T -^1 and ( c , s )∈ E -^1 )}
= { ( p , s )∈ P × S | ∃ c ∈ C (( c , p )∈ T and ( s , c )∈ E )}
= { ( p , s )∈ P × S | ∃ c ∈ C (the course c is taught by the
professor p and the student s is enrolled in the course c )}
= { ( p , s )∈ P × S |the student s is enrolled in some course
taught by the professor p }.
```

Thus, ( _T_ ◦ _E_ )-^1 = _E_ -^1 ◦ _T_ -^1.

```
Exercises
```

```
∗1. Find the domains and ranges of the following relations.
(a) {( p , q )∈ P × P |the person p is a parent of the person q }, where
P is the set of all living people.
(b) {( x , y )∈R^2 | y > x^2 }.
```

2. Find the domains and ranges of the following relations.
    (a){( _p_ , _q_ )∈ _P_ × _P_ |the person _p_ is a brother of the person _q_ },
       where _P_ is the set of all living people.
    (b){( _x_ , _y_ )∈R^2 | _y_^2 = 1 - 2 /( _x_^2 +1)}.

```
Relations 179
```

3. Let _L_ and _E_ be the relations defined in parts 4 and 5 of Example 4.2.2.
    Describe the following relations:
    (a) _L_ -^1 ◦ _L_.
    (b) _E_ ◦( _L_ -^1 ◦ _L_ ).
∗4. Suppose that _A_ = { 1 , 2 , 3 }, _B_ = { 4 , 5 , 6 }, _R_ = { (1,4),(1,5),(2,5),
(3,6)}, and _S_ = { (4,5),(4,6),(5,4),(6,6)}. Note that _R_ is a relation
from _A_ to _B_ and _S_ is a relation from _B_ to _B_. Find the following
relations:
(a) _S_ ◦ _R_.
(b) _S_ ◦ _S_ -^1.
5. Suppose that _A_ = { 1 , 2 , 3 }, _B_ = { 4 , 5 }, _C_ = { 6 , 7 , 8 }, _R_ = { (1,7),
    (3,6),(3,7)}, and _S_ = { (4,7),(4,8),(5,6)}. Note that _R_ is a relation
    from _A_ to _C_ and _S_ isa relation from _B_ to _C_. Findthe following relations:
    (a) _S_ -^1 ◦ _R_.
    (b) _R_ -^1 ◦ _S_.
6. (a) Prove part 3 of Theorem 4.2.5 by imitating the proof of part 2 in
    the text.
    (b) Give an alternate proof of part 3 of Theorem 4.2.5 by showing that
       it follows from parts 1 and 2.
    (c) Complete the proof of part 4 of Theorem 4.2.5.
    (d) Prove part 5 of Theorem 4.2.5.
∗7. Let _E_ = { ( _p_ , _q_ )∈ _P_ × _P_ |the person _p_ is an enemy of the person _q_ },
and _F_ = { ( _p_ , _q_ )∈ _P_ × _P_ |the person _p_ is a friend of the person _q_ },
where _P_ is the set of all people. What does the saying “an enemy of
one’s enemy is one’s friend” mean about the relations _E_ and _F_?
8. Suppose _R_ is a relation from _A_ to _B_ and _S_ is a relation from _B_ to _C_.
    (a) Prove that Dom( _S_ ◦ _R_ )⊆Dom( _R_ ).
    (b) Prove that if Ran( _R_ )⊆Dom( _S_ ) then Dom( _S_ ◦ _R_ )=Dom( _R_ ).
    (c) Formulate and prove similar theorems about Ran( _S_ ◦ _R_ ).
9. Suppose _R_ and _S_ are relations from _A_ to _B_. Must the following statements
    be true? Justify your answers with proofs or counterexamples.
    (a) _R_ ⊆Dom( _R_ )×Ran( _R_ ).
    (b) If _R_ ⊆ _S_ then _R_ -^1 ⊆ _S_ -^1.
    (c) ( _R_ , _S_ )-^1 = _R_ -^1 , _S_ -^1.
∗10. Suppose _R_ is a relation from _A_ to _B_ and _S_ is a relation from _B_ to _C_.
Prove that _S_ ◦ _R_ =∅iff Ran (R) and Dom ( _S_ ) are disjoint.
pd11. Suppose _R_ is a relation from _A_ to _B_ and _S_ and _T_ are relations from

```
B to C.
(a) Prove that ( S ◦ R )\( T ◦ R )⊆( S \ T )◦ R.
```

180 _Relations_

```
(b) What’s wrong with the following proof that ( S \ T )◦ R ⊆( S ◦ R )\
( T ◦ R )?
```

```
Proof. Suppose ( a , c )∈( S \ T )◦ R. Then we can choose some
b ∈ B such that ( a , b )∈ R and ( b , c )∈ S \ T , so ( b , c )∈ S and
( b , c )∈/ T. Since ( a , b )∈ R and ( b , c )∈ S , ( a , c )∈ S ◦ R. Sim-
ilarly, since ( a , b )∈ R and ( b , c )∈/ T , ( a , c )∈/ T ◦ R. Therefore
( a , c )∈( S ◦ R )\( T ◦ R ).Since( a , c )wasarbitrary,thisshowsthat
( S \ T )◦ R ⊆( S ◦ R )\( T ◦ R ). 
```

```
(c) Must it be true that ( S \ T )◦ R ⊆( S ◦ R )\( T ◦ R )? Justify your
answer with either a proof or a counterexample.
pd12. Suppose R is a relation from A to B and S and T are relations from B
to C. Must the following statements be true? Justify your answers with
proofs or counterexamples.
(a) If S ⊆ T then S ◦ R ⊆ T ◦ R.
(b) ( S + T )◦ R ⊆( S ◦ R )+( T ◦ R ).
(c) ( S + T )◦ R =( S ◦ R )+( T ◦ R ).
(d) ( S , T )◦ R =( S ◦ R ),( T ◦ R ).
```

## 4.3 More About Relations

Although we have defined relations to be sets of ordered pairs, it is sometimes
useful to be able to think about them in other ways. Often even a small change
in notation can help us see things differently. One alternative notation that
mathematicians sometimes use with relations is motivated by the fact that
in mathematics we often express a relationship between two objects _x_ and _y_
by putting some symbol between them. For example, the notations _x_ = _y_ ,
_x_ < _y_ , _x_ ∈ _y_ , and _x_ ⊆ _y_ express four important mathematical relationships
between _x_ and _y_. Imitating these notations, if _R_ is a relation from _A_ to _B_ , _x_ ∈ _A_ ,
and _y_ ∈ _B_ , mathematicians sometimes write _x Ry_ to mean ( _x_ , _y_ )∈ _R_.
For example, if _L_ is the relation defined in part 4 of Example 4.2.2, then
for any student _s_ and dorm room _r_ , _sLr_ means ( _s_ , _r_ )∈ _L_ , or in other words,
the student _s_ lives in the dorm room _r_. Similarly, if _E_ and _T_ are the relations
defined in parts 5 and 6 of Example 4.2.2, then _sEc_ means that the student _s_
is enrolled in the course _c_ , and _cT p_ means that the course _c_ is taught by the
professor _p_. The definition of composition of relations could have been stated
by saying that if _R_ is a relation from _A_ to _B_ and _S_ is a relation from _B_ to _C_ , then
_S_ ◦ _R_ = { ( _a_ , _c_ )∈ _A_ × _C_ | ∃ _b_ ∈ _B_ ( _aRb_ and _bSc_ )}.

_More About Relations_ 181
Another way to think about relations is to draw pictures of them. Figure 1
shows a picture of the relation _R_ = { (1,3),(1,5),(3,3)}from part 1 of Exam-
ple 4.2.2. Recall that this was a relation from the set _A_ = { 1 , 2 , 3 }to the set
_B_ = { 3 , 4 , 5 }. In the figure, each of these sets is represented by an oval, with
the elements of the set represented by dots inside the oval. Each ordered pair
( _a_ , _b_ )∈ _R_ is represented by an arrow from the dot representing _a_ to the dot
representing _b_. For example, there is an arrow from the dot inside _A_ labeled 1
to the dot inside _B_ labeled 5 because the ordered pair (1,5) is an element of _R_.
In general, any relation _R_ from a set _A_ to a set _B_ can be represented by such a
picture.Thedotsrepresentingtheelementsof _A_ and _B_ insuchapicturearecalled
_vertices_ , and the arrows representing the ordered pairs in _R_ are called _edges_. It
doesn’t matter exactly how the vertices representing elements of _A_ and _B_ are
arranged on the page; what’s important is that the edges correspond precisely
to the ordered pairs in _R_. Drawing these pictures may help you understand
the concepts discussed in the last section. For example, you should be able
to convince yourself that you could find the domain of _R_ by locating those
vertices in _A_ that have edges pointing away from them. Similarly, the range
of _R_ would consist of those elements of _B_ whose vertices have edges pointing
toward them. For the relation _R_ shown in Figure 1, we have Dom( _R_ )= { 1 , 3 }
and Ran( _R_ )= { 3 , 5 }. A picture of _R_ -^1 would look just like a picture of _R_ but
with the directions of all the arrows reversed.

```
Figure 1
```

Pictures illustrating the composition of two relations are a little harder to
understand. For example, consider again the relations _E_ and _T_ from parts 5
and 6 of Example 4.2.2. Figure 2 shows what part of both relations might look
like. (The complete picture might be quite large if there are many students,

182 _Relations_

courses, and professors at your school.) We can see in this picture that, for
example, Joe Smith is taking Biology 12 and Math 21, that Biology 12 is
taught by Prof. Evans, and that Math 21 is taught by Prof. Andrews. Thus,
applying the definition of composition, we can see that the pairs (Joe Smith,
Prof. Evans) and (Joe Smith, Prof. Andrews) are both elements of the relation
_T_ ◦ _E_.

```
Figure 2
```

To see more clearly how the composition _T_ ◦ _E_ is represented in this picture,
first note that for any student _s_ , course _c_ , and professor _p_ , there is an arrow
from _s_ to _c_ iff _sEc_ , and there is an arrow from _c_ to _p_ iff _cT p_. Thus, according
to the definition of composition,

```
T ◦ E = { ( s , p )∈ S × P | ∃ c ∈ C ( sEc and cT p )}
= { ( s , p )∈ S × P | ∃ c ∈ C (in Figure 2, there is an arrow
from s to c and an arrow from c to p )}
= { ( s , p )∈ S × P |in Figure 2, you can get from s to p in
two steps by following the arrows}.
```

For example, starting at the vertex labeled Mary Edwards, we can get to Prof.
Andrews in two steps (going by way of either Math 21 or Math 13), so we can
conclude that (Mary Edwards, Prof. Andrews)∈ _T_ ◦ _E_.
In some situations we draw pictures of relations in a slightly different way.
For example, if _A_ is a set and _R_ ⊆ _A_ × _A_ , then according to Definition 4.2.1, _R_
would be called a relation from _A_ to _A_. Such a relation is also sometimes called
a _relation on A_ (or a _binary relation on A_ ). Relations of this type come up often
in mathematics; in fact, we have already seen a few of them. For example, we
described the relation _G_ in part 2 of Example 4.2.2 as a relation fromRtoR,
but in our new terminology we could call it a relation (or a binary relation) on

```
More About Relations 183
```

R. The relation _E_ -^1 ◦ _E_ from Example 4.2.4 was a relation on the set _S_ , and
_E_ ◦ _E_ -^1 was a relation on _C_.

**Example 4.3.1.** Here are some more examples of relations on sets.

1. Let _A_ = { 1 , 2 }and _B_ =P( _A_ )={∅,{ 1 },{ 2 },{ 1 , 2 }}as in part 3 of Exam-
    ple 4.2.2. Let _S_ = { ( _x_ , _y_ )∈ _B_ × _B_ | _x_ ⊆ _y_ } = {(∅,∅), (∅,{ 1 }),(∅,{ 2 }),
    (∅,{ 1 , 2 }),({ 1 },{ 1 }),({ 1 },{ 1 , 2 }),({ 2 },{ 2 }),({ 2 },{ 1 , 2 }),({ 1 , 2 },{ 1 , 2 })}.
    Then _S_ is a relation on _B_.
2. Suppose _A_ is a set. Let _iA_ = { ( _x_ , _y_ )∈ _A_ × _A_ | _x_ = _y_ }. Then _iA_ is a relation
    on _A_. (It is sometimes called the _identity relation_ on _A_ .) For example, if
       _A_ = { 1 , 2 , 3 }, then _iA_ = { (1,1),(2,2),(3,3)}. Note that _iA_ could also be
    defined by writing _iA_ = { ( _x_ , _x_ )| _x_ ∈ _A_ }.
3. For each positive real number _r_ , let _Dr_ = { ( _x_ , _y_ )∈R×R| _x_ and _y_ differ
    by less than _r_ , or in other words| _x_ - _y_ |< _r_ }. Then _Dr_ is a relation onR.

Suppose _R_ is a relation on a set _A_. If we used the method described earlier
to draw a picture of _R_ , then we would have to draw two copies of the set _A_
and then draw edges from one copy of _A_ to the other to represent the ordered
pairs in _R_. An easier way to draw the picture would be to draw just one copy
of _A_ and then connect the vertices representing the elements of _A_ with edges
to represent the ordered pairs in _R_. For example, Figure 3 shows a picture of
the relation _S_ from part 1 of Example 4.3.1. Pictures like the one in Figure 3
are called _directed graphs_.

```
Figure 3
```

184 _Relations_

Note that in this directed graph there is an edge from∅to itself, because
(∅,∅)∈ _S_. Edges such as this one that go from a vertex to itself are called
_loops_. In fact, in Figure 3 there is a loop at every vertex, because _S_ has the
property that∀ _x_ ∈ _B_ (( _x_ , _x_ )∈ _S_ ). We describe this situation by saying that _S_
is _reflexive_.

**Definition 4.3.2.** Suppose _R_ is a relation on _A_.

1. _R_ is said to be _reflexive on A_ (or just _reflexive_ , if _A_ is clear from context) if
    ∀ _x_ ∈ _A_ ( _x Rx_ ), or in other words∀ _x_ ∈ _A_ (( _x_ , _x_ )∈ _R_ ).
2. _R_ is _symmetric_ if∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ → _yRx_ ).
3. _R_ is _transitive_ if∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ∀ _z_ ∈ _A_ (( _x Ry_ and  _yRz_ )→ _x Rz_ ).

As we saw in Example 4.3.1, if _R_ is reflexive on _A_ , then the directed graph
representing _R_ will have loops at all vertices. If _R_ is symmetric, then whenever
there is an edge from _x_ to _y_ , there will also be an edge from _y_ to _x_. If _x_ and
_y_ are distinct, it follows that there will be two edges connecting _x_ and _y_ , one
pointing in each direction. Thus, if _R_ is symmetric, then all edges except loops
will come in such pairs. If _R_ is transitive, then whenever there is an edge from
_x_ to _y_ and _y_ to _z_ , there is also an edge from _x_ to _z_.

**Example 4.3.3.** Is the relation _G_ from part 2 of Example 4.2.2 reflexive? Is it
symmetric?Transitive?AretherelationsinExample4.3.1reflexive,symmetric,
or transitive?

_Solution_

Recall that the relation _G_ from Example 4.2.2 is a relation onRand that for
any real numbers _x_ and _y, xGy_ means _x_ > _y_. Thus, to say that _G_ is reflexive
would mean that∀ _x_ ∈R( _xGx_ ), or in other words∀ _x_ ∈R( _x_ > _x_ ), and this
is clearly false. To say that _G_ is symmetric would mean that∀ _x_ ∈R∀ _y_ ∈
R( _x_ > _y_ → _y_ > _x_ ), and this is also clearly false. Finally, to say that _G_ is
transitive would mean that∀ _x_ ∈R∀ _y_ ∈R∀ _z_ ∈R(( _x_ > _y_ and  _y_ > _z_ )→ _x_ > _z_ ),
and this is true. Thus, _G_ is transitive, but not reflexive or symmetric.
The analysis of the relations in Example 4.3.1 is similar. For the relation _S_ in
part 1 we use the fact that for any _x_ and _y_ in _B_ , _xSy_ means _x_ ⊆ _y_. As we have
already observed, _S_ is reflexive, since∀ _x_ ∈ _B_ ( _x_ ⊆ _x_ ), but it is not true that
∀ _x_ ∈ _B_ ∀ _y_ ∈ _B_ ( _x_ ⊆ _y_ → _y_ ⊆ _x_ ). For example,{ 1 } ⊆ { 1 , 2 }, but { 1 , 2 } ⊆ { 1 }.
You can see this in Figure 3 by noting that there is an edge from{ 1 }to
{1, 2}but not from{1, 2}to{ 1 }. Thus, _S_ is not symmetric. _S_ is transitive,

```
More About Relations 185
```

because the statement∀ _x_ ∈ _B_ ∀ _y_ ∈ _B_ ∀ _z_ ∈ _B_ (( _x_ ⊆ _y_ and  _y_ ⊆ _z_ )→ _x_ ⊆ _z_ ) is
true.
For any set _A_ the identity relation _iA_ will be reflexive, symmetric, and
transitive, because the statements∀ _x_ ∈ _A_ ( _x_ = _x_ ),∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x_ = _y_ →
_y_ = _x_ ), and∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ∀ _z_ ∈ _A_ (( _x_ = _y_ and  _y_ = _z_ )→ _x_ = _z_ ) are all clearly
true. Finally, suppose _r_ is a positive real number and consider the relation _Dr_.
For any real number _x_ ,| _x_ - _x_ | = 0 < _r_ , so ( _x_ , _x_ )∈ _Dr_. Thus, _Dr_ is reflexive.
Also, for any real numbers _x_ and _y_ ,| _x_ - _y_ | = | _y_ - _x_ |, so if | _x_ - _y_ |< _r_ then
| _y_ - _x_ |< _r_. Therefore, if ( _x_ , _y_ )∈ _Dr_ then ( _y_ , _x_ )∈ _Dr_ , so _Dr_ is sym-
metric. But _Dr_ is not transitive. To see why, let _x_ be any real number.
Let _y_ = _x_ + 2 _r_ /3 and _z_ = _y_ + 2 _r_ / 3 = _x_ + 4 _r_ /3. Then| _x_ - _y_ | = 2 _r_ / 3 < _r_
and | _y_ - _z_ | = 2 _r_ / 3 < _r_ , but | _x_ - _z_ | = 4 _r_ / 3 > _r_. Thus, ( _x_ , _y_ )∈ _Dr_ and
( _y_ , _z_ )∈ _Dr_ , but ( _x_ , _z_ )∈/ _Dr_.

Perhaps you’ve already guessed that the properties of relations defined in
Definition 4.3.2 are related to the operations defined in Definition 4.2.3. To
say that a relation _R_ is symmetric involves reversing the roles of two variables
in a way that may remind you of the definition of _R_ -^1. The definition of
transitivity of a relation involves stringing together two ordered pairs, just as
the definition of composition of relations does. The following theorem spells
these connections out more carefully.

**Theorem 4.3.4.** _Suppose R is a relation on a set A._

1. _R is reflexive iff iA_ ⊆ _R_ , _where as before iAis the identity relation on A_.
2. _R is symmetric iff R_ = _R_ -^1.
3. _R is transitive iff R_ ◦ _R_ ⊆ _R_.

_Proof._ We will prove 2 and leave the proofs of 1 and 3 as exercises (see exer-
cises 7 and 8).

2. (→) Suppose _R_ is symmetric. Let ( _x_ , _y_ ) be an arbitrary element of _R_. Then
_x Ry_ , so since _R_ is symmetric, _yRx_. Thus, ( _y_ , _x_ )∈ _R_ , so by the definition of
_R_ -^1 ,( _x_ , _y_ )∈ _R_ -^1. Since ( _x_ , _y_ ) was arbitrary, it follows that _R_ ⊆ _R_ -^1.
Now suppose ( _x_ , _y_ )∈ _R_ -^1. Then ( _y_ , _x_ )∈ _R_ , so since _R_ is symmetric,
( _x_ , _y_ )∈ _R_. Thus, _R_ -^1 ⊆ _R_ , so _R_ = _R_ -^1.
(←) Suppose _R_ = _R_ -^1 , and let _x_ and _y_ be arbitrary elements of _A_. Suppose
_x Ry_. Then ( _x_ , _y_ )∈ _R_ , so since _R_ = _R_ -^1 ,( _x_ , _y_ )∈ _R_ -^1. By the definition of
_R_ -^1 this means ( _y_ , _x_ )∈ _R_ , so _yRx_. Thus,∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ → _yRx_ ), so
_R_ is symmetric. 

_Commentary._ This proof is fairly straightforward. The statement to be proven
is an iff statement, so we prove both directions separately. In the→half we

186 _Relations_

must prove that _R_ = _R_ -^1 , and this is done by proving both _R_ ⊆ _R_ -^1 and
_R_ -^1 ⊆ _R_. Each of these goals is proven by taking an arbitrary element of the
first set and showing that it is in the second set. In the←half we must prove
that _R_ is symmetric, which means∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ → _yRx_ ). We use the
obvious strategy of letting _x_ and _y_ be arbitrary elements of _A_ , assuming _x Ry_ ,
and proving _yRx_.

```
Exercises
```

```
∗1. Let L = { a , b , c , d , e } and W = { bad, bed, cab}. Let R = { ( l , w )∈
L × W |the letter l occurs in the word w }. Draw a diagram (like the
one in Figure 1) of R.
```

2. Let _A_ ={cat, dog, bird, rat}, and let _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |there is at least
    one letter that occurs in both of the words _x_ and _y_ }. Draw a directed graph
    (like the one in Figure 3) for the relation _R_. Is _R_ reflexive? symmetric?
    transitive?
∗3. Let _A_ = { 1 , 2 , 3 , 4 }. Draw a directed graph for the identity relation on
_A_ , _iA_.
4. List the ordered pairs in the relations represented by the following di-
    rected graphs. Determine whether each relation is reflexive, symmetric,
    or transitive.

```
More About Relations 187
∗5. The following diagram shows two relations R and S. Find S ◦ R.
```

6. Suppose _r_ and _s_ are two positive real numbers. Let _Dr_ and _Ds_ be defined
    as in part 3 of Example 4.3.1. What is _Dr_ ◦ _Ds_? Justify your answer with
    a proof. (Hint: In your proof, you may find it helpful to use the triangle
    inequality; see exercise 12(c) of Section 3.5.)
∗7. Prove part 1 of Theorem 4.3.4.
8. Prove part 3 of Theorem 4.3.4.
9. Suppose _A_ and _B_ are two sets.
(a) Show that for every relation _R_ from _A_ to _B_ , _R_ ◦ _iA_ = _R_.
(b) Show that for every relation _R_ from _A_ to _B_ , _iB_ ◦ _R_ = _R_.
∗10. Suppose _S_ is a relation on _A_. Let _D_ =Dom( _S_ ) and _R_ =Ran( _S_ ). Prove

```
that iD ⊆ S -^1 ◦ S and iR ⊆ S ◦ S -^1.
```

11. Suppose _R_ is a relation on _A_. Prove that if _R_ is reflexive then _R_ ⊆ _R_ ◦ _R_.
12. Suppose _R_ is a relation on _A_.
    (a) Prove that if _R_ is reflexive, then so is _R_ -^1.
    (b) Prove that if _R_ is symmetric, then so is _R_ -^1.
    (c) Prove that if _R_ is transitive, then so is _R_ -^1.
∗13. Suppose _R_ 1 and _R_ 2 are relations on _A_. For each part, give either a proof

```
or a counterexample to justify your answer.
(a) If R 1 and R 2 are reflexive, must R 1 , R 2 be reflexive?
(b) If R 1 and R 2 are symmetric, must R 1 , R 2 be symmetric?
(c) If R 1 and R 2 are transitive, must R 1 , R 2 be transitive?
```

14. Suppose _R_ 1 and _R_ 2 are relations on _A_. For each part, give either a proof
    or a counterexample to justify your answer.
    (a) If _R_ 1 and _R_ 2 are reflexive, must _R_ 1 + _R_ 2 be reflexive?
    (b) If _R_ 1 and _R_ 2 are symmetric, must _R_ 1 + _R_ 2 be symmetric?
    (c) If _R_ 1 and _R_ 2 are transitive, must _R_ 1 + _R_ 2 be transitive?

188 _Relations_

15. Suppose _R_ 1 and _R_ 2 are relations on _A_. For each part, give either a proof
    or a counterexample to justify your answer.
    (a) If _R_ 1 and _R_ 2 are reflexive, must _R_ 1 \ _R_ 2 be reflexive?
    (b) If _R_ 1 and _R_ 2 are symmetric, must _R_ 1 \ _R_ 2 be symmetric?
    (c) If _R_ 1 and _R_ 2 are transitive, must _R_ 1 \ _R_ 2 be transitive?
16. Suppose _R_ and _S_ are reflexive relations on _A_. Prove that _R_ ◦ _S_ is reflexive.
∗17. Suppose _R_ and _S_ are symmetric relations on _A_. Prove that _R_ ◦ _S_ is sym-
metric iff _R_ ◦ _S_ = _S_ ◦ _R_.
18. Suppose _R_ and _S_ are transitive relations on _A_. Prove that if _S_ ◦ _R_ ⊆ _R_ ◦ _S_
    then _R_ ◦ _S_ is transitive.
19. Consider the following putative theorem.

```
Theorem? Suppose R is a relation on A, and define a relation S on P( A )
as follows:
S = { ( X , Y )∈P( A )×P( A )| ∃ x ∈ X ∃ y ∈ Y ( x Ry )}.
If R is transitive, then so is S.
(a) What’s wrong with the following proof of the theorem?
```

```
Proof. Suppose R is transitive. Suppose ( X , Y )∈ S and ( Y , Z )∈ S.
Then by the definition of S , x Ry and yRz , where x ∈ X , y ∈ Y ,
and z ∈ Z. Since x Ry , yRz , and R is transitive, x Rz. But then since
x ∈ X and z ∈ Z , it follows from the definition of S that ( X , Z )∈ S.
Thus, S is transitive. 
```

```
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
∗20. Suppose R is a relation on A. Let B = { X ∈P( A )| X =∅}, and define
a relation S on B as follows:
```

```
S = { ( X , Y )∈ B × B | ∀ x ∈ X ∀ y ∈ Y ( x Ry )}.
```

```
Prove that if R is transitive, then so is S. Why did the empty set have to
be excluded from the set B to make this proof work?
```

21. Suppose _R_ is a relation on _A_ , and define a relation _S_ onP( _A_ ) as follows:
    _S_ = { ( _X_ , _Y_ )∈P( _A_ )×P( _A_ )| ∀ _x_ ∈ _X_ ∃ _y_ ∈ _Y_ ( _x Ry_ )}.

```
For each part, give either a proof or a counterexample to justify your
answer.
(a) If R is reflexive, must S be reflexive?
(b) If R is symmetric, must S be symmetric?
(c) if R is transitive, must S be transitive?
```

```
Ordering Relations 189
```

22. Consider the following putative theorem:

```
Theorem? Suppose R is a relation on A. If R is symmetric and transitive,
then R is reflexive.
```

```
Is the following proof correct? If so, what proof strategies does it use? If
not, can it be fixed? Is the theorem correct?
```

```
Proof. Let x be an arbitrary element of A. Let y be any element of A
such that x Ry. Since R is symmetric, it follows that yRx. But then by
transitivity, since x Ry and yRx we can conclude that x Rx. Since x was
arbitrary, we have shown that∀ x ∈ A ( x Rx ), so R is reflexive. 
```

∗23. This problem was suggested by Prof. William Zwicker of Union College.

```
Suppose A is a set, andF⊆P( A ). Let R = { ( a , b )∈ A × A |for ev-
ery X ⊆ A \ { a , b }, if X , { a } ∈ Fthen X , { b } ∈ F}. Show that R is
transitive.
```

## 4.4 Ordering Relations

Consider the relation _L_ = { ( _x_ , _y_ )∈R×R| _x_ ≤ _y_ }. You should be able to
check for yourself that it is reflexive and transitive, but not symmetric. It fails
to be symmetric in a rather extreme way because there are many pairs ( _x_ , _y_ )
such that _xLy_ is true but _yLx_ is false. In fact, the only way _xLy_ and _yLx_ can
both be true is if _x_ ≤ _y_ and _y_ ≤ _x_ , and thus _x_ = _y_. We therefore say that _L_ is
_antisymmetric_. Here is the general definition.

**Definition 4.4.1.** Suppose _R_ is a relation on a set _A_. Then _R_ is said to be
_antisymmetric_ if∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ (( _x Ry_ and  _yRx_ )→ _x_ = _y_ ).

We have already seen a relation with many of the same properties as _L_. Look
again at the relation _S_ defined in part 1 of Example 4.3.1. Recall that in that
example we let _A_ = { 1 , 2 }, _B_ =P( _A_ ), and _S_ = { ( _x_ , _y_ )∈ _B_ × _B_ | _x_ ⊆ _y_ }.
Thus, if _x_ and _y_ are elements of _B_ , then _xSy_ means _x_ ⊆ _y_. We checked in
the last section that _S_ is reflexive and transitive, but not symmetric. In fact, _S_
is also antisymmetric, because for any sets _x_ and _y_ , if _x_ ⊆ _y_ and _y_ ⊆ _x_ then
_x_ = _y_. You may find it useful to look back at Figure 3 in the last section, which
shows the directed graph representing _S_.
Intuitively, _L_ and _S_ are both relations that have something to do with com-
paring the sizes of two objects. Each of the statements _x_ ≤ _y_ and _x_ ⊆ _y_ can

190 _Relations_

be thought of as saying that, in some sense, _y_ is “at least as large as” _x_. You
might say that each of these statements specifies what _order x_ and _y_ come in.
This motivates the following definition.

**Definition 4.4.2.** Suppose _R_ is a relation on a set _A_. Then _R_ is called a _partial
order on A_ (or just a _partial order_ if _A_ is clear from context) if it is reflexive,
transitive, and antisymmetric. It is called a _total order on A_ (or just a _total
order_ ) if it is a partial order, and in addition it has the following property:

```
∀ x ∈ A ∀ y ∈ A ( x Ry or  yRx ).
```

The relations _L_ and _S_ just considered are both partial orders. _S_ is not a total
order, because it is not true that∀ _x_ ∈ _B_ ∀ _y_ ∈ _B_ ( _x_ ⊆ _y_ or  _y_ ⊆ _x_ ). For example,
if we let _x_ = { 1 }and _y_ = { 2 }, then _x_ ⊆ _y_ and _y_ ⊆ _x_. Thus, although we can
think of the relation _S_ as indicating a sense in which one element of _B_ might
be at least as large as another, it does not give us a way of comparing _every_
pair of elements of _B_. For some pairs, such as{ 1 }and{ 2 }, _S_ doesn’t pick out
either one as being at least as large as the other. This is the sense in which the
ordering is _partial_. On the other hand, _L_ is a total order, because if _x_ and _y_ are
any two real numbers, then either _x_ ≤ _y_ or _y_ ≤ _x_. Thus, _L_ does give us a way
of comparing _any_ two real numbers.

**Example 4.4.3.** Which of the following relations are partial orders? Which
are total orders?

1. Let _A_ be any set, and let _B_ =P( _A_ ) and _S_ = { ( _x_ , _y_ )∈ _B_ × _B_ | _x_ ⊆ _y_ }.
2. Let _A_ = { 1 , 2 }and _B_ =P( _A_ ) as before. Let _R_ = { ( _x_ , _y_ )∈ _B_ × _B_ | _y_ has
    at least as many elements as _x_ } = {(∅,∅), (∅,{ 1 }),(∅,{ 2 }),(∅,{ 1 , 2 }),
    ({ 1 },{ 1 }),({ 1 },{ 2 }),({ 1 },{ 1 , 2 }),({ 2 },{ 1 }),({ 2 },{ 2 }),({ 2 },{ 1 , 2 }),({ 1 , 2 },
    { 1 , 2 })}.
3. _D_ = { ( _x_ , _y_ )∈Z+×Z+| _x_ divides _y_ }.
4. _G_ = { ( _x_ , _y_ )∈R×R| _x_ ≥ _y_ }.

_Solutions_

1. This is just a generalization of one of the examples discussed earlier, and
    it is easy to check that it is a partial order. As long as _A_ has at least two
    elements, it will not be a total order. To see why, just note that if _a_ and _b_
    are distinct elements of _A_ , then{ _a_ }and{ _b_ }are elements of _B_ for which
    { _a_ } ⊆ { _b_ }and{ _b_ } ⊆ { _a_ }.
2. Note that ({ 1 },{ 2 })∈ _R_ and ({ 2 },{ 1 })∈ _R_ , but of course{ 1 } = { 2 }. Thus, _R_
    is not antisymmetric, so it is not a partial order. Although _R_ was defined by

```
Ordering Relations 191
picking out pairs ( x , y ) in which y is, in a certain sense, at least as large as
x , it does not satisfy the definition of partial order. This example shows that
our description of partial orders as relations that indicate a sense in which
one object is at least as large as another should not be taken too seriously.
This was the motivation for the definition of partial order, but it is not the
definition itself.
```

3. Clearly every positive integer is divisible by itself, so _D_ is reflexive. Also, as
    we showed in Theorem 3.3.6, if _x_ | _y_ and _y_ | _z_ then _x_ | _z_. Thus, if ( _x_ , _y_ )∈ _D_
    and ( _y_ , _z_ )∈ _D_ then ( _x_ , _z_ )∈ _D_ , so _D_ is transitive. Finally, suppose ( _x_ , _y_ )∈
       _D_ and ( _y_ , _x_ )∈ _D_. Then _x_ | _y_ and _y_ | _x_ , and because _x_ and _y_ are positive it
    follows that _x_ ≤ _y_ and _y_ ≤ _x_ , so _x_ = _y_. Thus, _D_ is antisymmetric, so it is
    a partial order. It is easy to find examples illustrating that _D_ is not a total
    order. For example, (3,5)∈/ _D_ and (5,3)∈/ _D_.
       Perhaps you were surprised to discover that _D_ is a partial order. It doesn’t
    seem to involve comparing the sizes of things, like the other partial orders
    we’ve seen. But we have shown that it does share with these other relations
    theimportantpropertiesofreflexivity,transitivity,andantisymmetry.Infact,
    this is one of the reasons for formulating definitions such as Definition 4.4.2.
    They help us to see similarities between things that, on the surface, might
    not seem similar at all.
4. You should be able to check for yourself that _G_ is a total order. Notice that
    in this case it seems more reasonable to think of _xGy_ as meaning that _y_ is
    as least as _small_ as _x_ rather than at least as _large_. The definition of partial
    order, though motivated by thinking about orderings that go in one direction,
    actually applies to orderings in either direction. In fact, this example might
    lead you to conjecture that if _R_ is a partial order on _A_ , then so is _R_ -^1. You
    are asked to prove this conjecture in exercise 13.

Here’s another example of a partial order. Let _A_ be the set of all words
in English, and let _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ | all the letters in the word _x_ ap-
pear, consecutively and in the right order, in the word _y_ }. For example, (can,
cannot), (tar, start), and (ball, ball) are all elements of _R_ , but (can, anchor)
and (can, carnival) are not. You should be able to check that _R_ is reflexive,
transitive, and antisymmetric, so _R_ is a partial order. Now consider the set
_B_ = { me,men,tame,mental} ⊆ A. Clearly many ordered pairs of words in _B_
are in the relation _R_ , but note in particular that the ordered pairs (me, me), (me,
men), (me, tame), and (me, mental) are all in _R_. If we think of _x Ry_ as meaning
that _y_ is in some sense at least as large as _x_ , then we could say that the word
_me_ is the _smallest_ element of _B_ , in the sense that it is smaller than everything
else in the set.

192 _Relations_

Not every set of words will have an element that is smallest in this sense. For
example, consider the set _C_ = { a,me,men,tame,mental} ⊆ A. Each of the
words _men_ , _tame_ , and _mental_ is larger than at least one other word in the set,
but neither _a_ nor _me_ is larger than anything else in the set. We’ll call _a_ and _me
minimal_ elements of _C_. But note that neither _a_ nor _me_ is the smallest element
of _C_ in the sense described in the last paragraph, because neither is smaller
than the other. The set _C_ has two minimal elements but no smallest element.
These examples might raise a number of questions in your mind about small-
est and minimal elements. The set _C_ has two minimal elements, but _B_ has only
one smallest element. Can a set ever have more than one smallest element?
Until we have settled this question, we should only talk about an object being
_a_ smallest element of a set, rather than _the_ smallest element. If a set has only
one minimal element, must it be a smallest element? Can a set have a smallest
element and a minimal element that are different? Would the answers to these
questions be different if we restricted our attention to _total_ orders rather than
all partial orders? Before we try to answer any of these questions, we should
state the definitions of the terms _smallest_ and _minimal_ more carefully.

**Definition 4.4.4.** Suppose _R_ is a partial order on a set _A_ , _B_ ⊆ _A_ , and _b_ ∈ _B_.
Then _b_ is called an _R-smallest_ element of _B_ (or just a _smallest_ element if _R_
is clear from the context) if∀ _x_ ∈ _B_ ( _bRx_ ). It is called an _R-minimal_ element
(or just a _minimal_ element) ifnot ∃ _x_ ∈ _B_ ( _x Rb_ and  _x_ = _b_ ).

**Example 4.4.5.**

1. Let _L_ = { ( _x_ , _y_ )∈R×R| _x_ ≤ _y_ }, as before. Let _B_ = { _x_ ∈R| _x_ ≥ 7 }.
    Does _B_ have any _L_ -smallest or _L_ -minimal elements? What about the set
    _C_ = { _x_ ∈R| _x_ > 7 }?
2. Let _D_ be the divisibility relation defined in part 3 of Example 4.4.3. Let _B_ =
    { 3 , 4 , 5 , 6 , 7 , 8 , 9 }. Does _B_ have any _D_ -smallest or _D_ -minimal elements?
3. Let _S_ = { ( _X_ , _Y_ )∈P(N)×P(N)| _X_ ⊆ _Y_ }, which is a partial order on the
    setP(N). LetF= { _X_ ∈P(N)| 2 ∈ _X_ and 3∈ _X_ }. Note that the elements
    of _F_ are not natural numbers, but _sets_ of natural numbers. For example,
    { 1 , 2 , 3 }and{ _n_ ∈N| _n_ is prime}are both elements ofF. DoesFhave any
    _S_ -smallest or _S_ -mimimal elements? What about the setG= { _X_ ∈P(N)|
    either 2∈ _X_ or 3∈ _X_ }?

_Solutions_

1. Clearly 7≤ _x_ for every _x_ ∈ _B_ , so ∀ _x_ ∈ _B_ (7 _Lx_ ) and therefore 7 is a smallest
    element of _B_. It is also a minimal element, since nothing in _B_ is smaller

```
Ordering Relations 193
than 7, sonot ∃ x ∈ B ( x ≤ 7 and  x =7). There are no other smallest or minimal
elements. Note that 7 is not a smallest or minimal element of C , since 7∈/ C.
According to Definition 4.4.4, a smallest or minimal element of a set must
actually be an element of the set. In fact, C has no smallest or minimal
elements.
```

2. First of all, note that 6 and 9 are not minimal because both are divisible by
    3, and 8 is not minimal because it is divisible by 4. All the other elements
    of _B_ are minimal elements, but none is a smallest element.
3. The set{ 2 , 3 }is a smallest element ofF, since 2 and 3 are elements of every
    set inF, and therefore∀ _X_ ∈F({ 2 , 3 } ⊆ _X_ ). It is also a minimal element,
    since no other element ofFis a subset of it, and there are no other smallest
    or minimal elements. The getGhas two minimal elements,{ 2 }and{ 3 }.
    Every other set inGmust contain one of these two as a subset, so no other
    set can be minimal. Neither set is smallest, since neither is a subset of the
    other.

We are now ready to answer some of the questions we raised before
Definition 4.4.4.

**Theorem 4.4.6.** _Suppose R is a partial order on a set A, and B_ ⊆ _A._

1. _If B has a smallest element, then this smallest element is unique. Thus, we_
    _can speak of_ the _smallest element of B rather than_ a _smallest element._
2. _Suppose b is the smallest element of B_. _Then b is also a minimal element_
    _of B_ , _and it is the only minimal element._
3. _If R is a total order and b is a minimal element of B, then b is the smallest_
    _element of B_.

_Scratch work_

These proofs are somewhat harder than earlier ones in this chapter, so we do
some scratch work before the proofs.

1. Of course, we start by assuming that _B_ has a smallest element, and because
this is an existential statement, we immediately introduce a name, say _b_ , for
a smallest element of _B_. We must prove that _b_ is the only smallest element.
As we saw in Section 3.6, this can be written∀ _c_ ( _c_ is a smallest element of
_B_ → _b_ = _c_ ), so our next step should be to let _c_ be arbitrary, assume it is also
a smallest element, and prove _b_ = _c_.
At this point, we don’t know much about _b_ and _c_. We know they’re both
elements of _B_ , but we don’t even know what kinds of objects are in _B_ – whether
they’re numbers, or sets, or some other type of object – so this doesn’t help us

194 _Relations_

much in deciding how to prove that _b_ = _c_. The only other fact we know about
_b_ and _c_ is that they are both smallest elements of _B_ , which means∀ _x_ ∈ _B_ ( _bRx_ )
and∀ _x_ ∈ _B_ ( _cRx_ ). The most promising way to use these statements is to plug
something in for _x_ in each statement. What we plug in should be an element of
_B_ , and we only know of two elements of _B_ at this point, _b_ and _c_. Plugging in
both of them in both statements, we get _bRb_ , _bRc_ , _cRb_ , and _cRc_. Of course,
we already knew _bRb_ and _cRc_ , since _R_ is reflexive. But when you see that
_bRc_ and _cRb_ , you should think of antisymmetry. Since _R_ is a partial order, it
is antisymmetric, so from _bRc_ and _cRb_ it follows that _b_ = _c_.

2. Our first goal is to prove that _b_ is a minimal element of _B_ , which means
not ∃ _x_ ∈ _B_ ( _x Rb_ and  _x_ = _b_ ). Because this is a negative statement, it might help to
reexpress it as an equivalent positive statement:

```
not ∃ x ∈ B ( x Rb and  x = b ) iff ∀ x ∈ B not ( x Rb and  x = b )
iff∀ x ∈ B (not  x Rb or  x = b )
iff∀ x ∈ B ( x Rb → x = b ).
```

Thus, to prove that _b_ is minimal we could let _x_ be an arbitrary element of _B_ ,
assume that _x Rb_ , and prove _x_ = _b_.
Once again, it’s a good idea to take stock of what we know at this point about
_b_ and _x_. We know _x Rb_ , and we know that _b_ is the smallest element of _B_ , which
means∀ _x_ ∈ _B_ ( _bRx_ ). If we apply this last fact to our arbitrary _x_ , then as in part
1 we can use antisymmetry to complete the proof.
We still must prove that _b_ is the only minimal element, and as in part 1
this means∀ _c_ ( _c_ is a minimal element of _B_ → _b_ = _c_ ). So we let _c_ be arbitrary
and assume that _c_ is a minimal element of _B_ , and we must prove that _b_ =
_c_. The assumption that _c_ is a minimal element of _B_ means that _c_ ∈ _B_ and
not ∃ _x_ ∈ _B_ ( _x Rc_ and  _x_ = _c_ ), but as before, we can reexpress this last statement in
the equivalent positive form∀ _x_ ∈ _B_ ( _x Rc_ → _x_ = _c_ ). To use this statement we
should plug in something for _x_ , and because our goal is to show that _b_ = _c_ ,
plugging in _b_ for _x_ seems like a good idea. This gives us _bRc_ → _b_ = _c_ , so if
only we could show _bRc_ , we could complete the proof by using modus ponens
to conclude that _b_ = _c_. But we know _b_ is the smallest element of _B_ , so of course
_bRc_ is true.

3. Of course, we start by assuming that _R_ is a total order and _b_ is a minimal
element of _B_. We must prove that _b_ is the smallest element of _B_ , which means
∀ _x_ ∈ _B_ ( _bRx_ ), so we let _x_ be an arbitrary element of _B_ and try to prove _bRx_.
We know from examples we’ve looked at that minimal elements in _partial_
orders are not always smallest elements, so the assumption that _R_ is a _total_ order
must be crucial. The assumption that _R_ is total means∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ or 

_Ordering Relations_ 195
_yRx_ ), so to use it we should plug in something for _x_ and _y_. The only likely
candidatesforwhattopluginare _b_ andourarbitraryobject _x_ ,andpluggingthese
in we get _x Rb_ or  _bRx_. Our goal is _bRx_ , so this certainly looks like progress.
If only we could rule out the possibility that _x Rb_ , we’d be done. So let’s see if
we can provenot  _x Rb_.
Because this is a negative statement, we try proof by contradiction. Suppose
_x Rb_. What given statement can we contradict? The only given we haven’t used
yet is the fact that _b_ is minimal, and since this is a negative statement, it is the
natural place to look for a contradiction. To contradict the fact that _b_ is minimal,
we should try to show that∃ _x_ ∈ _B_ ( _x Rb_ and  _x_ = _b_ ). But we’ve already assumed
_x Rb_ , so if we could show _x_ = _b_ we’d be done.
You should try proving _x_ = _b_ at this point. You won’t get anywhere. The
fact is, we started out by letting _x_ be an arbitrary element of _B_ , and this means
that it could be any element of _B_ , including _b_. We then assumed that _x Rb_ , but
since _R_ is reflexive, this still doesn’t rule out the possibility that _x_ = _b_. There
really isn’t any hope of proving _x_ = _b_. We seem to be stuck.
Let’s review our overall plan for the proof. We needed to show∀ _x_ ∈ _B_ ( _bRx_ ),
so we let _x_ be an arbitrary element of _B_ , and we’re trying to show _bRx_. We’ve
now run into problems because of the possibility that _x_ = _b_. But if our ultimate
goal is to prove _bRx_ , then the possibility that _x_ = _b_ really isn’t a problem after
all. Since _R_ is reflexive, if _x_ = _b_ then of course _bRx_ will be true!
Now, how should we structure the final write-up of the proof? It appears that
our reasoning to establish _bRx_ will have to be different depending on whether
or not _x_ = _b_. This suggests _proof by cases_. In case 1 we assume that _x_ = _b_ ,
and use the fact that _R_ is reflexive to complete the proof. In case 2 we assume
that _x_ = _b_ , and then we can use our original line of attack, starting with the
fact that _R_ is total.

```
Proof.
```

1. Suppose _b_ is a smallest element of _B_ , and suppose _c_ is also a smallest
    element of _B_. Since _b_ is a smallest element,∀ _x_ ∈ _B_ ( _bRx_ ), so in particular
    _bRc_. Similarly, since _c_ is a smallest element, _cRb_. But now since _R_ is
    a partial order, it must be antisymmetric, so from _bRc_ and _cRb_ we can
    conclude _b_ = _c_.
2. Let _x_ be an arbitrary element of _B_ and suppose that _x Rb_. Since _b_ is the
smallest element of _B_ , we must have _bRx_ , and now by antisymmetry it
follows that _x_ = _b_. Thus, _b_ must be a minimal element.
To see that it is the only one, suppose _c_ is also a minimal element. Since
_b_ is the smallest element of _B_ , _bRc_. But then since _c_ is minimal, we must
have _b_ = _c_. Thus _b_ is the only minimal element of _B_.

196 _Relations_

3. Suppose _R_ is a total order and _b_ is a minimal element of _B_. Let _x_ be an
    arbitrary element of _B_. If _x_ = _b_ , then since _R_ is reflexive, _bRx_. Now suppose
       _x_ = _b_. Since _R_ is a total order, we know that either _x Rb_ or _bRx_. But _x Rb_
    can’t be true, since by combining _x Rb_ with our assumption that _x_ = _b_ we
    could conclude that _b_ is not minimal, thereby contradicting our assumption
    that it is minimal. Thus, _bRx_ must be true. Since _x_ was arbitrary, we can
    conclude that∀ _x_ ∈ _B_ ( _bRx_ ), so _b_ is the smallest element of _B_. 

When comparing subsets of some set _A_ , mathematicians often use the
partial order _S_ = { ( _X_ , _Y_ )∈P( _A_ )×P( _A_ )| _X_ ⊆ _Y_ }, although this is not al-
ways made explicit. Recall that ifF⊆P( _A_ ) and _X_ ∈F, then according to
Definition 4.4.4, _X_ is the _S_ -smallest element ofFiff∀ _Y_ ∈F( _X_ ⊆ _Y_ ). In other
words, to say that an element ofFis the smallest element means that it is a
subset of every element ofF. Similarly, mathematicians sometimes talk of a
set being the smallest one with a certain property.Generally this means that
the set has the property in question, and furthermore it is a subset of every set
that has the property. For example, we might describe our conclusion in part
3 of Example 4.4.5 by saying that{ 2 , 3 }is the smallest set _X_ ⊆Nwith the
property that 2∈ _X_ and 3∈ _X_. We will see more examples of this idea in the
next section and in later chapters.

**Example 4.4.7.**

1. Find the smallest set of real numbers _X_ such that 5∈ _X_ and for all real
    numbers _x_ and _y_ , if _x_ ∈ _X_ and _x_ < _y_ then _y_ ∈ _X_.
2. Find the smallest set of real numbers _X_ such that _X_ =∅and for all real
    numbers _x_ and _y_ , if _x_ ∈ _X_ and _x_ < _y_ then _y_ ∈ _X_.

_Solutions_

1. Another way to phrase the question would be to say that we are looking
    for the smallest element of the family of setsF= { _X_ ⊆R| 5 ∈ _X_ and
    ∀ _x_ ∀ _y_ (( _x_ ∈ _X_ and  _x_ < _y_ )→ _y_ ∈ _X_ )}, where it is understood that _smallest_
    means smallest with respect to the subset partial order. Now for any set _X_ ∈
    Fwe know that 5∈ _X_ , and we know that∀ _x_ ∀ _y_ (( _x_ ∈ _X_ and  _x_ < _y_ )→ _y_ ∈
       _X_ ). In particular, since 5∈ _X_ we can say that∀ _y_ (5< _y_ → _y_ ∈ _X_ ). Thus,
    if we let _A_ = { _y_ ∈R| 5 ≤ _y_ }, then we can conclude that∀ _X_ ∈F( _A_ ⊆ _X_ ).
    But it is easy to see that _A_ ∈F, so _A_ is the smallest element ofF.
2. We must find the smallest element of the family of setsF= { _X_ ⊆R| _X_ =
    ∅ and∀ _x_ ∀ _y_ (( _x_ ∈ _X_ and  _x_ < _y_ )→ _y_ ∈ _X_ )}. The set _A_ = { _y_ ∈R| 5 ≤ _y_ }
    from part 1 is an element ofF, but it is not the smallest element, or even a

```
Ordering Relations 197
minimal element, because the set A ′= { y ∈R| 6 ≤ y }is smaller – in other
words, A ′⊆ A and A ′= A. But A ′is also not the smallest element, since
A ′′= { y ∈R| 7 ≤ y }is still smaller. In fact, this family has no smallest,
or even minimal, element. You’re asked to verify this in exercise 12. This
example shows that we must be careful when talking about the smallest set
with some property. There may be no such smallest set!
```

```
You have probably already guessed how to define maximal and largest ele-
ments in partially ordered sets. Suppose R is a partial order on A , B ⊆ A , and
b ∈ B. We say that b is the largest element of B if∀ x ∈ B ( x Rb ), and it is a
maximal element of B ifnot ∃ x ∈ B ( bRx and  b = x ). Of course, these definitions
are quite similar to the ones in Definition 4.4.4. You are asked in exercise 14 to
work out some of the connections among these ideas. Another useful related
idea is the concept of an upper or lower bound for a set.
```

```
Definition 4.4.8. Suppose R is a partial order on A , B ⊆ A , and a ∈ A. Then
a is called a lower bound for B if∀ x ∈ B ( aRx ). Similarly, it is an upper bound
for B if∀ x ∈ B ( x Ra ).
```

Note that a lower bound for _B_ need not be an element of _B_. This is the only
difference between lower bounds and smallest elements. A smallest element
of _B_ is just a lower bound that is also an element of _B_. For example, in part 1
of Example 4.4.5, we concluded that 7 was not a smallest element of the set
_C_ = { _x_ ∈R| _x_ > 7 }because 7∈/ _C_. But 7 _is_ a lower bound for _C_. In fact, so
is every real number smaller than 7, but not any number larger than 7. Thus,
the set of all lower bounds of _C_ is the set{ _x_ ∈R| _x_ ≤ 7 }, and 7 is its largest
element. We say that 7 is the _greatest lower bound_ of the set _C_.

```
Definition 4.4.9. Suppose R is a partial order on A and B ⊆ A. Let U be the
set of all upper bounds for B , and let L be the set of all lower bounds. If U has
a smallest element, then this smallest element is called the least upper bound
of B. If L has a largest element, then this largest element is called the greatest
lower bound of B. The phrases least upper bound and greatest lower bound
are sometimes abbreviated l.u.b. and g.l.b.
```

```
Example 4.4.10.
```

1. Let _L_ = { ( _x_ , _y_ )∈R×R| _x_ ≤ _y_ }, a total order onR. Let _B_ = { 1 / _n_ | _n_ ∈
    Z+} = { 1 , 1 / 2 , 1 / 3 , 1 / 4 , 1 / 5 ,... } ⊆ R. Does _B_ have any upper or lower
    bounds? Does it have a least upper bound or greatest lower bound?

198 _Relations_

2. Let _A_ be the set of all English words, and let _R_ be the partial order on _A_
    described after Example 4.4.3. Let _B_ = { house,boat}. Does _B_ have any
    upper or lower bounds? Does it have a least upper bound or a greatest lower
    bound?

_Solutions_

1. Clearly the largest element of _B_ is 1. It is also an upper bound for _B_ , as is
    any number larger than 1. By definition, an upper bound for _B_ must be at
    least as large as every element of _B_ , so in particular it must be at least as
    large as 1. Thus, no number smaller than 1 is an upper bound for _B_ , so the
    set of upper bounds for _B_ is{ _x_ ∈R| _x_ ≥ 1 }. Clearly the smallest element
    of this set is 1, so 1 is the l.u.b. of _B_.
       Clearly 0 is a lower bound for _B_ , as is any negative number. On the other
    hand, suppose _a_ is a positive number. Then for a large enough integer _n_
    we will have 1/ _n_ < _a_. (You should convince yourself that any integer _n_
    larger than 1/ _a_ would do.) Thus, it is not the case that∀ _x_ ∈ _B_ ( _a_ ≤ _x_ ), and
    therefore _a_ is not a lower bound for _B_. So the set of all lower bounds for _B_
    is{ _x_ ∈R| _x_ ≤ 0 }, and the g.l.b. of _B_ is 0.
2. Clearly _houseboat_ and _boathouse_ are upper bounds for _B_. In fact, no shorter
    word could be an upper bound, so they are both minimal elements of the
    set of all upper bounds. According to part 2 of Theorem 4.4.6, a set that has
    more than one minimal element can have no smallest element, so the set of
    all upper bounds for _B_ does not have a smallest element, and therefore _B_
    doesn’t have a l.u.b.
       The only letter that the words _house_ and _boat_ have in common is _o_ , which
    is not a word of English. Thus, _B_ has no lower bounds.

Notice that in part 1 of Example 4.4.10, the largest element of _B_ also turned
out to be its least upper bound. You might wonder whether largest elements are
always least upper bounds and whether smallest elements are always greatest
lower bounds. You are asked to prove that they are in exercise 20. Another
interesting fact about this example is that, although _B_ did not have a smallest
element, it did have a greatest lower bound. This was not a coincidence. It
is an important fact about the real numbers that _every_ nonempty set of real
numbers that has a lower bound has a greatest lower bound and, similarly,
every nonempty set of real numbers that has an upper bound has a least upper
bound. The proof of this fact is beyond the scope of this book, but it is important
to realize that it is a special fact about the real numbers; it does not apply to all
partial orders or even to all total orders. For example, the set _B_ in the second
part of Example 4.4.10 had upper bounds but no least upper bound.

_Ordering Relations_ 199
We end this section by looking once again at how these new concepts apply
to the subset partial order onP( _A_ ), for any set _A_. It turns out that in this partial
order, least upper bounds and greatest lower bounds are our old friends unions
and intersections.

**Theorem 4.4.11.** _Suppose A is a set,_ F⊆P( _A_ ) _, and_ F=∅_. Then the least
upper bound of_ F _(in the subset partial order) is_ ,F _and the greatest lower
bound of_ F _is_ +F_.
Proof._ See exercise 23. 

```
Exercises
```

∗1. In each case, say whether or not _R_ is a partial order on _A_. If so, is it a total

```
order?
(a) A = { a , b , c }, R = { ( a , a ),( b , a ),( b , b ),( b , c ),( c , c )}.
(b) A =R, R = { ( x , y )∈R×R| | x | ≤ | y | }.
(c) A =R, R = { ( x , y )∈R×R| | x | <| y |or x = y }.
```

2. In each case, say whether or not _R_ is a partial order on _A_. If so, is it a total
    order?
    (a) _A_ =the set of all words of English, _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |the word
       _y_ occurs at least as late in alphabetical order as the word _x_ }.
    (b) _A_ =the set of all words of English, _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |the first
       letter of the word _y_ occurs at least as late in the alphabet as the first
       letter of the word _x_ }.
    (c) _A_ =the set of all countries in the world, _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |the
       population of the country _y_ is at least as large as the population of the
       country _x_ }.
3. In each case find all minimal and maximal elements of _B_. Also find, if they
    exist, the largest and smallest elements of _B_ , and the least upper bound and
    greatest lower bound of _B_.
    (a) _R_ =the relation shown in the following directed graph, _B_ = { 2 , 3 , 4 }.

```
200 Relations
(b) R = { ( x , y )∈R×R| x ≤ y }, B = { x ∈R| 1 ≤ x < 2 }.
(c) R = { ( x , y )∈P(N)×P(N)| x ⊆ y }, B = { x ∈P(N)| x has at
most 5 elements}.
∗4. Suppose R is a relation on A. You might think that R could not be both
antisymmetric and symmetric, but this isn’t true. Prove that R is both
antisymmetric and symmetric iff R ⊆ iA.
```

5. Suppose _R_ is a partial order on _A_ and _B_ ⊆ _A_. Prove that _R_ +( _B_ × _B_ ) is
    a partial order on _B_.
6. Suppose _R_ 1 and _R_ 2 are partial orders on _A_. For each part, give either a
    proof or a counterexample to justify your answer.
    (a) Must _R_ 1 + _R_ 2 be a partial order on _A_?
    (b) Must _R_ 1 , _R_ 2 be a partial order on _A_?
7. Suppose _R_ 1 is a partial order on _A_ 1 , _R_ 2 is a partial order on _A_ 2 , and
    _A_ 1 + _A_ 2 =∅.
    (a) Prove that _R_ 1 , _R_ 2 is a partial order on _A_ 1 , _A_ 2.
    (b) Prove that _R_ 1 , _R_ 2 ,( _A_ 1 × _A_ 2 ) is a partial order on _A_ 1 , _A_ 2.
    (c) Suppose that _R_ 1 and _R_ 2 are total orders. Are the partial orders in parts
       (a) and (b) also total orders?
∗8. Suppose _R_ is a partial order on _A_ and _S_ is a partial order on _B_. Define a
relation _T_ on _A_ × _B_ as follows: _T_ = { (( _a_ , _b_ ),( _a_ ′, _b_ ′))∈( _A_ × _B_ )×( _A_ ×
_B_ )| _aRa_ ′and _bSb_ ′}. Show that _T_ is a partial order on _A_ × _B_. If both _R_
and _S_ are total orders, will _T_ also be a total order?
9. Suppose _R_ is a partial order on _A_ and _S_ is a partial order on _B_. Define a
    relation _L_ on _A_ × _B_ as follows: _L_ = { (( _a_ , _b_ ),( _a_ ′, _b_ ′))∈( _A_ × _B_ )×( _A_ ×
       _B_ )| _aRa_ ′, and if _a_ = _a_ ′then _bSb_ ′}. Show that _L_ is a partial order on
       _A_ × _B_. If both _R_ and _S_ are total orders, will _L_ also be a total order?
10. Suppose _R_ is a partial order on _A_. For each _x_ ∈ _A_ , let _Px_ = { _a_ ∈ _A_ | _aRx_ }.
Prove that∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ ↔ _Px_ ⊆ _Py_ ).
∗11. Let _D_ be the divisibility relation defined in part 3 of Example 4.4.3. Let

```
B = { x ∈Z| x > 1 }. Does B have any minimal elements? If so, what are
they? Does B have a smallest element? If so, what is it?
```

12. Show that, as was stated in part 2 of Example 4.4.7,{ _X_ ⊆R| _X_ =∅and
    ∀ _x_ ∀ _y_ (( _x_ ∈ _X_ and  _x_ < _y_ )→ _y_ ∈ _X_ )}has no minimal element.
13. Suppose _R_ is a partial order on _A_. Prove that _R_ -^1 is also a partial order on
    _A_. If _R_ is a total order, will _R_ -^1 also be a total order?
∗14. Suppose _R_ is a partial order on _A_ , _B_ ⊆ _A_ , and _b_ ∈ _B_. Exercise 13 shows

```
that R -^1 is also a partial order on A.
(a) Prove that b is the R -largest element of B iff it is the R -^1 -smallest
element of B.
(b) Prove that b is an R -maximal element of B iff it is an R -^1 -minimal
element of B.
```

```
Ordering Relations 201
```

15. Suppose _R_ 1 and _R_ 2 are partial orders on _A_ , _R_ 1 ⊆ _R_ 2 , _B_ ⊆ _A_ , and _b_ ∈ _B_.
    (a) Prove that if _b_ is the _R_ 1 -smallest element of _B_ , then it is also the
       _R_ 2 -smallest element of _B_.
    (b) Prove that if _b_ is an _R_ 2 -minimal element of _B_ , then it is also an _R_ 1 -
       minimal element of _B_.
16. Suppose _R_ is a partial order on _A_ , _B_ ⊆ _A_ , and _b_ ∈ _B_. Prove that if _b_ is the
    largest element of _B_ , then _b_ is also a maximal element of _B_ , and it’s the
    only maximal element.
∗17. If a subset of a partially ordered set has exactly one minimal element,

```
must that element be a smallest element?Give either a proof or a counter
example to justify your answer.
```

18. Suppose _R_ is a partial order on _A_ , _B_ 1 ⊆ _A_ , _B_ 2 ⊆ _A_ , ∀ _x_ ∈ _B_ 1 ∃ _y_ ∈
    _B_ 2 ( _x Ry_ ), and∀ _x_ ∈ _B_ 2 ∃ _y_ ∈ _B_ 1 ( _x Ry_ ).
(a) Prove that for all _x_ ∈ _A_ , _x_ is an upper bound of _B_ 1 iff _x_ is an upper
bound of _B_ 2.
(b) Prove that if _B_ 1 and _B_ 2 are disjoint then neither of them has a maximal
element.
19. Consider the following putative theorem.
    **Theorem?** _Suppose R is a total order on A and B_ ⊆ _A. Then every ele-_
    _ment of B is either the smallest element of B or the largest element of B._

```
(a) What’s wrong with the following proof of the theorem?
Proof. Suppose b ∈ B. Let x be an arbitrary element of B. Since R is
a total order, either bRx or x Rb.
Case 1. bRx. Since x was arbitrary, we can conclude that∀ x ∈
B ( bRx ), so b is the smallest element of R.
Case 2. x Rb. Since x was arbitrary, we can conclude that∀ x ∈
B ( x Rb ), so b is the largest element of R.
Thus, b is either the smallest element of B or the largest element
of B. Since b was arbitrary, every element of B is either its smallest
element or its largest element. 
(b) Is the theorem correct? Justify your answer with either a proof or a
counterexample.
```

20. Suppose _R_ is a partial order on _A_ , _B_ ⊆ _A_ , and _b_ ∈ _B_.
    (a) Prove that if _b_ is the smallest element of _B_ , then it is also the greatest
       lower bound of _B_.
    (b) Prove that if _b_ is the largest element of _B_ , then it is also the least upper
       bound of _B_.
∗21. Suppose _R_ is a partial order on _A_ and _B_ ⊆ _A_. Let _U_ be the set of all upper

```
bounds for B.
```

202 _Relations_

```
(a) Prove that U is closed upward ; that is, prove that if x ∈ U and x Ry ,
then y ∈ U.
(b) Prove that every element of B is a lower bound for U.
(c) Prove that if x is the greatest lower bound of U , then x is the least upper
bound of B.
```

22. Suppose that _R_ is a partial order on _A_ , _B_ 1 ⊆ _A_ , _B_ 2 ⊆ _A_ , _x_ 1 is the least
    upper bound of _B_ 1 , and _x_ 2 is the least upper bound of _B_ 2. Prove that if
       _B_ 1 ⊆ _B_ 2 then _x_ 1 _Rx_ 2.
23. Prove Theorem 4.4.11.

```
4.5. Closures
```

According to the definition we gave in the last section, the relation _L_ =
{( _x_ , _y_ )∈R×R| _x_ ≤ _y_ }is a total order onR, but the relation _M_ = { ( _x_ , _y_ )∈
R×R| _x_ < _y_ }is not because it is not reflexive. Of course, these relations are
closely related. It’s clear that _M_ ⊆ _L_ , and the only ordered pairs in _L_ that are
not in _M_ are pairs of the form ( _x_ , _x_ ), for some _x_ ∈R. Note that all of these
ordered pairs must be in any reflexive relation onR. Thus, you could think of
_L_ as being formed by starting with _M_ and then adding just those ordered pairs
that must be added to create a reflexive relation. It follows that _L_ is the smallest
relation onRthat is reflexive and contains _M_ as a subset. We are using the
word _smallest_ here in exactly the way we defined it in the last section. If we let
F= { _T_ ⊆R×R| _M_ ⊆ _T_ and _T_ is reflexive}, then _L_ is the smallest element
ofF, where as usual it is understood that we mean smallest in the sense of the
subset partial order. In other words, _L_ is an element ofF, and it’s a subset of
every element ofF. We will say that _L_ is the _reflexive closure_ of _M_.

**Definition 4.5.1.** Suppose _R_ is a relation on a set _A_. Then the _reflexive closure_
of _R_ is the smallest set _S_ ⊆ _A_ × _A_ such that _R_ ⊆ _S_ and _S_ is reflexive, if there
is such a smallest set. In other words, a relation _S_ ⊆ _A_ × _A_ is the reflexive
closure of _R_ if it has the following three properties:

1. _R_ ⊆ _S_.
2. _S_ is reflexive.
3. For every relation _T_ ⊆ _A_ × _A_ , if _R_ ⊆ _T_ and _T_ is reflexive, then _S_ ⊆ _T_.

According to Theorem 4.3.6, if a set has a smallest element, then it can
have only one smallest element. Thus, if a relation _R_ has a reflexive closure,
then this reflexive closure must be unique, so it makes sense to call it _the_
reflexive closure of _R_ rather than _a_ reflexive closure. However, as we saw in

```
Closures 203
Example 4.4.7, some families of sets don’t have smallest elements, so it might
not be clear at first whether every relation has a reflexive closure. In fact, every
relation does have a reflexive closure.
```

```
Theorem 4.5.2. Suppose R is a relation on A. Then R has a reflexive closure.
Proof. Let S = R , iA , where as usual iA is the identity relation on A. We
will show that S is the reflexive closure of A. Thus, we must show that S
has the three properties listed in Definition 4.5.1. The first property is ob-
viously true, since clearly R ⊆ R , iA = S. For the second and third, we use
Theorem 4.3.4. Clearly iA ⊆ R , iA = S , so by part 1 of Theorem 4.3.4, S is re-
flexive. Finally, to prove the third property, suppose T is a relation on A , R ⊆ T ,
and T is reflexive. Then by Theorem 4.3.4, since T is reflexive, iA ⊆ T. Com-
bining this with the fact that R ⊆ T , we can conclude that S = R , iA ⊆ T , as
required. 
```

_Commentary._ Our goal is the existential statement∃ _S_ ( _S_ is the reflexive closure
of _R_ ), so we start by specifying a value for _S_. Our earlier discussion suggests that
to get _S_ we should start with _R_ and then add just those ordered pairs that must
be added to create a reflexive relation. The ordered pairs that must be added
are the elements of _iA_ that are not already in _R_ , so we let _S_ = _R_ , _iA_. Our goal
now is to prove that _S_ is the reflexive closure of _R_ , and by definition this means
that we must prove statements 1–3 of Definition 4.5.1. We prove these one at a
time. Statements 1 and 2 are easy, and the logical form of statement 3 suggests
the strategy of letting _T_ be an arbitrary relation on _A_ , assuming _R_ ⊆ _T_ and _T_
is reflexive, and then proving _S_ ⊆ _T_.

```
For another example of a reflexive closure, let A be any set and consider
the relation P = { ( x , y )∈P( A )×P( A )| x ⊆ y and x = y }. Thus, if x and y
are any two subsets of A , then x Py means that x ⊆ y and x = y. If x Py , then
we will say that x is a proper subset of y , which is written x ⊂ y. The reflexive
closure of P would be the relation
```

```
P , i P( A )= { ( x , y )∈P( A )×P( A )|( x , y )∈ P or ( x , y )∈ i P( A )}
= { ( x , y )∈P( A )×P( A )| x ⊂ y or x = y }
= { ( x , y )∈P( A )×P( A )| x ⊆ y }.
```

```
Thus, the reflexive closure of the proper subset relation is the subset relation.
The relations M and P in these examples are similar to partial orders except
that they are not reflexive. Rather than expressing a sense in which one object
can be “at least as large as” another, these relations seem to represent a sense
```

204 _Relations_

in which one object can be “strictly larger” than another. They are therefore
sometimes called _strict_ partial orders.

**Definition 4.5.3.** Suppose _R_ is a relation on _A_. Then _R_ is said to be _irreflexive_
if∀ _x_ ∈ _A_ (( _x_ , _x_ )∈/ _R_ ). _R_ is called a _strict partial order_ if it is irreflexive and
transitive. It is called a _strict total order_ if it is a strict partial order, and in
addition it satisfies the following requirement, called _trichotomy_ :

```
∀ x ∈ A ∀ y ∈ A ( x Ry or  yRx or  x = y ).
```

Note that the terminology here is slightly misleading. A strict partial order
isn’t a special kind of partial order. It’s not a partial order at all, since it’s not
reflexive!You may be surprised that we did not include antisymmetry in the
definition of strict partial order, since it was part of the definition of partial
order, but it turns out that antisymmetry is implied by the definition. For more
on this, see exercise 3.
You should be able to check for yourself that _P_ is a strict partial order and
_M_ is a strict total order. Perhaps you’ve already guessed from these examples
that the reflexive closure of a strict partial order is always a partial order, and
the reflexive closure of a strict total order is always a total order. You are asked
to prove this in exercise 4.
Reflexivity is not the only property for which we can define a closure. Exactly
the same idea could be applied to symmetry and transitivity.

**Definition 4.5.4.** Suppose _R_ is a relation on _A_. The _symmetric closure_ of _R_ is
the smallest set _S_ ⊆ _A_ × _A_ such that _R_ ⊆ _S_ and _S_ is symmetric, if there is such
a smallest set. In other words, a relation _S_ ⊆ _A_ × _A_ is the symmetric closure
of _R_ if it has the following properties:

1. _R_ ⊆ _S_.
2. _S_ is symmetric.
3. For every relation _T_ ⊆ _A_ × _A_ , if _R_ ⊆ _T_ and _T_ is symmetric, then _S_ ⊆ _T_.

The _transitive closure_ of _R_ is the smallest set _S_ ⊆ _A_ × _A_ such that _R_ ⊆ _S_
and _S_ is transitive, if there is such a smallest set. In other words, a relation
_S_ ⊆ _A_ × _A_ is the transitive closure of _R_ if it has the following properties:

1. _R_ ⊆ _S_.
2. _S_ is transitive.
3. For every relation _T_ ⊆ _A_ × _A_ , if _R_ ⊆ _T_ and _T_ is transitive, then _S_ ⊆ _T_.

_Closures_ 205
As we saw in the case of reflexive closure, it is not immediately obvious
that these closures will always exist. It turns out that they do, although this will
require proof. But before proving these theorems, let’s look at a few examples
of symmetric and transitive closures.
Let _P_ be the set of all people, and let _H_ = { ( _x_ , _y_ )∈ _P_ × _P_ | _x_ hates _y_ }.
Then _H_ may fail to be symmetric, because if _x_ hates _y_ , it doesn’t necessarily
follow that _y_ hates _x_. To find the symmetric closure of _H_ we would have to
find the smallest relation on _P_ that is symmetric and contains every ordered
pair in _H_. We could do this by starting with _H_ and then adding only those
ordered pairs that _must_ be added to make the relation symmetric. Now clearly
if we want to create a symmetric relation, then we will have to add the ordered
pair ( _x_ , _y_ ) whenever ( _y_ , _x_ )∈ _H_. In other words, if _y_ hates _x_ , then we’ll have to
include the pair ( _x_ , _y_ ) in the relation we are constructing. Adding these ordered
pairs to _H_ , we can see that any relation on _P_ that is symmetric and contains
_H_ must contain all the ordered pairs in the set _S_ = _H_ , { ( _x_ , _y_ )∈ _P_ × _P_ | _y_
hates _x_ } = { ( _x_ , _y_ )∈ _P_ × _P_ |either _x_ hates _y_ or _y_ hates _x_ }. Now it is not hard
to check that _S_ is a symmetric relation, so it must be the symmetric closure
of _H_. If you were planning the guest list for a party, you might want to know
about the relation _S_. If you are inviting some person _x_ and you know that _xSy_ ,
you probably shouldn’t invite _y_!
For an example of a transitive closure, let _C_ be the set of all cities in the
world and let _B_ = { ( _x_ , _y_ )∈ _C_ × _C_ |there is a nonstop bus from _x_ to _y_ }. Now if
( _a_ , _b_ )∈ _B_ and ( _b_ , _c_ )∈ _B_ , it does not necessarily follow that ( _a_ , _c_ )∈ _B_ , since
there might be nonstop buses from _a_ to _b_ and _b_ to _c_ , but no nonstop bus from
_a_ to _c_. Thus, if we want to add new ordered pairs to _B_ in order to construct a
transitive relation, we must add the pair ( _a_ , _c_ ). But notice that once we have
added ( _a_ , _c_ ), we may be forced to add even more ordered pairs if we want to
end up with a transitive relation. For example, if there is a nonstop bus from
_c_ to some other city _d_ , then we will have to add ( _a_ , _d_ ). We were forced to
add ( _a_ , _d_ ) because ( _a_ , _b_ ),( _b_ , _c_ ), and ( _c_ , _d_ ) were all elements of _B_. In other
words, you could go by bus from _a_ to _b_ , from _b_ to _c_ , and from _c_ to _d_. In fact,
it should be clear now that for any two cities _x_ and _y_ , if there is a way to get
from _x_ to _y_ by bus, changing buses any number of times at other cities, then we
will eventually be forced by the transitivity requirement to add the pair ( _x_ , _y_ ).
Thus, any transitive relation on _C_ that contains all the ordered pairs in _B_ must
contain the relation _T_ = { ( _x_ , _y_ )∈ _C_ × _C_ |it is possible to get from _x_ to _y_ by
bus (possibly changing buses several times at other cities)}. But if you can get
from _x_ to _y_ by bus and you can get from _y_ to _z_ by bus, then by combining the
two bus trips you can get from _x_ to _z_ by bus. Thus, _T_ is transitive, so it is the
transitive closure of _B_.

206 _Relations_

It might be helpful in thinking about this last example to draw the directed
graph of the relation _B_. This is illustrated in Figure 1 for a small set of cities.
A bus company might draw such a diagram to represent all its bus routes. Now
we can describe the transitive closure _T_ as consisting of all ordered pairs ( _x_ , _y_ )
such that you can get from _x_ to _y_ in Figure 1 by following the arrows. For
example, the pair (Dallas, New York) would be in _T_ , because you can get from
Dallas to New York by changing buses in Washington. Note that although it
might be convenient to position the dots in this diagram as they would appear
on a map, the precise positions of the dots have nothing to do with the relations
_B_ and _T_. To read from the diagram which ordered pairs are in _B_ or _T_ , we
only need to know which dots are connected by arrows and which aren’t, not
precisely where the dots are located.

```
Figure 1
```

Directed graphs can often be helpful in thinking about symmetric and
transitive closures of relations. Let’s work out one more example. Suppose
_A_ = { 1 , 2 , 3 , 4 } and _R_ = { (1,2),(1,3),(2,1),(2,2),(3,4)}. The directed
graph representing _R_ is shown in Figure 2.

```
Figure 2
```

_Closures_ 207
We can find the symmetric and transitive closures of _R_ by imitating the rea-
soning we used for the relations _H_ and _B_. To find the symmetric closure we
start with _R_ , and for each ordered pair ( _x_ , _y_ ) in _R_ we add the ordered pair ( _y_ , _x_ ).
This gives us the relation _S_ = { (1,2),(1,3),(2,1),(2,2),(3,1),(3,4),(4,3)},
whose directed graph is shown in Figure 3. Note that the only difference be-
tween this graph and the one in Figure 2 is that single arrows connecting distinct
vertices have been changed to pairs of arrows pointing in opposite directions.
You should be able to check that _S_ is symmetric, and since the only ordered pairs
we added to _R_ are those we were _forced_ to add by the definition of symmetry,
_S_ must be the symmetric closure of _R_.
To find the transitive closure of _R_ , we let _T_ = { ( _x_ , _y_ )∈ _A_ × _A_ |you can
get from vertex _x_ to vertex _y_ in Figure 2 by following the arrows}=
{(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4), (3, 4)}. The graph
of _T_ is also shown in Figure 3. Note in particular that (1,1)∈ _T_ , because you
can get from vertex 1 to itself by following the arrows in Figure 2, going first
from vertex 1 to vertex 2 and then back to vertex 1. Rephrasing this in terms of
the definition of transitivity, since (1,2)∈ _R_ and (2,1)∈ _R_ , we must add the
ordered pair (1, 1) to _R_ if we want to create a transitive relation. Once again,
you should be able to verify that _T_ is the transitive closure of _R_ by checking
that _T_ is transitive and that the only ordered pairs in _T_ that are not in _R_ are
those we were _forced_ to add by the definition of transitivity.

```
Figure 3
```

Let’sreturnnowtotheproblemofprovingthateveryrelationhasasymmetric
closure and a transitive closure. Both of these proofs will involve proving that
something with a certain property exists, and as we saw in Chapter 3, proofs of
this kind are sometimes difficult. The most straightforward way to proceed is to
try to find something that has the required property, but sometimes this object is

208 _Relations_

difficult to find. For the proofs we are concerned with we will need to be able to
find, for any given relation _R_ , relations that satisfy the definitions of symmetric
and transitive closure for _R_. This will actually be the most difficult part of
figuring out these proofs. Once we’ve found the right relations, verifying that
they satisfy the definitions of symmetricand transitive closure will be somewhat
long, but not difficult.
The case of the symmetric closure is the easier of the two. Suppose _R_ is a
relation on a set _A_ , and we want to find the symmetric closure of _R_. Looking at
the earlier examples, it appears that all we need to do is to add to _R_ all ordered
pairs ( _x_ , _y_ ) such that ( _y_ , _x_ )∈ _R_. In other words, it looks like the symmetric
closure of _R_ will be _R_ , _R_ -^1.

**Theorem 4.5.5.** _Suppose R is a relation on a set A. Then R has a symmetric
closure.
Proof._ Let _S_ = _R_ , _R_ -^1. We will show that S is the symmetric closure of _R_.
Clearly _R_ ⊆ _S_ , so the first clause of the definition of symmetric closure
is satisfied. For the second, suppose ( _x_ , _y_ )∈ _S_. Then by the definition of _S_ ,
either ( _x_ , _y_ )∈ _R_ or ( _x_ , _y_ )∈ _R_ -^1. If ( _x_ , _y_ )∈ _R_ , then ( _y_ , _x_ )∈ _R_ -^1 ⊆ _S_. If
( _x_ , _y_ )∈ _R_ -^1 then ( _y_ , _x_ )∈ _R_ ⊆ _S_. Thus, we can conclude that if ( _x_ , _y_ )∈ _S_
then ( _y_ , _x_ )∈ _S_. Since ( _x_ , _y_ ) was arbitrary, this shows that _S_ is symmetric.
Finally, for the third clause in the definition of symmetric closure, sup-
pose _R_ ⊆ _T_ ⊆ _A_ × _A_ and _T_ is symmetric. Suppose ( _x_ , _y_ )∈ _S_. As before, this
means that either ( _x_ , _y_ )∈ _R_ or ( _x_ , _y_ )∈ _R_ -^1 , so we consider these two possi-
bilities separately. If ( _x_ , _y_ )∈ _R_ then ( _x_ , _y_ )∈ _T_ , since _R_ ⊆ _T_. If ( _x_ , _y_ )∈ _R_ -^1
then ( _y_ , _x_ )∈ _R_ , so since _R_ ⊆ _T_ ,( _y_ , _x_ )∈ _T_. But then since _T_ is symmetric, it
follows that ( _x_ , _y_ )∈ _T_. Since ( _x_ , _y_ ) was arbitrary, we have shown that _S_ ⊆ _T_ ,
as required. 

_Commentary._ The overall form of this proof is quite similar to the form of the
proof of Theorem 4.5.2, but some of the details are a little trickier. We start
by specifying a relation _S_ that will be the symmetric closure of _R_ , and then
we prove the three statements in the definition of symmetric closure one at a
time. The logical form of the definition of symmetric suggests that to prove
that _S_ is symmetric we should start with an arbitrary ordered pair ( _x_ , _y_ )∈ _S_
and prove ( _y_ , _x_ )∈ _S_. Because we defined _S_ to be _R_ , _R_ -^1 , the assumption that
( _x_ , _y_ )∈ _S_ means ( _x_ , _y_ )∈ _R_ or ( _x_ , _y_ )∈ _R_ -^1 , and since this is a disjunction it
suggests the use of proof by cases.
As in the proof of Theorem 4.5.2, to prove the third statement in the definition
of symmetric closure we let _T_ be an arbitrary relation on _A_ such that _R_ ⊆ _T_
and _T_ is symmetric, and we prove _S_ ⊆ _T_. To prove _S_ ⊆ _T_ we let ( _x_ , _y_ ) be
an arbitrary element of _S_ and prove ( _x_ , _y_ )∈ _T_. As before, the assumption that
( _x_ , _y_ )∈ _S_ is a disjunction, so it leads to a proof by cases.

```
Closures 209
Before moving on to the proof that all relations have transitive closures, we
would like to describe an alternative method of proving Theorem 4.5.5. If R
is a relation on a set A , then we know that the symmetric closure of R , if it
exists, must be the smallest element of the familyF= { T ⊆ A × A | R ⊆ T
and T is symmetric}. Now according to exercise 20 in the last section, the
smallest element of a set is also always the greatest lower bound of the set, and
by Theorem 4.4.11, the g.l.b. of a nonempty family of setsFis always+F.
Thus, if the symmetric closure of R exists, then it must be equal to+F. This
suggests an alternative approach to proving Theorem 4.5.5. We could define
the familyF, prove thatF=∅, and then let S = + F(instead of R , R -^1 )
and prove that S satisfies the definition of symmetric closure. Recall that we
only defined+FforF=∅, so we must check thatF=∅before we can
form+F. You are asked in exercise 10 to work out the details of this alternative
proof.
There are also two ways we could prove that any relation R on a set A
has a transitive closure. One possibility would be to try to form the transitive
closure by starting with R and then adding extra ordered pairs to try to create
a transitive relation, as we did in the earlier examples. Although this can be
done, a careful treatment of the details of this proof would require the method
of mathematical induction, which we have not yet discussed. We will present
this proof in Chapter 6 after we’ve discussed mathematical induction. For now,
we’ll use the alternative method suggested by the last paragraph of letting
F= { T ⊆ A × A | R ⊆ T and T is transitive}and then showing thatF=∅
and+Fis the transitive closure of R.
```

**Theorem 4.5.6.** _Suppose R is a relation on a set A. Then R has a transitive
closure.
Proof._ LetF= { _T_ ⊆ _A_ × _A_ | _R_ ⊆ _T_ and _T_ is transitive}. First of all, you
should be able to check that _R_ ⊆ _A_ × _A_ and _A_ × _A_ is a transitive relation on
_A_ , so _A_ × _A_ ∈F, and thereforeF=∅. Thus, we can let _S_ = + F. We will
show that _S_ is the transitive closure of _R_.
To prove the first clause in the definition of transitive closure, suppose
( _x_ , _y_ )∈ _R_. Let _T_ be an arbitrary element ofF. Then by the definition of
F, _R_ ⊆ _T_ , so ( _x_ , _y_ )∈ _T_. Since _T_ was arbitrary, this shows that ∀ _T_ ∈
F(( _x_ , _y_ )∈ _T_ ), so ( _x_ , _y_ )∈ + F= _S_. Thus, _R_ ⊆ _S_.
Forthesecondclause,suppose( _x_ , _y_ )∈ _S_ and( _y_ , _z_ )∈ _S_ ,andagainlet _T_ bean
arbitrary element ofF. Then since ( _x_ , _y_ )∈ _S_ = + F,( _x_ , _y_ )∈ _T_ , and similarly
( _y_ , _z_ )∈ _T_. But since _T_ ∈F, _T_ is transitive, so it follows that ( _x_ , _z_ )∈ _T_. Since
_T_ wasarbitrary,wecanconcludethat∀ _T_ ∈F(( _x_ , _z_ )∈ _T_ ),so( _x_ , _z_ )∈ + F= _S_.
Thus, we have shown that if ( _x_ , _y_ )∈ _S_ and ( _y_ , _z_ )∈ _S_ then ( _x_ , _z_ )∈ _S_ , so _S_ is
transitive.

210 _Relations_

Finally, for the third clause, suppose _T_ is a relation on _A_ , _R_ ⊆ _T_ , and _T_
is transitive. Then _T_ ∈F, and by exercise 9 of Section 3.3, it follows that
_S_ = + F⊆ _T_. 

_Commentary._ Once again we start by defining _S_ , but this time the definition
_S_ = + Fdoesn’t make sense unless we knowF=∅, so we must prove this
first. BecauseF=∅means∃ _Q_ ( _Q_ ∈F), we prove it by giving an example
of an element ofF. The example is _A_ × _A_ , so we must prove _A_ × _A_ ∈F,
and according to the definition ofFthis means _A_ × _A_ ⊆ _A_ × _A_ , _R_ ⊆ _A_ × _A_ ,
and _A_ × _A_ is transitive. The statement in the proof that “you should be able to
check” that these statements are true really does mean that you should do the
checking. In particular, you should verify that _A_ × _A_ is transitive by assuming
that ( _x_ , _y_ )∈ _A_ × _A_ and ( _y_ , _z_ )∈ _A_ × _A_ and then proving that ( _x_ , _z_ )∈ _A_ × _A_.
As in Theorems 4.5.2 and 4.5.5, we must now prove the three statements
in the definition of transitive closure. To prove the first statement, _R_ ⊆ _S_ , we
let ( _x_ , _y_ ) be an arbitrary element of _R_ and prove ( _x_ , _y_ )∈ _S_. Since _S_ = + F,
the goal ( _x_ , _y_ )∈ _S_ means∀ _T_ ∈F(( _x_ , _y_ )∈ _T_ ), so to prove it we let _T_ be an
arbitrary element ofFand prove ( _x_ , _y_ )∈ _T_. To prove that _S_ is transitive we
assume ( _x_ , _y_ )∈ _S_ and ( _y_ , _z_ )∈ _S_ , and prove ( _x_ , _z_ )∈ _S_. Once again, by the
definition of _S_ this goal means∀ _T_ ∈F(( _x_ , _z_ )∈ _T_ ), so we let _T_ be an arbitrary
element ofFand prove ( _x_ , _z_ )∈ _T_.

```
Exercises
```

```
∗1. Find the reflexive, symmetric, and transitive closures of the following
relations.
(a) A = { a , b , c }, R = { ( a , a ),( a , b ),( b , c ),( c , b )}.
(b) R = { ( x , y )∈R×R| x < y }.
(c) Dr , as defined in part 3 of Example 4.3.1, for any positive real
number r.
```

2. Find the reflexive, symmetric, and transitive closures of the relations in
    exercise 4 of Section 4.3.
∗3. Suppose _R_ is a relation on _A_. _R_ is called _asymmetric_ if∀ _x_ ∈ _A_ ∀ _y_ ∈
_A_ (( _x_ , _y_ )∈ _R_ →( _y_ , _x_ )∈/ _R_ ).
    (a) Show that if _R_ is asymmetric then _R_ is antisymmetric.
(b) Show that if _R_ is a strict partial order, then _R_ is asymmetric. Note that
it follows by part (a) that it is also antisymmetric.
4. Suppose _R_ is a strict partial order on _A_. Let _S_ be the reflexive closure of _R_.
    (a) Show that _S_ is a partial order on _A_.

```
Closures 211
(b) Show that if R is a strict total order, then S is a total order.
∗5. Suppose R is a relation on A. Let S = R \ iA.
(a) Prove that S is the largest element of the set{ T ⊆ A × A | T ⊆ R
and T is irreflexive}.
(b) Prove that if R is a partial order on A , then S is a strict partial order
on A.
```

6. Let _P_ be the set of all people, and let _R_ = { ( _p_ , _q_ )∈ _P_ × _P_ |the person
    _p_ is a parent of the person _q_ }.
    (a) Let _S_ be the transitive closure of _R_. Describe the relation _S_.
(b) Describe the relation _S_ ◦ _S_ -^1.
∗7. Suppose _R_ is a relation on _A_.
(a) Prove that _R_ is reflexive iff _R_ is its own reflexive closure.
(b) Do similar theorems hold for symmetry and transitivity? Justify your
answers with proofs or counterexamples.
8. Suppose _R_ is a relation on _A_ , and let _S_ be the symmetric closure of _R_.
    Prove that Dom( _S_ ) = Ran( _S_ ) = Dom( _R_ ),Ran( _R_ ).
∗9. Suppose _R_ is a relation on _A_ , and let _S_ be the transitive closure of _R_.
Prove that Dom( _S_ )=Dom( _R_ ) and Ran( _S_ )=Ran( _R_ ).
10. Suppose _R_ is a relation on _A_. LetF= { _T_ ⊆ _A_ × _A_ | _R_ ⊆ _T_ and _T_ is
symmetric}. Complete the alternative proof of Theorem 4.5.5 suggested
in the text as follows:
(a) Prove thatF=∅.
(b) Let _S_ = + F. Prove that _S_ is the symmetric closure of _R_.
11. Suppose _R_ 1 and _R_ 2 are relations on _A_ and _R_ 1 ⊆ _R_ 2.
(a) Let _S_ 1 and _S_ 2 be the reflexive closures of _R_ 1 and _R_ 2 respectively.
Prove that _S_ 1 ⊆ _S_ 2.
(b) Do similar theorems hold for the symmetric and transitive closures?
Justify your answers with proofs or counterexamples.
∗12. Suppose _R_ 1 and _R_ 2 are relations on _A_ , and let _R_ = _R_ 1 , _R_ 2.

```
(a) Let S 1 , S 2 , and S be the reflexive closures of R 1 , R 2 , and R respec-
tively. Prove that S 1 , S 2 = S.
(b) Let S 1 , S 2 , and S be the symmetric closures of R 1 , R 2 , and R respec-
tively. Prove that S 1 , S 2 = S.
(c) Let S 1 , S 2 , and S be the transitive closures of R 1 , R 2 , and R respec-
tively. Prove that S 1 , S 2 ⊆ S , and give an example to show that it
may happen that S 1 , S 2 = S.
```

13. Suppose _R_ 1 and _R_ 2 are relations on _A_ , and let _R_ = _R_ 1 + _R_ 2.
    (a) Let _S_ 1 , _S_ 2 , and _S_ be the reflexive closures of _R_ 1 , _R_ 2 , and _R_ respec-
       tively. What is the relationship between _S_ 1 + _S_ 2 and _S_? Justify your
       conclusions with proofs or counterexamples.

212 _Relations_

```
(b) Let S 1 , S 2 , and S be the symmetric closures of R 1 , R 2 , and R respec-
tively. What is the relationship between S 1 + S 2 and S? Justify your
conclusions with proofs or counterexamples.
(c) Let S 1 , S 2 , and S be the transitive closures of R 1 , R 2 , and R respec-
tively. What is the relationship between S 1 + S 2 and S? Justify your
conclusions with proofs or counterexamples.
```

14. Find an example of relations _R_ 1 and _R_ 2 on some set _A_ such that, if we
    let _R_ = _R_ 1 \ _R_ 2 and we let _S_ 1 , _S_ 2 , and _S_ be the transitive closures of _R_ 1 ,
       _R_ 2 , and _R_ respectively, then _S_ 1 \ _S_ 2 ⊆ _S_ and _S_ ⊆ _S_ 1 \ _S_ 2.
∗15. Suppose _R_ is a relation on _A_. The _reflexive symmetric closure_ of _R_ is
the smallest set _S_ ⊆ _A_ × _A_ such that _R_ ⊆ _S_ , _S_ is reflexive, and _S_ is
symmetric, if there is such a smallest set. Prove that every relation has a
reflexive symmetric closure.
16. Suppose _R_ is a relation on _A_ , and let _S_ be the reflexive closure of _R_.
    (a) Prove that if _R_ is symmetric, then so is _S_.
    (b) Prove that if _R_ is transitive, then so is _S_.
17. Suppose _R_ is a relation on _A_ , and let _S_ be the transitive closure of _R_. Prove
    that if _R_ is symmetric, then so is _S_. (Hint: Assume that _R_ is symmetric.
    Prove that _R_ ⊆ _S_ -^1 and _S_ -^1 is transitive. What can you conclude about
    _S_ and _S_ -^1 ?)
∗18. Suppose _R_ is a relation on _A_. The _symmetric transitive closure_ of _R_ is
the smallest set _S_ ⊆ _A_ × _A_ such that _R_ ⊆ _S_ , _S_ is symmetric, and _S_ is
transitive, if there is such a smallest set.
Let _Q_ be the symmetric closure of _R_ , and let _S_ be the transitive closure
of _Q_ .Also,let _Q_ ′bethetransitiveclosureof _R_ ,andlet _S_ ′bethesymmetric
closure of _Q_ ′.
(a) Prove that _S_ is the symmetric transitive closure of _R_. (Hint: Use
exercise 17.)
(b) Prove that _S_ ′⊆ _S_.
(c) Must it be the case that _S_ ′= _S_? Justify your answer with either a
proof or a counterexample.
19. Consider the following putative theorem:
    **Theorem?** _Suppose R is a reflexive, antisymmetric relation on A. Let S_
    _be the transitive closure of R. Then S is a partial order on A._

```
Is the following proof correct? If so, what proof strategies does it use? If
not, can it be fixed? Is the theorem correct?
```

```
Proof. R is already reflexive and antisymmetric. To form the relation
S we add more ordered pairs to make it transitive as well. Thus, S is
reflexive, antisymmetric, and transitive, so it is a partial order. 
```

```
Equivalence Relations 213
∗20. A bus company is trying to decide what bus routes to run among the cities
in the set C = { San Francisco, Chicago, Dallas, New York, Washington
D.C.}. Their routes will be represented by a relation B on C , as in the
example in the text. The company wants to make sure you can get from
any city in C to any other city in C , so they want to make sure that the
transitive closure of B is C × C. LetF= { B ⊆ C × C | the transitive
closure of B is C × C }. However, they don’t want to run any bus routes
unnecessarily, so they want the relation B to be a minimal element ofF.
(As usual, we mean minimal with respect to the subset ordering onF.
You will have to work out what this means, according to the definition of
minimal in Section 4.4.)
(a) Find a minimal element ofF.
(b) DoesFhave a smallest element?
```

## 4.6 Equivalence Relations

```
We saw in Example 4.3.3 that the identity relation iA on any set A is always
reflexive, symmetric, and transitive. Relations with this combination of prop-
erties come up often in mathematics, and they have some important properties
that we will investigate in this section. These relations are called equivalence
relations.
```

**Definition 4.6.1.** Suppose _R_ is a relation on a set _A_. Then _R_ is called an
_equivalence relation on A_ (or just an _equivalence relation_ if _A_ is clear from
context) if it is reflexive, symmetric, and transitive.

As we observed earlier, the identity relation _iA_ on a set _A_ is an equivalence
relation. For another example, let _T_ be the set of all triangles, and let _C_ be the
relation of congruence of triangles. In other words, _C_ = { ( _s_ , _t_ )∈ _T_ × _T_ |the
triangle _s_ is congruent to the triangle _t_ }. (Recall that a triangle is congruent
to another if it can be moved without distorting it so that it coincides with the
other.) Clearly every triangle is congruent to itself, so _C_ is reflexive. Also, if
triangle _s_ is congruent to triangle _t_ , then _t_ is congruent to _s_ , so _C_ is symmetric;
and if _r_ is congruent to _s_ and _s_ is congruent to _t_ , then _r_ is congruent to _t_ , so _C_
is transitive. Thus, _C_ is an equivalence relation on _T_.
As another example, let _P_ be the set of all people, and let _B_ = { ( _p_ , _q_ )∈
_P_ × _P_ | the person _p_ has the same birthday as the person _q_ }. (By “same
birthday” we mean same month and day, but not necessarily the same year.)
Everyone has the same birthday as himself, so _B_ is reflexive. If _p_ has the same
birthday as _q_ , then _q_ has the same birthday as _p_ , so _B_ is symmetric. And if _p_ has

214 _Relations_

the same birthday as _q_ and _q_ has the same birthday as _r_ , then _p_ has the same
birthday as _r_ , so _B_ is transitive. Therefore _B_ is an equivalence relation.
It may be instructive to look at the relation _B_ more closely. We can think
of this relation as splitting the set _P_ of all people into 366 categories, one for
each possible birthday. (Remember, some people were born on February 29th!)
An ordered pair of people will be an element of _B_ if the people come from the
same category, but will not be an element of _B_ if the people come from different
categories. We could think of these categories as forming a family of subsets of
_P_ , which we could write as an indexed family as follows. First of all, let _D_ be
the set of all possible birthdays. In other words, _D_ = { Jan. 1, Jan. 2, Jan. 3,... ,
Dec. 30, Dec. 31}. Now for each _d_ ∈ _D_ , let _Pd_ = { _p_ ∈ _P_ |the person _p_ was
born on the day _d_ }. Then the familyF= { _Pd_ | _d_ ∈ _D_ }is an indexed family of
subsets of _P_. The elements ofFare called _equivalence classes_ for the relation
_B_ , and every person is an element of exactly one of these equivalence classes.
The relation _B_ consists of those pairs ( _p_ , _q_ )∈ _P_ × _P_ such that the people _p_
and _q_ are in the same equivalence class. In other words,

```
B = { ( p , q )∈ P × P | ∃ d ∈ D ( p ∈ Pd and q ∈ Pd )}
= { ( p , q )∈ P × P | ∃ d ∈ D (( p , q )∈ Pd × Pd )}
= ,
d ∈ D
```

```
( Pd × Pd ).
```

We will call the familyFa _partition_ of _P_ because it breaks the set _P_ into
disjoint pieces. It turns out that every equivalence relation on a set _A_ determines
a partition of _A_ , whose elements are the equivalence classes for the equivalence
relation. But before we can work out the details of why this is true, we must
define the terms _partition_ and _equivalence class_ more carefully.

**Definition 4.6.2.** Suppose _A_ is a set andF⊆P( _A_ ). We will say thatF is
_pairwise disjoint_ if every pair of distinct elements ofFare disjoint, or in other
words∀ _X_ ∈F∀ _Y_ ∈F( _X_ = _Y_ → _X_ + _Y_ =∅). (This concept was discussed
in exercise 5 of Section 3.6.)Fis called a _partition_ of _A_ if it has the following
properties:

1. ,F= _A_.
2. Fis pairwise disjoint.
3. ∀ _X_ ∈F( _X_ =∅).

For example, suppose _A_ = { 1 , 2 , 3 , 4 } andF= {{ 2 },{ 1 , 3 },{ 4 }}. Then
,F= { 2 } , { 1 , 3 } , { 4 } = { 1 , 2 , 3 , 4 } = _A_ , so F satisfies the first clause in
the definition of partition. Also, no two sets inFhave any elements in com-
mon, soFis pairwise disjoint, and clearly all the sets inFare nonempty. Thus,

```
Equivalence Relations 215
Fis a partition of A. On the other hand, the familyG= {{ 1 , 2 },{ 1 , 3 },{ 4 }}is
not pairwise disjoint, because{ 1 , 2 } + { 1 , 3 } = { 1 } =∅, so it is not a partition
of A. The familyH={∅,{ 2 },{ 1 , 3 },{ 4 }}is also not a partition of A , because
it fails on the third requirement in the definition.
```

```
Definition 4.6.3. Suppose R is an equivalence relation on a set A , and x ∈ A.
Then the equivalence class of x with respect to R is the set
```

```
[ x ] R = { y ∈ A | yRx }.
If R is clear from context, then we just write [ x ] instead of [ x ] R. The set of all
equivalence classes of elements of A is called A modulo R , and is denoted A / R.
Thus,
A / R = { [ x ] R | x ∈ A } = { X ⊆ A | ∃ x ∈ A ( X =[ x ] R )}.
In the case of the same-birthday relation B , if p is any person, then according
to Definition 4.6.3,
```

```
[ p ] B = { q ∈ P | q Bp }
= { q ∈ P |the person q has the same birthday as the person p }.
```

```
For example, if John was born on August 10, then
[John] B = { q ∈ P |the person q has the same birthday as John}
= { q ∈ P |the person q was born on August 10}.
In the notation we introduced earlier, this is just the set Pd , for d =August
```

10. In fact, it should be clear now that for any person _p_ , if we let _d_ be _p_ ’s
birthday, then [ _p_ ] _B_ = _Pd_. This is in agreement with our earlier statement that
the sets _Pd_ are the equivalence classes for the equivalence relation _B_. Accord-
ing to Definition 4.6.3, the set of all of these equivalence classes is called _P_
modulo _B_ :
    _P_ / _B_ = { [ _p_ ] _B_ | _p_ ∈ _P_ } = { _Pd_ | _d_ ∈ _D_ }.

```
You are asked to give a more careful proof of this equation in exercise 5. As
we observed before, this family is a partition of P.
Let’s consider one more example. Let S be the relation onRdefined as
follows:
S = { ( x , y )∈R×R| x - y ∈Z}.
```

For example, (5. 73 , 2 .73)∈ _S_ and (- 1. 27 , 2 .73)∈ _S_ , since 5. 73 - 2. 73 = 3 ∈
Zand- 1. 27 - 2. 73 = - 4 ∈Z, but (1. 27 , 2 .73)∈/ _S_ , since 1. 27 - 2. 73 =
- 1. 46 ∈Z. Clearly for any _x_ ∈R, _x_ - _x_ = 0 ∈Z, so ( _x_ , _x_ )∈ _S_ , and therefore

216 _Relations_

_S_ is reflexive. To see that _S_ is symmetric, suppose ( _x_ , _y_ )∈ _S_. By the definition
of _S_ , this means that _x_ - _y_ ∈Z. But then _y_ - _x_ = - ( _x_ - _y_ )∈Ztoo, since
the negative of any integer is also an integer, so ( _y_ , _x_ )∈ _S_. Because ( _x_ , _y_ )
was an arbitrary element of _S_ , this shows that _S_ is symmetric. Finally, to see
that _S_ is transitive, suppose that ( _x_ , _y_ )∈ _S_ and ( _y_ , _z_ )∈ _S_. Then _x_ - _y_ ∈Z
and _y_ - _z_ ∈Z. Because the sum of any two integers is an integer, it follows
that _x_ - _z_ =( _x_ - _y_ )+( _y_ - _z_ )∈Z, so ( _x_ , _z_ )∈ _S_ , as required. Thus, _S_ is an
equivalence relation onR.
What do the equivalence classes for this equivalence relation look like? We
have already observed that (5. 73 , 2 .73)∈ _S_ and (- 1. 27 , 2 .73)∈ _S_ , so 5. 73 ∈
[2.73] and- 1. 27 ∈[2.73]. In fact, it is not hard to see what the other elements
of this equivalence class will be:

```
[2.73]= {... , - 1. 27 ,- 0. 27 , 0. 73 , 1. 73 , 2. 73 , 3. 73 , 4. 73 , 5. 73 ,... }.
```

In other words, the equivalence class contains all positive real numbers of the
form “ .73” and all negative real numbers of the form “– .27.” In general,
for any real number _x_ , the equivalence class of _x_ will contain all real numbers
that differ from _x_ by an integer amount:

```
[ x ]= {... , x - 3 , x - 2 , x - 1 , x , x + 1 , x + 2 , x + 3 ,... }.
```

Here are a few facts about these equivalence classes that you might try to
prove to yourself. As you can see in the last equation, _x_ is always an element
of [ _x_ ]. If we choose any number _x_ ∈[2.73], then [ _x_ ] will be exactly the same
as [2.73]. For example, taking _x_ = 4 .73 we find that

```
[4.73]= {... , - 1. 27 ,- 0. 27 , 0. 73 , 1. 73 , 2. 73 , 3. 73 ,
4. 73 , 5. 73 ,... } = [2.73].
```

Thus, [4.73] and [2.73] are just two different names for the same set. But if we
choose _x_ ∈[2.73], then [ _x_ ] will be different from [2.73]. For example,

```
[1.3]= {... , - 1. 7 ,- 0. 7 , 0. 3 , 1. 3 , 2. 3 , 3. 3 , 4. 3 ,... }.
```

In fact, you can see from these equations that [1.3] and [2.73] have no elements
in common. In other words, [1.3] is actually _disjoint_ from [2.73]. In general,
for any two real numbers _x_ and _y_ , the equivalence classes [ _x_ ] and [ _y_ ] are either
identical or disjoint. Each equivalence class has many different names, but
different equivalence classes are disjoint. Because [ _x_ ] always contains _x_ as an
element, every equivalence class is nonempty, and every real number _x_ is in
exactly one equivalence class, namely [ _x_ ]. In other words, the set of all of the
equivalence classes,R/ _S_ , is a partition ofR. This is another illustration of the

```
Equivalence Relations 217
fact that the equivalence classes determined by an equivalence relation always
form a partition.
```

```
Theorem 4.6.4. Suppose R is an equivalence relation on a set A. Then A / R is
a partition of A.
```

```
The proof of Theorem 4.6.4 will be easier to understand if we first prove
a few facts about equivalence classes. Facts that are proven primarily for the
purpose of using them to prove a theorem are usually called lemmas.
```

```
Lemma 4.6.5. Suppose R is an equivalence relation on A. Then:
```

1. _For every x_ ∈ _A_ , _x_ ∈[ _x_ ].
2. _For every x_ ∈ _A and y_ ∈ _A_ , _y_ ∈[ _x_ ] _iff_ [ _y_ ]=[ _x_ ].

```
Proof.
```

1. Let _x_ ∈ _A_ be arbitrary. Since _R_ is reflexive, _x Rx_. Therefore, by the definition
    of equivalence class, _x_ ∈[ _x_ ].
2. (→) Suppose _y_ ∈[ _x_ ]. Then by the definition of equivalence class, _yRx_.
    Now suppose _z_ ∈[ _y_ ]. Then _zRy_. Since _zRy_ and _yRx_ , by transitivity of _R_
    we can conclude that _zRx_ , so _z_ ∈[ _x_ ]. Since _z_ was arbitrary, this shows that
    [ _y_ ]⊆[ _x_ ].
       Now suppose _z_ ∈[ _x_ ], so _zRx_. We already know _yRx_ , and since _R_ is
    symmetric we can conclude that _x Ry_. Applying transitivity to _zRx_ and _x Ry_ ,
    we can conclude that _zRy_ , so _z_ ∈[ _y_ ]. Therefore [ _x_ ]⊆[ _y_ ], so [ _x_ ]=[ _y_ ].
       (←) Suppose [ _y_ ]=[ _x_ ]. By part 1 we know that _y_ ∈[ _y_ ], so since [ _y_ ]=
    [ _x_ ], it follows that _y_ ∈[ _x_ ].
       

_Commentary_

1. According to the definition of equivalence classes, _x_ ∈[ _x_ ] means _x Rx_.
    This is what leads us to apply the fact that _R_ is reflexive.
2. Of course, the iff form of the goal leads us to prove both directions separately.
For the→direction, the goal is [ _y_ ]=[ _x_ ], and, since [ _y_ ] and [ _x_ ] are sets, we
can prove this by proving [ _y_ ]⊆[ _x_ ] and [ _x_ ]⊆[ _y_ ]. We prove each of these
statements by the usual method of taking an arbitrary element of one set and
proving that it is in the other. Throughout the proof we use the definition of
equivalence classes repeatedly, as we did in the proof of statement 1.

218 _Relations_

_Proof of Theorem 4.6.4._ To prove that _A_ / _R_ is a partition of _A_ , we must prove the
three properties in Definition 4.6.2. For the first, we must show that,( _A_ / _R_ )=
_A_ , or in other words that, _x_ ∈ _A_ [ _x_ ]= _A_. Now every equivalence class in _A_ /R is
a subset of _A_ , so it should be clear that their union is also a subset of _A_. Thus,
,( _A_ / _R_ )⊆ _A_ , so all we need to show to finish the proof is that _A_ ⊆ , ( _A_ / _R_ ).
To prove this, suppose _x_ ∈ _A_. Then by Lemma 4.6.5, _x_ ∈[ _x_ ], and of course
[ _x_ ]∈ _A_ / _R_ , so _x_ ∈ , ( _A_ / _R_ ). Thus,,( _A_ / _R_ )= _A_.
To see that _A_ / _R_ is pairwise disjoint, suppose that _X_ and _Y_ are two elements of
_A_ / _R_ , and _X_ + _Y_ =∅. By definition of _A_ / _R_ , _X_ and _Y_ are equivalence classes,
so we must have _X_ =[ _x_ ] and _Y_ =[ _y_ ] for some _x_ , _y_ ∈ _A_. Since _X_ + _Y_ =∅,
we can choose some _z_ such that _z_ ∈ _X_ + _Y_ =[ _x_ ]+[ _y_ ]. Now by Lemma 4.6.5,
since _z_ ∈[ _x_ ] and _z_ ∈[ _y_ ], it follows that [ _x_ ]=[ _z_ ]=[ _y_ ]. Thus, _X_ = _Y_. This
shows that if _X_ = _Y_ then _X_ + _Y_ =∅, so _A_ / _R_ is pairwise disjoint.
Finally, for the last clause of the definition of partition, suppose _X_ ∈ _A_ / _R_.
As before, this means that _X_ =[ _x_ ] for some _x_ ∈ _A_. Now by Lemma 4.6.5,
_x_ ∈[ _x_ ]= _X_ , so _X_ =∅, as required. 

_Commentary._ We have given an intuitive reason why,( _A_ / _R_ )⊆ _A_ , but if
you’re not sure why this is correct, you should write out a formal proof.
(You might also want to look at exercise 16 in Section 3.3.) The proof that
_A_ ⊆ , ( _A_ / _R_ ) is straightforward.
The definition of pairwise disjoint suggests that to prove that _A_ / _R_ is pair-
wise disjoint we should let _X_ and _Y_ be arbitrary elements of _A_ / _R_ and then
prove _X_ = _Y_ → _X_ + _Y_ =∅. Recall that the statement that a set is empty is
really a negative statement, so both the antecedent and the consequent of this
conditional are negative. This suggests that it will probably be easier to prove
the contrapositive, so we assume _X_ + _Y_ =∅and prove _X_ = _Y_. The givens
_X_ ∈ _A_ / _R_ , _Y_ ∈ _A_ / _R_ , and _X_ + _Y_ =∅are all existential statements, so we use
them to introduce the variables _x_ , _y_ , and _z_. Lemma 4.6.5 now takes care of the
proof that _X_ = _Y_ as well as the proof of the final clause in the definition of
partition.

Theorem 4.6.4 shows that if _R_ is an equivalence relation on _A_ then _A_ / _R_ is a
partition of _A_. In fact, it turns out that _every_ partition of _A_ arises in this way.

**Theorem 4.6.6.** _Suppose A is a set and_ F _is a partition of A. Then there is an
equivalence relation R on A such that A_ / _R_ =F_._

Before proving this theorem, it might be worthwhile to discuss the strategy
for the proof briefly. Because the conclusion of the theorem is an existential
statement, we should try to find an equivalence relation _R_ such that _A_ / _R_ =F.

```
Equivalence Relations 219
```

Clearly for different choices ofF we will need to choose _R_ differently, so
the definition of _R_ should depend onF in some way. Looking back at the
same-birthday example may help you see how to proceed. Recall that in that
example the equivalence relation _B_ consisted of all pairs of people ( _p_ , _q_ ) such
that _p_ and _q_ were in the same set in the partition{ _Pd_ | _d_ ∈ _D_ }. In fact, we
found that we could also express this by saying that _B_ = , _d_ ∈ _D_ ( _Pd_ × _Pd_ ). This
suggests that in the proof of Theorem 4.6.6 we should let _R_ be the set of all
pairs ( _x_ , _y_ )∈ _A_ × _A_ such that _x_ and _y_ are in the same set in the partitionF.
An alternative way to write this would be _R_ = , _X_ ∈F( _X_ × _X_ ).
For example, consider again the example of a partition given after Definition
4.6.2. In that example we had _A_ = { 1 , 2 , 3 , 4 }andF= {{ 2 },{ 1 , 3 },{ 4 }}. Now
let’s define a relation _R_ on _A_ as suggested in the last paragraph. This gives us:

```
R = ,
X ∈F
```

#### ( X × X )

#### =({ 2 } × { 2 }),({ 1 , 3 } × { 1 , 3 }),({ 4 } × { 4 })

#### = { (2,2)} , { (1,1),(1,3),(3,1),(3,3)} , { (4,4)}

#### = { (2,2),(1,1),(1,3),(3,1),(3,3),(4,4)}

The directed graph for this relation is shown in Figure 1. We will let you check
that _R_ is an equivalence relation and that the equivalence classes are

```
[2]= { 2 }, [1]=[3]= { 1 , 3 }, [4]= { 4 }.
```

Thus, the set of all equivalence classes is _A_ / _R_ = {{ 2 },{ 1 , 3 },{ 4 }}, which is
precisely the same as the partitionFwe started with.

```
Figure 1
```

Of course, the reasoning that led us to the formula _R_ = , _X_ ∈F( _X_ × _X_ ) will
not be part of the proof of Theorem 4.6.6. When we write the proof, we can
simply define _R_ in this way and then verify that it is an equivalence relation on
_A_ and that _A_ / _R_ =F. It may make the proof easier to follow if we once again
prove some lemmas first.

220 _Relations_

**Lemma 4.6.7.** _Suppose A is a set and_ F _is a partition of A. Let R_ =
, _X_ ∈F( _X_ × _X_ )_. Then R is an equivalence relation on A. We will call R_ the
equivalence relation determined byF_._

_Proof._ We’ll prove that _R_ is reflexive and leave the rest for you to do in
exercise 7. Let _x_ be an arbitrary element of _A_. SinceF is a partition of
_A_ ,,F= _A_ , so _x_ ∈ , F. Thus, we can choose some _X_ ∈Fsuch that _x_ ∈ _X_.
But then ( _x_ , _x_ )∈ _X_ × _X_ , so ( _x_ , _x_ )∈ , _X_ ∈F( _X_ × _X_ )= _R_. Therefore, _R_ is
reflexive. 

_Commentary._ After letting _x_ be an arbitrary element of _A_ , we must prove
( _x_ , _x_ )∈ _R_. Because _R_ = , _X_ ∈F( _X_ × _X_ ), this means we must prove ∃ _X_ ∈
F(( _x_ , _x_ )∈ _X_ × _X_ ), or in other words∃ _X_ ∈F( _x_ ∈ _X_ ). But this just means
_x_ ∈ , F, so this suggests using the first clause in the definition of partition,
which says that,F= _A_.

**Lemma 4.6.8.** _Suppose A is a set and_ F _is a partition of A. Let R be the equiv-
alence relation determined by_ F_. Suppose X_ ∈F _and x_ ∈ _X. Then_ [ _x_ ] _R_ = _X._

_Proof._ Suppose _y_ ∈[ _x_ ] _R_. Then ( _y_ , _x_ )∈ _R_ , so by the definition of _R_ there must
be some _Y_ ∈Fsuch that ( _y_ , _x_ )∈ _Y_ × _Y_ , and therefore _y_ ∈ _Y_ and _x_ ∈ _Y_. Since
_x_ ∈ _X_ and _x_ ∈ _Y_ , _X_ + _Y_ =∅, and sinceFis pairwise disjoint it follows that
_X_ = _Y_. Thus, since _y_ ∈ _Y_ , _y_ ∈ _X_. Since _y_ was an arbitrary element of [ _x_ ] _R_ ,
we can conclude that [ _x_ ] _R_ ⊆ _X_.
Now suppose _y_ ∈ _X_. Then ( _y_ , _x_ )∈ _X_ × _X_ , so ( _y_ , _x_ )∈ _R_ and therefore
_y_ ∈[ _x_ ] _R_. Thus _X_ ⊆[ _x_ ] _R_ , so [ _x_ ] _R_ = _X_. 

_Commentary._ To prove [ _x_ ] _R_ = _X_ we prove [ _x_ ] _R_ ⊆ _X_ and _X_ ⊆[ _x_ ] _R_. For the
first we start with an arbitrary _y_ ∈[ _x_ ] _R_ and prove _y_ ∈ _X_. Writing out the defini-
tion of [ _x_ ] _R_ we get ( _y_ , _x_ )∈ _R_ , and since _R_ was defined to be, _Y_ ∈F( _Y_ × _Y_ ), this
means∃ _Y_ ∈F(( _y_ , _x_ )∈ _Y_ × _Y_ ). Of course, since this is an existential state-
ment we immediately introduce the new variable _Y_ by existential instantiation.
Since this gives us _y_ ∈ _Y_ and our goal is _y_ ∈ _X_ , it is not surprising that the
proof is completed by proving _Y_ = _X_.
The proof that _X_ ⊆[ _x_ ] _R_ also uses the definitions of [ _x_ ] _R_ and _R_ , but is more
straightforward.

_Proof of Theorem 4.6.6._ Let _R_ = , _X_ ∈F( _X_ × _X_ ). We have already seen that
_R_ is an equivalence relation, so we need only check that _A_ / _R_ =F. To see
this, suppose _X_ ∈ _A_ / _R_. This means that _X_ =[ _x_ ] for some _x_ ∈ _A_. SinceFis a
partition, we know that,F= _A_ , so _x_ ∈ , F, and therefore we can choose some

```
Equivalence Relations 221
Y ∈Fsuch that x ∈ Y. But then by Lemma 4.6.8, [ x ]= Y. Thus X = Y ∈F,
so A / R ⊆F.
Now suppose X ∈F. Then sinceFis a partition, X =∅, so we can choose
some x ∈ X. Therefore by Lemma 4.6.8, X =[ x ]∈ A / R , so F⊆ A / R. Thus,
A / R =F. 
```

```
Commentary. We prove that A / R =F by proving that A / R ⊆F and
F⊆ A / R. For the first, we take an arbitrary X ∈ A / R and prove that X ∈F.
Because X ∈ A / R means ∃ x ∈ A ( X =[ x ]), we immediately introduce the
new variable x to stand for an element of A such that X =[ x ]. The proof that
X ∈Fnow proceeds by the slightly roundabout route of finding a set Y ∈F
such that X = Y. This is motivated by Lemma 4.6.8, which suggests a way of
showing that an element ofFis equal to [ x ]= X. The proof thatF⊆ A / R
also relies on Lemma 4.6.8.
```

We have seen how an equivalence relation _R_ on a set _A_ can be used to
define a partition _A_ / _R_ of _A_ and also how a partitionFof _A_ can be used to
define an equivalence relation, _X_ ∈F( _X_ × _X_ ) on _A_. The proof of Theorem
4.6.6 demonstrates an interesting relationship between these operations. If you
start with a partitionFof _A_ , useF to define the equivalence relation _R_ =
, _X_ ∈F( _X_ × _X_ ) and then use _R_ to define a partition _A_ / _R_ , then you end up back
where you started. In other words, the final partition _A_ / _R_ is the same as the
original partitionF. You might wonder if the same idea would work in the other
order. In other words, suppose you start with an equivalence relation _R_ on _A_ ,
use _R_ to define a partitionF= _A_ / _R_ , and then useFto define an equivalence
relation _S_ = , _X_ ∈F( _X_ × _X_ ). Would the final equivalence relation _S_ be the same
as the original equivalence relation _R_? You are asked in exercise 9 to show that
the answer is yes.
We end this section by considering a few more examples of equivalence
relations. A very useful family of equivalence relations is given by the next
definition.

**Definition 4.6.9.** Suppose _m_ is a positive integer. For any integers _x_ and _y_ , we
will say that _x_ is _congruent_ to _y modulo m_ if∃ _k_ ∈Z( _x_ - _y_ = _km_ ). In other
words, _x_ is congruent to _y_ modulo _m_ iff _m_ |( _x_ - _y_ ). We will use the notation
_x_ ≡ _y_ (mod _m_ ) to mean that _x_ is congruent to _y_ modulo _m_.

For example, 12≡27 (mod 5), since 12- 27 = - 15 =(-3)·5. Now
it turns out that for every positive integer _m_ , the relation _Cm_ = { ( _x_ , _y_ )∈
Z×Z| _x_ ≡ _y_ (mod _m_ )}is an equivalence relation onZ. We will check tran-
sitivity for _Cm_ and let you check reflexivity and symmetry in exercise 10.

222 _Relations_

To see that _Cm_ is transitive, suppose that _x_ ≡ _y_ (mod _m_ ) and _y_ ≡ _z_ (mod
_m_ ). Then _m_ |( _x_ - _y_ ) and _m_ |( _y_ - _z_ ), so by exercise 18(a) in Section 3.3,
_m_ |[( _x_ - _y_ )+( _y_ - _z_ )]. But ( _x_ - _y_ )+( _y_ - _z_ )= _x_ - _z_ , so it follows that
_m_ |( _x_ - _z_ ), and therefore _x_ ≡ _z_ (mod _m_ ). For more about these equivalence
relations, see exercise 10.
Equivalence relations often come up when we want to group together ele-
ments of a set that have something in common. For example, if you’ve studied
vectors in a previous math course or perhaps in a physics course, then you may
have been told that vectors can be thought of as arrows. But you were probably
also told that different arrows that point in the same direction and have the same
length must be thought of as representing the same vector. Here’s a more lucid
explanation of the relationship between vectors and arrows. Let _A_ be the set of
all arrows, and let _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |the arrows _x_ and _y_ point in the same
direction and have the same length}. We will let you check for yourself that _R_
is an equivalence relation on _A_. Each equivalence class consists of arrows that
all have the same length and point in the same direction. We can now think
of vectors as being represented, not by arrows, but by equivalence classes of
arrows.
Students who are familiar with computer programming may be interested in
our next example. Suppose we let _P_ be the set of all computer programs, and
for any computer programs _p_ and _q_ we say that _p_ and _q_ are _equivalent_ if they
always produce the same output when given the same input. Let _R_ = { ( _p_ , _q_ )∈
_P_ × _P_ |the programs _p_ and _q_ are equivalent}. It is not hard to check that _R_ is
an equivalence relation on _P_. The equivalence classes group together programs
that produce the same output when given the same input.

```
Exercises
```

```
∗1. Find all partitions of the set A = { 1 , 2 , 3 }.
```

2. Find all equivalence relations on the set _A_ = { 1 , 2 , 3 }.
∗3. Let _W_ =the set of all words in the English language. Which of the
following relations on _W_ are equivalence relations? For those that are
equivalence relations, what are the equivalence classes?
(a) _R_ = { ( _x_ , _y_ )∈ _W_ × _W_ | the words _x_ and _y_ start with the same
letter}.
(b) _S_ = { ( _x_ , _y_ )∈ _W_ × _W_ |the words _x_ and _y_ have at least one letter in
common}.
(c) _T_ = { ( _x_ , _y_ )∈ _W_ × _W_ |the words _x_ and _y_ have the same number of
letters}.

```
Equivalence Relations 223
```

4. Which of the following relations onRare equivalence relations? For those
    that are equivalence relations, what are the equivalence classes?
    (a) _R_ = { ( _x_ , _y_ )∈R×R| _x_ - _y_ ∈N}.
    (b) _S_ = { ( _x_ , _y_ )∈R×R| _x_ - _y_ ∈Q}.
    (c) _T_ = { ( _x_ , _y_ )∈R×R| ∃ _n_ ∈Z( _y_ = _x_ · 10 _n_ )}.
∗5. In the discussion of the same-birthday equivalence relation _B_ , we claimed
that _P_ / _B_ = { _Pd_ | _d_ ∈ _D_ }.Give a careful proof of this claim. You will find
when you work out the proof that there is an assumption you must make
about people’s birthdays (a very reasonable assumption) to make the proof
work. What is this assumption?
6. Let _T_ be the set of all triangles, and let _S_ = { ( _s_ , _t_ )∈ _T_ × _T_ |the triangles
    _s_ and _t_ are similar}. (Recall that two triangles are similar if the angles of
    one triangle are equal to the corresponding angles of the other.) Verify
    that _S_ is an equivalence relation.
7. Complete the proof of Lemma 4.6.7.
8. Suppose _R_ and _S_ are equivalence relations on _A_ and _A_ / _R_ = _A_ / _S_. Prove
    that _R_ = _S_.
∗9. Suppose _R_ is an equivalence relation on _A_. LetF= _A_ / _R_ , and let _S_ be the
equivalence relation determined byF. In other words, _S_ = , _X_ ∈F( _X_ ×
_X_ ). Prove that _S_ = _R_.
10. Let _Cm_ be the congruence mod _m_ relation defined in the text, for a positive
integer _m_.
(a) Completetheproofthat _Cm_ isanequivalencerelationonZbyshowing
that it is reflexive and symmetric.
(b) Find all the equivalence classes for _C_ 2 and _C_ 3. How many equivalence
classes are there in each case? In general, how many equivalence
classes do you think there are for _Cm_?
11. Prove that for every integer _n_ , either _n_^2 ≡0 (mod 4) or _n_^2 ≡1 (mod 4).
∗12. Suppose _m_ is a positive integer. Prove that for all integers _a_ , _b_ , _c_ , and _d_ ,

```
if a ≡ c (mod m ) and b ≡ d (mod m ) then a + b ≡ c + d (mod m ) and
ab ≡ cd (mod m ).
```

13. Suppose _R_ is an equivalence relation on _A_ and _B_ ⊆ _A_. Let _S_ = _R_ +
    ( _B_ × _B_ ).
    (a) Prove that _S_ is an equivalence relation on _B_.
    (b) Prove that for all _x_ ∈ _B_ , [ _x_ ] _S_ =[ _x_ ] _R_ + _B_.
14. Suppose _B_ ⊆ _A_ , and define a relation _R_ onP( _A_ ) as follows:

```
R = { ( X , Y )∈P( A )×P( A )|( X  Y )⊆ B }.
```

```
(a) Prove that R is an equivalence relation onP( A ).
```

224 _Relations_

```
(b) Prove that for every X ∈P( A ) there is exactly one Y ∈[ X ] R such
that Y + B =∅.
∗15. SupposeFis a partition of A ,Gis a partition of B , and A and B are
disjoint. Prove thatF,Gis a partition of A , B.
```

16. Suppose _R_ is an equivalence relation on _A_ , _S_ is an equivalence relation
    on _B_ , and _A_ and _B_ are disjoint.
    (a) Prove that _R_ , _S_ is an equivalence relation on _A_ , _B_.
    (b) Prove that for all _x_ ∈ _A_ , [ _x_ ] _R_ , _S_ =[ _x_ ] _R_ , and for all _y_ ∈ _B_ , [ _y_ ] _R_ , _S_ =
       [ _y_ ] _S_.
    (c) Prove that ( _A_ , _B_ )/( _R_ , _S_ )=( _A_ / _R_ ),( _B_ / _S_ ).
17. SupposeFandGare partitions of a set _A_. We define a new family of sets
    F·Gas follows:

```
F·G= { Z ∈P( A )| Z =∅and∃ X ∈F∃ Y ∈G( Z = X + Y )}.
Prove thatF·Gis a partition of A.
18 LetF= { R-,R+,{ 0 }}andG= { Z,R\Z}, and note that bothFandG
are partitions ofR. List the elements ofF·G. (See exercise 17 for the
meaning of the notation used here.)
∗19. Suppose R and S are equivalence relations on a set A. Let T = R + S.
(a) Prove that T is an equivalence relation on A.
(b) Prove that for all x ∈ A , [ x ] T =[ x ] R +[ x ] S.
(c) Prove that A / T =( A / R )·( A / S ). (See exercise 17 for the meaning
of the notation used here.)
```

20. SupposeFis a partition of _A_ andGis a partition of _B_. We define a new
    family of setsF⊗Gas follows:
       F⊗G= { _Z_ ∈P( _A_ × _B_ )| ∃ _X_ ∈F∃ _Y_ ∈G( _Z_ = _X_ × _Y_ )}.

```
Prove thatF⊗Gis a partition of A × B.
∗21. LetF= { R-,R+,{ 0 }}, which is a partition ofR. List the elements of
F⊗F, and describe them geometrically as subsets of the xy -plane. (See
exercise 20 for the meaning of the notation used here.)
```

22. Suppose _R_ is an equivalence relation on _A_ and _S_ is an equivalence relation
    on _B_. Define a relation _T_ on _A_ × _B_ as follows:
       _T_ = { (( _a_ , _b_ ),( _a_ ′, _b_ ′))∈( _A_ × _B_ )×( _A_ × _B_ )| _aRa_ ′and _bSb_ ′}.

```
(a) Prove that T is an equivalence relation on A × B.
(b) Prove that if a ∈ A and b ∈ B then [( a , b )] T =[ a ] R ×[ b ] S.
(c) Prove that ( A × B )/ T =( A / R )⊗( B / S ). (See exercise 20 for the
meaning of the notation used here.)
```

_Equivalence Relations_ 225
∗23. Suppose _R_ and _S_ are relations on a set _A_ , and _S_ is an equivalence relation.

```
We will say that R is compatible with S if for all x , y , x ′, and y ′in A , if
xSx ′and ySy ′then x Ry iff x ′ Ry ′.
(a) Prove that if R is compatible with S , then there is a unique relation
T on A / S such that for all x and y in A , [ x ] ST [ y ] S iff x Ry.
(b) Suppose T is a relation on A / S and for all x and y in A , [ x ] ST [ y ] S
iff x Ry. Prove that R is compatible with S.
```

24. Suppose _R_ is a relation on _A_ and _R_ is reflexive and transitive. (Such a
    relation is called a _preorder_ on _A_ .) Let _S_ = _R_ + _R_ -^1.
    (a) Prove that _S_ is an equivalence relation on _A_.
    (b) Prove that there is a unique relation _T_ on _A_ / _S_ such that for all _x_ and
       _y_ in _A_ , [ _x_ ] _ST_ [ _y_ ] _S_ iff _x Ry_. (Hint: Use exercise 23.)
    (c) Prove that _T_ is a partial order on _A_ / _S_ , where _T_ is the relation from
       part (b).
25. Let _I_ = { 1 , 2 ,... , 100 }, _A_ =P( _I_ ), and _R_ = { ( _X_ , _Y_ )∈ _A_ × _A_ | _Y_ has
    at least as many elements as _X_ }.
    (a) Prove that _R_ is a preorder on _A_. (See exercise 24 for the definition of
       _preorder_ .)
    (b) Let _S_ and _T_ be defined as in exercise 24. Describe the elements of
       _A_ / _S_ and the partial order _T_. How many elements does _A_ / _S_ have? Is
       _T_ a total order?
26. Suppose _A_ is a set. IfFandGare partitions of _A_ , then we’ll say thatF
    _refines_ Gif∀ _X_ ∈F∃ _Y_ ∈G( _X_ ⊆ _Y_ ). Let _P_ be the set of all partitions of
       _A_ , and let _R_ = { (F,G)∈ _P_ × _P_ |FrefinesG}.
    (a) Prove that _R_ is a partial order on _P_.
    (b) Suppose that _S_ and _T_ are equivalence relations on _A_. LetF= _A_ / _S_
       andG= _A_ / _T_. Prove that _S_ ⊆ _T_ iffFrefinesG.
    (c) SupposeFandGare partitions of _A_. Prove thatF·Gis the greatest
       lower bound of the set{F,G}in the partial order _R_. (See exercise 17
       for the meaning of the notation used here.)

## 5 Functions

## 5.1 Functions

Suppose _P_ is the set of all people, and let _H_ = { ( _p_ , _n_ )∈ _P_ ×N|the person
_p_ has _n_ children}. Then _H_ is a relation from _P_ toN, and it has the following
important property. For every _p_ ∈ _P_ , there is _exactly one n_ ∈Nsuch that
( _p_ , _n_ )∈ _H_. Mathematicians express this by saying that _H_ is a _function_ from
_P_ toN.

**Definition 5.1.1.** Suppose _F_ is a relation from _A_ to _B_. Then _F_ is called a
_function from A to B_ if for every _a_ ∈ _A_ there is exactly one _b_ ∈ _B_ such that
( _a_ , _b_ )∈ _F_. In other words, to say that _F_ is a function from _A_ to _B_ means:

```
∀ a ∈ A ∃! b ∈ B (( a , b )∈ F ).
```

To indicate that _F_ is a function from _A_ to _B_ , we will write _F_ : _A_ → _B_.

**Example 5.1.2.**

1. Let _A_ = { 1 , 2 , 3 }, _B_ = { 4 , 5 , 6 }, and _F_ = { (1,5),(2,4),(3,5)}. Is _F_ a
    function from _A_ to _B_?
2. Let _A_ = { 1 , 2 , 3 }, _B_ = { 4 , 5 , 6 }, and _G_ = { (1,5),(2,4),(1,6)}. Is _G_ a
    function from _A_ to _B_?
3. Let _C_ be the set of all cities, _N_ the set of all countries, and let _L_ = { ( _c_ , _n_ )∈
    _C_ × _N_ |the city _c_ is in the country _n_ }. Is _L_ a function from _C_ to _N_?
4. Let _P_ be the set of all people, and let _C_ = { ( _p_ , _q_ )∈ _P_ × _P_ |the person _p_
    is a parent of the person _q_ }. Is _C_ a function from _P_ to _P_?
5. Let _P_ be the set of all people, and let _D_ = { ( _p_ , _x_ )∈ _P_ ×P( _P_ )| _x_ =the
    set of all children of _p_ }. Is _D_ a function from _P_ toP( _P_ )?

#### 226

```
Functions 227
```

6. Let _A_ be any set. Recall that _iA_ = { ( _a_ , _a_ )| _a_ ∈ _A_ }is called the identity
    relation on _A_. Is it a function from _A_ to _A_?
7. Let _f_ = { ( _x_ , _y_ )∈R×R| _y_ = _x_^2 }. Is _f_ a function fromRtoR?

_Solutions_

1. Yes. Note that 1 is paired with 5 in the relation _F_ , but it is not paired with
    any other element of _B_. Similarly, 2 is paired only with 4, and 3 with 5. In
    other words, each element of _A_ appears as the first coordinate of exactly
    one ordered pair in _F_. Therefore _F_ is a function from _A_ to _B_. Note that the
    definition of function does _not_ require that each element of _B_ be paired with
    exactly one element of _A_. Thus, it doesn’t matter that 5 occurs as the second
    coordinate of two different pairs in _F_ and that 6 doesn’t occur in any ordered
    pairs at all.
2. No. _G_ fails to be a function from _A_ to _B_ for two reasons. First of all, 3
    isn’t paired with any element of _B_ in the relation _G_ , which violates the
    requirement that every element of _A_ must be paired with some element of
    _B_. Second, 1 is paired with two different elements of _B_ , 5 and 6, which
    violates the requirement that each element of _A_ be paired with _only one_
    element of _B_.
3. If we make the reasonable assumption that every city is in exactly one
    country, then _L_ is a function from _C_ to _N_.
4. Because some people have no children and some people have more than
    one child, _C_ is not a function from _P_ to _P_.
5. Yes. _D_ is a function from _P_ toP( _P_ ). Each person _p_ is paired with exactly
    one set _x_ ⊆ _P_ , namely the set of all children of _p_. Note that in the relation
    _D_ , a person _p_ is paired with the set consisting of all of _p_ ’s children, _not_ with
    the children themselves. Even if _p_ does not have exactly one child, it is still
    true that there is exactly one set that contains precisely the children of _p_ and
    nothing else.
6. Yes. Each _a_ ∈ _A_ is paired in the relation _iA_ with exactly one element of _A_ ,
    namely _a_ itself. In other words, ( _a_ , _a_ )∈ _iA_ , but for every _a_ ′= _a_ ,( _a_ , _a_ ′)∈/
    _iA_. Thus, we can call _iA_ the identity _function_ on _A_.
7. Yes. For each real number _x_ there is exactly one value of _y_ , namely _y_ = _x_^2 ,
    such that ( _x_ , _y_ )∈ _f_.

Suppose _f_ : _A_ → _B_. If _a_ ∈ _A_ , then we know that there is exactly one _b_ ∈ _B_
such that ( _a_ , _b_ )∈ _f_. This unique _b_ is called “the value of _f_ at _a_ ,” or “the image
of _a_ under _f_ ,” or “the result of applying _f_ to _a_ ,” or just “ _f_ of _a_ ,” and it is written
_f_ ( _a_ ). In other words, for every _a_ ∈ _A_ and _b_ ∈ _B_ , _b_ = _f_ ( _a_ ) iff ( _a_ , _b_ )∈ _f_.

228 _Functions_

For example, for the function _F_ = { (1,5),(2,4),(3,5)}in part 1 of the last
example, we could say that _F_ (1)=5, since (1,5)∈ _F_. Similarly, _F_ (2)= 4
and _F_ (3)=5. If _L_ is the function in part 3 and _c_ is any city, then _L_ ( _c_ ) would be
the unique country _n_ such that ( _c_ , _n_ )∈ _L_. In other words, _L_ ( _c_ )=the country
in which _c_ is located. For example, _L_ (Paris)=France. For the function _D_ in
part 5, we could say that for any person _p_ , _D_ ( _p_ )=the set of all children of _p_.
If _A_ is any set and _a_ ∈ _A_ , then ( _a_ , _a_ )∈ _iA_ , so _iA_ ( _a_ )= _a_. And if _f_ is the function
in part 7, then for every real number _x_ , _f_ ( _x_ )= _x_^2.
A function _f_ from a set _A_ to another set _B_ is often specified by giving a rule
that can be used to determine _f_ ( _a_ ) for any _a_ ∈ _A_. For example, if _A_ is the set
of all people and _B_ =R+, then we could define a function _f_ from _A_ to _B_ by the
rule that for every _a_ ∈ _A_ , _f_ ( _a_ )= _a_ ’s height in inches. Although this definition
doesn’t say explicitly which ordered pairs are elements of _f_ , we can determine
this by using our rule that for all _a_ ∈ _A_ and _b_ ∈ _B_ ,( _a_ , _b_ )∈ _f_ iff _b_ = _f_ ( _a_ ).
Thus,

```
f = { ( a , b )∈ A × B | b = f ( a )}
= { ( a , b )∈ A × B | b = a ’s height in inches}.
```

For example, if Joe Smith is 68 inches tall, then (Joe Smith, 68)∈ _f_ and
_f_ (Joe Smith)=68.
It is often useful to think of a function _f_ from _A_ to _B_ as representing a rule
that associates, with each _a_ ∈ _A_ , some corresponding object _b_ = _f_ ( _a_ )∈ _B_.
However, it is important to remember that although a function can be defined
by giving such a rule, it need not be defined in this way. Any subset of _A_ × _B_
that satisfies the requirements given in Definition 5.1.1 is a function from
_A_ to _B_.

**Example 5.1.3.** Here are some more examples of functions defined by rules.

1. Suppose every student is assigned an academic advisor who is a professor.
    Let _S_ be the set of students and _P_ the set of professors. Then we can define
    a function _f_ from _S_ to _P_ by the rule that for every student _s_ , _f_ ( _s_ )=the
    advisor of _s_. In other words,

```
f = { ( s , p )∈ S × P | p = f ( s )}
= { ( s , p )∈ S × P |the professor p is the academic advisor
of the student s }.
```

```
Functions 229
```

2. We can define a function _g_ fromZtoRby the rule that for every _x_ ∈Z,
    _g_ ( _x_ )= 2 _x_ +3. Then
       _g_ = { ( _x_ , _y_ )∈Z×R| _y_ = _g_ ( _x_ )}
          = { ( _x_ , _y_ )∈Z×R| _y_ = 2 _x_ + 3 }
          = {... , (- 2 ,-1),(- 1 ,1),(0,3),(1,5),(2,7),... }.
3. Let _h_ be the function fromRtoRdefined by the rule that for every _x_ ∈R,
    _h_ ( _x_ )= 2 _x_ +3. Note that the formula for _h_ ( _x_ ) is the same as the formula
    for _g_ ( _x_ ) in part 2. However, _h_ and _g_ are _not_ the same function. You can see
    this by noting that, for example, (π, 2 π+3)∈ _h_ but (π, 2 π+3)∈/ _g_ , since
    π / ∈Z. (For more on the relationship between _g_ and _h_ , see exercise 7.)

Notice that when a function _f_ from _A_ to _B_ is specified by giving a rule
for finding _f_ ( _a_ ), the rule must determine the value of _f_ ( _a_ ) for _every a_ ∈
_A_. Sometimes when mathematicians are stating such a rule they don’t say
explicitly that the rule applies to all _a_ ∈ _A_. For example, a mathematician might
say “let _f_ be the function fromRtoRdefined by the formula _f_ ( _x_ )= _x_^2 +7.”
It is understood in this case that the equation _f_ ( _x_ )= _x_^2 +7 applies to all
_x_ ∈Reven though it hasn’t been said explicitly. This means that you can plug
in any real number for _x_ in this equation, and the resulting equation will be
true. For example, you can conclude that _f_ (3)= 32 + 7 =16. Similarly, ifw
is a real number, then you can write _f_ (w)=w^2 +7, or even _f_ (2w-3)=
(2w-3)^2 + 7 = 4 w^2 - 12 w+16.
Because a function _f_ from _A_ to _B_ is completely determined by the rule for
finding _f_ ( _a_ ), two functions that are defined by equivalent rules must be equal.
More precisely, we have the following theorem:

**Theorem 5.1.4.** _Suppose f and g are functions from A to B. If_ ∀ _a_ ∈ _A_ ( _f_ ( _a_ )=
_g_ ( _a_ )) _, then f_ = _g.
Proof._ Suppose∀ _a_ ∈ _A_ ( _f_ ( _a_ )= _g_ ( _a_ )), and let ( _a_ , _b_ ) be an arbitrary element
of _f_. Then _b_ = _f_ ( _a_ ). But by our assumption _f_ ( _a_ )= _g_ ( _a_ ), so _b_ = _g_ ( _a_ ) and
therefore ( _a_ , _b_ )∈ _g_. Thus, _f_ ⊆ _g_. A similar argument shows _g_ ⊆ _f_ , so
_f_ = _g_. 

_Commentary._ Because _f_ and _g_ are sets, we prove _f_ = _g_ by proving _f_ ⊆ _g_
and _g_ ⊆ _f_. Each of these goals is proven by showing that an arbitrary element
of one set must be an element of the other. Note that, now that we have proven
Theorem 5.1.4, we have another method for proving that two functions _f_ and
_g_ from a set _A_ to another set _B_ are equal. In the future, to prove _f_ = _g_ we will
usually prove∀ _a_ ∈ _A_ ( _f_ ( _a_ )= _g_ ( _a_ )) and then apply Theorem 5.1.4.

230 _Functions_

Because functions are just relations of a special kind, the concepts introduced
in Chapter 4 for relations can be applied to functions as well. For example,
suppose _f_ : _A_ → _B_. Then _f_ is a relation from _A_ to _B_ , so it makes sense to talk
about the domain of _f_ , which is a subset of _A_ , and the range of _f_ , which is a
subset of _B_. According to the definition of function, every element of _A_ must
appear as the first coordinate of some (in fact, exactly one) ordered pair in _f_ ,
so the domain of _f_ must actually be all of _A_. But the range of _f_ need not be all
of _B_. The elements of the range of _f_ will be the second coordinates of all the
ordered pairs in _f_ , and the second coordinate of an ordered pair in _f_ is what we
have called the image of its first coordinate. Thus, the range of _f_ could also be
described as the set of all images of elements of _A_ under _f_ :

```
Ran( f )= { f ( a )| a ∈ A }.
```

For example, for the function _f_ defined in part 1 of Example 5.1.3, Ran( _f_ )=
{ _f_ ( _s_ )| _s_ ∈ _S_ } = the set of all advisors of students.
We can draw diagrams of functions in exactly the same way we drew dia-
grams for relations in Chapter 4. If _f_ : _A_ → _B_ , then as before, every ordered
pair ( _a_ , _b_ )∈ _f_ would be represented in the diagram by an edge connecting _a_
to _b_. By the definition of function, every _a_ ∈ _A_ occurs as the first coordinate
of exactly one ordered pair in _f_ , and the second coordinate of this ordered pair
is _f_ ( _a_ ). Thus, for every _a_ ∈ _A_ there will be exactly one edge coming from _a_ ,
and it will connect _a_ to _f_ ( _a_ ). For example, Figure 1 shows what the diagram
for the function _L_ defined in part 3 of Example 5.1.2 would look like.

```
Figure 1
```

The definition of composition of relations can also be applied to functions. If
_f_ : _A_ → _B_ and _g_ : _B_ → _C_ , then _f_ is a relation from _A_ to _B_ and _g_ is a relation
from _B_ to _C_ , so it makes sense to talk about _g_ ◦ _f_ , which will be a relation

```
Functions 231
from A to C. In fact, it turns out that g ◦ f is a function from A to C , as the next
theorem shows.
```

```
Theorem 5.1.5. Suppose f : A → B and g : B → C. Then g ◦ f : A → C,
and for any a ∈ A, the value of g ◦ f at a is given by the formula ( g ◦ f )( a )=
g ( f ( a )).
Scratch work
```

Before proving this theorem, it might be helpful to discuss the scratch work
for the proof. According to the definition of function, to show that _g_ ◦ _f_ :
_A_ → _C_ we must prove that∀ _a_ ∈ _A_ ∃! _c_ ∈ _C_ (( _a_ , _c_ )∈ _g_ ◦ _f_ ), so we will start
out by letting _a_ be an arbitrary element of _A_ and then try to prove that∃! _c_ ∈
_C_ (( _a_ , _c_ )∈ _g_ ◦ _f_ ). As we saw in Section 3.6, we can prove this statement by
proving existence and uniqueness separately. To prove existence, we should
try to find a _c_ ∈ _C_ such that ( _a_ , _c_ )∈ _g_ ◦ _f_. For uniqueness, we should assume
that ( _a_ , _c_ 1 )∈ _g_ ◦ _f_ and ( _a_ , _c_ 2 )∈ _g_ ◦ _f_ , and then try to prove that _c_ 1 = _c_ 2.

_Proof._ Let _a_ be an arbitrary element of _A_. We must show that there is a unique
_c_ ∈ _C_ such that ( _a_ , _c_ )∈ _g_ ◦ _f_.
Existence: Let _b_ = _f_ ( _a_ )∈ _B_. Let _c_ = _g_ ( _b_ )∈ _C_. Then ( _a_ , _b_ )∈ _f_ and
( _b_ , _c_ )∈ _g_ , so by the definition of composition of relations, ( _a_ , _c_ )∈ _g_ ◦ _f_.
Thus,∃ _c_ ∈ _C_ (( _a_ , _c_ )∈ _g_ ◦ _f_ ).
Uniqueness: Suppose ( _a_ , _c_ 1 )∈ _g_ ◦ _f_ and ( _a_ , _c_ 2 )∈ _g_ ◦ _f_. Then by the def-
inition of composition, we can choose _b_ 1 ∈ _B_ such that ( _a_ , _b_ 1 )∈ _f_ and
( _b_ 1 , _c_ 1 )∈ _g_ , and we can also choose _b_ 2 ∈ _B_ such that ( _a_ , _b_ 2 )∈ _f_ and
( _b_ 2 , _c_ 2 )∈ _g_. Since _f_ is a function, there can be only one _b_ ∈ _B_ such that
( _a_ , _b_ )∈ _f_. Thus, since ( _a_ , _b_ 1 ) and ( _a_ , _b_ 2 ) are both elements of _f_ , it follows
that _b_ 1 = _b_ 2. But now applying the same reasoning to _g_ , since ( _b_ 1 , _c_ 1 )∈ _g_ and
( _b_ 1 , _c_ 2 )=( _b_ 2 , _c_ 2 )∈ _g_ , it follows that _c_ 1 = _c_ 2 , as required.
This completes the proof that _g_ ◦ _f_ is a function from _A_ to _C_. Finally, to
derivetheformulafor( _g_ ◦ _f_ )( _a_ ),notethatweshowedinthe _existence_ halfofthe
proof that for any _a_ ∈ _A_ , if we let _b_ = _f_ ( _a_ ) and _c_ = _g_ ( _b_ ), then ( _a_ , _c_ )∈ _g_ ◦ _f_.
Thus,

```
( g ◦ f )( a )= c = g ( b )= g ( f ( a )). 
```

When we first introduced the idea of the composition of two relations
in Chapter 4, we pointed out that the notation was somewhat peculiar and
promised to explain the reason for the notation in this chapter. We can now
provide this explanation. The reason for the notation we’ve used for composi-
tion of relations is that it leads to the convenient formula ( _g_ ◦ _f_ )( _x_ )= _g_ ( _f_ ( _x_ ))

232 _Functions_

derived in Theorem 5.1.5. Note that because functions are just relations of a
special kind, everything we have proven about composition of relations ap-
plies to composition of functions. In particular, by Theorem 4.2.5, we know
that composition of functions is associative.

**Example 5.1.6.** Here are some examples of compositions of functions.

1. Let _C_ and _N_ be the sets of all cities and countries, respectively, and let
    _L_ : _C_ → _N_ be the function defined in part 3 of Example 5.1.2. Thus, for
every city _c_ , _L_ ( _c_ )=the country in which _c_ is located. Let _B_ be the set
of all buildings located in cities, and define _F_ : _B_ → _C_ by the formula
_F_ ( _b_ )=the city in which the building _b_ is located. Then _L_ ◦ _F_ : _B_ → _N_.
For example, _F_ (Eiffel Tower)=Paris, so according to the formula derived
in Theorem 5.1.5,

```
( L ◦ F )(Eiffel Tower)= L ( F (Eiffel Tower))
= L (Paris)=France.
```

```
In general, for every building b ∈ B ,
```

```
( L ◦ F )( b )= L ( F ( b ))= L (the city in which b is located)
=the country in which b is located.
```

```
A diagram of this function is shown in Figure 2.
```

```
Figure 2
```

2. Let _g_ :Z→R be the function from part 2 of Example 5.1.3, which
    was defined by the formula _g_ ( _x_ )= 2 _x_ +3. Let _f_ :Z→Zbe defined
    by the formula _f_ ( _n_ )= _n_^2 - 3 _n_ +1. Then _g_ ◦ _f_ :Z→R. For example,

```
Functions 233
f (2)= 22 - 3 · 2 + 1 = - 1, so ( g ◦ f )(2)= g ( f (2))= g (-1)=1. In
general, for every n ∈Z,
( g ◦ f )( n )= g ( f ( n ))= g ( n^2 - 3 n +1)=2( n^2 - 3 n +1)+ 3
= 2 n^2 - 6 n + 5.
```

```
Exercises
```

∗1. (a) Let _A_ = { 1 , 2 , 3 }, _B_ = { 4 },and _f_ = { (1,4),(2,4),(3,4)}. Is _f_ a

```
function from A to B?
(b) Let A = { 1 }, B = { 2 , 3 , 4 },and f = { (1,2),(1,3),(1,4)}. Is f a
function from A to B?
(c) Let C be the set of all cars registered in your state, and let S be the set of
all finite sequences of letters and digits. Let L = { ( c , s )∈ C × S |the
license plate number of the car c is s }. Is L a function from C to S?
```

2. (a) Let _f_ be the relation represented by the following graph. Is _f_ a function
    from _A_ to _B_?

(b) Let _W_ be the set of all words of English, and let _A_ be the set of all
letters of the alphabet. Let _f_ = { (w, _a_ )∈ _W_ × _A_ |the letter _a_ occurs
in the wordw}, and let _g_ = { (w, _a_ )∈ _W_ × _A_ |the letter _a_ is the first
letter of the wordw}. Is _f_ a function from _W_ to _A_? How about _g_?
(c) John, Mary, Susan, and Fred go out to dinner and sit at a round
table. Let _P_ ={John, Mary, Susan, Fred}, and let _R_ = { ( _p_ , _q_ )∈
_P_ × _P_ |the person _p_ is sitting immediately to the right of the person
_q_ }. Is _R_ a function from _P_ to _P_?
∗3. (a) Let _A_ = { _a_ , _b_ , _c_ }, _B_ = { _a_ , _b_ }, and _f_ = { ( _a_ , _b_ ),( _b_ , _b_ ),( _c_ , _a_ )}. Then

```
f : A → B. What are f ( a ), f ( b ), and f ( c )?
```

234 _Functions_

```
(b) Let f :R→Rbe the function defined by the formula f ( x )= x^2 -
2 x .What is f (2)?
(c) Let f = { ( x , n )∈R×Z| n ≤ x < n + 1 }. Then f :R→Z.What
is f (π)? What is f (-π)?
```

4. (a) Let _N_ be the set of all countries and _C_ the set of all cities. Let _H_ :
    _N_ → _C_ be the function defined by the rule that for every country _n_ ,
    _H_ ( _n_ )=the capital of the country _n_. What is _H_ (Italy)?
(b) Let _A_ = { 1 , 2 , 3 }and _B_ =P( _A_ ). Let _F_ : _B_ → _B_ be the function
defined by the formula _F_ ( _X_ )= _A_ \ _X_. What is _F_ ({ 1 , 3 })?
(c) Let _f_ :R→R×Rbe the function defined by the formula _f_ ( _x_ )=
( _x_ + 1 , _x_ -1). What is _f_ (2)?
∗5. Let _L_ be the function defined in part 3 of Example 5.1.2 and let _H_ be the
function defined in exercise 4(a). Describe _L_ ◦ _H_ and _H_ ◦ _L_.
6. Let _f_ and _g_ be functions fromRtoRdefined by the following formulas:
    _f_ ( _x_ )=

#### 1

```
x^2 + 2
```

```
, g ( x )= 2 x - 1.
Find formulas for ( f ◦ g )( x ) and ( g ◦ f )( x ).
∗7. Suppose f : A → B and C ⊆ A. The set f +( C × B ), which is a relation
from C to B , is called the restriction of f to C , and is sometimes denoted
f  C. In other words,
f  C = f +( C × B ).
(a) Prove that f  C is a function from C to B and that for all c ∈ C ,
f ( c )=( f  C )( c ).
(b) Suppose g : C → B. Prove that g = f  C iff g ⊆ f.
(c) Let g and h be the functions defined in parts 2 and 3 of Example 5.1.3.
Show that g = h Z.
```

8. Suppose _A_ is a set. Show that _iA_ is the only relation on _A_ that is both an
    equivalence relation on _A_ and also a function from _A_ to _A_.
9. Suppose _f_ : _A_ → _C_ and _g_ : _B_ → _C_.
    (a) Prove that if _A_ and _B_ are disjoint, then _f_ , _g_ : _A_ , _B_ → _C_.
(b) More generally, prove that _f_ , _g_ : _A_ , _B_ → _C_ iff _f_ ( _A_ + _B_ )=
_g_ ( _A_ + _B_ ).(Seeexercise7forthemeaningofthenotationusedhere.)
∗10. Suppose _R_ is a relation from _A_ to _B_ , _S_ is a relation from _B_ to _C_ ,

```
Ran( R )=Dom( S )= B , and S ◦ R : A → C.
(a) Prove that S : B → C.
(b) Give an example to show that it need not be the case that R : A → B.
```

11. Suppose _f_ : _A_ → _B_ and _S_ is a relation on _B_. Define a relation _R_ on _A_
    as follows:
       _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ |( _f_ ( _x_ ), _f_ ( _y_ ))∈ _S_ }.

```
Functions 235
(a) Prove that if S is reflexive, then so is R.
(b) Prove that if S is symmetric, then so is R.
(c) Prove that if S is transitive, then so is R.
∗12. Suppose f : A → B and R is a relation on A. Define a relation S on B
as follows:
```

```
S = { ( x , y )∈ B × B | ∃ u ∈ A ∃v∈ A ( f ( u )= x and  f (v)= y and ( u , v )∈ R )}.
```

```
Justify your answers to the following questions with either proofs or
counterexamples.
(a) If R is reflexive, must it be the case that S is reflexive?
(b) If R is symmetric, must it be the case that S is symmetric?
(c) If R is transitive, must it be the case that S is transitive?
```

13. Suppose _A_ and _B_ are sets, and letF= { _f_ | _f_ : _A_ → _B_ }. Also, suppose
    _R_ is a relation on _B_ , and define a relation _S_ onFas follows:

```
S = { ( f , g )∈F×F| ∀ x ∈ A (( f ( x ), g ( x ))∈ R )}.
```

```
Justify your answers to the following questions with either proofs or
counterexamples.
(a) If R is reflexive, must it be the case that S is reflexive?
(b) If R is symmetric, must it be the case that S is symmetric?
(c) If R is transitive, must it be the case that S is transitive?
```

14. Suppose _A_ is a nonempty set and _f_ : _A_ → _A_.
    (a) Suppose there is some _a_ ∈ _A_ such that∀ _x_ ∈ _A_ ( _f_ ( _x_ )= _a_ ). (In this
       case, _f_ is called a _constant_ function.) Prove that for all _g_ : _A_ → _A_ ,
          _f_ ◦ _g_ = _f_.
(b) Suppose that for all _g_ : _A_ → _A_ , _f_ ◦ _g_ = _f_. Prove that _f_ is a constant
function. (Hint: What happens if _g_ is a constant function?)
15. Let F= { _f_ | _f_ :R→R}. Let _R_ = { ( _f_ , _g_ )∈F×F| ∃ _a_ ∈R∀ _x_ >
    _a_ ( _f_ ( _x_ )= _g_ ( _x_ ))}.
    (a) Let _f_ :R→Rand _g_ :R→Rbe the functions defined by the for-
       mulas _f_ ( _x_ )= | _x_ |and _g_ ( _x_ )= _x_. Show that ( _f_ , _g_ )∈ _R_.
(b) Prove that _R_ is an equivalence relation.
∗16. LetF= { _f_ | _f_ :Z+→R}.For _g_ ∈F,wedefinetheset _O_ ( _g_ )asfollows:

```
O ( g )= { f ∈F| ∃ a ∈Z+∃ c ∈R+∀ x > a (| f ( x )| ≤ c | g ( x )|)}.
```

```
(If f ∈ O ( g ), then mathematicians say that “ f is big-oh of g ”.)
(a) Let f :Z+→Rand g :Z+→Rbe defined by the formulas f ( x )=
7 x +3 and g ( x )= x^2. Prove that f ∈ O ( g ), but g ∈/ O ( f ).
```

236 _Functions_

```
(b) Let S = { ( f , g )∈F×F| f ∈ O ( g )}. Prove that S is a preorder, but
not a partial order. (See exercise 24 of Section 4.6 for the definition
of preorder .)
(c) Suppose f 1 ∈ O ( g ) and f 2 ∈ O ( g ), and s and t are real numbers. De-
fine a function f :Z+→Rby the formula f ( x )= s f 1 ( x )+ t f 2 ( x ).
Prove that f ∈ O ( g ). (Hint: You may find the triangle inequality
helpful. See exercise 12(c) of Section 3.5.)
```

17. (a) Suppose _g_ : _A_ → _B_ and let _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ | _g_ ( _x_ )= _g_ ( _y_ )}.
    Show that _R_ is an equivalence relation on _A_.
(b) Suppose _R_ is an equivalence relation on _A_ and let _g_ : _A_ → _A_ / _R_ be
the function defined by the formula _g_ ( _x_ )=[ _x_ ] _R_. Show that _R_ =
{( _x_ , _y_ )∈ _A_ × _A_ | _g_ ( _x_ )= _g_ ( _y_ )}.
∗18. Suppose _f_ : _A_ → _B_ and _R_ is an equivalence relation on _A_. We will

```
say that f is compatible with R if∀ x ∈ A ∀ y ∈ A ( x Ry → f ( x )= f ( y )).
(You might want to compare this exercise to exercise 23 of Section 4.6.)
(a) Suppose f is compatible with R. Prove that there is a unique function
h : A / R → B such that for all x ∈ A , h ([ x ] R )= f ( x ).
(b) Suppose h : A / R → B and for all x ∈ A , h ([ x ] R )= f ( x ). Prove that
f is compatible with R.
```

19. Let _R_ = { ( _x_ , _y_ )∈Z×Z| _x_ ≡ _y_ (mod 5)}. Recall that we saw in Sec-
    tion 4.6 that _R_ is an equivalence relation onZ.
    (a) Show that there is a unique function _h_ :Z/ _R_ →Z/ _R_ such that for
       every integer _x_ , _h_ ([ _x_ ] _R_ )=[ _x_^2 ] _R_. (Hint: Use exercise 18.)
(b) Show that there is no function _h_ :Z/ _R_ →Z/ _R_ such that for every
integer _x_ , _h_ ([ _x_ ] _R_ )=[2 _x_ ] _R_.

## 5.2 One-to-one and Onto

In the last section we saw that the composition of two functions is again a
function. What about inverses of functions? If _f_ : _A_ → _B_ , then _f_ is a relation
from _A_ to _B_ , so _f_ -^1 is a relation from _B_ to _A_. Is it a function from _B_ to _A_? We’ll
answer this question in the next section. As we will see, the answer hinges on
the following two properties of functions.

**Definition 5.2.1.** Suppose _f_ : _A_ → _B_. We will say that _f_ is _one-to-one_ if
not ∃ _a_ 1 ∈ _A_ ∃ _a_ 2 ∈ _A_ ( _f_ ( _a_ 1 )= _f_ ( _a_ 2 )and  _a_ 1 = _a_ 2 ).
We say that _f_ is _onto_ if
∀ _b_ ∈ _B_ ∃ _a_ ∈ _A_ ( _f_ ( _a_ )= _b_ ).

One-to-one functions are sometimes also called _injections_ , and onto functions
are sometimes called _surjections_.

_One-to-one and Onto_ 237
Note that our definition of one-to-one starts with the negation symbolnot .
In other words, to say that _f_ is one-to-one means that a certain situation does
_not_ occur. The situation that must not occur is that there are two different
elements of the domain of _f_ , _a_ 1 and _a_ 2 , such that _f_ ( _a_ 1 )= _f_ ( _a_ 2 ). This situation
is illustrated in Figure 1(a). Thus, the function in Figure 1(a) is not one-to-one.
Figure 1(b) shows a function that is one-to-one.

```
Figure 1
```

If _f_ : _A_ → _B_ , then to say that _f_ is onto means that every element of _B_ is the
image under _f_ of some element of _A_. In other words, in the diagram of _f_ , every
element of _B_ has an edge pointing to it. Neither of the functions in Figure 1 is
onto, because in both cases there are elements of _B_ without edges pointing to
them. Figure 2 shows two functions that are onto.

```
Figure 2
```

238 _Functions_

**Example 5.2.2.** Are the following functions one-to-one? Are they onto?

1. The function _F_ from part 1 of Example 5.1.2.
2. The function _L_ from part 3 of Example 5.1.2.
3. The identity function _iA_ , for any set _A_.
4. The function _g_ from part 2 of Example 5.1.3.
5. The function _h_ from part 3 of Example 5.1.3.

_Solutions_

1. _F_ is not one-to-one because _F_ (1)= 5 = _F_ (3).It is also not onto, because
    6 ∈ _B_ but there is no _a_ ∈ _A_ such that _F_ ( _a_ )=6.
2. _L_ is not one-to-one because there are many pairs of different cities _c_ 1 and
    _c_ 2 for which _L_ ( _c_ 1 )= _L_ ( _c_ 2 ). For example, _L_ (Chicago)=United States=
    _L_ (Seattle). To say that _L_ is onto means that∀ _n_ ∈ _N_ ∃ _c_ ∈ _C_ ( _L_ ( _c_ )= _n_ ), or
    in other words, for every country _n_ there is a city _c_ such that the city _c_ is
    located in the country _n_. This is probably true, since it is unlikely that there
    is a country that contains no cities at all. Thus, _L_ is probably onto.
3. To decide whether _iA_ is one-to-one we must determine whether there are
    two elements _a_ 1 and _a_ 2 of _A_ such that _iA_ ( _a_ 1 )= _iA_ ( _a_ 2 ) and _a_ 1 = _a_ 2. But
    as we saw in Section 5.1, for every _a_ ∈ _A_ , _iA_ ( _a_ )= _a_ , so _iA_ ( _a_ 1 )= _iA_ ( _a_ 2 )
    means _a_ 1 = _a_ 2. Thus, there cannot be elements _a_ 1 and _a_ 2 of _A_ such that
    _iA_ ( _a_ 1 )= _iA_ ( _a_ 2 ) and _a_ 1 = _a_ 2 , so _iA_ is one-to-one.
       To say that _iA_ is onto means that for every _a_ ∈ _A_ , _a_ = _iA_ ( _b_ ) for some
    _b_ ∈ _A_. This is clearly true because, in fact, _a_ = _iA_ ( _a_ ). Thus _iA_ is also onto.
4. As in solution 3, to decide whether _g_ is one-to-one, we must determine
    whether there are integers _n_ 1 and _n_ 2 such that _g_ ( _n_ 1 )= _g_ ( _n_ 2 ) and _n_ 1 = _n_ 2.
    According to the definition of _g_ , we have

```
g ( n 1 )= g ( n 2 ) iff 2 n 1 + 3 = 2 n 2 + 3
iff 2 n 1 = 2 n 2
iff n 1 = n 2.
```

```
Thus there can be no integers n 1 and n 2 for which g ( n 1 )= g ( n 2 ) and
n 1 = n 2. In other words, g is one-to-one. However, g is not onto because,
for example, there is no integer n for which g ( n )=0. To see why, suppose n
is an integer and g ( n )= 0 .Then by the definition of g we have 2 n + 3 =0,
so n = - 3 /2. But this contradicts the fact that n is an integer. Note that the
domain of g isZ, so for g to be onto it must be the case that for every real
number y there is an integer n such that g ( n )= y. Since we have seen that
there is no integer n such that g ( n )=0, we can conclude that g is not onto.
```

```
One-to-one and Onto 239
```

5. This function is both one-to-one and onto. The verification that _h_ is one-
    to-one is very similar to the verification in solution 4 that _g_ is one-to-
    one, and it is left to the reader. To see that _h_ is onto, we must show that
    ∀ _y_ ∈R∃ _x_ ∈R( _h_ ( _x_ )= _y_ ).Here is a brief proof of this statements. Let _y_
    be an arbitrary real number. Let _x_ =( _y_ -3)/2. Then _g_ ( _x_ )= 2 _x_ + 3 =
    2 ·(( _y_ -3)/2)+ 3 = _y_ - 3 + 3 = _y_. Thus,∀ _y_ ∈R∃ _x_ ∈R( _h_ ( _x_ )= _y_ ), so
    _h_ is onto.

Although the definition of one-to-one is easiest to understand when it is
stated as a negative statement, as in Definition 5.2.1, we know from Chapter 3
that the definition will be easier to use in proofs if we reexpress it as an
equivalent positive statement. The following theorem shows how to do this. It
also gives a useful equivalence for the definition of onto.

**Theorem 5.2.3.** _Suppose f_ : _A_ → _B._

1. _f is one-to-one iff_ ∀ _a_ 1 ∈ _A_ ∀ _a_ 2 ∈ _A_ ( _f_ ( _a_ 1 )= _f_ ( _a_ 2 )→ _a_ 1 = _a_ 2 )_._
2. _f is onto iff_ Ran( _f_ )= _B._

_Proof_

1. We use the rules from Chapters 1 and 2 for reexpressing negative statements
    as positive ones.

```
f is one-to-one iffnot ∃ a 1 ∈ A ∃ a 2 ∈ A ( f ( a 1 )= f ( a 2 )and  a 1 = a 2 )
iff∀ a 1 ∈ A ∀ a 2 ∈ A not ( f ( a 1 )= f ( a 2 )and  a 1 = a 2 )
iff∀ a 1 ∈ A ∀ a 2 ∈ A ( f ( a 1 )= f ( a 2 )or  a 1 = a 2 )
iff∀ a 1 ∈ A ∀ a 2 ∈ A ( f ( a 1 )= f ( a 2 )→ a 1 = a 2 ).
```

2. First we relate the definition of onto to the definition of range.

```
f is onto iff∀ b ∈ B ∃ a ∈ A ( f ( a )= b )
iff∀ b ∈ B ∃ a ∈ A (( a , b )∈ f )
iff∀ b ∈ B ( b ∈Ran( f ))
iff B ⊆Ran( f ).
```

Now we are ready to prove part 2 of the theorem.
(→) Suppose _f_ is onto. By the equivalence just derived we have _B_ ⊆
Ran( _f_ ), and by the definition of range we have Ran( _f_ )⊆ _B_. Thus, it follows
that Ran( _f_ )= _B_.
(←) Suppose Ran( _f_ )= _B_. Then certainly _B_ ⊆Ran( _f_ ), so by the equiva-
lence, _f_ is onto. 

240 _Functions_

_Commentary._ It is often most efficient to write the proof of an iff statement as
a string of equivalences, if this can be done. In the case of statement 1 this is
easy, using rules of logic. For statement 2 this strategy doesn’t quite work, but
it does give us an equivalence that turns out to be useful in the proof.

**Example 5.2.4.** Let _A_ =R\ {- 1 }, and define _f_ : _A_ →Rby the formula

```
f ( a )=
```

```
2 a
a + 1
```

#### 

Prove that _f_ is one-to-one but not onto.

_Scratch work_

By part 1 of Theorem 5.2.3, we can prove that _f_ is one-to-one by proving the
equivalent statement∀ _a_ 1 ∈ _A_ ∀ _a_ 2 ∈ _A_ ( _f_ ( _a_ 1 )= _f_ ( _a_ 2 )→ _a_ 1 = _a_ 2 ). Thus, we
let _a_ 1 and _a_ 2 be arbitrary elements of _A_ , assume _f_ ( _a_ 1 )= _f_ ( _a_ 2 ), and then prove
_a_ 1 = _a_ 2. This is the strategy that is almost always used when proving that a
function is one-to-one. The remaining details of the proof involve only simple
algebra and are given later.
To show that _f_ is not onto we must provenot ∀ _x_ ∈R∃ _a_ ∈ _A_ ( _f_ ( _a_ )= _x_ ). Re-
expressing this as a positive statement, we see that we must prove∃ _x_ ∈R∀ _a_ ∈
_A_ ( _f_ ( _a_ )= _x_ ), so we should try to find a particular real number _x_ such that
∀ _a_ ∈ _A_ ( _f_ ( _a_ )= _x_ ). Unfortunately, it is not at all clear what value we should
use for _x_. We’ll use a somewhat unusual procedure to overcome this difficulty.
Instead of trying to prove that _f_ is not onto, let’s try to prove that it _is_ onto!Of
course, we’re expecting that this proof won’t work, but maybe seeing _why_ it
won’t work will help us figure out what value of _x_ to use in the proof that _f_ is
_not_ onto.
To prove that _f_ is onto we would have to prove∀ _x_ ∈R∃ _a_ ∈ _A_ ( _f_ ( _a_ )= _x_ ),
so we should let _x_ be an arbitrary real number and try to find some _a_ ∈ _A_ such
that _f_ ( _a_ )= _x_. Filling in the definition of _f_ , we see that we must find _a_ ∈ _A_
such that
2 _a
a_ + 1

```
= x.
```

To find this value of _a_ , we simply solve the equation for _a_ :
2 _a
a_ + 1

```
= x ⇒ 2 a = ax + x ⇒ a (2- x )= x ⇒ a =
```

```
x
2 - x
```

#### 

Aha!The last step in this derivation wouldn’t work if _x_ =2, because then
we would be dividing by 0. This is the only value of _x_ that seems to cause
trouble when we try to find a value of _a_ for which _f_ ( _a_ )= _x_. Perhaps _x_ =2 is
the value to use in the proof that _f_ is _not_ onto.

```
One-to-one and Onto 241
Let’s return now to the proof that f is not onto. If we let x =2, then to
complete the proof we must show that∀ a ∈ A ( f ( a )=2). We’ll do this by
letting a be an arbitrary element of A , assuming f ( a )=2, and then trying to
derive a contradiction. The remaining details of the proof are not hard.
```

```
Solution
```

_Proof_ To see that _f_ is one-to-one, let _a_ 1 and _a_ 2 be arbitrary elements of _A_
and assume _f_ ( _a_ 1 )= _f_ ( _a_ 2 ). Applying the definition of _f_ , it follows that _a_^21 _a_ +^11 =
2 _a_ 2
_a_ 2 + 1. Thus, 2 _a_^1 ( _a_^2 +1)=^2 _a_^2 ( _a_^1 +1). Multiplying out both sides gives us
2 _a_ 1 _a_ 2 + 2 _a_ 1 = 2 _a_ 1 _a_ 2 + 2 _a_ 2 , so 2 _a_ 1 = 2 _a_ 2 and therefore _a_ 1 = _a_ 2.
To show that _f_ is not onto we will prove that∀ _a_ ∈ _A_ ( _f_ ( _a_ )=2). Suppose
_a_ ∈ _A_ and _f_ ( _a_ )=2. Applying the definition of _f_ , we get _a_^2 + _a_ 1 =2. Thus,
2 _a_ = 2 _a_ +2, which is clearly impossible. Thus, 2∈/Ran( _f_ ), so Ran( _f_ )=R
and therefore _f_ is not onto. 

```
As we saw in the preceding example, when proving that a function f is
one-to-one it is usually easiest to prove the equivalent statement∀ a 1 ∈ A ∀ a 2 ∈
A ( f ( a 1 )= f ( a 2 )→ a 1 = a 2 ) given in part 1 of Theorem 5.2.3. Of course,
this is just an example of the fact that it is generally easier to prove a positive
statement than a negative one. This equivalence is also often used in proofs in
which we are given that a function is one-to-one, as you will see in the proof
of part 1 of the following theorem.
```

```
Theorem 5.2.5. Suppose f : A → B and g : B → C. As we saw in Theo-
rem 5.1.5, it follows that g ◦ f : A → C.
```

1. _If f and g are both one-to-one, then so is g_ ◦ _f._
2. _If f and g are both onto, then so is g_ ◦ _f._

```
Proof
```

1. Suppose _f_ and _g_ are both one-to-one. Let _a_ 1 and _a_ 2 be arbitrary elements
    of _A_ and suppose that ( _g_ ◦ _f_ )( _a_ 1 )=( _g_ ◦ _f_ )( _a_ 2 ). By Theorem 5.1.5 this
    means that _g_ ( _f_ ( _a_ 1 ))= _g_ ( _f_ ( _a_ 2 )). Since _g_ is one-to-one it follows that
       _f_ ( _a_ 1 )= _f_ ( _a_ 2 ), and similarly since _f_ is one-to-one we can then conclude
    that _a_ 1 = _a_ 2. Thus, _g_ ◦ _f_ is one-to-one.
2. Suppose _f_ and _g_ are both onto, and let _c_ be an arbitrary element of _C_. Since
_g_ is onto, we can find some _b_ ∈ _B_ such that _g_ ( _b_ )= _c_. Similarly, since _f_ is
onto, there is some _a_ ∈ _A_ such that _f_ ( _a_ )= _b_. Then ( _g_ ◦ _f_ )( _a_ )= _g_ ( _f_ ( _a_ ))=
_g_ ( _b_ )= _c_. Thus, _g_ ◦ _f_ is onto. 

242 _Functions_

_Commentary_

1. AsinExample5.2.4,weprovethat _g_ ◦ _f_ isone-to-onebyprovingthat∀ _a_ 1 ∈
    _A_ ∀ _a_ 2 ∈ _A_ (( _g_ ◦ _f_ )( _a_ 1 )=( _g_ ◦ _f_ )( _a_ 2 )→ _a_ 1 = _a_ 2 ). Thus, we let _a_ 1 and _a_ 2
be arbitrary elements of _A_ , assume that ( _g_ ◦ _f_ )( _a_ 1 )=( _g_ ◦ _f_ )( _a_ 2 ), which
means _g_ ( _f_ ( _a_ 1 ))= _g_ ( _f_ ( _a_ 2 )), and then prove that _a_ 1 = _a_ 2. The next sentence
of the proof says that the assumption that _g_ is one-to-one is being used, but
it might not be clear _how_ it is being used. To understand this step, let’s
write out what it means to say that _g_ is one-to-one. As we observed before,
rather than using the original definition, which is a negative statement,
we are probably better off using the equivalent positive statement∀ _b_ 1 ∈
_B_ ∀ _b_ 2 ∈ _B_ ( _g_ ( _b_ 1 )= _g_ ( _b_ 2 )→ _b_ 1 = _b_ 2 ). The natural way to use a given of
this form is to plug something in for _b_ 1 and _b_ 2. Plugging in _f_ ( _a_ 1 ) and
_f_ ( _a_ 2 ), we get _g_ ( _f_ ( _a_ 1 ))= _g_ ( _f_ ( _a_ 2 ))→ _f_ ( _a_ 1 )= _f_ ( _a_ 2 ), and since we know
_g_ ( _f_ ( _a_ 1 ))= _g_ ( _f_ ( _a_ 2 )), it follows by modus ponens that _f_ ( _a_ 1 )= _f_ ( _a_ 2 ). None
of this was explained in the proof; readers of the proof are expected to work it
out for themselves. Make sure you understand how, using similar reasoning,
you can get from _f_ ( _a_ 1 )= _f_ ( _a_ 2 ) to _a_ 1 = _a_ 2 by applying the fact that _f_ is
one-to-one.
2. After the assumption that _f_ and _g_ are both onto, the form of the rest of the
    proof is entirely guided by the logical form of the goal of proving that _g_ ◦ _f_
    is onto. Because this means∀ _c_ ∈ _C_ ∃ _a_ ∈ _A_ (( _g_ ◦ _f_ )( _a_ )= _c_ ), we let _c_ be an
    arbitrary element of _C_ and then find some _a_ ∈ _A_ for which we can prove
    ( _g_ ◦ _f_ )( _a_ )= _c_.

Functions that are both one-to-one and onto are particularly important in
mathematics.Suchfunctionsaresometimescalled _one-to-onecorrespondences_
or _bijections_. Figure 2(b) shows an example of a one-to-one correspondence.
Notice in the figure that both _A_ and _B_ have four elements. In fact, you should be
able to convince yourself that if there is a one-to-one correspondence between
two finite sets, then the sets must have the same number of elements. This is
one of the reasons why one-to-one correspondences are so important. We will
discuss one-to-one correspondences between infinite sets in Chapter 7.
Here’s another example of a one-to-one correspondence. Suppose _A_ is the
set of all members of the audience at a sold-out concert and _S_ is the set of all
seats in the concert hall. Let _f_ : _A_ → _S_ be the function defined by the rule

```
f ( a )=the seat in which a is sitting.
```

Because different people would not be sitting in the same seat, _f_ is one-to-one.
Because the concert is sold out, every seat is taken, so _f_ is onto. Thus, _f_ is a

```
One-to-one and Onto 243
```

one-to-one correspondence. Even without counting people or seats, we can tell
that the number of people in the audience must be the same as the number of
seats in the concert hall.

```
Exercises
```

1. Which of the functions in exercise 1 of Section 5.1 are one-to-one? Which
    are onto?
∗2. Which of the functions in exercise 2 of Section 5.1 are one-to-one? Which
are onto?
3. Which of the functions in exercise 3 of Section 5.1 are one-to-one? Which
    are onto?
4. Which of the functions in exercise 4 of Section 5.1 are one-to-one? Which
    are onto?
∗5. Let _A_ =R\ { 1 }, and let _f_ : _A_ → _A_ be defined as follows:

```
f ( x )=
```

```
x + 1
x - 1
```

#### 

```
(a) Show that f is one-to-one and onto.
(b) Show that f ◦ f = iA.
```

6. Let _A_ =P(R). Define _f_ :R→ _A_ by the formula _f_ ( _x_ )= { _y_ ∈R| _y_^2 <
    _x_ }.
    (a) Find _f_ (2).
(b) Is _f_ one-to-one? Is it onto?
∗7. Let _A_ =P(R) and _B_ =P( _A_ ). Define _f_ : _B_ → _A_ by the formula
_f_ (F)= , F.
    (a) Find _f_ ({{ 1 , 2 },{ 3 , 4 }}).
(b) Is _f_ one-to-one? Is it onto?
8. Suppose _f_ : _A_ → _B_ and _g_ : _B_ → _C_.
    (a) Prove that if _g_ ◦ _f_ is onto then _g_ is onto.
(b) Prove that if _g_ ◦ _f_ is one-to-one then _f_ is one-to-one.
9. Suppose _f_ : _A_ → _B_ and _g_ : _B_ → _C_.
    (a) Prove that if _f_ is onto and _g_ is not one-to-one, then _g_ ◦ _f_ is not one-
       to-one.
(b) Prove that if _f_ is not onto and _g_ is one-to-one, then _g_ ◦ _f_ is not onto.
∗10. Suppose _f_ : _A_ → _B_ and _C_ ⊆ _A_. In exercise 7 of Section 5.1 we defined

```
f  C (the restriction of f to C ), and you showed that f  C : C → B.
(a) Prove that if f is one-to-one, then so is f  C.
(b) Prove that if f  C is onto, then so is f.
```

244 _Functions_

```
(c)Give examples to show that the converses of parts (a) and (b) are not
true.
```

11. Suppose _f_ : _A_ → _B_ , and there is some _b_ ∈ _B_ such that∀ _x_ ∈ _A_ ( _f_ ( _x_ )=
    _b_ ). (Thus, _f_ is a _constant_ function.)
    (a) Prove that if _A_ has more than one element then _f_ is not one-to-one.
(b) Prove that if _B_ has more than one element then _f_ is not onto.
12. Suppose _f_ : _A_ → _C_ , _g_ : _B_ → _C_ , and _A_ and _B_ are disjoint. In exercise
    9(a) of Section 5.1 you proved that _f_ , _g_ : _A_ , _B_ → _C_. Now suppose in
    addition that _f_ and _g_ are both one-to-one. Prove that _f_ , _g_ is one-to-one
    iff Ran( _f_ ) and Ran( _g_ ) are disjoint.
13. Suppose _R_ is a relation from _A_ to _B_ , _S_ is a relation from _B_ to _C_ ,
    Ran( _R_ )=Dom( _S_ )= _B_ , and _S_ ◦ _R_ : _A_ → _C_. In exercise 10(a) of Sec-
    tion 5.1 you proved that _S_ : _B_ → _C_. Now prove that if _S_ is one-to-one
    then _R_ : _A_ → _B_.
∗14. Suppose _f_ : _A_ → _B_ and _R_ is a relation on _A_. As in exercise 12 of Sec-

```
tion 5.1, define a relation S on B as follows:
```

```
S = { ( x , y )∈ B × B | ∃ u ∈ A ∃v∈ A ( f ( u )= x and  f (v)= y and ( u , v )∈ R }.
```

```
(a) Prove that if R is reflexive and f is onto then S is reflexive.
(b) Prove that if R is transitive and f is one-to-one then S is transitive.
```

15. Suppose _R_ is an equivalence relation on _A_ , and let _g_ : _A_ → _A_ / _R_ be
    defined by the formula _g_ ( _x_ )=[ _x_ ] _R_ , as in exercise 17 in Section 5.1.
    (a) Show that _g_ is onto.
(b) Show that _g_ is one-to-one iff _R_ = _iA_.
16. Suppose _f_ : _A_ → _B_ , _R_ is an equivalence relation on _A_ , and _f_ is com-
    patible with _R_. (See exercise 18 of Section 5.1 for the definition of
    _compatible_ .) In exercise 18(a) of Section 5.1 you proved that there is
    a unique function _h_ : _A_ / _R_ → _B_ such that for all _x_ ∈ _A_ , _h_ ([ _x_ ] _R_ )= _f_ ( _x_ ).
    Now prove that _h_ is one-to-one iff∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _f_ ( _x_ )= _f_ ( _y_ )→ _x Ry_ ).
∗17. Suppose _A_ , _B_ , and _C_ are sets and _f_ : _A_ → _B_.

```
(a) Prove that if f is onto, g : B → C , h : B → C , and g ◦ f = h ◦ f ,
then g = h.
(b) Suppose that C has at least two elements, and for all functions g and
h from B to C , if g ◦ f = h ◦ f then g = h. Prove that f is onto.
```

18. Suppose _A_ , _B_ , and _C_ are sets and _f_ : _B_ → _C_.
    (a) Prove that if _f_ is one-to-one, _g_ : _A_ → _B_ , _h_ : _A_ → _B_ , and _f_ ◦ _g_ =
       _f_ ◦ _h_ , then _g_ = _h_.
(b) Suppose that _A_ =∅, and for all functions _g_ and _h_ from _A_ to _B_ , if
_f_ ◦ _g_ = _f_ ◦ _h_ then _g_ = _h_. Prove that _f_ is one-to-one.

```
Inverses of Functions 245
```

19. LetF= { _f_ | _f_ :R→R}, and define a relation _R_ onFas follows:

```
R = { ( f , g )∈F×F| ∃ h ∈F( f = h ◦ g )}.
```

```
(a) Let f , g , and h be the functions fromRtoRdefined by the formulas
f ( x )= x^2 +1, g ( x )= x^3 +1, and h ( x )= x^4 +1. Prove that hR f ,
but it is not the case that gR f.
(b) Prove that R is a preorder. (See exercise 24 of Section 4.6 for the
definition of preorder .)
(c) Prove that for all f ∈F, f Ri R.
(d) Prove that for all f ∈F, i R R f iff f is one-to-one. (Hint for right-to-
left direction: Suppose f is one-to-one. Let A =Ran( f ), and let h =
f -^1 ,((R\ A )× { 0 }). Now prove that h :R→Rand i R= h ◦ f .)
(e) Suppose that g ∈Fis a constant function; in other words, there is
some real number c such that∀ x ∈R( g ( x )= c ). Prove that for all
f ∈F, gR f. (Hint: See exercise 14 of Section 5.1.)
(f) Suppose that g ∈Fis a constant function. Prove that for all f ∈F,
f Rg iff f is a constant function.
(g) As in exercise 24 of Section 4.6, if we let S = R + R -^1 , then S is an
equivalence relation onF. Also, there is a unique relation T onF/ S
such that for all f and g inF, [ f ] ST [ g ] S iff f Rg , and T is a partial
order onF/ S. Prove that the set of all one-to-one functions fromR
toRis the largest element ofF/ S in the partial order T , and the set
of all constant functions fromRtoRis the smallest element.
```

## 5.3 Inverses of Functions

We are now ready to return to the question of whether the inverse of a function
from _A_ to _B_ is always a function from _B_ to _A_. Consider again the function _F_
from part 1 of Example 5.1.2. Recall that in that example we had _A_ = { 1 , 2 , 3 },
_B_ = { 4 , 5 , 6 }, and _F_ = { (1,5),(2,4),(3,5)}. As we saw in Example 5.1.2, _F_
is a function from _A_ to _B_. According to the definition of the inverse of a relation,
_F_ -^1 = { (5,1),(4,2),(5,3)}, which is clearly a relation from _B_ to _A_. But _F_ -^1
fails to be a function from _B_ to _A_ for two reasons. First of all, 6∈ _B_ , but 6 isn’t
paired with any element of _A_ in the relation _F_ -^1. Second, 5 is paired with two
different elements of _A_ , 1 and 3. Thus, this example shows that the inverse of
a function from _A_ to _B_ is not always a function from _B_ to _A_.
You may have noticed that the reasons why _F_ -^1 isn’t a function from _B_ to
_A_ are related to the reasons why _F_ is neither one-to-one nor onto, which were
discussed in part 1 of Example 5.2.2. This suggests the following theorem.

246 _Functions_

**Theorem 5.3.1.** _Suppose f_ : _A_ → _B. If f is one-to-one and onto, then f_ -^1 :
_B_ → _A.
Proof_. Suppose _f_ is one-to-one and onto, and let _b_ be an arbitrary element
of _B_. To show that _f_ -^1 is a function from _B_ to _A_ , we must prove that
∃! _a_ ∈ _A_ (( _b_ , _a_ )∈ _f_ -^1 ), so we prove existence and uniqueness separately.
Existence: Since _f_ is onto, there is some _a_ ∈ _A_ such that _f_ ( _a_ )= _b_. Thus,
( _a_ , _b_ )∈ _f_ , so ( _b_ , _a_ )∈ _f_ -^1.
Uniqueness: Suppose ( _b_ , _a_ 1 )∈ _f_ -^1 and ( _b_ , _a_ 2 )∈ _f_ -^1 for some _a_ 1 , _a_ 2 ∈ _A_.
Then ( _a_ 1 , _b_ )∈ _f_ and ( _a_ 2 , _b_ )∈ _f_ , so _f_ ( _a_ 1 )= _b_ = _f_ ( _a_ 2 ). Since _f_ is one-to-one,
it follows that _a_ 1 = _a_ 2. 

_Commentary._ The form of the proof is guided by the logical form of the state-
ment that _f_ -^1 : _B_ → _A_. Because this means∀ _b_ ∈ _B_ ∃! _a_ ∈ _A_ (( _b_ , _a_ )∈ _f_ -^1 ),
we let _b_ be an arbitrary element of _B_ and then prove existence and uniqueness
for the required _a_ ∈ _A_ separately. Note that the assumption that _f_ is onto is the
key to the existence half of the proof, and the assumption that _f_ is one-to-one
is the key to the uniqueness half.

Suppose _f_ is any function from a set _A_ to a set _B_. Theorem 5.3.1 says that
a sufficient condition for _f_ -^1 to be a function from _B_ to _A_ is that _f_ be one-to-
one and onto. Is it also a necessary condition? In other words, is the converse
of Theorem 5.3.1 true? (If you don’t remember what the words _sufficient,
necessary_ , and _converse_ mean, you should review Section 1.5!) We will show
in Theorem 5.3.4 that the answer to this question is yes. In other words, if _f_ -^1
is a function from _B_ to _A_ , then _f_ must be one-to-one and onto.
If _f_ -^1 : _B_ → _A_ then, by the definition of function, for every _b_ ∈ _B_ there is
exactly one _a_ ∈ _A_ such that ( _b_ , _a_ )∈ _f_ -^1 , and

```
f -^1 ( b )=the unique a ∈ A such that ( b , a )∈ f -^1
=the unique a ∈ A such that ( a , b )∈ f
=the unique a ∈ A such that f ( a )= b.
```

This gives another useful way to think about _f_ -^1. If _f_ -^1 is a function from _B_
to _A_ , then it is the function that assigns, to each _b_ ∈ _B_ , the unique _a_ ∈ _A_ such
that _f_ ( _a_ )= _b_. The assumption in Theorem 5.3.1 that _f_ is one-to-one and onto
guarantees that there is exactly one such _a_.
As an example, consider again the function _f_ that assigns, to each person in
the audience at a sold-out concert, the seat in which that person is sitting. As
we saw at the end of the last section, _f_ is a one-to-one, onto function from the
set _A_ of all members of the audience to the set _S_ of all seats in the concert hall.

```
Inverses of Functions 247
```

Thus, _f_ -^1 must be a function from _S_ to _A_ , and for each _s_ ∈ _S_ ,

```
f -^1 ( s )=the unique a ∈ A such that f ( a )= s
=the unique person a such that the seat in which a is sitting is s
=the person who is sitting in the seat s.
```

In other words, the function _f_ assigns to each person the seat in which that
person is sitting, and the function _f_ -^1 assigns to each seat the person sitting in
that seat.
Because _f_ : _A_ → _S_ and _f_ -^1 : _S_ → _A_ , it follows by Theorem 5.1.5 that
_f_ -^1 ◦ _f_ : _A_ → _A_ and _f_ ◦ _f_ -^1 : _S_ → _S_. What are these functions? To figure
out what the first function is, let’s let _a_ be an arbitrary element of _A_ and
compute ( _f_ -^1 ◦ _f_ )( _a_ ).

```
( f -^1 ◦ f )( a )= f -^1 ( f ( a ))
= f -^1 (the seat in which a is sitting)
=the person sitting in the seat in which a is sitting
= a.
```

But recall that for every _a_ ∈ _A_ , _iA_ ( _a_ )= _a_. Thus, we have shown that∀ _a_ ∈
_A_ (( _f_ -^1 ◦ _f_ )( _a_ )= _iA_ ( _a_ )), so by Theorem 5.1.4, _f_ -^1 ◦ _f_ = _iA_. Similarly, you
should be able to check that _f_ ◦ _f_ -^1 = _iS_.
When mathematicians find an unusual phenomenon like this in an example,
they always wonder whether it’s just a coincidence or if it’s part of a more
general pattern. In other words, can we prove a theorem that says that what
happened in this example will happen in other examples too? In this case, it
turns out that we can.

**Theorem 5.3.2.** _Suppose f is a function from A to B, and suppose that f_ -^1 _is
a function from B to A. Then f_ -^1 ◦ _f_ = _iAand f_ ◦ _f_ -^1 = _iB.
Proof_ Let _a_ be an arbitrary element of _A_. Let _b_ = _f_ ( _a_ )∈ _B_. Then ( _a_ , _b_ )∈ _f_ ,
so ( _b_ , _a_ )∈ _f_ -^1 and therefore _f_ -^1 ( _b_ )= _a_. Thus,

```
( f -^1 ◦ f )( a )= f -^1 ( f ( a ))= f -^1 ( b )= a = iA ( a ).
```

Since _a_ was arbitrary, we have shown that∀ _a_ ∈ _A_ (( _f_ -^1 ◦ _f_ )( _a_ )= _iA_ ( _a_ )), so
_f_ -^1 ◦ _f_ = _iA_. The proof of the second half of the theorem is similar and is left
as an exercise (see exercise 8). 

248 _Functions_

_Commentary._ Toprovethattwofunctionsareequal,weusuallyapplyTheorem
5.1.4. Thus, since _f_ -^1 ◦ _f_ and _iA_ are both functions from _A_ to _A_ , to prove that
they are equal we prove that∀ _a_ ∈ _A_ (( _f_ -^1 ◦ _f_ )( _a_ )= _iA_ ( _a_ )).

Theorem 5.3.2 says that if _f_ : _A_ → _B_ and _f_ -^1 : _B_ → _A_ , then each func-
tion undoes the effect of the other. For any _a_ ∈ _A_ , applying the function _f_
gives us _f_ ( _a_ )∈ _B_. According to Theorem 5.3.2, _f_ -^1 ( _f_ ( _a_ ))=( _f_ -^1 ◦ _f_ )( _a_ )=
_iA_ ( _a_ )= _a_. Thus, applying _f_ -^1 to _f_ ( _a_ ) undoes the effect of applying _f_ , giving
us back the original element _a_. Similarly, for any _b_ ∈ _B_ , applying _f_ -^1 we get
_f_ -^1 ( _b_ )∈ _A_ , and we can undo the effect of applying _f_ -^1 by applying _f_ , since
_f_ ( _f_ -^1 ( _b_ ))= _b_.
For example, let _f_ :R→Rbe defined by the formula _f_ ( _x_ )= 2 _x_. You
should be able to check that _f_ is one-to-one and onto, so _f_ -^1 :R→R, and
for any _x_ ∈R,

```
f -^1 ( x )=the unique y such that f ( y )= x.
```

Because _f_ -^1 ( _x_ ) is the unique solution for _y_ in the equation _f_ ( _y_ )= _x_ , we
can find a formula for _f_ -^1 ( _x_ ) by solving this equation for _y_. Filling in the
definition of _f_ in the equation gives us 2 _y_ = _x_ , so _y_ = _x_ /2. Thus, for every
_x_ ∈R, _f_ -^1 ( _x_ )= _x_ /2. Notice that applying _f_ to any number doubles the num-
ber and applying _f_ -^1 halves the number, and each of these operations undoes
the effect of the other. In other words, if you double a number and then halve
the result, you get back the number you started with. Similarly, halving any
number and then doubling the result gives you back the original number.
Are there other circumstances in which the composition of two functions
is equal to the identity function? Investigation of this question leads to the
following theorem.

**Theorem 5.3.3.** _Suppose f_ : _A_ → _B._

1. _If there is a function g_ : _B_ → _A such that g_ ◦ _f_ = _iAthen f is one-to-one._
2. _If there is a function g_ : _B_ → _A such that f_ ◦ _g_ = _iBthen f is onto._

_Proof_

1. Suppose _g_ : _B_ → _A_ and _g_ ◦ _f_ = _iA_. Let _a_ 1 and _a_ 2 be arbitrary elements of
    _A_ , and suppose that _f_ ( _a_ 1 )= _f_ ( _a_ 2 ). Applying _g_ to both sides of this equation
    we get _g_ ( _f_ ( _a_ 1 ))= _g_ ( _f_ ( _a_ 2 )). But _g_ ( _f_ ( _a_ 1 ))=( _g_ ◦ _f_ )( _a_ 1 )= _iA_ ( _a_ 1 )= _a_ 1 ,
    and similarly, _g_ ( _f_ ( _a_ 2 ))= _a_ 2. Thus, we can conclude that _a_ 1 = _a_ 2 , and
    therefore _f_ is one-to-one.
2. See exercise 9. 

```
Inverses of Functions 249
Commentary. The assumption that there is a g : B → A such that g ◦ f = iA
is an existential statement, so we immediately imagine that a particular function
g has been chosen. The proof that f is one-to-one follows the usual pattern for
such proofs, based on Theorem 5.2.3.
```

```
We have come full circle. In Theorem 5.3.1 we found that if f is a one-to-
one, onto function from A to B , then f -^1 is a function from B to A. From
this conclusion it follows, as we showed in Theorem 5.3.2, that the composi-
tion of f with its inverse must be the identity function. And in Theorem 5.3.3
we found that when the composition of two functions is the identity func-
tion, we are led back to the properties one-to-one and onto!Thus, combining
Theorems 5.3.1–5.3.3, we get the following theorem.
```

```
Theorem 5.3.4. Suppose f : A → B. Then the following statements are
equivalent.
```

1. _f is one-to-one and onto_.
2. _f_ -^1 : _B_ → _A_.
3. _There is a function g_ : _B_ → _A such that g_ ◦ _f_ = _iAand f_ ◦ _g_ = _iB._

```
Proof. 1 →2. This is precisely what Theorem 5.3.1 says.
2 →3. Suppose f -^1 : B → A. Let g = f -^1 and apply Theorem 5.3.2.
3 →1. Apply Theorem 5.3.3. 
```

```
Commentary. As we saw in Section 3.6, the easiest way to prove that several
statementsareequivalentistoproveacircleofimplications.Inthiscasewehave
proven the circle 1→ 2 → 3 →1. Note that the proofs of these implications
are quite sketchy. You should make sure you know how to fill in all the details.
```

For example, let _f_ and _g_ be functions fromRtoRdefined by the following
formulas:

```
f ( x )=
```

```
x + 7
5
```

```
, g ( x )= 5 x - 7.
```

```
Then for any real number x ,
```

```
( g ◦ f )( x )= g ( f ( x ))= g
```

#### (

```
x + 7
5
```

#### )

#### = 5 ·

```
x + 7
5
```

```
- 7 = x + 7 - 7 = x.
```

```
Thus, g ◦ f = i R. A similar computation shows that f ◦ g = i R. Thus, it fol-
lows from Theorem 5.3.4 that f must be one-to-one and onto, and f -^1 must
also be a function fromRtoR. What is f -^1? Of course, a logical guess
would be that f -^1 = g , but this doesn’t actually follow from the theorems
```

250 _Functions_

we’ve proven. You could check it directly by solving for _f_ -^1 ( _x_ ), using the
fact that _f_ -^1 ( _x_ ) must be the unique solution for _y_ in the equation _f_ ( _y_ )= _x_.
However, there is no need to check. The next theorem shows that _f_ -^1 must be
equal to _g_.

**Theorem 5.3.5.** _Suppose f_ : _A_ → _B_ , _g_ : _B_ → _A_ , _g_ ◦ _f_ = _iA, and f_ ◦ _g_ = _iB.
Then g_ = _f_ -^1_.
Proof._ By Theorem 5.3.4, _f_ -^1 : _B_ → _A_. Therefore, by Theorem 5.3.2,
_f_ -^1 ◦ _f_ = _iA_. Thus,

```
g = iA ◦ g (exercise 9 of Section 4.3)
=( f -^1 ◦ f )◦ g
= f -^1 ◦( f ◦ g ) (Theorem 4. 2 .5)
= f -^1 ◦ iB
= f -^1 (exercise 9 of Section 4.3). 
```

_Commentary._ This proof gets the desired conclusion quickly by clever use of
previous theorems and exercises. For a more direct but somewhat longer proof,
see exercise 10.

**Example 5.3.6.** In each part, determine whether or not _f_ is one-to-one and
onto. If it is, find _f_ -^1.

1. Let _A_ =R\ { 0 }and _B_ =R\ { 2 }, and define _f_ : _A_ → _B_ by the formula

```
f ( x )=
```

#### 1

```
x
```

#### + 2

```
(Note that for all x ∈ A , 1 / x is defined and nonzero, so f ( x )=2 and
therefore f ( x )∈ B .)
```

2. Let _A_ =Rand _B_ = { _x_ ∈R| _x_ ≥ 0 }, and define _f_ : _A_ → _B_ by the formula

```
f ( x )= x^2.
```

_Solutions_

1. You can check directly that _f_ is one-to-one and onto, but we won’t bother
    to check. Instead, we’ll simply try to find a function _g_ : _B_ → _A_ such that
       _g_ ◦ _f_ = _iA_ and _f_ ◦ _g_ = _iB_. We know by Theorems 5.3.4 and 5.3.5 that if
    we find such a _g_ , then we can conclude that _f_ is one-to-one and onto and
       _g_ = _f_ -^1.

```
Inverses of Functions 251
Because we’re hoping to have g = f -^1 , we know that for any x ∈ B =
R\ { 2 }, g ( x ) must be the unique y ∈ A such that f ( y )= x. Thus, to find
a formula for g ( x ), we solve for y in the equation f ( y )= x. Filling in the
definition of f , we see that the equation we must solve is
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

#### 1

```
y
```

```
= x - 2 ⇒ y =
```

#### 1

```
x - 2
```

#### 

```
Thus, we define g : B → A by the formula
```

```
g ( x )=
```

#### 1

```
x - 2
```

#### 

```
Let’s check that g has the required properties. For any x ∈ A , we have
```

```
g ( f ( x ))= g
```

#### (

#### 1

```
x
```

#### + 2

#### )

#### =

#### 1

```
1 / x + 2 - 2
```

#### =

#### 1

```
1 / x
```

```
= x.
```

```
Thus, g ◦ f = iA. Similarly, for any x ∈ B ,
```

```
f ( g ( x ))= f
```

#### (

#### 1

```
x - 2
```

#### )

#### =

#### 1

```
1 /( x -2)
```

```
+ 2 = x - 2 + 2 = x ,
```

```
so f ◦ g = iB. Therefore, as we observed earlier, f must be one-to-one and
onto, and g = f -^1.
```

2. Imitating the solution to part 1, let’s try to find a function _g_ : _B_ → _A_ such
    that _g_ ◦ _f_ = _iA_ and _f_ ◦ _g_ = _iB_. Because applying _f_ to a number squares
    the number and we want _g_ to undo the effect of _f_ , a reasonable guess would
    be to let _g_ ( _x_ )=

#### √

```
x. Let’s see if this works.
For any x ∈ B we have
```

```
f ( g ( x ))= f (
```

#### √

```
x )=(
```

#### √

```
x )^2 = x ,
```

```
so f ◦ g = iB. But for x ∈ A we have
```

```
g ( f ( x ))= g ( x^2 )=
```

#### √

```
x^2 ,
```

```
and this is not always equal to x. For example, g ( f (-3))=
```

#### √

#### √ (-3)^2 =

```
9 = 3 = - 3. Thus, g ◦ f = iA. This example illustrates that you must
check both f ◦ g = iBand g ◦ f = iA. It is possible for one to work but
not the other.
```

252 _Functions_

```
What went wrong? We know that if f -^1 is a function from B to A , then
for any x ∈ B , f -^1 ( x ) must be the unique solution for y in the equation
f ( y )= x. Applying the definition of f gives us y^2 = x , so y = ±
```

#### √

```
x. Thus,
there is not a unique solution for y in the equation f ( y )= x , there are
two solutions. For example, when x =9 we get y = ± 3. In other words,
f (3)= f (-3)=9. But this means that f is not one-to-one!Thus, f -^1 is
not a function from B to A.
```

Functions that undo each other come up often in mathematics. For exam-
ple, if you are familiar with logarithms, then you will recognize the formulas
10 log _x_ = _x_ and log 10 _x_ = _x_. (We are using base 10 logarithms here.) We can
rephrase these formulas in the language of this section by defining functions
_f_ :R→R+and _g_ :R+→Ras follows:

```
f ( x )= 10 x , g ( x )=log x.
```

Then for any _x_ ∈Rwe have _g_ ( _f_ ( _x_ ))=log 10 _x_ = _x_ , and for any _x_ ∈R+,
_f_ ( _g_ ( _x_ ))= 10 log _x_ = _x_ .Thus, _g_ ◦ _f_ = _i_ Rand _f_ ◦ _g_ = _i_ R+,so _g_ = _f_ -^1 .Inother
words, the logarithm function is the inverse of the “raise 10 to the power”
function.
We saw another example of functions that undo each other in Section 4.6.
Suppose _A_ is any set, letEbe the set of all equivalence relations on _A_ , and let
Pbe the set of all partitions of _A_. Define a function _f_ :E→Pby the formula
_f_ ( _R_ )= _A_ / _R_ , and define another function _g_ :P→Eby the formula

```
g (F)=the equivalence relation determined byF
= ,
X ∈F
```

#### ( X × X )

You should verify that the proof of Theorem 4.6.6 shows that _f_ ◦ _g_ = _i_ P, and
exercise 9 in Section 4.6 shows that _g_ ◦ _f_ = _i_ E. Thus, _f_ is one-to-one and
onto, and _g_ = _f_ -^1. One interesting consequence of this is that if _A_ has a finite
number of elements, then we can say that the number of equivalence relations
on _A_ is exactly the same as the number of partitions of _A_ , even though we don’t
know what this number is.

```
Exercises
```

```
∗1. Let R be the function defined in exercise 2(c) of Section 5.1. In exercise
2 of Section 5.2, you showed that R is one-to-one and onto, so R -^1 :
P → P. If p ∈ P , what is R -^1 ( p )?
```

```
Inverses of Functions 253
```

2. Let _F_ be the function defined in exercise 4(b) of Section 5.1. In exercise
    4 of Section 5.2, you showed that _F_ is one-to-one and onto, so _F_ -^1 :
       _B_ → _B_. If _X_ ∈ _B_ , what is _F_ -^1 ( _X_ )?
∗3. Let _f_ :R→Rbe defined by the formula

```
f ( x )=
```

```
2 x + 5
3
```

#### 

```
Show that f is one-to-one and onto, and find a formula for f -^1 ( x ). (You
may want to imitate the method used in the example after Theorem 5.3.2,
or in Example 5.3.6.)
```

4. Let _f_ :R→Rbe defined by the formula _f_ ( _x_ )= 2 _x_^3 -3. Show that _f_
    is one-to-one and onto, and find a formula for _f_ -^1 ( _x_ ).
∗5. Let _f_ :R→R+be defined by the formula _f_ ( _x_ )= 102 - _x_. Show that _f_
is one-to-one and onto, and find a formula for _f_ -^1 ( _x_ ).
6. Let _A_ =R\ { 2 }, and let _f_ be the function with domain _A_ defined by the
    formula

```
f ( x )=
```

```
3 x
x - 2
```

#### 

```
(a) Show that f is a one-to-one, onto function from A to B for some set
B ⊆R. What is the set B?
(b) Find a formula for f -^1 ( x ).
```

7. In the example after Theorem 5.3.4, we had _f_ ( _x_ )= _x_ + 57 and found that
    _f_ -^1 ( _x_ )= 5 _x_ -7. Let _f_ 1 and _f_ 2 be functions fromRtoRdefined by the
formulas

```
f 1 ( x )= x + 7 , f 2 ( x )=
```

```
x
5
```

#### 

```
(a) Show that f = f 2 ◦ f 1.
(b) According to part 5 of Theorem 4.2.5, we must have f -^1 =( f 2 ◦
f 1 )-^1 =( f 1 )-^1 ◦( f 2 )-^1. Verify that this is true by computing ( f 1 )-^1 ◦
( f 2 )-^1 directly.
```

8. (a) Prove the second half of Theorem 5.3.2 by imitating the proof of the
    first half.
(b) Give an alternative proof of the second half of Theorem 5.3.2 by
_applying_ the first half to _f_ -^1.
∗9. Prove part 2 of Theorem 5.3.3.
10. Use the following strategy to give an alternative proof of Theorem 5.3.5:
Let ( _b_ , _a_ ) be an arbitrary element of _B_ × _A_. Assume ( _b_ , _a_ )∈ _g_ and prove
( _b_ , _a_ )∈ _f_ -^1. Then assume ( _b_ , _a_ )∈ _f_ -^1 and prove ( _b_ , _a_ )∈ _g_.

254 _Functions_
∗11. Suppose _f_ : _A_ → _B_ and _g_ : _B_ → _A_.

```
(a) Prove that if f is one-to-one and f ◦ g = iB , then g = f -^1.
(b) Prove that if f is onto and g ◦ f = iA , then g = f -^1.
(c) Prove that if f ◦ g = iB but g ◦ f = iA , then f is onto but not
one-to-one, and g is one-to-one but not onto.
```

12. Suppose _f_ : _A_ → _B_ and _f_ is one-to-one. Prove that there is some set
    _B_ ′⊆ _B_ such that _f_ -^1 : _B_ ′→ _A_.
13. Suppose _f_ : _A_ → _B_ and _f_ is onto. Let _R_ = { ( _x_ , _y_ )∈ _A_ × _A_ | _f_ ( _x_ )=
    _f_ ( _y_ )}. By exercise 17(a) of Section 5.1, _R_ is an equivalence relation
    on _A_.
    (a) Prove that there is a function _h_ : _A_ / _R_ → _B_ such that for all _x_ ∈ _A_ ,
       _h_ ([ _x_ ] _R_ )= _f_ ( _x_ ). (Hint: See exercise 18 of Section 5.1.)
(b) Prove that _h_ is one-to-one and onto. (Hint: See exercise 16 of Sec-
tion 5.2.)
    (c) It follows from part (b) that _h_ -^1 : _B_ → _A_ / _R_. Prove that for all _b_ ∈ _B_ ,
       _h_ -^1 ( _b_ )= { _x_ ∈ _A_ | _f_ ( _x_ )= _b_ }.
(d) Suppose _g_ : _B_ → _A_. Prove that _f_ ◦ _g_ = _iB_ iff∀ _b_ ∈ _B_ ( _g_ ( _b_ )∈ _h_ ( _b_ )).
∗14. Suppose _f_ : _A_ → _B_ , _g_ : _B_ → _A_ , and _f_ ◦ _g_ = _iB_. Let _A_ ′=Ran( _g_ )⊆ _A_.

```
(a) Prove that for all x ∈ A ′, ( g ◦ f )( x )= x.
(b) Prove that f  A ′is a one-to-one, onto function from A ′to B and
g =( f  A ′)-^1. (See exercise 7 of Section 5.1 for the meaning of the
notation used here.)
```

15. Let _B_ = { _x_ ∈R| _x_ ≥ 0 }. Let _f_ :R→ _B_ and _g_ : _B_ →Rbe defined by
    the formulas _f_ ( _x_ )= _x_^2 and _g_ ( _x_ )=

#### √

```
x. As we saw in part 2 of Exam-
ple 5.3.6, g = f -^1. Show that g =( f  B )-^1. (Hint: See exercise 14.)
```

∗16. Let _f_ :R→Rbe defined by the formula _f_ ( _x_ )= 4 _x_ - _x_ (^2). Let _B_ =
Ran( _f_ ).
(a) Find _B_.
(b) Find a set _A_ ⊆Rsuch that _f_  _A_ is a one-to-one, onto function from
_A_ to _B_ , and find a formula for ( _f_  _A_ )-^1. (Hint: See exercise 14.)

17. Let _A_ be any set. LetPbe the set of all partial orders on _A_ , and letSbe the
    set of all strict partial orders on _A_. In exercises 4 and 5 of Section 4.5 you
    showed that if _R_ ∈Pthen _R_ \ _iA_ ∈S, and if _R_ ∈Sthen _R_ , _iA_ ∈P.
    (Recall that we showed in the proof of Theorem 4.5.2 that _R_ , _iA_ is the
    reflexive closure of _R_ .) Let _f_ :P→Sand _g_ :S→Pbe defined by the
    formulas

```
f ( R )= R \ iA , g ( R )= R , iA.
```

```
Show that f is one-to-one and onto, and g = f -^1.
```

```
Images and Inverse Images: A Research Project 255
```

18. Suppose _A_ is a set, and letF= { _f_ | _f_ : _A_ → _A_ }andP= { _f_ ∈F| _f_
    is one-to-one and onto}. Define a relation _R_ onFas follows:

```
R = { ( f , g )∈F×F| ∃ h ∈P( f = h -^1 ◦ g ◦ h )}.
```

```
(a) Prove that R is an equivalence relation.
(b) Prove that if f Rg then ( f ◦ f ) R ( g ◦ g ).
(c) For any f ∈Fand a ∈ A , if f ( a )= a then we say that a is a fixed
point of f. Prove that if f has a fixed point and f Rg , then g also has
a fixed point.
```

## 5.4 Images and Inverse Images: A Research Project

Suppose _f_ : _A_ → _B_. We have already seen that we can think of _f_ as matching
each element of _A_ with exactly one element of _B_. In this section we will see
that _f_ can also be thought of as matching _subsets_ of A with subsets of _B_ and
vice-versa.

```
Definition 5.4.1. Suppose f : A → B and X ⊆ A. Then the image of X under
f is the set f ( X ) defined as follows:
f ( X )= { f ( x )| x ∈ X }
= { b ∈ B | ∃ x ∈ X ( f ( x )= b )}.
```

```
(Note that the image of the whole domain A under f is{ f ( a )| a ∈ A }, and as
we saw in Section 5.1 this is the same as the range of f .)
If Y ⊆ B , then the inverse image of Y under f is the set f -^1 ( Y ) defined as
follows:
f -^1 ( Y )= { a ∈ A | f ( a )∈ Y }.
```

```
Note that the function f in Definition 5.4.1 may fail to be one-to-one or
onto, and as a result f -^1 may not be a function from B to A , and for y ∈ B ,
the notation “ f -^1 ( y )” may be meaningless. However, even in this case Defini-
tion 5.4.1 still assigns a meaning to the notation “ f -^1 ( Y )” for Y ⊆ B. If you
find this surprising, look again at the definition of f -^1 ( Y ), and notice that it
does not treat f -^1 as a function. The definition refers only to the results of
applying f to elements of A , not the results of applying f -^1 to elements of B.
For example, let L be the function defined in part 3 of Example 5.1.2, which
assigns to each city the country in which that city is located. As in Exam-
ple 5.1.2, let C be the set of all cities and N the set of all countries. If B is the
```

256 _Functions_

set of all cities with population at least one million, then _B_ is a subset of _C_ , and
the image of _B_ under _L_ would be the set

```
L ( B )= { L ( b )| b ∈ B }
= { n ∈ N | ∃ b ∈ B ( L ( b )= n )}
= { n ∈ N |there is some city with population at least
one million that is located in the country n }.
```

Thus, _L_ ( _B_ ) is the set of all countries that contain a city with population at least
one million. Now let _A_ be the subset of _N_ consisting of all countries in Africa.
Then the inverse image of _A_ under _L_ is the set

```
L -^1 ( A )= { c ∈ C | L ( c )∈ A }
= { c ∈ C |the country in which c is located is in Africa}.
```

Thus, _L_ -^1 ( _A_ ) is the set of all cities in African countries.
Let’s do one more example. Let _f_ :R→Rbe defined by the formula
_f_ ( _x_ )= _x_^2 , and let _X_ = { _x_ ∈R| 0 ≤ _x_ < 2 }. Then

```
f ( X )= { f ( x )| x ∈ X } = { x^2 | 0 ≤ x < 2 }.
```

Thus, _f_ ( _X_ ) is the set of all squares of real numbers between 0 and 2 (includ-
ing 0 but not 2). A moment’s reflection should convince you that this set is
{ _x_ ∈R| 0 ≤ _x_ < 4 }. Now let’s let _Y_ = { _x_ ∈R| 0 ≤ _x_ < 4 } and compute
_f_ -^1 ( _Y_ ). According to the definition of inverse image,

```
f -^1 ( Y )= { x ∈R| f ( x )∈ Y }
= { x ∈R| 0 ≤ f ( x )< 4 }
= { x ∈R| 0 ≤ x^2 < 4 }
= { x ∈R| - 2 < x < 2 }.
```

By now you have had enough experience writing proofs that you should
be ready to put your proof-writing skills to work in answering mathematical
questions. Thus, most of this section will be devoted to a research project
in which you will discover for yourself the answers to basic mathematical
questions about images and inverse images. To get you started, we’ll work out
the answer to the first question.
Suppose _f_ : _A_ → _B_ , and _W_ and _X_ are subsets of _A_. A natural question you
might ask is whether or not _f_ ( _W_ + _X_ ) must be the same as _f_ ( _W_ )+ _f_ ( _X_ ). It
seems plausible that the answer is yes, so let’s see if we can prove it. Thus,
our goal will be to prove that _f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ). Because this is an

_Images and Inverse Images: A Research Project_ 257
equation between two sets, we proceed by taking an arbitrary element of each
set and trying to prove that it is an element of the other.
Suppose first that _y_ is an arbitrary element of _f_ ( _W_ + _X_ ). By the definition of
_f_ ( _W_ + _X_ ), this means that _y_ = _f_ ( _x_ ) for some _x_ ∈ _W_ + _X_. Since _x_ ∈ _W_ + _X_ ,
it follows that _x_ ∈ _W_ and _x_ ∈ _X_. But now we have _y_ = _f_ ( _x_ ) and _x_ ∈ _W_ , so we
can conclude that _y_ ∈ _f_ ( _W_ ). Similarly, since _y_ = _f_ ( _x_ ) and _x_ ∈ _X_ , it follows
that _y_ ∈ _f_ ( _X_ ). Thus, _y_ ∈ _f_ ( _W_ )+ _f_ ( _X_ ). This completes the first half of the
proof.
Now suppose that _y_ ∈ _f_ ( _W_ )+ _f_ ( _X_ ). Then _y_ ∈ _f_ ( _W_ ), so there is some
w∈ _W_ such that _f_ (w)= _y_ , and also _y_ ∈ _f_ ( _X_ ), so there is some _x_ ∈ _X_ such
that _y_ = _f_ ( _x_ ). If only we knew thatwand _x_ were equal, we could conclude
thatw= _x_ ∈ _W_ + _X_ , so _y_ = _f_ ( _x_ )∈ _f_ ( _W_ + _X_ ). But the best we can do is to
say that _f_ (w)= _y_ = _f_ ( _x_ ). This should remind you of the definition of one-
to-one. If we knew that _f_ was one-to-one, we could conclude from the fact
that _f_ (w)= _f_ ( _x_ ) thatw= _x_ , and the proof would be done. But without this
information we seem to be stuck.
Let’s summarize what we’ve discovered. First of all, the first half of the
proof worked fine, so we can certainly say that in general _f_ ( _W_ + _X_ )⊆
_f_ ( _W_ )+ _f_ ( _X_ ). The second half worked _if_ we knew that _f_ was one-to-one,
so we can also say that if _f_ is one-to-one, then _f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ).
But what if _f_ isn’t one-to-one? There might be some way of fixing up the
proof to show that the equation _f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ) is still true even if
_f_ isn’t one-to-one. But by now you have probably come to suspect that perhaps
_f_ ( _W_ + _X_ ) and _f_ ( _W_ )+ _f_ ( _X_ ) are not always equal, so maybe we should devote
some time to trying to show that the proposed theorem is incorrect. In other
words, let’s see if we can find a counterexample – an example of a function _f_
and sets _W_ and _X_ for which _f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ).
Fortunately, we can do better than just trying examples at random. Of course,
we know we’d better use a function that isn’t one-to-one, but by examining
our attempt at a proof, we can tell more than that. The attempted proof that
_f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ) ran into trouble only when _W_ and _X_ contained
elementswand _x_ such thatw= _x_ but _f_ (w)= _f_ ( _x_ ), so we should choose an
example in which this happens. In other words, not only should we make sure
_f_ isn’t one-to-one, we should also make sure _W_ and _X_ contain elements that
_show_ that _f_ isn’t one-to-one.
The graph in Figure 1 shows a simple function that isn’t one-to-one. Writ-
ing it as a set of ordered pairs, we could say _f_ = { (1,4),(2,5),(3,5)}, and
_f_ : _A_ → _B_ , where _A_ = { 1 , 2 , 3 }and _B_ = { 4 , 5 , 6 }. The two elements of _A_ that
showthat _f_ isnotone-to-oneare2and3,sotheseshouldbeelementsof _W_ and _X_ ,
respectively. Why not just try letting _W_ = { 2 }and _X_ = {^3 }? With these choices

258 _Functions_

```
Figure 1
```

we get _f_ ( _W_ )= { _f_ (2)} = { 5 }and _f_ ( _X_ )= { _f_ (3)} = { 5 }, so _f_ ( _W_ )+ _f_ ( _X_ )=
{ 5 } + { 5 } = { 5 }. But _f_ ( _W_ + _X_ )= _f_ (∅)=∅, so _f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ ).
(If you’re not sure why _f_ (∅)=∅, work it out using Definition 5.4.1!)
If you want to see an example in which _W_ + _X_ =∅, try _W_ = { 1 , 2 }and
_X_ = { 1 , 3 }.
This example shows that it would be incorrect to state a theorem saying that
_f_ ( _W_ + _X_ ) and _f_ ( _W_ )+ _f_ ( _X_ ) are always equal. But our proof shows that the
following theorem is correct:

**Theorem 5.4.2.** _Suppose f_ : _A_ → _B_ , _and W and X are subsets of A.
Then f_ ( _W_ + _X_ )⊆ _f_ ( _W_ )+ _f_ ( _X_ )_. Furthermore, if f is one-to-one, then
f_ ( _W_ + _X_ )= _f_ ( _W_ )+ _f_ ( _X_ )_._

Now, here are some questions for you to try to answer. In each case, try to
figure out as much as you can. Justify your answers with proofs and counterex-
amples.
Suppose _f_ : _A_ → _B_.

1. Suppose _W_ and _X_ are subsets of _A_.
    (a) Will it always be true that _f_ ( _W_ , _X_ )= _f_ ( _W_ ), _f_ ( _X_ )?
    (b) Will it always be true that _f_ ( _W_ \ _X_ )= _f_ ( _W_ )\ _f_ ( _X_ )?
    (c) Will it always be true that _W_ ⊆ _X_ ↔ _f_ ( _W_ )⊆ _f_ ( _X_ )?
2. Suppose that _Y_ and _Z_ are subsets of _B_.
    (a) Will it always be true that _f_ -^1 ( _Y_ + _Z_ )= _f_ -^1 ( _Y_ )+ _f_ -^1 ( _Z_ )?
    (b) Will it always be true that _f_ -^1 ( _Y_ , _Z_ )= _f_ -^1 ( _Y_ ), _f_ -^1 ( _Z_ )?
    (c) Will it always be true that _f_ -^1 ( _Y_ \ _Z_ )= _f_ -^1 ( _Y_ )\ _f_ -^1 ( _Z_ )?
    (d) Will it always be true that _Y_ ⊆ _Z_ ↔ _f_ -^1 ( _Y_ )⊆ _f_ -^1 ( _Z_ )?

```
Images and Inverse Images: A Research Project 259
```

3. Suppose _X_ ⊆ _A_. Will it always be true that _f_ -^1 ( _f_ ( _X_ ))= _X_?
4. Suppose _Y_ ⊆ _B_. Will it always be true that _f_ ( _f_ -^1 ( _Y_ ))= _Y_?
5. Suppose _g_ : _B_ → _C_. Can you prove any interesting theorems about images
    and inverse images of sets under _g_ ◦ _f_?
Note: An observant reader may have noticed an ambiguity in our notation
for images and inverse images. If _f_ : _A_ → _B_ and _Y_ ⊆ _B_ , then we have used
the notation _f_ -^1 ( _Y_ ) to stand for the inverse image of _Y_ under _f_. But if _f_ is
one-to-one and onto, then, as we saw in Section 5.3, _f_ -^1 is a function from
_B_ to _A_. Thus, _f_ -^1 ( _Y_ ) could also be interpreted as the image of _Y_ under the
function _f_ -^1. Fortunately, this ambiguity is harmless, as the next problem
shows.
6. Suppose _f_ : _A_ → _B_ , _f_ is one-to-one and onto, and _Y_ ⊆ _B_. Show that the
inverse image of _Y_ under _f_ and the image of _Y_ under _f_ -^1 are equal. (Hint:
First write out the definitions of the two sets carefully!)

## 6 Mathematical Induction

## 6.1 Proof by Mathematical Induction

In Chapter 3 we studied proof techniques that could be used in reasoning about
any mathematical topic. In this chapter we’ll discuss one more proof technique,
called _mathematical induction_ , that is designed for proving statements about
what is perhaps the most fundamental of all mathematical structures, the natural
numbers. Recall that the set of all natural numbers isN= { 0 , 1 , 2 , 3 ,... }.
Suppose you want to prove that every natural number has some property
_P_. In other words, you want to show that 0, 1 , 2 ,... all have the property _P_.
Of course, there are infinitely many numbers in this list, so you can’t check
one-by-one that they all have property _P_. The key idea behind mathematical
induction is that to list all the natural numbers all you have to do is start with
0 and repeatedly add 1. Thus, you can show that every natural number has
the property _P_ by showing that 0 has property _P_ , and that whenever you add
1 to a number that has property _P_ , the resulting number also has property _P_.
This would guarantee that, as you go through the list of all natural numbers,
starting with 0 and repeatedly adding 1, every number you encounter must have
property _P_. In other words, all natural numbers have property _P_. Here, then, is
how the method of mathematical induction works.

**To prove a goal of the form** ∀ _n_ ∈N _P_ ( _n_ ) **:**
First prove _P_ (0), and then prove∀ _n_ ∈N( _P_ ( _n_ )→ _P_ ( _n_ +1)). The first of
these proofs is sometimes called the _base case_ and the second the _induction
step_.

_Form of the final proof:_

```
Base case: [Proof of P (0) goes here.]
Induction step: [Proof of∀ n ∈N( P ( n )→ P ( n +1)) goes here.]
260
```

_Proof by Mathematical Induction_ 261
We’ll say more about the justification of the method of mathematical induc-
tion later, but first let’s look at an example of a proof that uses mathematical
induction. The following list of calculations suggests a surprising pattern:

```
20 = 1 = 21 - 1
20 + 21 = 1 + 2 = 3 = 22 - 1
20 + 21 + 22 = 1 + 2 + 4 = 7 = 23 - 1
20 + 21 + 22 + 23 = 1 + 2 + 4 + 8 = 15 = 24 - 1
```

The general pattern appears to be:

```
20 + 21 + · · · + 2 n = 2 n +^1 - 1.
```

Will this pattern hold for all values of _n_? Let’s see if we can prove it.

**Example 6.1.1.** Prove that for every natural number _n_ , 20 + 21 + · · · + 2 _n_ =
2 _n_ +^1 -1.

_Scratch work_

Our goal is to prove the statement∀ _n_ ∈N _P_ ( _n_ ), where _P_ ( _n_ ) is the statement
20 + 21 + · · · + 2 _n_ = 2 _n_ +^1 -1. According to our strategy, we can do this by
proving two other statements, _P_ (0) and∀ _n_ ∈N( _P_ ( _n_ )→ _P_ ( _n_ +1)).
Plugging in 0 for _n_ , we see that _P_ (0) is simply the statement 2^0 = 21 -1,
the first statement in our list of calculations. The proof of this is easy – just do
the arithmetic to verify that both sides are equal to 1. Often the base case of an
induction proof is very easy, and the only hard work in figuring out the proof
is in carrying out the induction step.
For the induction step, we must prove ∀ _n_ ∈N( _P_ ( _n_ )→ _P_ ( _n_ +1)). Of
course, all of the proof techniques discussed in Chapter 3 can be used in
mathematical induction proofs, so we can do this by letting _n_ be an arbitrary
natural number, assuming that _P_ ( _n_ ) is true, and then proving that _P_ ( _n_ +1) is
true. In other words, we’ll let _n_ be an arbitrary natural number, assume that
20 + 21 + · · · + 2 _n_ = 2 _n_ +^1 -1, and then prove that 2^0 + 21 + · · · + 2 _n_ +^1 =
2 _n_ +^2 -1. This gives us the following givens and goal:

_Givens Goal
n_ ∈N 20 + 21 + · · · + 2 _n_ +^1 = 2 _n_ +^2 - 1
20 + 21 + · · · + 2 _n_ = 2 _n_ +^1 - 1
Clearly the second given is similar to the goal. Is there some way to start
with the second given and derive the goal using algebraic steps? The key to the

262 _Mathematical Induction_

proof is to recognize that the left side of the equation in the goal is exactly the
same as the left side of the second given, but with the extra term 2 _n_ +^1 added
on. So let’s try adding 2 _n_ +^1 to both sides of the second given.
This gives us

```
(2^0 + 21 + · · · + 2 n )+ 2 n +^1 =(2 n +^1 -1)+ 2 n +^1 ,
```

or in other words,

```
20 + 21 + · · · + 2 n +^1 = 2 · 2 n +^1 - 1 = 2 n +^2 - 1.
```

This is the goal, so we are done!

_Solution_

**Theorem.** _For every natural number n_ , 20 + 21 + · · · + 2 _n_ = 2 _n_ +^1 - 1_.
Proof._ We use mathematical induction.
Base case: Setting _n_ =0, we get 2^0 = 1 = 21 -1 as required.
Induction step: Let _n_ be an arbitrary natural number and suppose that
20 + 21 + · · · + 2 _n_ = 2 _n_ +^1 -1. Then

```
20 + 21 + · · · + 2 n +^1 =(2^0 + 21 + · · · + 2 n )+ 2 n +^1
=(2 n +^1 -1)+ 2 n +^1
= 2 · 2 n +^1 - 1
= 2 n +^2 - 1. 
```

Does the proof in Example 6.1.1 convince you that the equation 2^0 + 21 +
· · · + 2 _n_ = 2 _n_ +^1 -1, which we called _P_ ( _n_ ) in our scratch work, is true for
all natural numbers _n_? Well, certainly _P_ (0) is true, since we checked that
explicitly in the base case of the proof. In the induction step we showed
that∀ _n_ ∈N( _P_ ( _n_ )→ _P_ ( _n_ +1)), so we know that for every natural number
_n_ , _P_ ( _n_ )→ _P_ ( _n_ +1). For example, plugging in _n_ =0 we can conclude that
_P_ (0)→ _P_ (1). But now we know that both _P_ (0) and _P_ (0)→ _P_ (1) are true, so
applying modus ponens we can conclude that _P_ (1) is true too. Similarly, plug-
ging in _n_ =1 in the induction step we get _P_ (1)→ _P_ (2), so applying modus
ponens to the statements _P_ (1) and _P_ (1)→ _P_ (2) we can conclude that _P_ (2)
is true. Setting _n_ =2 in the induction step we get _P_ (2)→ _P_ (3), so by modus
ponens, _P_ (3) is true. Continuing in this way, you should be able to see that by
repeatedly applying the induction step you can show that _P_ ( _n_ ) must be true
for every natural number _n_. In other words, the proof really does show that
∀ _n_ ∈N _P_ ( _n_ ).

_Proof by Mathematical Induction_ 263
As we saw in the last example, the hardest part of a proof by mathematical
induction is usually the induction step, in which you must prove the statement
∀ _n_ ∈N( _P_ ( _n_ )→ _P_ ( _n_ +1)). It is usually best to do this by letting _n_ be an
arbitrary natural number, assuming _P_ ( _n_ ) is true, and then proving that _P_ ( _n_ +1)
is true. The assumption that _P_ ( _n_ ) is true is sometimes called the _inductive
hypothesis_ , and the key to the proof is usually to work out some relationship
between the inductive hypothesis _P_ ( _n_ ) and the goal _P_ ( _n_ +1).
Here’s another example of a proof by mathematical induction.

**Example 6.1.2.** Prove that∀ _n_ ∈N(3|( _n_^3 - _n_ )).

_Scratch work_

As usual, the base case is easy to check. The details are given in the following
proof. For the induction step, we let _n_ be an arbitrary natural number and assume
that 3|( _n_^3 - _n_ ), and we must prove that 3|(( _n_ +1)^3 -( _n_ +1)). Filling in the
definition of _divides_ , we can sum up our situation as follows:

```
Givens Goal
n ∈N ∃ j ∈Z(3 j =( n +1)^3 -( n +1))
∃ k ∈Z(3 k = n^3 - n )
```

The second given is the inductive hypothesis, and we need to figure out how it
can be used to establish the goal.
According to our techniques for dealing with existential quantifiers in proofs,
the best thing to do first is to use the second given and let _k_ stand for a par-
ticular integer such that 3 _k_ = _n_^3 - _n_. To complete the proof we’ll need to
find an integer _j_ (which will probably be related to _k_ in some way) such that
3 _j_ =( _n_ +1)^3 -( _n_ +1). We expand the right side of this equation, looking
for some way to relate it to the given equation 3 _k_ = _n_^3 - _n_ :

```
( n +1)^3 -( n +1)= n^3 + 3 n^2 + 3 n + 1 - n - 1
=( n^3 - n )+ 3 n^2 + 3 n
= 3 k + 3 n^2 + 3 n
=3( k + n^2 + n ).
```

Itshouldnowbeclearthatwecancompletetheproofbyletting _j_ = _k_ + _n_^2 + _n_.
As in similar earlier proofs, we don’t bother to mention _j_ in the proof.

_Solution_

**Theorem.** _For every natural number n_ , 3 |( _n_^3 - _n_ )_.
Proof._ We use mathematical induction.

264 _Mathematical Induction_

Base case: If _n_ =0, then _n_^3 - _n_ = 0 = 3 ·0, so 3|( _n_^3 - _n_ ).
Induction step: Let _n_ be an arbitrary natural number and suppose 3|( _n_^3 - _n_ ).
Then we can choose an integer _k_ such that 3 _k_ = _n_^3 - _n_. Thus,

```
( n +1)^3 -( n +1)= n^3 + 3 n^2 + 3 n + 1 - n - 1
=( n^3 - n )+ 3 n^2 + 3 n
= 3 k + 3 n^2 + 3 n
=3( k + n^2 + n ).
```

Therefore 3|(( _n_ +1)^3 -( _n_ +1)), as required. 

Once you understand why mathematical induction works, you should be able
to understand proofs that involve small variations on the method of induction.
The next example illustrates such a variation. In this example we’ll try to figure
out which is larger, _n_^2 or 2 _n_. Let’s try out a few values of _n_ :

```
n n^22 n Which is larger?
0 0 1 2 n
1 1 2 2 n
2 4 4 tie
3 9 8 n^2
4 16 16 tie
5 25 32 2 n
6 36 64 2 n
```

It’s a close race at first, but starting with _n_ =5, it looks like 2 _n_ is taking a de-
cisive lead over _n_^2. Can we prove that it will stay ahead for larger values
of _n_?

**Example 6.1.3.** Prove that∀ _n_ ≥5(2 _n_ > _n_^2 ).

_Scratch work_

We are only interested in proving the inequality 2 _n_ > _n_^2 for _n_ ≥5. Thus, it
would make no sense to use _n_ =0 in the base case of our induction proof. We’ll
take _n_ =5 as the base case for our induction rather than _n_ =0. Once we’ve
checked that the inequality holds when _n_ =5, the induction step will show that
the inequality must continue to hold if we repeatedly add 1 to _n_. Thus, it must
also hold for _n_ = 6 , 7 , 8 ,.... In other words, we’ll be able to conclude that the
inequality holds for all _n_ ≥5.

_Proof by Mathematical Induction_ 265
The base case _n_ =5 has already been checked in the table. For the induc-
tion step, we let _n_ ≥5 be arbitrary, assume 2 _n_ > _n_^2 , and try to prove that
2 _n_ +^1 >( _n_ +1)^2. How can we relate the inductive hypothesis to the goal?
Perhaps the simplest relationship involves the left sides of the two inequal-
ities: 2 _n_ +^1 = 2 · 2 _n_. Thus, multiplying both sides of the inductive hypothesis
2 _n_ > _n_^2 by 2, we can conclude that 2 _n_ +^1 > 2 _n_^2. Now compare this inequality
to the goal, 2 _n_ +^1 >( _n_ +1)^2. If we could prove that 2 _n_^2 ≥( _n_ +1)^2 , then the
goal would follow easily. So let’s forget about the original goal and see if we
can prove that 2 _n_^2 ≥( _n_ +1)^2.
Multiplying out the right side of the new goal we see that we must prove that
2 _n_^2 ≥ _n_^2 + 2 _n_ +1, or in other words _n_^2 ≥ 2 _n_ +1. This isn’t hard to prove:
Since we’ve assumed that _n_ ≥5, it follows that _n_^2 ≥ 5 _n_ = 2 _n_ + 3 _n_ > 2 _n_ +1.

_Solution_

**Theorem.** _For every natural number n_ ≥ 5 , 2 _n_ > _n_^2_.
Proof._ By mathematical induction.
Base case: When _n_ =5 we have 2 _n_ = 32 > 25 = _n_^2.
Induction step: Let _n_ ≥5 be arbitrary, and suppose that 2 _n_ > _n_^2. Then

```
2 n +^1 = 2 · 2 n
> 2 n^2 (by inductive hypothesis)
= n^2 + n^2
≥ n^2 + 5 n (since n ≥5)
= n^2 + 2 n + 3 n
> n^2 + 2 n + 1 =( n +1)^2. 
```

```
Exercises
```

```
∗1. Prove that for all n ∈N, 0 + 1 + 2 + · · · + n = n ( n +1)/2.
```

2. Prove that for all _n_ ∈N, 02 + 12 + 22 + · · · + _n_^2 = _n_ ( _n_ +1)(2 _n_ +1)/6.

∗3. Prove that for all _n_ ∈N, 03 + 13 + 23 + · · · + _n_ (^3) =[ _n_ ( _n_ +1)/2] (^2).

4. Find a formula for 1+ 3 + 5 + · · · + (2 _n_ -1), for _n_ ≥1, and prove that
    your formula is correct. (Hint: First try some particular values of _n_ and
    look for a pattern.)
5. Prove that for all _n_ ∈N, 0 · 1 + 1 · 2 + 2 · 3 + · · · + _n_ ( _n_ +1)=
    _n_ ( _n_ +1)( _n_ +2)/3.
6. Find a formula for 0· 1 · 2 + 1 · 2 · 3 + 2 · 3 · 4 + · · · + _n_ ( _n_ +1)( _n_ +2),
    for _n_ ∈N, and prove that your formula is correct. (Hint: Compare this
    exercise to exercises 1 and 5, and try to guess the formula.)

266 _Mathematical Induction_

∗7. Find a formula for 3 (^0) + 31 + 32 + · · · + 3 _n_ , for _n_ ≥0, and prove that your
formula is correct. (Hint: Try to guess the formula, basing your guess on
Example 6.1.1. Then try out some values of _n_ and adjust your guess if
necessary.)

8. Prove that for all _n_ ≥1,

#### 1 -

#### 1

#### 2

#### +

#### 1

#### 3

#### -

#### 1

#### 4

#### + · · · +

#### 1

```
2 n - 1
```

#### -

#### 1

```
2 n
=
```

#### 1

```
n + 1
```

#### +

#### 1

```
n + 2
```

#### +

#### 1

```
n + 3
```

#### + · · · +

#### 1

```
2 n
```

9. (a) Prove that all _n_ ∈N, 2 |( _n_^2 + _n_ ).
    (b) Prove that for all _n_ ∈N, 6 |( _n_^3 - _n_ ).
∗10. Prove that for all _n_ ∈N, 64 |(9 _n_ - 8 _n_ -1).
11. Prove that for all _n_ ∈N, 9 |(4 _n_ + 6 _n_ -1).
12. Prove that for all integers _a_ and _b_ and all _n_ ∈N,( _a_ - _b_ )|( _an_ - _bn_ ).
(Hint: Let _a_ and _b_ be arbitrary integers and then prove by induction
that∀ _n_ ∈N[( _a_ - _b_ )|( _an_ - _bn_ )]. For the induction step, you must relate
_an_ +^1 - _bn_ +^1 to _an_ - _bn_. You might find it useful to start by completing
the following equation: _an_ +^1 - _bn_ +^1 = _a_ ( _an_ - _bn_ )+ ?.)
13. Prove that for all integers _a_ and _b_ and all _n_ ∈N, ( _a_ + _b_ )|( _a_^2 _n_ +^1 + _b_^2 _n_ +^1 ).

∗14. Prove that for all _n_ ≥ 10 , 2 _n_ > _n_ (^3).

15. Prove that for all _n_ ∈N, either _n_ ≡0 (mod 3) or _n_ ≡1 (mod 3) or _n_ ≡ 2
    (mod 3). (Recall that this notation was introduced in Definition 4.6.9.)
16. Prove that for all _n_ ≥1, 2· 21 + 3 · 22 + 4 · 23 + · · · + ( _n_ +1)2 _n_ =
    _n_ 2 _n_ +^1.
17. (a) What’s wrong with the following proof that for all _n_ ∈N, 1 · 30 +
    3 · 31 + 5 · 32 + · · · + (2 _n_ +1)3 _n_ = _n_ 3 _n_ +^1?

```
Proof. We use mathematical induction. Let n be an arbitrary
natural number, and suppose that 1· 30 + 3 · 31 + 5 · 32 + · · · +
(2 n +1)3 n = n 3 n +^1. Then
```

```
1 · 30 + 3 · 31 + 5 · 32 + · · · + (2 n +1)3 n +(2 n +3)3 n +^1
= n 3 n +^1 +(2 n +3)3 n +^1
= (3 n +3)3 n +^1
= ( n +1)3 n +^2 ,
```

```
as required. 
```

```
(b) Find a formula for 1· 30 + 3 · 31 + 5 · 32 + · · · + (2 n +1)3 n , and
prove that your formula is correct.
```

```
More Examples 267
```

18. Suppose _a_ is a real number and _a_ <0. Prove that for all _n_ ∈N, if _n_ is
    even then _an_ >0, and if _n_ is odd then _an_ <0.
∗19. Suppose _a_ and _b_ are real numbers and 0< _a_ < _b_.
(a) Prove that for all _n_ ≥1, 0< _an_ < _bn_. (Notice that this generalizes
Theorem 3.1.2.)
(b) Prove that for all _n_ ≥2, 0< _n_

#### √

```
a < n
```

#### √

```
b.
(c) Prove that for all n ≥1, abn + ban < an +^1 + bn +^1.
(d) Prove that for all n ≥2,
(
a + b
2
```

```
) n
<
```

```
an + bn
2
```

## 6.2 More Examples

```
We introduced mathematical induction in the last section as a method for prov-
ing that all natural numbers have some property. However, the applications of
mathematical induction extend far beyond the study of the natural numbers. In
this section we’ll look at some examples of proofs by mathematical induction
that illustrate the wide range of uses of induction.
```

```
Example 6.2.1. Suppose R is a partial order on a set A. Prove that every finite,
nonempty set B ⊆ A has an R -minimal element.
```

```
Scratch work
```

You might think at first that mathematical induction is not appropriate for this
proof, because the goal doesn’t seem to have the form∀ _n_ ∈N _P_ ( _n_ ). In fact,
the goal doesn’t explicitly mention natural numbers at all!But we can see that
natural numbers enter into the problem when we recognize that to say that _B_
is finite and nonempty means that it has _n_ elements, for some _n_ ∈N, _n_ ≥1.
(We’ll give a more careful definition of the number of elements in a finite set
in Chapter 7. For the moment, an intuitive understanding of this concept will
suffice.) Thus, the goal means∀ _n_ ≥ 1 ∀ _B_ ⊆ _A_ ( _B_ has _n_ elements→ _B_ has a
minimal element). We can now use induction to prove this statement.
In the base case we will have _n_ =1, so we must prove that if _B_ has one
element, then it has a minimal element. It is easy to check that in this case the
one element of _B_ must be minimal.
For the induction step we let _n_ ≥1 be arbitrary, assume that∀ _B_ ⊆ _A_ ( _B_ has
_n_ elements→ _B_ has a minimal element), and try to prove that∀ _B_ ⊆ _A_ ( _B_ has
_n_ +1 elements→ _B_ has a minimal element).Guided by the form of the goal,
we let _B_ be an arbitrary subset of _A_ , assume that _B_ has _n_ +1 elements, and try
to prove that _B_ has a minimal element.

268 _Mathematical Induction_

How can we use the inductive hypothesis to reach our goal? The inductive
hypothesis tells us that if we had a subset of _A_ with _n_ elements, then it would
have a minimal element. To apply it, we need to find a subset of _A_ with _n_
elements. Our arbitrary set _B_ is a subset of _A_ , and we have assumed that it has
_n_ +1 elements. Thus, a simple way to produce a subset of _A_ with _n_ elements
would be to remove one element from _B_. It is not clear where this reasoning
will lead, but it seems to be the simplest way to make use of the inductive
hypothesis. Let’s give it a try.
Let _b_ be any element of _B_ , and let _B_ ′= _B_ \ { _b_ }. Then _B_ ′is a subset of _A_
with _n_ elements, so by the inductive hypothesis, _B_ ′has a minimal element.
This is an existential statement, so we immediately introduce a new variable,
say _c_ , to stand for a minimal element of _B_ ′.
Our goal is to prove that _B_ has a minimal element, which is also an existential
statement, so we should try to come up with a minimal element of _B_. We only
know about two elements of _B_ at this point, _b_ and _c_ , so we should probably
try to prove that one of these is a minimal element of _B_. Which one? Well,
it may depend on whether one of them is smaller than the other according to
the partial order _R_. This suggests that we may need to use proof by cases. In
our proof we use the cases _bRc_ andnot  _bRc_. In the first case we prove that _b_ is
a minimal element of _B_ , and in the second case we prove that _c_ is a minimal
element of _B_. Note that to say that something is a minimal element of _B_ is a
negative statement, so in both cases we use proof by contradiction.

_Solution_

**Theorem.** _Suppose R is a partial order on a set A. Then every finite, nonempty
set B_ ⊆ _A has an R-minimal element.
Proof._ We will show by induction that for every natural number _n_ ≥1, every
subset of _A_ with _n_ elements has a minimal element.
Base case: _n_ =1. Suppose _B_ ⊆ _A_ and _B_ has one element. Then _B_ = { _b_ }for
some _b_ ∈ _A_. Clearlynot ∃ _x_ ∈ _B_ ( _x_ = _b_ ), so certainlynot ∃ _x_ ∈ _B_ ( _x Rb_ and  _x_ = _b_ ).
Thus, _b_ is minimal.
Induction step: Suppose _n_ ≥1, and suppose that every subset of _A_ with _n_
elements has a minimal element. Now let _B_ be an arbitrary subset of _A_ with
_n_ +1 elements. Let _b_ be any element of _B_ , and let _B_ ′= _B_ \ { _b_ }, a subset of _A_
with _n_ elements. By inductive hypothesis, we can choose a minimal element
_c_ ∈ _B_ ′.
_Case 1. bRc_. We claim that _b_ is a minimal element of _B_. To see why,
suppose it isn’t. Then we can choose some _x_ ∈ _B_ such that _x Rb_ and _x_ = _b_.
Since _x_ = _b_ , _x_ ∈ _B_ ′. Also, since _x Rb_ and _bRc_ , by transitivity of _R_ it follows
that _x Rc_. Thus, since _c_ is a minimal element of _B_ ′, we must have _x_ = _c_. But
then since _x Rb_ we have _cRb_ , and we also know _bRc_ , so by antisymmetry of _R_

```
More Examples 269
it follows that b = c. This is clearly impossible, since c ∈ B ′= B \ { b }. Thus,
b must be a minimal element of B.
Case 2 .not  bRc. We claim in this case that c is a minimal element of B. To
see why, suppose it isn’t. Then we can choose some x ∈ B such that x Rc
and x = c. Since c is a minimal element of B ′, we can’t have x ∈ B ′, so the
only other possibility is x = b. But then since x Rc we must have bRc , which
contradicts our assumption thatnot  bRc. Thus, c is a minimal element of B. 
```

```
Note that an infinite subset of a partially ordered set need not have a minimal
element, as we saw in part 1 of Example 4.4.5. Thus, the assumption that B is
finite was needed in our last theorem. This theorem can be used to prove another
interesting fact about partial orders, again using mathematical induction:
```

```
Example 6.2.2. Suppose A is a finite set and R is a partial order on A. Prove
that R can be extended to a total order on A. In other words, prove that there
is a total order T on A such that R ⊆ T.
```

_Scratch work_

We’ll only outline the proof, leaving many details as exercises. The idea is
to prove by induction that∀ _n_ ∈N∀ _A_ ∀ _R_ [( _A_ has _n_ elements and _R_ is a partial
order on _A_ )→ ∃ _T_ ( _T_ is a total order on _A_ and _R_ ⊆ _T_ )]. The induction step is
similar to the induction step of the last example. If _R_ is a partial order on a set _A_
with _n_ +1 elements, then we remove one element, call it _a_ , from _A_ , and apply
the inductive hypothesis to the remaining set _A_ ′= _A_ \ { _a_ }. This will give us
a total order _T_ ′on _A_ ′, and to complete the proof we must somehow turn this
into a total order _T_ on _A_ such that _R_ ⊆ _T_. The relation _T_ ′already tells us how
to compare any two elements of _A_ ′, but it doesn’t tell us how to compare _a_
to the elements of _A_ ′. This is what we must decide in order to define _T_ , and
the main difficulty in this step of the proof is that we must make this decision
in such a way that we end up with _R_ ⊆ _T_. Our resolution of this difficulty in
the following proof involves choosing _a_ carefully in the first place. We choose
_a_ to be an _R_ -minimal element of _A_ , and then when we define _T_ , we make _a_
smaller in the _T_ ordering than every element of _A_ ′. We use the theorem in the
last example, with _B_ = _A_ , to guarantee that _A_ has an _R_ -minimal element.

```
Solution
```

```
Theorem. Suppose A is a finite set and R is a partial order on A. Then there
is a total order T on A such that R ⊆ T.
Proof. We will show by induction on n that every partial order on a set with
n elements can be extended to a total order. Clearly this suffices to prove the
theorem.
```

270 _Mathematical Induction_

Base case: _n_ =0. Suppose _R_ is a partial order on _A_ and _A_ has 0 elements.
Then clearly _A_ = _R_ =∅. It is easy to check that∅is a total order on _A_ , so
we are done.
Induction step: Let _n_ be an arbitrary natural number, and suppose that
every partial order on a set with _n_ elements can be extended to a total or-
der. Now suppose that _A_ has _n_ +1 elements and _R_ is a partial order on _A_. By
the theorem in the last example, there must be some _a_ ∈ _A_ such that _a_ is an
_R_ -minimal element of _A_. Let _A_ ′= _A_ \ { _a_ }and let _R_ ′= _R_ +( _A_ ′× _A_ ′). You
are asked to show in exercise 1 that _R_ ′is a partial order on _A_ ′. By inductive
hypothesis, we can let _T_ ′be a total order on _A_ ′such that _R_ ′⊆ _T_ ′. Now let
_T_ = _T_ ′,({ _a_ } × _A_ ). You are also asked to show in exercise 1 that _T_ is a total
order on _A_ and _R_ ⊆ _T_ , as required. 

The theorem in the last example can be extended to apply to partial orders
on infinite sets. For a step in this direction, see exercise 17 in Section 7.1.

**Example 6.2.3.** Prove that for all _n_ ≥3, if _n_ distinct points on a circle are
connected in consecutive order with straight lines, then the interior angles of
the resulting polygon add up to ( _n_ -2)180◦.

_Solution_

Figure 1 shows an example with _n_ =4. We won’t give the scratch work
separately for this proof.

**Theorem.** _For all n_ ≥ 3 _, if n distinct points on a circle are connected in consec-
utive order with straight lines, then the interior angles of the resulting polygon
add up to_ ( _n_ -2)180◦_.
Proof._ We use induction on _n_.
Base case: Suppose _n_ =3. Then the polygon is a triangle, and it is well
known that the interior angles of a triangle add up to 180◦.
Induction step: Let _n_ be an arbitrary natural number, _n_ ≥3, and assume the
statement is true for _n_. Now consider the polygon _P_ formed by connecting
some _n_ +1 distinct points _A_ 1 , _A_ 2 ,... , _An_ + 1 on a circle. If we skip the last
point _An_ + 1 , then we get a polygon _P_ ′with only _n_ vertices, and by inductive
hypothesis the interior angles of this polygon add up to ( _n_ -2)180◦. But now
as you can see in Figure 2, the sum of the interior angles of _P_ is equal to the sum
of the interior angles of _P_ ′plus the sum of the interior angles of the triangle
_A_ 1 _AnAn_ + 1. Since the sum of the interior angles of the triangle is 180◦, we can
conclude that the sum of the interior angles of _P_ is

```
( n -2)180◦+ 180 ◦=(( n +1)-2)180◦,
```

as required. 

```
More Examples 271
```

```
Figure 1
```

```
Figure 2
```

**Example 6.2.4.** Prove that for any positive integer _n_ , a 2 _n_ × 2 _n_ square grid
with any one square removed can be covered with L-shaped tiles that look like:
this:

_Scratch work_

Figure 3 shows an example for the case _n_ =2. In this case 2 _n_ =4, so we have
a 4 ×4 grid, and the square that has been removed is shaded. The heavy lines
show how the remaining squares can be covered with five L-shaped tiles.

272 _Mathematical Induction_

We’ll use induction in our proof, and because we’re only interested in pos-
itive _n_ , the base case will be _n_ =1. In this case we have a 2×2 grid with
one square removed, and this can clearly be covered with one L-shaped tile.
(Draw a picture!)

```
Figure 3
```

For the induction step, we let _n_ be an arbitrary positive integer and assume
that a 2 _n_ × 2 _n_ grid with any one square removed can be covered with L-shaped
tiles. Now suppose we have a 2 _n_ +^1 × 2 _n_ +^1 grid with one square removed. To
use our inductive hypothesis we must somehow relate this to the 2 _n_ × 2 _n_ grid.
Since 2 _n_ +^1 = 2 _n_ ·2, the 2 _n_ +^1 × 2 _n_ +^1 grid is twice as wide and twice as high as
the 2 _n_ × 2 _n_ grid. In other words, by dividing the 2 _n_ +^1 × 2 _n_ +^1 grid in half both
horizontally and vertically, we can split it into four 2 _n_ × 2 _n_ “subgrids.” This is
illustrated in Figure 4. The one square that has been removed will be in one of
the four subgrids; in Figure 4, it is in the upper right.
The inductive hypothesis tells us that it is possible to cover the upper right
subgrid in Figure 4 with L-shaped tiles. But what about the other three subgrids?
It turns out that there is a clever way of placing one tile on the grid so that the
inductive hypothesis can then be used to show that the remaining subgrids
can be covered. See if you can figure it out before reading the answer in the
following proof.

```
Figure 4
```

_More Examples_ 273
_Solution_
**Theorem.** _For any positive integer n, a_ 2 _n_ × 2 _n square grid with any one
square removed can be covered with L-shaped tiles.
Proof._ We use induction on _n_.
Base case: Suppose _n_ =1. Then the grid is a 2×2 grid with one square
removed, which can clearly be covered with one L-shaped tile.
Induction step: Let _n_ be an arbitrary positive integer, and suppose that a
2 _n_ × 2 _n_ grid with any one square removed can be covered with L-shaped tiles.
Now consider a 2 _n_ +^1 × 2 _n_ +^1 grid with one square removed. Cut the grid in half
both vertically and horizontally, splitting it into four 2 _n_ × 2 _n_ subgrids. The
one square that has been removed comes from one of these subgrids, so by the
inductive hypothesis the rest of this subgrid can be covered with L-shaped tiles.
To cover the other three subgrids, first place one L-shaped tile in the center so
that it covers one square from each of the three remaining subgrids, as illustrated
in Figure 5. The area remaining to be covered now contains every square except
one in each of the subgrids, so by applying the inductive hypothesis to each
subgrid we can see that this area can be covered with tiles. 

```
Figure 5
```

```
It is interesting to note that this proof can actually be used to figure out how
to place tiles on a particular grid. For example, consider the 8×8 grid with
one square removed shown in Figure 6.
According to the preceding proof, the first step in covering this grid with tiles
is to split it into four 4×4 subgrids and place one tile in the center, covering one
square from each subgrid except the upper left. This is illustrated in Figure 7.
The area remaining to be covered now consists of four 4×4 subgrids with one
square removed from each of them.
How do we cover the remaining 4×4 subgrids? By the same method, of
course!For example, let’s cover the subgrid in the upper right of Figure 7. We
need to cover every square of this subgrid except the lower left corner, which
has already been covered. We start by cutting it into four 2×2 subgrids and
```

274 _Mathematical Induction_

```
Figure 6
```

put one tile in the middle, as in Figure 8. The area remaining to be covered
now consists of four 2×2 subgrids with one square removed from each. Each
of these can be covered with one tile, thus completing the upper right subgrid
of Figure 7.

```
Figure 7
```

```
Figure 8
```

The remaining three quarters of Figure 7 are completed by a similar proce-
dure. The final solution is shown in Figure 9.
The method we used in solving this problem is an example of a _recursive_
procedure.Wesolvedtheproblemforan8×8gridbysplittingitintofour4× 4
grid problems. To solve each of these, we split it into four 2×2 problems, each

```
More Examples 275
```

```
Figure 9
```

of which was easy to solve. If we had started with a larger grid, we might have
had to repeat the splitting many times before reaching easy 2×2 problems.
Recursion and its relationship to mathematical induction is the subject of our
next section.

```
Exercises
```

```
∗1. Complete the proof in Example 6.2.2 by doing the following proofs. (We
use the same notation here as in the example.)
(a) Prove that R ′is a partial order on A ′.
(b) Prove that T is a total order on A and R ⊆ T.
```

2. Suppose _R_ is a partial order on a set _A_ , _B_ ⊆ _A_ , and _B_ is finite. Prove
    that there is a partial order _T_ on _A_ such that _R_ ⊆ _T_ and∀ _x_ ∈ _B_ ∀ _y_ ∈
       _A_ ( _xT y_ or  _yT x_ ). Note that, in particular, if _A_ is finite we can let _B_ = _A_ ,
    and the conclusion then means that _T_ is a total order on _A_. Thus, this
    gives an alternative approach to the proof of the theorem in Example
    6.2.2. (Hint: Use induction on the number of elements in _B_. For the
    induction step, assume the conclusion holds for any set _B_ ⊆ _A_ with _n_
    elements, and suppose _B_ is a subset of _A_ with _n_ +1 elements. Let _b_ be
    any element of _B_ and let _B_ ′= _B_ \ { _b_ }, a subset of _A_ with _n_ elements. By
    inductive hypothesis, let _T_ ′be a partial order on _A_ such that _R_ ⊆ _T_ ′
    and∀ _x_ ∈ _B_ ′∀ _y_ ∈ _A_ ( _xT_ ′ _y_ or  _yT_ ′ _x_ ). Now let _A_ 1 = { _x_ ∈ _A_ | _xT_ ′ _b_ }and
       _A_ 2 = _A_ \ _A_ 1 , and let _T_ = _T_ ′,( _A_ 1 × _A_ 2 ). Prove that _T_ has all the
    required properties.)
3. Suppose _R_ is a total order on a set _A_. Prove that every finite, nonempty
    set _B_ ⊆ _A_ has an _R_ -smallest element.
∗4. (a) Suppose _R_ is a relation on _A_ , and∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ ( _x Ry_ or  _yRx_ ). (Note
that this implies that _R_ is reflexive.) Prove that for every finite,
nonempty set _B_ ⊆ _A_ there is some _x_ ∈ _B_ such that∀ _y_ ∈ _B_ (( _x_ , _y_ )∈
_R_ ◦ _R_ ). (Hint: Imitate Example 6.2.1.)

276 _Mathematical Induction_

```
(b) Consider a tournament in which each contestant plays every other
contestant exactly once, and one of them wins. We’ll say that a con-
testant x is excellent if, for every other contestant y , either x beats y
or there is a third contestant z such that x beats z and z beats y. Prove
that there is at least one excellent contestant.
```

5. For each _n_ ∈N, let _Fn_ = 2 (^2 _n_ )+1. (These numbers are called the _Fermat_
    numbers, after the French mathematician Pierre de Fermat (1601–1665).
    Fermat showed that _F_ 0 , _F_ 1 , _F_ 2 , _F_ 3 , and _F_ 4 are prime, and conjectured
    that all of the Fermat numbers are prime. However, over 100 years later
    Euler showed that _F_ 5 is not prime. It is not known if there is any _n_ > 4
    for which _Fn_ is prime.)
       Prove that for all _n_ ≥1, _Fn_ =( _F_ 0 · _F_ 1 · _F_ 2 · · · _Fn_ - 1 )+2.
6. Prove that if _n_ ≥1 and _a_ 1 , _a_ 2 ,... , _an_ are any real numbers, then| _a_ 1 +
    _a_ 2 + · · · + _an_ | ≤ | _a_ 1 | + | _a_ 2 | + · · · + | _an_ |. (Note that this generalizes the
    triangle inequality; see exercise 12(c) of Section 3.5.)
7. (a) Prove that if _a_ and _b_ are positive real numbers, then _a_ / _b_ + _b_ / _a_ ≥2.
    (Hint: Start with the fact that ( _a_ - _b_ )^2 ≥0.)
(b) Suppose that _a_ , _b_ , and _c_ are real numbers and 0< _a_ ≤ _b_ ≤ _c_.
Prove that _b_ / _c_ + _c_ / _a_ - _b_ / _a_ ≥1. (Hint: Start with the fact that
( _c_ - _a_ )( _c_ - _b_ )≥0.)
    (c) Prove that if _n_ ≥2 and _a_ 1 , _a_ 2 ,... , _an_ are real numbers such that
       0 < _a_ 1 ≤ _a_ 2 ≤... ≤ _an_ , then _a_ 1 / _a_ 2 + _a_ 2 / _a_ 3 + · · · + _an_ - 1 / _an_ +
       _an_ / _a_ 1 ≥ _n_.
∗8. If _n_ ≥2 and _a_ 1 , _a_ 2 ,... , _an_ is a list of positive real numbers, then the
number ( _a_ 1 + _a_ 2 + · · · + _an_ )/ _n_ is called the _arithmetic mean_ of the num-
bers _a_ 1 , _a_ 2 ,... , _an_ , and the number√ _na_ 1 _a_ 2 · · · _an_ is called their _geometric
mean_. In this exercise you will prove the _arithmetic-geometric mean in-
equality_ , which says that the arithmetic mean is always at least as large
as the geometric mean.
(a) Prove that the arithmetic-geometric mean inequality holds for lists of
numbers of length 2. In other words, prove that for all positive real
numbers _a_ and _b_ , ( _a_ + _b_ )/ 2 ≥

#### √

```
ab.
(b) Prove that the arithmetic-geometric mean inequality holds for any
list of numbers whose length is a power of 2. In other words, prove
that for all n ≥1, if a 1 , a 2 ,... , a 2 n is a list of positive real numbers,
then
```

```
a 1 + a 2 + · · · + a 2 n
2 n
```

```
≥^2 n
```

#### √

```
a 1 a 2 · · · a 2 n.
```

```
More Examples 277
(c) Suppose that n 0 ≥2 and the arithmetic-geometric mean inequality
fails for some list of length n 0. In other words, there are positive real
numbers a 1 , a 2 ,... , an 0 such that
a 1 + a 2 + · · · + an 0
n 0
```

```
< n √^0 a 1 a 2 · · · an 0.
```

```
Prove that for all n ≥ n 0 , the arithmetic-geometric mean inequality
fails for some list of length n.
(d) Prove that the arithmetic-geometric mean inequality always holds.
```

9. Prove that if _n_ ≥2 and _a_ 1 , _a_ 2 ,... , _an_ is a list of positive real numbers,
    then
       _n_
1
_a_ 1 +

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

#### √

```
a 1 a 2 · · · an.
```

(Hint: Apply exercise 8. The number on the left side of the inequality
above is called the _harmonic mean_ of the numbers _a_ 1 , _a_ 2 ,... , _an_ .)
∗10. Prove that for every set _A_ , if _A_ has _n_ elements thenP( _A_ ) has 2 _n_ elements.

11. If _A_ is a set, letP 2 ( _A_ ) be the set of all subsets of _A_ that have exactly two
    elements. Prove that for every set _A_ , if _A_ has _n_ elements thenP 2 ( _A_ ) has
    _n_ ( _n_ -1)/2 elements. (Hint: See the solution for exercise 10.)
12. Suppose _n_ is a positive integer. An equilateral triangle is cut into 4 _n_
    congruent equilateral triangles, and one corner is removed. (Figure 10
    shows an example in the case _n_ =2.) Show that the remaining area can
    be covered by trapezoidal tiles like this:.

```
Figure 10
```

∗13. Let _n_ be a positive integer. Suppose _n_ chords are drawn in a circle in such

```
a way that each chord intersects every other, but no three intersect at one
point. Prove that the chords cut the circle into n
```

(^2) + _n_ + 2
2 regions. (Figure 11
shows an example in the case _n_ =4. Note that there are^4
(^2) + 4 + 2
2 =^11
regions in this figure.)

14. Let _n_ be a positive integer, and suppose that _n_ chords are drawn in a
    circle, cutting the circle into a number a regions. Prove that the regions
    can be colored with two colors in such a way that adjacent regions (that

278 _Mathematical Induction_

```
Figure 11
```

```
is, regions that share an edge) are different colors. (Figure 12 shows an
example in the case n =4.)
```

```
Figure 12
```

15. What’s wrong with the following proof that if _A_ ⊆Nand 0∈ _A_ then
    _A_ =N?
_Proof._ We will prove by induction that∀ _n_ ∈N( _n_ ∈ _A_ ).
Base case: If _n_ =0, then _n_ ∈ _A_ by assumption.
Induction step: Let _n_ ∈Nbe arbitrary, and suppose that _n_ ∈ _A_. Since
_n_ was arbitrary, it follows that every natural number is an element of _A_ ,
and therefore in particular _n_ + 1 ∈ _A_. 
16. Suppose _f_ :R→R. What’s wrong with the following proof that for
    every finite, nonempty set _A_ ⊆Rthere is a real number _c_ such that
    ∀ _x_ ∈ _A_ ( _f_ ( _x_ )= _c_ )?
    _Proof._ We will prove by induction that for every _n_ ≥1, if _A_ is any subset
    ofRwith _n_ elements then∃ _c_ ∈R∀ _x_ ∈ _A_ ( _f_ ( _x_ )= _c_ ).
       Base case: _n_ =1. Suppose _A_ ⊆Rand _A_ has one element. Then _A_ =
    { _a_ }, for some _a_ ∈R. Let _c_ = _f_ ( _a_ ). Then clearly∀ _x_ ∈ _A_ ( _f_ ( _x_ )= _c_ ).
       Induction step: Suppose _n_ ≥1, and for all _A_ ⊆R, if _A_ has _n_ ele-
    ments then∃ _c_ ∈R∀ _x_ ∈ _A_ ( _f_ ( _x_ )= _c_ ). Now suppose _A_ ⊆Rand _A_ has
    _n_ +1 elements. Let _a_ 1 be any element of _A_ , and let _A_ 1 = _A_ \ { _a_ 1 }.
    Then _A_ 1 has _n_ elements, so by inductive hypothesis there is some _c_ 1 ∈R

```
Recursion 279
such that∀ x ∈ A 1 ( f ( x )= c 1 ). If we can show that f ( a 1 )= c 1 then we
will be done, since then it will follow that∀ x ∈ A ( f ( x )= c 1 ).
Let a 2 be an element of A that is different from a 1 , and let A 2 = A \
{ a 2 }. Applying the inductive hypothesis again, we can choose a number
c 2 ∈Rsuch that∀ x ∈ A 2 ( f ( x )= c 2 ). Notice that since a 1 = a 2 , a 1 ∈ A 2 ,
so f ( a 1 )= c 2. Now let a 3 be an element of A that is different from both
a 1 and a 2. Then a 3 ∈ A 1 and a 3 ∈ A 2 , so f ( a 3 )= c 1 and f ( a 3 )= c 2.
Therefore c 1 = c 2 , so f ( a 1 )= c 1 , as required. 
```

## 6.3 Recursion

In Chapter 3 we learned to prove statements of the form∀ _nP_ ( _n_ ) by letting _n_
be arbitrary and proving _P_ ( _n_ ). In this chapter we’ve learned another method
for proving such statements, when _n_ ranges over the natural numbers: Prove
_P_ (0), and then prove that for any natural number _n_ , if _P_ ( _n_ ) is true then so is
_P_ ( _n_ +1). Once we have proven these statements, we can run through all the
natural numbers in order and see that _P_ must be true of all of them.
We can use a similar idea to introduce a new way of defining functions. In
Chapter 5, we usually defined a function _f_ by saying how to compute _f_ ( _n_ ) for
any _n_ in the domain of _f_. If the domain of _f_ is the set of all natural numbers, an
alternative method to define _f_ would be to say what _f_ (0) is and then, for any
natural number _n_ , say how we could compute _f_ ( _n_ +1) if we already knew the
value of _f_ ( _n_ ). Such a definition would enable us to run through all the natural
numbers in order computing the image of each one under _f_.
For example, we might use the following equations to define a function _f_
with domainN:

```
f (0)=1;
for every n ∈N, f ( n +1)=( n +1)· f ( n ).
```

The second equation tells us how to compute _f_ ( _n_ +1), but only if we already
know the value of _f_ ( _n_ ). Thus, although we cannot use this equation to tell us
directly what the image of any number is under _f_ , we _can_ use it to run through
all the natural numbers in order and compute their images.
We start with _f_ (0), which we know from the first equation is equal to 1.
Pluggingin _n_ =0inthesecondequation,weseethat _f_ (1)= 1 · _f_ (0)= 1 · 1 =
1, so we’ve determined the value of _f_ (1). But now that we know that _f_ (1)=1,
we can use the second equation again to compute _f_ (2). Plugging in _n_ =1 in the
second equation, we find that _f_ (2)= 2 · _f_ (1)= 2 · 1 =2. Similarly, setting
_n_ =2 in the second equation we get _f_ (3)= 3 · _f_ (2)= 3 · 2 =6. Continuing

280 _Mathematical Induction_

in this way we can compute _f_ ( _n_ ) for any natural number _n_. Thus, the two
equations really do give us a rule that determines a unique value _f_ ( _n_ ) for each
natural number _n_ , so they define a function _f_ with domainN. Definitions of
this kind are called _recursive_ definitions.
Sometimes we’ll work backwards when using a recursive definition to eval-
uate a function. For example, suppose we want to compute _f_ (6), where _f_ is
the function just defined. According to the second equation in the definition
of _f_ , _f_ (6)= 6 · _f_ (5), so to complete the calculation we must compute _f_ (5).
Using the second equation again, we find that _f_ (5)= 5 · _f_ (4), so we must
compute _f_ (4). Continuing in this way leads to the following calculation:

```
f (6)= 6 · f (5)
= 6 · 5 · f (4)
= 6 · 5 · 4 · f (3)
= 6 · 5 · 4 · 3 · f (2)
= 6 · 5 · 4 · 3 · 2 · f (1)
= 6 · 5 · 4 · 3 · 2 · 1 · f (0)
= 6 · 5 · 4 · 3 · 2 · 1 · 1
= 720.
```

Perhaps now you recognize the function _f_. For any positive integer _n_ ,
_f_ ( _n_ )= _n_ ·( _n_ -1)·( _n_ -2)· · · 1, and _f_ (0)=1. This number is called _n facto-
rial_ , denoted _n_ !. For example, 6!=720. Often, if a function can be written as
a formula with an ellipsis (... ) in it, then the use of the ellipsis can be avoided
by giving a recursive definition for the function. Such a definition is usually
easier to work with.
Many familiar functions are most easily defined using recursive definitions.
For example, for any number _a_ , we could define _an_ with the following recursive
definition:

```
a^0 =1;
for every n ∈N, an +^1 = an · a.
```

Using this definition, we would compute _a_^4 like this:

```
a^4 = a^3 · a
= a^2 · a · a
= a^1 · a · a · a
= a^0 · a · a · a · a
= 1 · a · a · a · a.
```

```
Recursion 281
For another example, consider the sum 2^0 + 21 + 22 + · · · + 2 n , which ap-
peared in the first example of this chapter. The ellipsis suggests that we might
be able to use a recursive definition. If we let f ( n )= 20 + 21 + 22 + · · · + 2 n ,
then notice that for every n ∈N, f ( n +1)= 20 + 21 + 22 + · · · + 2 n +
2 n +^1 = f ( n )+ 2 n +^1. Thus, we could define f recursively as follows:
```

```
f (0)= 20 =1;
for every n ∈N, f ( n +1)= f ( n )+ 2 n +^1.
```

```
As a check that this definition is right, let’s try it out in the case n =3:
```

```
f (3)= f (2)+ 23
= f (1)+ 22 + 23
= f (0)+ 21 + 22 + 23
= 20 + 21 + 22 + 23
= 15.
```

```
Sums such as the one in the last example come up often enough that there
is a special notation for them. If a 0 , a 1 ,... , an is a list of numbers, then the
sum of these numbers is written
```

```
∑ n
i = 0 ai. This is read “the sum as i goes from
0 to n of ai .” For example, we can use this notation to write the sum in the last
example:
∑ n
```

```
i = 0
```

```
2 i = 20 + 21 + 22 + · · · + 2 n.
```

```
More generally, if n ≥ m , then
∑ n
```

```
i = m
```

```
ai = am + am + 1 + am + 2 + · · · + an.
```

```
For example,
∑^6
```

```
i = 3
```

```
i^2 = 32 + 42 + 52 + 62
```

```
= 9 + 16 + 25 + 36 = 86.
```

The letted _i_ in these formulas is a bound variable and therefore can be replaced
by a new variable without changing the meaning of the formula.
Now let’s try giving a recursive definition for this notation. We let _m_ be an
arbitrary integer, and then proceed by recursion on _n_. Just as the base case for
an induction proof need not be _n_ =0, the base for a recursive definition can
also be a number other than 0. In this case we are only interested in _n_ ≥ _m_ , so

282 _Mathematical Induction_

we take _n_ = _m_ as the base for our recursion:
∑ _m_

```
i = m
```

```
ai = am ;
```

```
for every n ≥ m ,
```

```
n ∑+ 1
```

```
i = m
```

```
ai =
```

```
∑ n
```

```
i = m
```

```
ai + an + 1.
```

Trying this definition out on the previous example, we get
∑^6

```
i = 3
```

```
i^2 =
```

#### ∑^5

```
i = 3
```

```
i^2 + 62
```

#### =

#### ∑^4

```
i = 3
```

```
i^2 + 52 + 62
```

#### =

#### ∑^3

```
i = 3
```

```
i^2 + 42 + 52 + 62
```

```
= 32 + 42 + 52 + 62 ,
```

just as we wanted.
Clearly induction and recursion are closely related, so it shouldn’t be sur-
prising that if a concept has been defined by recursion, then proofs involving
this concept are often best done by induction. For example, in Section 6.1 we
saw some proofs by induction that involved summations and exponentiation,
and now we have seen that summations and exponentiation can be defined re-
cursively. Because the factorial function can also be defined recursively, proofs
involving factorials also often use induction.

**Example 6.3.1.** Prove that for every _n_ ≥ 4 , _n_ !> 2 _n_.

_Scratch work_

Because the problem involves factorial and exponentiation, both of which are
defined recursively, induction seems like a good method to use. The base case
will be _n_ =4, and it is just a matter of simple arithmetic to check that the
inequality is true in this case. For the induction step, our inductive hypothesis
will be _n_ !> 2 _n_ , and we must prove that ( _n_ +1)!> 2 _n_ +^1. Of course, the way
to relate the inductive hypothesis to the goal is to use the recursive definitions
of factorial and exponentiation, which tell us that ( _n_ +1)!=( _n_ +1)· _n_ !and
2 _n_ +^1 = 2 _n_ ·2. Once these equations are plugged in, the rest is fairly straight-
forward.

_Solution_

**Theorem.** _For every n_ ≥ 4 , _n_ !> 2 _n_.
_Proof._ By mathematical induction.

```
Recursion 283
Base case: When n =4 we have n != 24 > 16 = 2 n.
Induction step: Let n ≥4 be arbitrary and suppose that n !> 2 n. Then
```

```
( n +1)!=( n +1)· n!
>( n +1)· 2 n (by inductive hypothesis)
> 2 · 2 n = 2 n +^1. 
```

```
Example 6.3.2. Prove that for every real number a and all natural numbers
m and n , am + n = am · an.
```

```
Scratch work
```

There are three universal quantifiers here, and we’ll treat the first two differ-
ently from the third. We let _a_ and _m_ be arbitrary and then use mathematical
induction to prove that∀ _n_ ∈N( _am_ + _n_ = _am_ · _an_ ). The key algebraic fact in the
induction step will be the formula _an_ +^1 = _an_ · _a_ from the recursive definition
of exponentiation.
_Solution_
**Theorem.** _For every real number a and all natural numbers m and n_ , _am_ + _n_ =
_am_ · _an_.
_Proof._ Let _a_ be an arbitrary real number and _m_ an arbitrary natural number.
We now proceed by induction on _n_.
Base case: When _n_ =0, we have _am_ + _n_ = _am_ +^0 = _am_ = _am_ · 1 = _am_ · _a_^0 =
_am_ · _an_.
Induction step. Suppose _am_ + _n_ = _am_ · _an_. Then

```
am +( n +1)= a ( m + n )+^1
= am + n · a (by definition of exponentiation)
= am · an · a (by inductive hypothesis)
= am · an +^1 (by definition of exponentiation). 
```

```
Example 6.3.3. A sequence of numbers a 0 , a 1 , a 2 ,... is defined recursively
as follows:
```

```
a 0 =0;
for every n ∈N, an + 1 = 2 an + 1.
```

```
Find a formula for an and prove that your formula is correct.
```

284 _Mathematical Induction_

_Scratch work_

It’s probably a good idea to start out by computing the first few terms in the
sequence. We already know _a_ 0 =0, so plugging in _n_ =0 in the second equation
we get _a_ 1 = 2 _a_ 0 + 1 = 0 + 1 =1. Thus, plugging in _n_ =1, we get _a_ 2 = 2 _a_ 1 +
1 = 2 + 1 =3. Continuing in this way we get the following table of values.

```
n an
0 0
1 1
2 3
3 7
4 15
5 31
6 63
..
.
```

#### 

#### 

Aha!The numbers we’re getting are one less than the powers of 2. It looks
like the formula is probably _an_ = 2 _n_ -1, but we can’t be sure this is right unless
we prove it. Fortunately, it is fairly easy to prove the formula by induction.

_Solution_

**Theorem.** _If the sequence a_ 0 , _a_ 1 , _a_ 2 ,... _is defined by the recursive definition
given earlier, then for every natural number n_ , _an_ = 2 _n_ -1.
_Proof._ By induction.
Base case: _a_ 0 = 0 = 20 -1.
Induction step: Suppose _an_ = 2 _n_ -1. Then
_an_ + 1 = 2 _an_ + 1 (definition of _an_ + 1 )
=2(2 _n_ -1)+ 1 (inductive hypothesis)
= 2 _n_ +^1 - 2 + 1 = 2 _n_ +^1 - 1. 
We end this section with a rather unusual example. We’ll prove that for every
real number _x_ >-1 and every natural number _n_ ,(1+ _x_ ) _n_ > _nx_. A natural way
to proceed would be to let _x_ >-1 be arbitrary, and then use induction on _n_.
In the induction step we assume that (1+ _x_ ) _n_ > _nx_ , and then try to prove that
(1+ _x_ ) _n_ +^1 >( _n_ +1) _x_. Because we’ve assumed _x_ >-1, we have 1+ _x_ >0,
so we can multiply both sides of the inductive hypothesis (1+ _x_ ) _n_ > _nx_ by
1 + _x_ to get

```
(1+ x ) n +^1 =(1+ x )(1+ x ) n
>(1+ x ) nx
= nx + nx^2.
```

```
Recursion 285
```

But the conclusion we need for the induction step is (1+ _x_ ) _n_ +^1 >( _n_ +1) _x_ ,
and it’s not clear how to get this conclusion from the inequality we’ve
derived.
Our solution to this difficulty will be to replace our original problem with a
problem that appears to be harder but is actually easier. Instead of proving the
inequality (1+ _x_ ) _n_ > _nx_ directly, we’ll prove (1+ _x_ ) _n_ ≥ 1 + _nx_ , and then
observe that since 1+ _nx_ > _nx_ , it follows immediately that (1+ _x_ ) _n_ > _nx_.
You might think that if we had difficulty proving (1+ _x_ ) _n_ > _nx_ , we’ll surely
have more difficulty proving the stronger statement (1+ _x_ ) _n_ ≥ 1 + _nx_. But it
turns out that the approach we tried unsuccessfully on the original problem
works perfectly on the new problem!

**Theorem 6.3.4.** _Forevery x_ >- 1 _andeverynaturalnumbern,_ (1+ _x_ ) _n_ > _nx.
Proof._ Let _x_ >-1 be arbitrary. We will prove by induction that for ev-
ery natural number _n_ ,(1+ _x_ ) _n_ ≥ 1 + _nx_ , from which it clearly follows that
(1+ _x_ ) _n_ > _nx_.
Base case: If _n_ =0, then (1+ _x_ ) _n_ =(1+ _x_ )^0 = 1 = 1 + 0 = 1 + _nx_.
Induction step: Suppose (1+ _x_ ) _n_ ≥ 1 + _nx_. Then

```
(1+ x ) n +^1 =(1+ x )(1+ x ) n
≥(1+ x )(1+ nx ) (by inductive hypothesis)
= 1 + x + nx + nx^2
≥ 1 +( n +1) x (since nx^2 ≥0). 
```

```
Exercises
```

```
∗1. Find a formula for∑ ni = 1 1
i ( i +1)and prove that your formula is correct.
```

2. Prove that for all _n_ ≥1,
    ∑ _n_

```
i = 1
```

#### 1

```
i ( i +1)( i +2)
```

#### =

```
n^2 + 3 n
4( n +1)( n +2)
```

#### 

3. Prove that for all _n_ ≥2,
    ∑ _n_

```
i = 2
```

#### 1

```
( i -1)( i +1)
```

#### =

```
3 n^2 - n - 2
4 n ( n +1)
```

#### 

4. Prove that for all _n_ ∈N,
    ∑ _n_

```
i = 0
```

```
(2 i +1)^2 =
```

```
( n +1)(2 n +1)(2 n +3)
3
```

#### 

286 _Mathematical Induction_

5. Suppose _r_ is a real number and _r_ =1. Prove that for all _n_ ∈N,
    ∑ _n_

```
i = 0
```

```
ri =
```

```
rn +^1 - 1
r - 1
```

#### 

```
(Note that this exercise generalizes Example 6.1.1 and exercise 7 of
Section 6.1.)
∗6. Prove that for all n ≥1,
∑ n
```

```
i = 1
```

#### 1

```
i^2
```

#### ≤ 2 -

#### 1

```
n
```

#### 

7. (a) Suppose _a_ 0 , _a_ 1 , _a_ 2 ,... , _an_ and _b_ 0 , _b_ 1 , _b_ 2 ,... , _bn_ are two sequences
    of real numbers. Prove that
       ∑ _n_

```
i = 0
```

```
( ai + bi )=
```

```
∑ n
```

```
i = 0
```

```
ai +
```

```
∑ n
```

```
i = 0
```

```
bi.
```

```
(b) Suppose c is a real number and a 0 , a 1 ,... , an is a sequence of real
numbers. Prove that
```

```
c ·
```

```
∑ n
```

```
i = 0
```

```
ai =
```

```
∑ n
```

```
i = 0
```

```
( c · ai ).
```

```
∗8. The harmonic numbers are the numbers Hn for n ≥1 defined by the
formula
```

```
Hn =
```

```
∑ n
```

```
i = 1
```

#### 1

```
i
```

#### 

```
(a) Prove that for all natural numbers n and m , if n ≥ m then Hn - Hm ≥
n - m
n. (Hint: Let m be an arbitrary natural number and then proceed
by induction on n , with n = m as the base case of the induction.)
(b) Prove that for all n ≥ 0 , H 2 n ≥ 1 + n /2.
(c) (For those who have studied calculus) Show that lim n →∞ Hn = ∞ ,
so
```

#### ∑∞

```
i = 1
```

```
1
i diverges.
```

9. Let _Hn_ be defined as in exercise 8. Prove that for all _n_ ≥2,
    ∑ _n_ -^1

```
k = 1
```

```
Hk = nHn - n.
```

10. Find a formula for

```
∑ n
i = 1 ( i ·( i !)) and prove that your formula is correct.
```

11. Find a formula for

```
∑ n
i = 0
```

```
i
∗ ( i +1)!and prove that your formula is correct.
```

12. (a) Prove that for all _n_ ∈N, 2 _n_ > _n_.
    (b) Prove that for all _n_ ≥ 9 , _n_ !≥(2 _n_ )^2.
       (c) Prove that for all _n_ ∈N, _n_ !≤ 2 ( _n_^2 ).

```
Recursion 287
```

13. Suppose _k_ is a positive integer.
    (a) Prove that for all _n_ ∈N, ( _k_^2 + _n_ )!≥ _k_^2 _n_.
(b) Prove that for all _n_ ≥ 2 _k_^2 , _n_ !≥ _kn_. (Hint: Use induction, and for the
base case use part (a). Note that in the language of exercise 16 of
Section 5.1, this shows that if _f_ ( _n_ )= _kn_ and _g_ ( _n_ )= _n_ !, then _f_ ∈
_O_ ( _g_ ).)
14. Prove that for every real number _a_ and all natural numbers _m_ and
    _n_ ,( _am_ ) _n_ = _amn_.
∗15. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:

```
a 0 =0;
for every n ∈N, an + 1 = 2 an + n.
```

```
Prove that for all n ∈N, an = 2 n - n -1.
```

16. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:
    _a_ 0 =2;
    for every _n_ ∈N, _an_ + 1 =( _an_ )^2.

```
Find a formula for an and prove that your formula is correct.
```

17. A sequence _a_ 1 , _a_ 2 , _a_ 3 ,... is defined recursively as follows:
    _a_ 1 =1;
    for every _n_ ≥1, _an_ + 1 =

```
an
an + 1
```

#### 

Find a formula for _an_ and prove that your formula is correct.
∗18. For _n_ ≥ _k_ ≥0, the quantity( _n
k_

#### )

```
is defined as follows:
( n
k
```

#### )

#### =

```
n!
k !·( n - k )!
```

#### 

```
(a) Prove that for all n ∈N,
```

```
( n
0
```

#### )

#### =

```
( n
n
```

#### )

#### =1

```
(b) Prove that for all n ≥ k >0,
```

```
( n + 1
k
```

#### )

#### =

```
( n
k
```

#### )

#### +

```
( n
k - 1
```

#### )

#### 

```
(c) If A is a set and k ∈N, letP k ( A ) be the set of all subsets of A
that have k elements. Prove that if A has n elements and n ≥ k ≥0,
thenP k ( A ) has
```

```
( n
k
```

#### )

```
elements. (Hint: Prove by induction that∀ n ∈
N∀ A [ A is a set with n elements→ ∀ k ( n ≥ k ≥ 0 →P k ( A ) has
```

```
( n
k
```

#### )

```
elements)]. Imitate exercises 10 and 11 of Section 6.2. In fact, this
exercise generalizes exercise 11 of Section 6.2. This exercise shows
that
```

```
( n
k
```

#### )

```
is the number of ways of choosing k elements out of a set of
size n , so it is sometimes called n choose k .)
(d) Prove that for all real numbers x and y and every natural number n ,
```

```
( x + y ) n =
```

```
∑ n
```

```
k = 0
```

```
( n
k
```

#### )

```
xn - kyk.
```

288 _Mathematical Induction_

```
(This is called the binomial theorem , so the numbers
```

```
( n
k
```

#### )

```
are some-
times called binomial coefficients .)
Note: Parts (a) and (b) show that we can compute the numbers
```

```
( n
k
```

#### )

```
con-
veniently by using a triangular array as in Figure 1. This array is called
Pascal’s triangle , after the French mathematician Blaise Pascal (1623–
1662). Each row of the triangle corresponds to a particular value of n , and
it lists the values of
```

```
( n
k
```

#### )

```
for all k from 0 to n. Part (a) shows that the first
and last number in every row is 1. Part (b) shows that every other number
is the sum of the two numbers above it. For example, the lines in Figure
1 illustrate that
```

#### ( 3

```
2
```

#### )

```
=3 is the sum of
```

#### ( 2

```
1
```

#### )

```
=2 and
```

#### ( 2

```
2
```

#### )

#### =1

```
n = 0: 1
1 1
1 12
1 33 1
1 64 4 1
```

```
n = 1:
n = 2:
n = 3:
n = 4:
::
Figure 1: Pascal’s triangle
```

19. For the meaning of the notation used in this exercise, see exercise 18.
    (a) Prove that for all _n_ ∈N,

```
∑ n
k = 0
```

```
( n
k
```

#### )

```
= 2 n. (Hint: You can do this by
induction using parts (a) and (b) of exercise 18, or you can combine
part (c) of exercise 18 with exercise 10 of Section 6.2, or you can
plug something in for x and y in part (d) of exercise 18.)
(b) Prove that for all n ≥1,
```

```
∑ n
k = 0 (-1)
```

```
k ( n
k
```

#### )

#### =0

```
∗20. A sequence a 0 , a 1 , a 2 ,... is defined recursively as follows:
a 0 =0;
for every n ∈N, an + 1 =( an )^2 +
```

#### 1

#### 4

```
Prove that for all n ≥1, 0< an <1.
```

21. Explain the paradox in the proof of Theorem 6.3.4, in which we made the
    proof easier by changing the goal to a statement that looked like it would
    be harder to prove.

## 6.4 Strong Induction

In the induction step of a proof by mathematical induction, we prove that a
natural number has some property based on the assumption that the previous
number has the same property. In some cases this assumption isn’t strong

```
Strong Induction 289
```

enough to make the proof work, and we need to assume that _all_ smaller natural
numbers have the property. This is the idea behind a variant of mathematical
induction sometimes called _strong induction_ :

**To prove a goal of the form** ∀ _n_ ∈N _P_ ( _n_ ) **:**
Prove that∀ _n_ [(∀ _k_ < _nP_ ( _k_ ))→ _P_ ( _n_ )], where both _n_ and _k_ range over the
natural numbers in this statement. Of course, the most direct way to prove this
is to let _n_ be an arbitrary natural number, assume that∀ _k_ < _nP_ ( _k_ ), and then
prove _P_ ( _n_ ).

Note that no base case is necessary in a proof by strong induction. All that is
needed is a modified form of the induction step in which we prove that if every
natural number smaller than _n_ has the property _P_ , then _n_ has the property _P_.
In a proof by strong induction, we refer to the assumption that every natural
number smaller than _n_ has the property _P_ as the _inductive hypothesis_.
Toseewhystronginductionworks,itmighthelpifwefirstreviewbrieflywhy
ordinary induction works. Recall that a proof by ordinary induction enables us
to go through all the natural numbers in order and see that each of them has
some property _P_. The base case gets the process started, and the induction step
shows that the process can always be continued from one number to the next.
But note that in this process, by the time we check that some natural number
_n_ has the property _P_ , we’ve already checked that _all smaller numbers_ have the
property. In other words, we already know that∀ _k_ < _nP_ ( _k_ ). The idea behind
strong induction is that we should be allowed to use this information in our
proof of _P_ ( _n_ ).
Let’s work out the details of this idea more carefully. Suppose that we’ve
followed the strong induction proof strategy and proven the statement
∀ _n_ [(∀ _k_ < _nP_ ( _k_ ))→ _P_ ( _n_ )]. Then, plugging in 0 for _n_ , we can conclude that
(∀ _k_ < 0 _P_ ( _k_ ))→ _P_ (0). But because there are no natural numbers smaller than
0, the statement∀ _k_ < 0 _P_ ( _k_ ) is vacuously true. Therefore, by modus ponens,
_P_ (0) is true. (This explains why the base case doesn’t have to be checked sepa-
rately in a proof by strong induction; the base case _P_ (0) actually follows from
the modified form of the induction step used in strong induction.) Similarly,
plugging in 1 for _n_ we can conclude that (∀ _k_ < 1 _P_ ( _k_ ))→ _P_ (1). The only
natural number smaller than 1 is 0, and we’ve just shown that _P_ (0) is true, so
the statement∀ _k_ < 1 _P_ ( _k_ ) is true. Therefore, by modus ponens, _P_ (1) is also
true. Now plug in 2 for _n_ to get the statement (∀ _k_ < 2 _P_ ( _k_ ))→ _P_ (2). Since
_P_ (0) and _P_ (1) are both true, the statement∀ _k_ < 2 _P_ ( _k_ ) is true, and therefore
by modus ponens, _P_ (2) is true. Continuing in this way we can show that _P_ ( _n_ )
is true for every natural number _n_ , as required. For an alternative justification
of the method of strong induction, see exercise 1.

290 _Mathematical Induction_

As our first example of the method of strong induction, we prove an important
fact of number theory known as the _division algorithm_.

**Theorem 6.4.1.** (Division algorithm) _For all natural numbers n and m, if
m_ > 0 _, then there are natural numbers q and r such that n_ = _mq_ + _r and
r_ < _m._ (The numbers _q_ and _r_ are called the _quotient_ and _remainder_ when _n_ is
divided by _m._ )

_Scratch work_

We let _m_ be an arbitrary positive integer and then use strong induction
to prove that ∀ _n_ ∃ _q_ ∃ _r_ ( _n_ = _mq_ + _r_ and  _r_ < _m_ ). According to the description
of strong induction, this means that we should let _n_ be an arbitrary natu-
ral number, assume that∀ _k_ < _n_ ∃ _q_ ∃ _r_ ( _k_ = _mq_ + _r_ and  _r_ < _m_ ), and prove that
∃ _q_ ∃ _r_ ( _n_ = _mq_ + _r_ and  _r_ < _m_ ).
Our goal is an existential statement, so we should try to come up with values
of _q_ and _r_ with the required properties. If _n_ < _m_ then this is easy because we can
just let _q_ =0 and _r_ = _n_. But if _n_ ≥ _m_ , then this won’t work, since we must have
_r_ < _m_ , so we must do something different in this case. As usual in induction
proofs, we look to the inductive hypothesis. The inductive hypothesis starts
with∀ _k_ < _n_ , so to apply it we should plug in some natural number smaller
than _n_ for _k_ , but what should we plug in? The reference to division in the
statement of the theorem provides a hint. If we think of division as repeated
subtraction, then dividing _n_ by _m_ involves subtracting _m_ from _n_ repeatedly.
The first step in this process would be to compute _n_ - _m_ , which is a natural
number smaller than _n_. Perhaps we should plug in _n_ - _m_ for _k_. It’s not entirely
clear where this will lead, but it’s worth a try. In fact, as you’ll see in the proof,
once we take this step the desired conclusion follows almost immediately.
Notice that we are using the fact that a quotient and remainder exist for some
natural number smaller than _n_ to prove that they exist for _n_ , but this smaller
number is not _n_ -1, it’s _n_ - _m_. This is why we’re using strong induction rather
than ordinary induction for this proof.

_Proof._ We let _m_ be an arbitrary positive integer and then proceed by strong
induction on _n_.
Suppose _n_ is a natural number, and for every _k_ < _n_ there are natural numbers
_q_ and _r_ such that _k_ = _mq_ + _r_ and _r_ < _m_.
_Case 1_. _n_ < _m_. Let _q_ =0 and _r_ = _n_. Then clearly _n_ = _mq_ + _r_ and _r_ < _m_.
_Case 2_. _n_ ≥ _m_. Let _k_ = _n_ - _m_ < _n_ and note that since _n_ ≥ _m_ , _k_ is a nat-
ural number. By inductive hypothesis we can choose _q_ ′ and _r_ ′ such that
_k_ = _mq_ ′+ _r_ ′and _r_ ′< _m_. Then _n_ - _m_ = _mq_ ′+ _r_ ′, so _n_ = _mq_ ′+ _r_ ′+ _m_ =
_m_ ( _q_ ′+1)+ _r_ ′. Thus, if we let _q_ = _q_ ′+1 and _r_ = _r_ ′, then we have _n_ =
_mq_ + _r_ and _r_ < _m_ , as required. 

_Strong Induction_ 291
The division algorithm can also be extended to negative integers _n_ , and it
can be shown that for every _m_ and _n_ the quotient and remainder _q_ and _r_ are
unique. For more on this, see exercise 13.
Our next example is another important theorem of number theory. We used
this theorem in our proof in the introduction that there are infinitely many
primes. For more on this theorem, see exercise 18.

**Theorem 6.4.2.** _Every integer n_ > 1 _is either prime or a product of primes._

_Scratch work_

We write the goal in the form∀ _n_ ∈N[ _n_ > 1 →( _n_ is primeor  _n_ is a product
of primes)] and then use strong induction. Thus, our inductive hypothesis is
∀ _k_ < _n_ [ _k_ > 1 →( _k_ is primeor  _k_ is a product of primes)], and we must prove
that _n_ > 1 →( _n_ is primeor  _n_ is a product of primes). Of course, we start by
assuming _n_ >1, and according to our strategies for proving disjunctions, a
good way to complete the proof would be to assume that _n_ is not prime and
prove that it must be a product of primes. Because the assumption that _n_ is not
prime means∃ _a_ ∃ _b_ ( _n_ = _ab_ and  _a_ < _n_ and  _b_ < _n_ ), we immediately use existential
instantiation to introduce the new variables _a_ and _b_ into the proof. Applying
the inductive hypothesis to _a_ and _b_ now leads to the desired conclusion.

_Proof._ We use strong induction. Suppose _n_ >1, and suppose that for every
integer _k_ , if 1 < _k_ < _n_ then _k_ is either prime or a product of primes. Of course,
if _n_ is prime then there is nothing to prove, so suppose _n_ is not prime. Then we
can choose natural numbers _a_ and _b_ such that _n_ = _ab_ , _a_ < _n_ , and _b_ < _n_. Note
that since _a_ < _n_ = _ab_ , it follows that _b_ >1, and similarly we must have _a_ >1.
Thus, by inductive hypothesis, each of _a_ and _b_ is either prime or a product of
primes. But then since _n_ = _ab_ , _n_ is a product of primes. 

The method of recursion studied in the last section also has a strong form.
As an example of this, consider the following definition of a sequence of num-
bers, called the _Fibonacci_ numbers after the Italian mathematician Fibonacci
(ca 1174–1250) who first defined them.

```
F 0 =0;
F 1 =1;
for every n ≥ 2 , Fn = Fn - 2 + Fn - 1.
```

For example, plugging in _n_ =2 in the last equation we find that _F_ 2 = _F_ 0 +
_F_ 1 = 0 + 1 =1. Similarly, _F_ 3 = _F_ 1 + _F_ 2 = 1 + 1 = 2 , _F_ 4 = _F_ 2 + _F_ 3 = 1 +
2 =3, and so on. Note that, starting with _F_ 2 , each Fibonacci number is com-
puted using, not just the previous number in the sequence, but also the one
before that. This is the sense in which the recursion is strong. It shouldn’t be

292 _Mathematical Induction_

surprising, therefore, that proofs involving the Fibonacci numbers often require
strong induction rather than ordinary induction.
To illustrate this we’ll prove the following remarkable formula for the
Fibonacci numbers:

```
Fn =
```

#### (

```
1 +√ 5
2
```

```
) n
-
```

#### (

```
1 -√ 5
2
```

```
) n
```

```
√
5
```

#### 

It is hard at first to believe that this formula is right. After all, the Fibonacci
numbersareintegers,anditisnotatallclearthatthisformulawillgiveaninteger
value. And what do the Fibonacci numbers have to do with

#### √

5? Nevertheless,
a proof by strong induction shows that the formula is correct. (To see how this
formula could be derived, see exercise 8.)

**Theorem 6.4.3.** _If Fnis the nthFibonacci number, then_

```
Fn =
```

#### (

```
1 +√ 5
2
```

```
) n
-
```

#### (

```
1 -√ 5
2
```

```
) n
```

```
√
5
```

#### 

_Scratch work_

Because _F_ 0 and _F_ 1 are defined separately from _Fn_ for _n_ ≥2, we check the
formula for these cases separately. For _n_ ≥2, the definition of _Fn_ suggests that
we should use the assumption that the formula is correct for _Fn_ - 2 and _Fn_ - 1
to prove that it is correct for _Fn_. Because we need to know that the formula
works for _two_ previous cases, we must use strong induction rather than ordinary
induction. The rest of the proof is straightforward, although the algebra gets a
little messy.

_Proof._ We use strong induction. Let _n_ be an arbitrary natural number, and
suppose that for all _k_ < _n_ ,

```
Fk =
```

#### (

```
1 +√ 5
2
```

```
) k
-
```

#### (

```
1 -√ 5
2
```

```
) k
```

```
√
5
```

#### 

_Case 1_. _n_ =0. Then
(
1 +√ 5
2

```
) n
-
```

#### (

```
1 -√ 5
2
```

```
) n
```

```
√
5
```

#### =

#### (

```
1 +√ 5
2
```

#### ) 0

#### -

#### (

```
1 -√ 5
2
```

#### ) 0

#### √

#### 5

#### =

#### 1 - 1

#### √

#### 5

#### = 0 = F 0

```
Strong Induction 293
```

_Case 2_. _n_ =1. Then
(
1 +√ 5
2

```
) n
-
```

#### (

```
1 -√ 5
2
```

```
) n
```

```
√
5
```

#### =

#### (

```
1 +√ 5
2
```

#### ) 1

#### -

#### (

```
1 -√ 5
2
```

#### ) 1

#### √

#### 5

#### =

#### √

#### 5

#### √

#### 5

#### = 1 = F 1

_Case 3_. _n_ ≥2. Then applying the inductive hypothesis to _n_ -2 and _n_ -1,
we get

```
Fn = Fn - 2 + Fn - 1
```

#### =

#### (

```
1 +√ 5
2
```

```
) n - 2
-
```

#### (

```
1 -√ 5
2
```

```
) n - 2
```

```
√
5
```

#### +

#### (

```
1 +√ 5
2
```

```
) n - 1
-
```

#### (

```
1 -√ 5
2
```

```
) n - 1
```

```
√
5
```

#### =

#### [(

```
1 +√ 5
2
```

```
) n - 2
+
```

#### (

```
1 +√ 5
2
```

```
) n - 1 ]
-
```

#### [(

```
1 -√ 5
2
```

```
) n - 2
+
```

#### (

```
1 -√ 5
2
```

```
) n - 1 ]
```

```
√
5
```

#### =

#### (

```
1 +√ 5
2
```

```
) n - 2 [
1 +^1 +
```

```
√ 5
2
```

#### ]

#### -

#### (

```
1 -√ 5
2
```

```
) n - 2 [
1 +^1 -
```

```
√ 5
2
```

#### ]

#### √

#### 5

#### 

```
Now note that
(
1 +
```

#### √

#### 5

#### 2

#### ) 2

#### =

#### 1 + 2

#### √

#### 5 + 5

#### 4

#### =

#### 6 + 2

#### √

#### 5

#### 4

#### =

#### 3 +

#### √

#### 5

#### 2

#### = 1 +

#### 1 +

#### √

#### 5

#### 2

#### 

and similarly
(
1 -

#### √

#### 5

#### 2

#### ) 2

#### = 1 +

#### 1 -

#### √

#### 5

#### 2

#### 

Substituting into the formula for _Fn_ , we get

```
Fn =
```

#### (

```
1 +√ 5
2
```

```
) n - 2 (
1 +√ 5
2
```

#### ) 2

#### -

#### (

```
1 -√ 5
2
```

```
) n - 2 (
1 -√ 5
2
```

#### ) 2

#### √

#### 5

#### =

#### (

```
1 +√ 5
2
```

```
) n
-
```

#### (

```
1 -√ 5
2
```

```
) n
```

```
√
5
```

#### . 

Notice that in the proof of Theorem 6.4.3 we had to treat the cases _n_ = 0
and _n_ =1 separately. The role that these cases play in the proof is similar to
the role played by the base case in a proof by ordinary mathematical induction.
Although we have said that proofs by strong induction don’t need base cases,
it is not uncommon to find some initial cases treated separately in such proofs.

294 _Mathematical Induction_

An important property of the natural numbers that is related to mathematical
induction is the fact that every nonempty set of natural numbers has a smallest
element. This is sometimes called the _well-ordering principle_ , and we can prove
it using strong induction.

**Theorem 6.4.4.** (Well-ordering principle) _Every nonempty set of natural num-
bers has a smallest element._

_Scratch work_

Our goal is∀ _S_ ⊆N( _S_ =∅→ _S_ has a smallest element). After letting _S_
be an arbitrary subset ofN, we’ll prove the contrapositive of the conditional
statement. In other words, we will assume that _S_ has no smallest element and
prove that _S_ =∅. The way induction comes into it is that, for a set _S_ ⊆N, to
say that _S_ =∅is the same as saying that∀ _n_ ∈N( _n_ ∈/ _S_ ). We’ll prove this last
statement by strong induction.

_Proof._ Suppose _S_ ⊆N, and _S_ does not have a smallest element. We will prove
that∀ _n_ ∈N( _n_ ∈/ _S_ ), so _S_ =∅. Thus, if _S_ =∅ then _S_ must have a smallest
element.
To prove that∀ _n_ ∈N( _n_ ∈/ _S_ ), we use strong induction. Suppose that _n_ ∈N
and∀ _k_ < _n_ ( _k_ ∈/ _S_ ). Clearly if _n_ ∈ _S_ then _n_ would be the smallest element of
_S_ , and this would contradict the assumption that _S_ has no smallest element.
Therefore _n_ ∈/ _S_. 

Sometimes, proofs that could be done by induction are written instead as
applications of the well-ordering principle. As an example of the use of the
well-ordering principle in a proof, we present a proof that

#### √

2 is irrational. See
exercise 2 for an alternative approach to this proof using strong induction. See
exercise 16 for another application of the well-ordering principle.

**Theorem 6.4.5.**

#### √

```
2 is irrational.
```

_Scratch work_

Because _irrational_ means “not rational,” our goal is a negative statement, so
proof by contradiction is a logical method to use. Thus, we assume

#### √

2 is
rational and try to reach a contradiction. The assumption that

#### √

2 is rational
means that there exist integers _p_ and _q_ such that _p_ / _q_ =

#### √

```
2, and since
```

#### √

2 is
positive, we may as well restrict our attention to positive _p_ and _q_. Because
this is an existential statement, our next step should probably be to choose
positive integers _p_ and _q_ such that _p_ / _q_ =

#### √

2. As you will see in the proof,
simple algebraic manipulations with the equation _p_ / _q_ =

#### √

```
2 do not lead to any
```

```
Strong Induction 295
obvious contradictions, but they do lead to the conclusion that p and q must both
be even. Thus, in the fraction p / q we can cancel a 2 from both numerator and
denominator, getting a new fraction with smaller numerator and denominator
that is equal to
```

#### √

#### 2

```
How can we derive a contradiction from this conclusion? The key idea is to
note that our reasoning would apply to any fraction that is equal to
```

#### √

2. Thus, in
any such fraction we can cancel a factor of 2 from numerator and denominator,
and therefore there can be no smallest possible numerator or denominator for
such a fraction. But this would violate the well-ordering principle!Thus, we
have our contradiction.
This idea is spelled out more carefully in the following proof, in which we’ve
applied the well-ordering principle to the set of all possible denominators of
fractions equal to

#### √

2. We have chosen to put this application of the well-
ordering principle at the beginning of the proof, because this seems to give
the shortest and most direct proof. Readers of the proof might be puzzled at
first about why we’re using the well-ordering principle (unless they’ve read
this scratch work!), but after the algebraic manipulations with the equation
_p_ / _q_ =

#### √

```
2 are completed, the contradiction appears almost immediately. This
is a good example of how a clever, carefully planned step early in a proof can
lead to a wonderful punch line at the end of the proof.
```

```
Proof. Suppose that
```

#### √

```
√ 2 is rational. This means that∃ q ∈Z+∃ p ∈Z+( p / q =
2), so the set S = { q ∈Z+| ∃ p ∈Z+( p / q =
```

#### √

```
2)}is nonempty. By the well–
ordering principle we can let q be the smallest element of S. Since q ∈ S ,
we can choose some p ∈Z+ such that p / q =
```

#### √

2. Therefore _p_^2 / _q_^2 =2,
so _p_^2 = 2 _q_^2 and therefore _p_^2 is even. We now apply the theorem from
Example 3.4.2, which says that for any integer _x_ , _x_ is even iff _x_^2 is even. Since
_p_^2 is even, _p_ must be even, so we can choose some _p_ ̄∈Z+such that _p_ = 2 _p_ ̄.
Therefore _p_^2 = 4 _p_ ̄^2 , and substituting this into the equation _p_^2 = 2 _q_^2 we get
4 _p_ ̄^2 = 2 _q_^2 , so 2 _p_ ̄^2 = _q_^2 and therefore _q_^2 is even. Appealing to Example 3.4.2
again, this means _q_ must be even, so we can choose some _q_ ̄∈Z+such that
_q_ = 2 _q_ ̄. But then

#### √

```
2 = p / q =(2 p ̄)/(2 q ̄)= p ̄/ q ̄, so q ̄∈ S. Clearly q ̄< q ,
so this contradicts the fact that q was chosen to be the smallest element of S.
Therefore
```

#### √

```
2 is irrational. 
```

```
Exercises
```

```
∗1. This exercise gives an alternative way to justify the method of
strong induction. All variables in this exercise range overN. Suppose
```

296 _Mathematical Induction_

```
P ( n ) is a statement about a natural number n , and suppose that
∀ n [(∀ k < nP ( k ))→ P ( n )]. Let Q ( n ) be the statement∀ k < nP ( k ).
(a) Prove∀ nQ ( n )↔ ∀ nP ( n ) without using induction.
(b) Prove∀ nQ ( n ) by ordinary induction. Thus, by part (a),∀ nP ( n ) is
true.
```

2. This exercise gives an alternative way of writing the proof that

#### √

```
2 is
irrational. Use strong induction to prove that∀ q ∈N[ q > 0 → not ∃ p ∈
N( p / q =
```

#### √

#### 2)]

```
∗3. (a) Prove that√6 is irrational.
(b) Prove that
```

#### √

#### 2 +

#### √

```
3 is irrational.
```

4. The Martian monetary system uses colored beads instead of coins. A blue
    bead is worth 3 Martian credits, and a red bead is worth 7 Martian credits.
    Thus, three blue beads are worth 9 credits, and a blue and red bead together
    are worth 10 credits, but no combination of blue and red beads is worth
    11 credits. Prove that for all _n_ ≥12, there is some combination of blue
    and red beads that is worth _n_ credits.
5. Suppose that _x_ is a real number, _x_ =0, and _x_ + 1 / _x_ is an integer. Prove
    that for all _n_ ≥1, _xn_ + 1 / _xn_ is an integer.
∗6. Let _Fn_ be the _n_ thFibonacci number. All variables in this exercise range
overN
(a) Prove that for all _n_ ,

```
∑ n
i = 0 Fi = Fn +^2 -^1.
(b) Prove that for all n ,
```

```
∑ n
i = 0 ( Fi )
```

(^2) = _FnFn_ + 1.
(c) Prove that for all _n_ ,
∑ _n
i_ = 0 _F_^2 _i_ +^1 = _F_^2 _n_ +^2.
(d) Find a formula for
∑ _n
i_ = 0 _F_^2 _i_ and prove that your formula is correct.

7. Let _Fn_ be the _n_ thFibonacci number. All variables in this exercise range
    overN.
    (a) Prove that for all _m_ ≥1 and all _n_ , _Fm_ + _n_ = _Fm_ - 1 _Fn_ + _FmFn_ + 1.
(b) Prove that for all _m_ ≥1 and all _n_ ≥1, _Fm_ + _n_ = _Fm_ + 1 _Fn_ + 1 -
_Fm_ - 1 _Fn_ - 1.
    (c) Prove that for all _n_ , ( _Fn_ )^2 +( _Fn_ + 1 )^2 = _F_ 2 _n_ + 1 and ( _Fn_ + 2 )^2 -( _Fn_ )^2 =
       _F_ 2 _n_ + 2.
(d) Prove that for all _m_ and _n_ , if _m_ | _n_ then _Fm_ | _Fn_.
(e) See exercise 18 of Section 6.3 for the meaning of the notation used
in this exercise. Prove that for all _n_ ≥1,

```
F 2 n - 1 =
```

#### (

```
2 n - 2
0
```

#### )

#### +

#### (

```
2 n - 3
1
```

#### )

#### +

#### (

```
2 n - 4
2
```

#### )

#### + · · · +

#### (

```
n - 1
n - 1
```

#### )

#### =

```
∑ n -^1
```

```
i = 0
```

#### (

```
2 n - i - 2
i
```

#### )

```
Strong Induction 297
and
```

```
F 2 n =
```

#### (

```
2 n - 1
0
```

#### )

#### +

#### (

```
2 n - 2
1
```

#### )

#### +

#### (

```
2 n - 3
2
```

#### )

#### + · · · +

#### (

```
n
n - 1
```

#### )

#### =

```
∑ n -^1
```

```
i = 0
```

#### (

```
2 n - i - 1
i
```

#### )

#### 

```
∗8. A sequence of numbers a 0 , a 1 , a 2 ,... is called a generalized Fibonacci
sequence , or a Gibonacci sequence for short, if for every n ≥2,
an = an - 2 + an - 1. Thus, aGibonacci sequence satisfies the same recur-
rence relation as the Fibonacci numbers, but it may start out differently.
(a) Suppose c is a real number and∀ n ∈N( an = cn ). Prove that a 0 ,
a 1 , a 2 ,... is a Gibonacci sequence iff either c =(1+
```

#### √

```
5)/2 or
c =(1-
```

#### √

#### 5)/2

```
(b) Suppose s and t are real numbers, and for all n ∈N,
```

```
an = s
```

#### (

#### 1 +

#### √

#### 5

#### 2

```
) n
+ t
```

#### (

#### 1 -

#### √

#### 5

#### 2

```
) n
.
```

```
Prove that a 0 , a 1 , a 2 ,... is aGibonacci sequence.
(c) Suppose a 0 , a 1 , a 2 ,... is aGibonacci sequence. Prove that there are
real numbers s and t such that for all n ∈N,
```

```
an = s
```

#### (

#### 1 +

#### √

#### 5

#### 2

```
) n
+ t
```

#### (

#### 1 -

#### √

#### 5

#### 2

```
) n
.
```

```
(Hint: First show that there are real numbers s and t such that the
formula above is correct for a 0 and a 1. Then show that with this
choice of s and t , the formula is correct for all n .)
```

9. The _Lucas numbers_ (named for the French mathematician Edouard Lucas
    (1842–1891)) are the numbers _L_ 0 , _L_ 1 , _L_ 2 ,... defined as follows:

```
L 0 =2;
L 1 =1;
for every n ≥2, Ln = Ln - 2 + Ln - 1.
```

Find a formula for _Ln_ and prove that your formula is correct. (Hint: Apply
exercise 8.)
∗10. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:

```
a 0 = - 1;
a 1 =0;
for every n ≥2, an = 5 an - 1 - 6 an - 2.
```

298 _Mathematical Induction_

```
Find a formula for an and prove that your formula is correct. (Hint:
Imitate exercise 8.)
```

11. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:
    _a_ 0 =0;
    _a_ 1 =1;
    _a_ 2 =1;
    for every _n_ ≥3, _an_ =

#### 1

#### 2

```
an - 3 +
```

#### 3

#### 2

```
an - 2 +
```

#### 1

#### 2

```
an - 1.
```

```
Prove that for all n ∈N, an = Fn , the n thFibonacci number.
```

12. For each positive integer _n_ , let _An_ = { 1 , 2 ,... , _n_ }, and let _Pn_ =
    { _X_ ∈P( _An_ )| _X_ does not contain two consecutive integers}. For exam-
    ple, _P_ 3 = { ∅,{ 1 },{ 2 },{ 3 },{ 1 , 3 }}; _P_ 3 does not contain the sets{ 1 , 2 },
    { 2 , 3 }, and{ 1 , 2 , 3 }because each contains at least one pair of consecutive
    integers. Prove that for every _n_ , the number of elements in _Pn_ is _Fn_ + 2 , the
    ( _n_ +2)thFibonacci number. (For example, the number of elements in _P_ 3 is
    5 = _F_ 5. Hint: Which elements of _Pn_ contain _n_? Which don’t? The answers
    to both questions are related to the elements of _Pm_ , for certain _m_ < _n_ .)
13. Suppose _n_ and _m_ are integers and _m_ >0.
    (a) Prove that there are integers _q_ and _r_ such that _n_ = _mq_ + _r_ and
       0 ≤ _r_ < _m_. (Hint: If _n_ ≥0, then this follows from Theorem 6.4.1.
       If _n_ <0, then start by applying Theorem 6.4.1 to- _n_ and _m_ .)
(b) Prove that the integers _q_ and _r_ in part (a) are unique. In other
words, show that if _q_ ′and _r_ ′are integers such that _n_ = _mq_ ′+ _r_ ′and
0 ≤ _r_ ′< _m_ , then _q_ = _q_ ′and _r_ = _r_ ′.
    (c) Prove that, as claimed in Section 3.4, every integer is either even or
       odd but not both.
∗14. Suppose _k_ is a positive integer. Prove that there is some positive integer

```
a such that for all n > a , 2 n ≥ nk. (In the language of exercise 16 of
Section 5.1, this means that if f ( n )= nk and g ( n )= 2 n then f ∈ O ( g ).
Hint: By the division algorithm, for any natural number n there are nat-
ural numbers q and r such that n = kq + r and 0≤ r < k. Therefore
2 n ≥ 2 kq =(2 q ) k. To choose a , figure out how large q has to be to guar-
antee that 2 q ≥ n. You may find Example 6.1.3 useful.)
```

15. (a) Suppose _k_ is a positive integer, _a_ 1 , _a_ 2 ,... , _ak_ are real numbers, and
    _f_ 1 , _f_ 2 ,... , _fk_ , and _g_ are all functions fromZ+toR. Also, suppose
that _f_ 1 , _f_ 2 ,... , _fk_ are all elements of _O_ ( _g_ ). (See exercise 16 of
Section 5.1 for the meaning of the notation used here.) Define _f_ :
Z+→Rby the formula _f_ ( _n_ )= _a_ 1 _f_ 1 ( _n_ )+ _a_ 2 _f_ 2 ( _n_ )+ · · · + _akfk_ ( _n_ ).
Prove that _f_ ∈ _O_ ( _g_ ). (Hint: Use induction on _k_ , and exercise 16(c) of
Section 5.1.)

```
Strong Induction 299
(b) Let g :Z+→Rbe defined by the formula g ( n )= 2 n. Suppose a 0 ,
a 1 , a 2 ,... , ak are real numbers, and define f :Z+→R by the
formula f ( n )= a 0 + a 1 n + a 2 n^2 + · · · + aknk. (Such a function is
called a polynomial .) Prove that f ∈ O ( g ). (Hint: Use exercise 14 and
part (a).)
```

16. Suppose _a_ and _b_ are positive integers. Let _S_ = { _x_ ∈Z+| ∃ _s_ ∈Z∃ _t_ ∈
    Z( _x_ = _as_ + _bt_ )}. Note that _S_ =∅since, for example, _a_ = _a_ · 1 + _b_ ·0,
    and therefore _a_ ∈ _S_. Thus, by the well-ordering principle, we can let _d_ be
    the smallest element of _S_.
    (a) Prove that _d_ | _a_ and _d_ | _b_. (Hint: Use the division algorithm to choose
       integers _q_ and _r_ such that _a_ = _dq_ + _r_ and 0≤ _r_ < _d_. Now show that
_r_ =0).
(b) Prove that if _c_ is any integer such that _c_ | _a_ and _c_ | _b_ , then _c_ | _d_.
(Note that it follows that _c_ ≤ _d_ , so _d_ is the _greatest common divisor_
of _a_ and _b_ ).
17. (a) Suppose _a_ , _b_ , and _p_ are positive integers and _p_ is prime. Prove that if
    _p_ | _ab_ then either _p_ | _a_ or _p_ | _b_. (Hint: Let _d_ be the greatest common
divisor of _a_ and _p_. By exercise 16, _d_ = _as_ + _pt_ for some integers _s_
and _t_. Since _p_ is prime, there are not many possibilities for the value
of _d_. What are they?)
(b) Suppose _a_ 1 , _a_ 2 ,... , _an_ is a sequence of positive integers and _p_ is
a prime number. Prove that if _p_ |( _a_ 1 _a_ 2... _an_ ), then _p_ | _ai_ for some
_i_ , 1 ≤ _i_ ≤ _n_. (Hint: Use part (a) and induction.)
∗18. Suppose _p_ 1 , _p_ 2 ,... , _pj_ and _q_ 1 , _q_ 2 ,... , _qk_ are two sequences of prime

```
numbers and p 1 p 2... pj = q 1 q 2... qk. Suppose also that both sequences
are nondecreasing; that is, p 1 ≤ p 2 ≤... ≤ pj and q 1 ≤ q 2 ≤... ≤ qk.
Prove that the two sequences must be the same. In other words, j = k and
pi = qi for all i , 1 ≤ i ≤ j. (Hint: Apply exercise 17 and use induction
on either j or k. Note that this shows that the factorization of an integer
n >1 into primes in Theorem 6.4.2 is unique.)
```

19. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:

```
a 0 =1;
```

```
for every n ∈N, an + 1 = 1 +
```

```
∑ n
```

```
i = 0
```

```
ai.
```

Find a formula for _an_ and prove that your formula is correct.
∗20. A sequence _a_ 0 , _a_ 1 , _a_ 2 ,... is defined recursively as follows:

```
a 0 =1;
for every n ∈N, an + 1 = 1 +
```

#### 1

```
an
```

#### 

300 _Mathematical Induction_

```
Find a formula for an and prove that your formula is correct. (Hint: These
numbers are related to the Fibonacci numbers.)
```

## 6.5 Closures Again

In Chapter 4 we promised to give an alternative treatment of transitive clo-
sures of relations using mathematical induction. In this section we fulfill this
promise.
Recall that if _R_ is a relation on a set _A_ , then the transitive closure of _R_ is the
smallest relation _S_ on _A_ such that _R_ ⊆ _S_ and _S_ is transitive. In this section we’ll
find this relation _S_ by starting with _R_ and then adding only those ordered pairs
that _must_ be added if we want to end up with a transitive relation. We begin
with a sketchy description of how we’ll do this, motivated by the examples in
Section 4.5. Then we’ll use recursion and induction to make this sketchy idea
precise and prove that it works.
The examples in Section 4.5 suggested that if _a_ 0 , _a_ 1 ,... , _an_ is a list of
elements of _A_ such that ( _a_ 0 , _a_ 1 )∈ _R_ ,( _a_ 1 , _a_ 2 )∈ _R_ ,... , ( _an_ - 1 , _an_ )∈ _R_ , then
to create a transitive relation _S_ extending _R_ we must have ( _a_ 0 , _an_ )∈ _S_. Let’s
rephrase this idea in terms of composition of relations. Because ( _a_ 0 , _a_ 1 )∈ _R_
and ( _a_ 1 , _a_ 2 )∈ _R_ , by the definition of composition, ( _a_ 0 , _a_ 2 )∈ _R_ ◦ _R_. Similarly,
from ( _a_ 0 , _a_ 2 )∈ _R_ ◦ _R_ and ( _a_ 2 , _a_ 3 )∈ _R_ it follows that ( _a_ 0 , _a_ 3 )∈ _R_ ◦( _R_ ◦ _R_ ). It
isnaturaltocallthislastrelation _R_^3 .NotethatbyTheorem4.2.5,compositionof
relations is associative, so there is no ambiguity if we leave the parentheses out
of the definition of _R_^3 and write _R_^3 = _R_ ◦ _R_ ◦ _R_. Thus, we have ( _a_ 0 , _a_ 3 )∈ _R_^3 ,
and because ( _a_ 3 , _a_ 4 )∈ _R_ , it follows that ( _a_ 0 , _a_ 4 )∈ _R_ ◦ _R_^3 = _R_ ◦ _R_ ◦ _R_ ◦ _R_ =
_R_^4. Continuing in this way we’ll eventually reach the conclusion that ( _a_ 0 , _an_ )∈
_Rn_ = _R_ ◦ _R_ ◦ · · · ◦ _R_ , where there are _n R’_ s in the last composition. We’ll show
that the ordered pairs that must be added to _R_ to create a transitive relation are
the elements of _Rn_ for every positive integer _n_.
The use of an ellipsis in the last paragraph suggests that it might be best to
define _Rn_ by recursion. Here’s the precise definition:

```
R^1 = R ;
for every n ≥ 1 , Rn +^1 = Rn ◦ R.
```

Before using this definition to construct the transitive closure of _R_ , we prove a
lemma about it. Of course, the proof will be done by induction!

**Lemma 6.5.1.** _For all positive integers m and n, Rm_ + _n_ = _Rm_ ◦ _Rn.
Proof._ We let _m_ be an arbitrary positive integer and then proceed by induction
on _n_.

```
Closures Again 301
Base case: When n =1 we have
```

```
Rm +^1 = Rm ◦ R (by definition of Rm +^1 )
= Rm ◦ R^1 (by definition of R^1 ).
```

```
Induction step: Let n be an arbitrary positive integer and suppose Rm + n =
Rm ◦ Rn. Then
```

```
Rm +( n +1)= R ( m + n )+^1
= Rm + n ◦ R (by definition of R ( m + n )+^1 )
=( Rm ◦ Rn )◦ R (by inductive hypothesis)
= Rm ◦( Rn ◦ R ) (by associativity of composition)
= Rm ◦ Rn +^1 (by definition of Rn +^1 ). 
```

```
We can now say precisely how to form the transitive closure of R.
```

**Theorem 6.5.2.** _The transitive closure of R is_ , _n_ ∈Z+ _Rn.
Proof._ Let _S_ = , _n_ ∈Z+ _Rn_. Clearly _R_ = _R_^1 ⊆ _S_. To see that _S_ is transitive,
suppose ( _x_ , _y_ )∈ _S_ and ( _y_ , _z_ )∈ _S_. Then by the definition of _S_ , we can choose
positive integers _n_ and _m_ such that ( _x_ , _y_ )∈ _Rn_ and ( _y_ , _z_ )∈ _Rm_. But then by
Lemma 6.5.1, ( _x_ , _z_ )∈ _Rm_ ◦ _Rn_ = _Rm_ + _n_ , so ( _x_ , _z_ )∈ , _n_ ∈Z+ _Rn_ = _S_. Thus _S_ is
transitive.
Finally, suppose _R_ ⊆ _T_ ⊆ _A_ × _A_ and _T_ is transitive. We must show that
_S_ ⊆ _T_ , and clearly by the definition of _S_ it suffices to show that ∀ _n_ ∈
Z+( _Rn_ ⊆ _T_ ). We prove this by induction on _n_.
We have assumed _R_ ⊆ _T_ , so when _n_ =1 we have _Rn_ = _R_^1 = _R_ ⊆ _T_. For
the induction step, suppose _n_ is a positive integer and _Rn_ ⊆ _T_. Now suppose
( _x_ , _y_ )∈ _Rn_ +^1. Then by definition of _Rn_ +^1 we can choose some _z_ ∈ _A_ such
that ( _x_ , _z_ )∈ _R_ and ( _z_ , _y_ )∈ _Rn_. By assumption _R_ ⊆ _T_ , and by inductive hy-
pothesis _Rn_ ⊆ _T_. Therefore, ( _x_ , _z_ )∈ _T_ and ( _z_ , _y_ )∈ _T_ , so since _T_ is transitive,
( _x_ , _y_ )∈ _T_. Since ( _x_ , _y_ ) was an arbitrary element of _Rn_ +^1 , this shows that
_Rn_ +^1 ⊆ _T_. 

```
Commentary. Because the proof must refer to the set, n ∈Z+ Rn often, it is
convenient to give this set a name right at the beginning of the proof. According
to the definition of transitive closure we must prove three things: R ⊆ S , S is
transitive, and for all T , if R ⊆ T ⊆ A × A and T is transitive, then S ⊆ T. Of
course, we prove them one at a time.
Theproofofthefirstofthesegoalsisnotspelledout.Asusual,ifyoudon’tsee
why it is true you should work out the details of the proof yourself. The second
goal is to prove that S is transitive, and the proof is based on the definition of
```

302 _Mathematical Induction_

transitive. We let _x_ , _y_ , and _z_ be arbitrary, assume ( _x_ , _y_ )∈ _S_ and ( _y_ , _z_ )∈ _S_ , and
prove that ( _x_ , _z_ )∈ _S_. According to the definition of _S_ , the statement ( _x_ , _y_ )∈ _S_
means∃ _n_ ∈Z+(( _x_ , _y_ )∈ _Rn_ ), so we immediately introduce the variable _n_ to
standforapositiveintegersuchthat( _x_ , _y_ )∈ _Rn_ .Theassumptionthat( _y_ , _z_ )∈ _S_
is handled similarly. The goal ( _x_ , _z_ )∈ _S_ is also an existential statement, so to
prove it we must find a positive integer _k_ such that ( _x_ , _z_ )∈ _Rk_. We use Lemma
6.5.1 to show that _k_ = _m_ + _n_ works.
Finally, for the third goal we use the natural strategy of letting _T_ be arbitrary,
assumingthat _R_ ⊆ _T_ ⊆ _A_ × _A_ and _T_ istransitive,andthenprovingthat _S_ ⊆ _T_.
Once again, if you don’t see why the conclusion _S_ ⊆ _T_ follows from∀ _n_ ∈
Z+( _Rn_ ⊆ _T_ ), as claimed in the proof, you should work out the details of the
proof yourself. This last goal is proven by induction, as you might expect based
on the recursive nature of the definition of _Rn_. For the induction step, we let _n_
be an arbitrary positive integer, assume that _Rn_ ⊆ _T_ , and prove that _Rn_ +^1 ⊆ _T_.
To prove that _Rn_ +^1 ⊆ _T_ we take an arbitrary element of _Rn_ +^1 and prove that it
must be an element of _T_. Writing out the recursive definition of _Rn_ +^1 gives us
a way to use the inductive hypothesis, which, as usual, is the key to completing
the induction step.

We end this chapter by returning once again to one of the proofs in the intro-
duction. Recall that in our first proof in the introduction we used the formula

```
(2 b -1)·(1+ 2 b + 22 b + · · · + 2 ( a -1) b )= 2 ab - 1.
```

We discussed this proof again in Section 3.7 and promised to give a more
careful proof of this formula after we had discussed mathematical induction.
We are ready now to give this more careful proof. Of course, we can also state
the formula more precisely now, using summation notation.

**Theorem 6.5.3.** _For all positive integers a and b,_

```
(2 b -1)·
```

```
∑ a -^1
```

```
k = 0
```

```
2 kb = 2 ab - 1.
```

_Proof._ We let _b_ be an arbitrary positive integer and then proceed by induction
on _a_.
Base case: When _a_ =1 we have

```
(2 b -1)·
```

```
a ∑- 1
```

```
k = 0
```

```
2 kb =(2 b -1)·
```

#### ∑^0

```
k = 0
```

```
2 kb
```

```
=(2 b -1)· 1
= 2 ab - 1.
```

```
Closures Again 303
Induction step: Suppose a ≥1 and (2 b -1)·
```

```
∑ a - 1
k = 02 kb =^2 ab -1. Then
```

```
(2 b -1)·
```

```
∑ a
```

```
k = 0
```

```
2 kb =(2 b -1)·
```

```
( a - 1
∑
```

```
k = 0
```

```
2 kb + 2 ab
```

#### )

```
=(2 b -1)·
```

```
∑ a -^1
```

```
k = 0
```

```
2 kb + 2 b · 2 ab - 2 ab
```

```
= 2 ab - 1 + 2 b + ab - 2 ab
= 2 ( a +1) b - 1. 
```

```
Exercises
```

∗1. Suppose _f_ : _A_ → _A_. A set _C_ ⊆ _A_ is said to be _closed under f_ if

```
∀ x ∈ C ( f ( x )∈ C ). Now suppose B ⊆ A. The closure of B under f is
the smallest set C such that B ⊆ C ⊆ A and C is closed under f , if there
is such a smallest set. In this problem you will give two different proofs
that the closure of B under f exists.
(a) Let F= { C | B ⊆ C ⊆ A and C is closed under f }. Prove that
F=∅, and then prove that+Fis the closure of B under f.
(b) Define sets Bn , for n ≥1, as follows:
B 1 = B ;
for every n ≥ 1 , Bn + 1 = f ( Bn )= { f ( x )| x ∈ Bn }.
```

```
Prove that, n ∈Z+ Bn is the closure of B under f.
```

2. Let _f_ :R→Rbe defined by the formula _f_ ( _x_ )= _x_ +1. What is the
    closure of the set{ 0 }under _f_? (See exercise 1.)
3. SupposeFis a family of functions from _A_ to _A_ , and _B_ ⊆ _A_. The _closure of_
    _B under_ Fis the smallest set _C_ such that _B_ ⊆ _C_ ⊆ _A_ and for all _f_ ∈F, _C_
    is closed under _f_ , if there is such a smallest set. Prove that the closure of
    _B_ underFexists.
4. Suppose _f_ : _A_ × _A_ → _A_. If ( _x_ , _y_ )∈ _A_ × _A_ , then the result of applying
    _f_ to ( _x_ , _y_ ) should be written _f_ (( _x_ , _y_ )), but it is customary to leave out
    one set of parentheses and just write _f_ ( _x_ , _y_ ). A set _C_ ⊂ _A_ is said to be
    _closed under f_ if∀ _x_ ∈ _C_ ∀ _y_ ∈ _C_ ( _f_ ( _x_ , _y_ )∈ _C_ ). Now suppose _B_ ⊆ _A_.
    The _closure of B under f_ is the smallest set _C_ such that _B_ ⊆ _C_ ⊆ _A_ and
    _C_ is closed under _f_ , if there is such a smallest set. Prove that the closure
    of _B_ under _f_ exists.
∗5. Let _f_ :Z×Z→Zbe defined by the formula _f_ ( _x_ , _y_ )= _xy_. Let _P_ be

```
the set of all prime numbers. What is the closure of P under f? (See
exercise 4.)
```

304 _Mathematical Induction_

6. SupposeFis a family of functions from _A_ × _A_ to _A_ , and _B_ ⊆ _A_. Com-
    bining the ideas in exercises 3 and 4, we say that the _closure of B under_ F
    is the smallest set _C_ such that _B_ ⊆ _C_ ⊆ _A_ and for all _f_ ∈F, _C_ is closed
    under _f_ , if there is such a smallest set.
    (a) Prove that the closure of _B_ underFexists.
(b) Let _f_ :R×R→Rand _g_ :R×R→Rbe defined by the formulas
_f_ ( _x_ , _y_ )= _x_ + _y_ and _g_ ( _x_ , _y_ )= _xy_. Prove that the closure ofQ,
{

#### √

```
2 }under{ f , g }is the set{ a + b
```

#### √

```
2 | a ∈Q, b ∈Q}. (This set is
calledQ with
```

#### √

```
2 adjoined , and is denotedQ(
```

#### √

#### 2).)

```
(c) With f and g defined as in part (b), what is the closure ofQ, {^3
```

#### √

#### 2 }

```
under{ f , g }?
```

7. Suppose _R_ and _S_ are relations on _A_ and _R_ ⊆ _S_. Prove that for every
    positive integer _n_ , _Rn_ ⊆ _Sn_.
∗8. Suppose _R_ and _S_ are relations on _A_ and _n_ is a positive integer.
(a) What is the relationship between _Rn_ + _Sn_ and ( _R_ + _S_ ) _n_? Justify your
conclusions with proofs or counterexamples.
(b) What is the relationship between _Rn_ , _Sn_ and ( _R_ , _S_ ) _n_? Justify your
conclusions with proofs or counterexamples.
9. Suppose _R_ is a relation on _A_ and _S_ is the transitive closure of _R_.
    If ( _a_ , _b_ )∈ _S_ , then by Theorem 6.5.2 there is some positive integer
    _n_ such that ( _a_ , _b_ )∈ _Rn_ , and therefore by the well-ordering principle
    (Theorem 6.4.4), there must be a smallest such _n_. We define the _distance_
    from _a_ to _b_ to be the smallest positive integer _n_ such that ( _a_ , _b_ )∈ _Rn_ , and
    we write _d_ ( _a_ , _b_ ) to denote this distance.
    (a) Suppose that ( _a_ , _b_ )∈ _S_ and ( _b_ , _c_ )∈ _S_ (and therefore ( _a_ , _c_ )∈ _S_ , since
       _S_ is transitive). Prove that _d_ ( _a_ , _c_ )≤ _d_ ( _a_ , _b_ )+ _d_ ( _b_ , _c_ ).
(b) Suppose ( _a_ , _c_ )∈ _S_ and 0< _m_ < _d_ ( _a_ , _c_ ). Prove that there is some
_b_ ∈ _A_ such that _d_ ( _a_ , _b_ )= _m_ and _d_ ( _b_ , _c_ )= _d_ ( _a_ , _c_ )- _m_.
∗10. Suppose _R_ is a relation on _A_ and _S_ is the transitive closure of _R_. For each

```
positive integer n , let Jn = { 0 , 1 , 2 ,... , n }. If a ∈ A and b ∈ A , we will
say that a function f : Jn → A is an R-path from a to b of length n if
f (0)= a , f ( n )= b , and for all i < n , ( f ( i ), f ( i +1))∈ R.
(a) Prove that for all n ∈Z+, Rn = { ( a , b )∈ A × A |there is an R -path
from a to b of length n }.
(b) Prove that S = { ( a , b )∈ A × A |there is an R -path from a to b }.
```

11. Suppose _R_ is a relation on _A_ and _S_ is the transitive closure of _R_. If _f_
    is an _R_ -path, then we say that the path is _simple_ if _f_ is one-to-one. (See
    exercise 10 for the definition of _R-path_ .)
    (a) Prove that for all _n_ ∈Z+, _Rn_ \ _iA_ ⊆ { ( _a_ , _b_ )∈ _A_ × _A_ |there is a sim-
       ple _R_ -path from _a_ to _b_ of length at most _n_ }.

```
Closures Again 305
(b) Prove that S \ iA = { ( a , b )∈ A × A |there is a simple R -path from
a to b }.
```

12. Suppose _R_ is a relation on _A_. In this problem we find a relationship
    between distance, as defined in exercise 9, and the lengths of _R_ -paths,
    which were discussed in exercises 10 and 11.
    (a) Suppose _d_ ( _a_ , _b_ )= _n_ and _a_ = _b_. Prove that there is a simple _R_ -path
       from _a_ to _b_ of length _n_.
(b) Suppose _d_ ( _a_ , _a_ )= _n_. Prove that there is an _R_ -path _f_ from _a_ to _a_ of
length _n_ such that∀ _i_ < _n_ ∀ _j_ < _n_ ( _f_ ( _i_ )= _f_ ( _j_ )→ _i_ = _j_ ). (In other
words, _f_ is simple, except for the fact that _f_ (0)= _f_ ( _n_ )= _a_ .)
13. Suppose _R_ is a relation on _A_ , _S_ is the transitive closure of _R_ , and _A_ has
    _m_ elements. Prove that
       _S_ = _R_ , _R_^2 ,... , _Rm_ = ,{ _Rn_ | 1 ≤ _n_ ≤ _m_ }.
    (Hint: Use exercise 12. What is the maximum possible length of a simple
       _R_ -path?)
∗14. There is another proof in the introduction that could be written more rig-

```
orously using induction. Recall that in the proof of Theorem 4 in the intro-
duction we used the fact that if n is a positive integer, x =( n +1)!+2,
and 0≤ i ≤ n -1, then ( i +2)|( x + i ). Use induction to prove this. (We
used this fact to show that x + i is not prime.)
```

## 7 Infinite Sets

## 7.1 Equinumerous Sets

In this chapter, we’ll discuss a method of comparing the sizes of infinite sets.
Surprisingly, we’ll find that, in a sense, infinity comes in different sizes!By
now, you should be fairly proficient at reading and writing proofs, so we’ll
give less discussion of the strategy behind proofs and leave more proofs as
exercises.
For finite sets, we determine the size of a set by counting. What does it mean
to count the number of elements in a set? When you count the elements in a set
A, you point to the elements of A in turn while saying the words _one, two_ , and
so forth. We could think of this process as defining a function _f_ from the set
{ 1 , 2 ,... , _n_ }to _A_ , for some natural number _n_. For each _i_ ∈ { 1 , 2 ,... , _n_ }, we
let _f_ ( _i_ ) be the element of _A_ you’re pointing to when you say “ _i_ .” Because every
element of _A_ gets pointed to exactly once, the function _f_ is one-to-one and onto.
Thus, counting the elements of _A_ is simply a method of establishing a one-
to-one correspondence between the sets{ 1 , 2 ,... , _n_ }and _A_ , for some natural
number _n_. One-to-one correspondence is the key idea behind measuring the
sizes of sets, and sets of the form{ 1 , 2 ,... , _n_ }are the standards against which
we measure the sizes of finite sets. This suggests the following definition.

**Definition 7.1.1.** Suppose _A_ and _B_ are sets. We’ll say that _A_ is _equinumerous_
with _B_ if there is a function _f_ : _A_ → _B_ that is one-to-one and onto. We’ll write
_A_ ∼ _B_ to indicate that _A_ is equinumerous with _B_. For each natural number _n_ ,
let _In_ = { _i_ ∈Z+| _i_ ≤ _n_ }. A set _A_ is called _finite_ if there is a natural number _n_
such that _In_ ∼ _A_. Otherwise, _A_ is _infinite_.

You are asked in exercise 6 to show that if _A_ is finite, then there is _exactly one
n_ such that _In_ ∼ _A_. Thus, it makes sense to define the _number of elements_ of a

```
306
```

```
Equinumerous Sets 307
```

finite set _A_ to be the unique _n_ such that _In_ ∼ _A_. This number is also sometimes
called the _cardinality_ of _A_ , and it is denoted| _A_ |. Note that according to this
definition,∅is finite and|∅| = 0.
The definition of equinumerous can also be applied to infinite sets, with
results that are sometimes surprising. For example, you might think thatZ+
could not be equinumerous withZbecauseZincludes all the positive inte-
gers, plus all the negative integers and zero as well. But consider the function
_f_ :Z+→Zdefined as follows:

```
f ( n )=
```

#### ⎧

#### ⎪⎪«

#### ⎪⎪not 

```
n
2
```

```
if n is even
```

```
1 - n
2
```

```
if n is odd.
```

This notation means that for every positive integer _n_ , if _n_ is even then
_f_ ( _n_ )= _n_ /2 and if _n_ is odd then _f_ ( _n_ )=(1- _n_ )/2. The table of values for _f_ in
Figure 1 reveals a pattern that suggests that _f_ might be one-to-one and onto.

```
Figure 1
```

To check this more carefully, first note that for every positive integer _n_ , if
_n_ is even then _f_ ( _n_ )= _n_ / 2 >0, and if _n_ is odd then _f_ ( _n_ )=(1- _n_ )/ 2 ≤0.
Now suppose _n_ 1 and _n_ 2 are positive integers and _f_ ( _n_ 1 )= _f_ ( _n_ 2 ). If _f_ ( _n_ 1 )=
_f_ ( _n_ 2 )>0 then _n_ 1 and _n_ 2 must both be even, so the equation _f_ ( _n_ 1 )= _f_ ( _n_ 2 )
means _n_ 1 / 2 = _n_ 2 /2, and therefore _n_ 1 = _n_ 2. Similarly, if _f_ ( _n_ 1 )= _f_ ( _n_ 2 )≤ 0
then _n_ 1 and _n_ 2 are both odd, so we get (1- _n_ 1 )/ 2 =(1- _n_ 2 )/2, and once again
it follows that _n_ 1 = _n_ 2. Thus, _f_ is one-to-one.
To see that _f_ is onto, let _m_ be an arbitrary integer. If _m_ >0 then let _n_ = 2 _m_ ,
an even positive integer, and if _m_ ≤0 then let _n_ = 1 - 2 _m_ , an odd positive
integer. In both cases it is easy to verify that _f_ ( _n_ )= _m_. Thus, _f_ is onto as well
as one-to-one, so according to Definition 7.1.1,Z+∼Z.

308 _Infinite Sets_

Note that the function _f_ had to be chosen very carefully. There are many
other functions fromZ+toZthat are one-to-one but not onto, onto but not
one-to-one, or neither one-to-one nor onto, but this does not contradict our
claim thatZ+∼Z. According to Definition 7.1.1, to show thatZ+∼Zwe
need only show that there is at least one function fromZ+toZthat is both
one-to-one and onto, and of course to prove this it suffices to give an example
of such a function.
Perhaps an even more surprising example is thatZ+×Z+∼Z+. To show
this we must come up with a one-to-one, onto function _f_ :Z+×Z+→Z+.
An element of the domain of this function would be an ordered pair ( _i_ , _j_ ),
where _i_ and _j_ are positive integers. The result of applying _f_ to this pair should
be written _f_ (( _i_ , _j_ )), but it is customary to leave out one pair of parentheses
and just write _f_ ( _i_ , _j_ ). Exercise 12 asks you to show that the following formula
defines a function fromZ+×Z+toZ+that is one-to-one and onto:

```
f ( i , j )=
```

```
( i + j -2)( i + j -1)
2
```

```
+ i.
```

Once again, the table of values in Figure 2 may help you understand this
example.

```
Figure 2
```

**Theorem 7.1.2.** _Suppose A_ ∼ _B_ and _C_ ∼ _D. Then:_

1. _A_ × _C_ ∼ _B_ × _D_.
2. _If A and C are disjoint and B and D are disjoint, then A_ , _C_ ∼ _B_ , _D._

_Proof._ Since _A_ ∼ _B_ and _C_ ∼ _D_ , we can choose functions _f_ : _A_ → _B_ and
_g_ : _C_ → _D_ that are one-to-one and onto.

1. Define _h_ : _A_ × _C_ → _B_ × _D_ by the formula

```
h ( a , c )=( f ( a ), g ( c )).
```

```
To see that h is one-to-one, suppose h ( a 1 , c 1 )= h ( a 2 , c 2 ). This means
that ( f ( a 1 ), g ( c 1 ))=( f ( a 2 ), g ( c 2 )), so f ( a 1 )= f ( a 2 ) and g ( c 1 )= g ( c 2 ).
```

```
Equinumerous Sets 309
Since f and g are both one-to-one, it follows that a 1 = a 2 and c 1 = c 2 , so
( a 1 , c 1 )=( a 2 , c 2 ).
To see that h is onto, suppose ( b , d )∈ B × D. Then since f and g are both
onto, we can choose a ∈ A and c ∈ C such that f ( a )= b and g ( c )= d.
Therefore h ( a , c )=( f ( a ), g ( c ))=( b , d ), as required. Thus h is one-to-one
and onto, so A × C ∼ B × D.
```

2. Suppose _A_ and _C_ are disjoint and _B_ and _D_ are disjoint. You are asked in
    exercise 13 to show that _f_ , _g_ is a one-to-one, onto function from _A_ , _C_
    to _B_ , _D_ , so _A_ , _C_ ∼ _B_ , _D_. 

It is not hard to show that∼is reflexive, symmetric, and transitive, so it is
an equivalence relation. In other words, we have the following theorem:

**Theorem 7.1.3.** _For any sets A, B, and C:_

1. _A_ ∼ _A_.
2. _If A_ ∼ _B then B_ ∼ _A_.
3. _If A_ ∼ _B and B_ ∼ _C then A_ ∼ _C_.

_Proof._

1. The identity function _iA_ is a one-to-one, onto function from _A_ to _A_.
2. Suppose _A_ ∼ _B_. Then we can choose some function _f_ : _A_ → _B_ that is
    one-to-one and onto. By Theorem 5.3.4, _f_ -^1 is a function from _B_ to _A_.
    But now note that ( _f_ -^1 )-^1 = _f_ , which is a function from _A_ to _B_ , so by
    Theorem 5.3.4. again, _f_ -^1 is also one-to-one and onto. Therefore _B_ ∼ _A_.
3. Suppose _A_ ∼ _B_ and _B_ ∼ _C_. Then we can choose one-to-one, onto functions
    _f_ : _A_ → _B_ and _g_ : _B_ → _C_. By Theorem 5.2.5, _g_ ◦ _f_ : _A_ → _C_ is one-to-
    one and onto, so _A_ ∼ _C_. 

Theorems 7.1.2 and 7.1.3 are often helpful in showing that sets are equinu-
merous. For example, we showed earlier thatZ+×Z+∼Z+andZ+∼Z,
so by part 3 of Theorem 7.1.3 it follows thatZ+×Z+∼Z. Part 2 tells us
that we need not distinguish between the statements “ _A_ is equinumerous with
_B_ ” and “ _B_ is equinumerous with _A_ ”, because they are equivalent. For ex-
ample, we already know thatZ+×Z+∼Z+, so we can also writeZ+∼
Z+×Z+. By part 1 of Theorem 7.1.2,Z+×Z+∼Z×Z, so we also have
Z+∼Z×Z.
We have now found three sets,Z,Z+×Z+, andZ×Z, that are equinumer-
ous withZ+. Such sets are especially important and have a special name.

310 _Infinite Sets_

**Definition 7.1.4.** A set _A_ is called _denumerable_ ifZ+∼ _A_. It is called
_countable_ if it is either finite or denumerable. Otherwise, it is _uncountable_.

You might think of the countable sets as those sets whose elements can be
_counted_ by pointing to all of them, one by one, while naming positive integers
in order. If the counting process ends at some point, then the set is finite; and
if it never ends, then the set is denumerable. The following theorem gives two
more ways of thinking about countable sets.

**Theorem 7.1.5.** _Suppose A is a set. The following statements are equivalent:_

1. _A is countable_.
2. _Either A_ =∅ _or there is a function f_ :Z+→ _A that is onto._
3. _There is a function f_ : _A_ →Z+ _that is one-to-one._

_Proof._ 1 →2. Suppose _A_ is countable. If _A_ is denumerable, then there is a
function _f_ :Z+→ _A_ that is one-to-one and onto, so clearly statement 2 is
true. Now suppose A is finite. If _A_ =∅then there is nothing more to prove, so
suppose _A_ =∅. Then we can choose some element _a_ 0 ∈ _A_. Let _g_ : _In_ → _A_
be a one-to-one, onto function, where _n_ is the number of elements of _A_. Now
define _f_ :Z+→ _A_ as follows:

```
f ( i )=
```

#### {

```
g ( i ) if i ≤ n
a 0 if i > n.
```

It is easy to check now that _f_ is onto, as required.
2 →3. Suppose that either _A_ =∅or there is an onto function fromZ+to
_A_. We consider these two possibilities in turn. If _A_ =∅, then the empty set
is a one-to-one function from _A_ toZ+. Now suppose _g_ :Z+→ _A_ , and _g_ is
onto. Then for each _a_ ∈ _A_ , the set{ _n_ ∈Z+| _g_ ( _n_ )= _a_ }is not empty, so by the
well-ordering principle it must have a smallest element. Thus, we can define a
function _f_ : _A_ →Z+by the formula

```
f ( a )=the smallest n ∈Z+such that g ( n )= a.
```

Note that for each _a_ ∈ _A_ , _g_ ( _f_ ( _a_ ))= _a_ , so _g_ ◦ _f_ = _iA_. But then by Theo-
rem 5.3.3, it follows that _f_ is one-to-one, as required.
3 →1. Suppose _g_ : _A_ →Z+and _g_ is one-to-one. Let _B_ = Ran( _g_ )⊆Z+.
If we think of _g_ as a function from _A_ to _B_ , then it is one-to-one and onto, so
_A_ ∼ _B_. Thus, it suffices to show that _B_ is countable, since by Theorem 7.1.3
it follows from this that _A_ is also countable.
Suppose _B_ is not finite. We must show that _B_ is denumerable, which we can
do by defining a one-to-one, onto function _f_ :Z+→ _B_. The idea behind the

```
Equinumerous Sets 311
definition is simply to let f ( n ) be the n thelement of B , for each n ∈Z+. (Recall
that B ⊆Z+, so we can use the ordering of the positive integers to make sense
of the idea of the n thelement of B .) For a more careful definition of f and the
proof that f is one-to-one and onto, see exercise 14. 
```

If _A_ is countable and _A_ =∅, then by Theorem 7.1.5 there is a function
_f_ :Z+→ _A_ that is onto. If, for every _n_ ∈Z+, we let _an_ = _f_ ( _n_ ), then the fact
that _f_ is onto means that every element of _A_ appears at least once in the list
_a_ 1 , _a_ 2 , _a_ 3 ,.... In other words, _A_ = { _a_ 1 , _a_ 2 , _a_ 3 ,... }. Countability of a set _A_ is
often used in this way to enable us to write the elements of _A_ in a list, indexed
by the positive integers. In fact, you might want to think of countability for
nonempty sets as meaning _listability_. Of course, if _A_ is denumerable, then the
function _f_ can be taken to be one-to-one, which means that each element of _A_
will appear only once in the list _a_ 1 , _a_ 2 , _a_ 3 ,.... For an example of an application
of countability in which the elements of a countable set are written in a list,
see exercise 17.
Theorem 7.1.5 is also sometimes useful for proving that a set is denumerable,
as the proof of our next theorem shows.

```
Theorem 7.1.6. Q is denumerable.
Proof. Let f :Z×Z+→Qbe defined as follows:
```

```
f ( p , q )= p / q.
```

```
Clearly f is onto, since by definition all rational numbers can be written as
fractions, but note that f is not one-to-one. For example, f (1,2)= f (2,4)=
1 /2. SinceZ+∼Z, by Theorem 7.1.2 we haveZ+×Z+∼Z×Z+, and since
we already know thatZ+×Z+ is denumerable, it follows thatZ×Z+ is
also denumerable. Thus, we can choose a one-to-one, onto function g :Z+→
Z×Z+. By Theorem 5.2.5, f ◦ g :Z+→Qis onto, so by Theorem 7.1.5,
Qis countable. ClearlyQis not finite, so it must be denumerable. 
```

```
Although our focus in this chapter is on infinite sets, the methods in this
section can be used to prove theorems that are useful for computing the cardi-
nalities of finite sets. We end this section with one example of such a theorem,
and give several other examples in the exercises (see exercises 18–28).
```

```
Theorem 7.1.7. Suppose A and B are disjoint finite sets. Then A , B is finite,
and | A , B | = | A | + | B |.
```

312 _Infinite Sets_

_Proof._ Let _n_ = | _A_ | and _m_ = | _B_ |. Then _A_ ∼ _In_ and _B_ ∼ _Im_. Notice that
if _x_ ∈ _Im_ then 1≤ _x_ ≤ _m_ , and therefore _n_ + 1 ≤ _x_ + _n_ ≤ _n_ + _m_ , so _x_ +
_n_ ∈ _In_ + _m_ \ _In_. Thus we can define a function _f_ : _Im_ → _In_ + _m_ \ _In_ by the
formula _f_ ( _x_ )= _x_ + _n_. It is easy to check that _f_ is one-to-one and onto, so
_Im_ ∼ _In_ + _m_ \ _In_. Since _B_ ∼ _Im_ , it follows that _B_ ∼ _In_ + _m_ \ _In_. Applying part
2 of Theorem 7.1.2, we can conclude that _A_ , _B_ ∼ _In_ ,( _In_ + _m_ \ _In_ )= _In_ + _m_.
Therefore _A_ , _B_ is finite, and| _A_ , _B_ | = _n_ + _m_ = | _A_ | + | _B_ |. 

```
Exercises
```

```
∗1. Show that the following sets are denumerable.
(a) N.
(b) The set of all even integers.
```

2. Show that the following sets are denumerable:
    (a) Q×Q.
    (b) Q(

#### √

```
2). (See exercise 6(b) of Section 6.5 for the meaning of the
notation used here.)
```

3. In this problem we’ll use the following notation for intervals of real num-
    bers. If _a_ and _b_ are real numbers and _a_ < _b_ , then
       [ _a_ , _b_ ]= { _x_ ∈R| _a_ ≤ _x_ ≤ _b_ }
       ( _a_ , _b_ )= { _x_ ∈R| _a_ < _x_ < _b_ }
       ( _a_ , _b_ ]= { _x_ ∈R| _a_ < _x_ ≤ _b_ }
       [ _a_ , _b_ )= { _x_ ∈R| _a_ ≤ _x_ < _b_ }.

```
(a) Show that [0,1]∼[0,2].
(b) Show that (-π/ 2 , π/ 2)∼R. (Hint: Use a trigonometric function.)
(c) Show that (0,1)∼R.
(d) Show that (0,1]∼(0,1).
∗4. Justify your answer to each question with either a proof or a counter-
example.
(a) Suppose A ∼ B and A × C ∼ B × D. Must it be the case that
C ∼ D?
(b) Suppose A ∼ B , A and C are disjoint, B and D are disjoint, and
A , C ∼ B , D. Must it be the case that C ∼ D?
```

5. Prove that if _A_ ∼ _B_ thenP( _A_ )∼P( _B_ ).
∗6. (a) Prove that for all natural numbers _n_ and _m_ , if _In_ ∼ _Im_ then _n_ = _m_.
(Hint: Use induction on _n_ .)
(b) Prove that if _A_ is finite, then there is exactly one natural number _n_
such that _In_ ∼ _A_.

```
Equinumerous Sets 313
```

7. Suppose _A_ and _B_ are sets and _A_ is finite. Prove that _A_ ∼ _B_ iff _B_ is also
    finite and| _A_ | = | _B_ |.
∗8. (a) Prove that if _n_ ∈Nand _A_ ⊆ _In_ , then _A_ is finite and| _A_ | ≤ _n_. Further-
more, if _A_ = _In_ , then| _A_ |< _n_.
    (b) Provethatif _A_ isfiniteand _B_ ⊆ _A_ ,then _B_ isalsofinite,and| _B_ | ≤ | _A_ |.
       Furthermore, if _B_ = _A_ , then| _B_ |<| _A_ |.
9. Suppose _B_ ⊆ _A_ , _B_ = _A_ , and _B_ ∼ _A_. Prove that _A_ is infinite.
10. Prove that if _n_ ∈N, _f_ : _In_ → _B_ , and _f_ is onto, then _B_ is finite and
| _B_ | ≤ _n_.
11. Suppose _A_ and _B_ are finite sets and _f_ : _A_ → _B_.
(a) Prove that if| _A_ |<| _B_ |then _f_ is not onto.
(b) Prove that if| _A_ |>| _B_ |then _f_ is not one-to-one. (This is sometimes
called the _Pigeonhole Principle_ , because it means that if _n_ pigeons
are put into _m_ pigeonholes, where _n_ > _m_ , then some pigeonhole must
contain more than one pigeon.)
(c) Prove that if| _A_ | = | _B_ |then _f_ is one-to-one iff _f_ is onto.
∗12. Show that the function _f_ :Z+×Z+→Z+defined by the formula

```
f ( i , j )=
```

```
( i + j -2)( i + j -1)
2
```

```
+ i
```

```
is one-to-one and onto.
```

13. Complete the proof of part 2 of Theorem 7.1.2 by showing that if _f_ : _A_ →
    _B_ and _g_ : _C_ → _D_ are one-to-one, onto functions, _A_ and _C_ are disjoint,
and _B_ and _D_ are disjoint, then _f_ , _g_ is a one-to-one, onto function from
_A_ , _C_ to _B_ , _D_.
∗14. In this exercise you will complete the proof of 3→1 of Theorem 7.1.5.

```
Suppose B ⊆Z+and B is infinite. We now define a function f :Z+→ B
by recursion as follows:
```

```
For all n ∈Z+,
f ( n )=the smallest element of B \ { f ( m )| m ∈Z+, m < n }.
```

```
Of course, the definition is recursive because the specification of f ( n )
refers to f ( m ) for all m < n.
(a) Suppose n ∈Z+.Thedefinitionof f ( n )onlymakessenseifwecanbe
sure that B \{ f ( m )| m ∈Z+, m < n } =∅, in which case the well-
ordering principle guarantees that it has a smallest element. Prove
that B \{ f ( m )| m ∈Z+, m < n } =∅. (Hint: See exercise 10.)
(b) Prove that for all n ∈Z+, f ( n )≥ n.
(c) Prove that f is one-to-one and onto.
```

15. Prove that if _B_ ⊆ _A_ and _A_ is countable, then _B_ is countable.
16. Prove that if _B_ ⊆ _A_ , _A_ is infinite, and _B_ is finite, then _A_ \ _B_ is infinite.

314 _Infinite Sets_
∗17. Suppose _A_ is denumerable and _R_ is a partial order on _A_. Prove that _R_
can be extended to a total order on _A_. In other words, prove that there
is a total order _T_ on _A_ such that _R_ ⊆ _T_. Note that we proved a similar
theorem for finite _A_ in Example 6.2.2. (Hint: Since _A_ is denumerable,
we can write the elements of _A_ in a list: _A_ = { _a_ 1 , _a_ 2 , _a_ 3 ,... }. Now, us-
ing exercise 2 of Section 6.2, recursively define partial orders _Rn_ , for
_n_ ∈N, so that _R_ = _R_ 0 ⊆ _R_ 1 ⊆ _R_ 2 ⊆... and∀ _i_ ∈ _In_ ∀ _j_ ∈Z+(( _ai_ , _aj_ )∈
_Rn_ or ( _aj_ , _ai_ )∈ _Rn_ ). Let _T_ = , _n_ ∈N _Rn_ .)

18. Suppose _A_ is finite and _B_ ⊆ _A_. By exercise 8, _B_ and _A_ \ _B_ are both finite.
    Prove that| _A_ \ _B_ | = | _A_ | - | _B_ |. (In particular, if _a_ ∈ _A_ then| _A_ \ { _a_ }| =
    | _A_ | - 1. We used this fact in several proofs in Chapter 6; for example, we
    used it in Examples 6.2.1 and 6.2.2.)
19. Suppose _n_ is a positive integer and for each _i_ ∈ _In_ , _Ai_ is a finite set. Also,
    assume that∀ _i_ ∈ _In_ ∀ _j_ ∈ _In_ ( _i_ = _j_ → _Ai_ + _Aj_ =∅). Prove that, _i_ ∈ _InAi_
    is finite and| , _i_ ∈ _InAi_ | =

```
∑ n
∗ i =^1 | Ai |.
```

20. (a) Prove that if _A_ and _B_ are finite sets, then _A_ × _B_ is finite and| _A_ ×
    _B_ | = | _A_ | · | _B_ |. (Hint: Use induction on| _B_ |. In other words, prove
the following statement by induction:∀ _n_ ∈N∀ _A_ ∀ _B_ (if _A_ and _B_ are
finite and| _B_ | = _n_ , then _A_ × _B_ is finite and| _A_ × _B_ | = | _A_ | · _n_ ). You
may find Theorem 4.1.3 useful.)
(b) A meal at Alice’s Restaurant consists of an entree and a dessert. The
entree can be either steak, chicken, pork chops, shrimp, or spaghetti,
and dessert can be either ice cream, cake, or pie. How many different
meals can you order at Alice’s Restaurant?
21. For any sets _A_ and _B_ , the set of all functions from _A_ to _B_ is de-
    noted _AB_.
    (a) Prove that if _A_ ∼ _B_ and _C_ ∼ _D_ then _AC_ ∼ _BD_.
    (b) Prove that if _A_ , _B_ , and _C_ are sets and _A_ + _B_ =∅, then _A_ , _BC_ ∼
       _AC_ × _BC_.
    (c) Prove that if _A_ and _B_ are finite sets, then _AB_ is finite and| _AB_ | =
       | _B_ || _A_ |. (Hint: Use induction on| _A_ |.)
    (d) A professor has 20 students in his class, and he has to assign a grade
       of either A, B, C, D, or F to each student. In how many ways can the
       grades be assigned?
∗22. Suppose| _A_ | = _n_ , and let _F_ = { _f_ | _f_ is a one-to-one, onto function from
_In_ to _A_ }.
(a) Prove that _F_ is finite, and| _F_ | = _n_ !. (Hint: Use induction on _n_ .)
(b) Let _L_ = { _R_ | _R_ is a total order on _A_ }. Prove that _F_ ∼ _L_ , and therefore
| _L_ | = _n_ !.
(c) Five people are to sit in a row of five seats. In how many ways can
they be seated?

```
Countable and Uncountable Sets 315
```

23. Suppose _A_ is a finite set and _R_ is an equivalence relation on _A_.
    Suppose also that there is some positive integer _n_ such that∀ _x_ ∈
       _A_ (|[ _x_ ] _R_ | = _n_ ). Prove that _A_ / _R_ is finite and| _A_ / _R_ | = | _A_ |/ _n_. (Hint: Use
    exercise 19.)
24. (a) Suppose that _A_ and _B_ are finite sets. Prove that _A_ , _B_ is finite, and
    | _A_ , _B_ | = | _A_ | + | _B_ | - | _A_ + _B_ |.
    (b) Suppose that _A_ , _B_ , and _C_ are finite sets. Prove that _A_ , _B_ , _C_ is
       finite, and| _A_ , _B_ , _C_ | = | _A_ | + | _B_ | + | _C_ | - | _A_ + _B_ | - | _A_ + _C_ | -
       | _B_ + _C_ | + | _A_ + _B_ + _C_ |.
∗25. In this problem you will prove the _Inclusion–Exclusion Principle_ , which

```
generalizes the formulas in exercise 24. Suppose A 1 , A 2 ,... , An are finite
sets. Let P =P( In )\{∅}, and for each S ∈ P let AS = + i ∈ SAi. Prove
that, i ∈ InAi is finite and
```

#### ∣∣

```
, i ∈ InAi
```

#### ∣∣

#### =

#### ∑

#### S ∈ P (-1)

| _S_ |+ (^1) | _AS_ |. (The notation
on the right side of this equation denotes the result of running through
all sets _S_ ∈ _P_ , computing the number (-1)| _S_ |+^1 | _AS_ |for each _S_ , and then
adding these numbers. Hint: Use induction on _n_ .)

26. Prove that if _A_ and _B_ are finite sets and| _A_ | = | _B_ |, then| _A_  _B_ |is even.
27. Each customer in a certain bank has a PIN number, which is a sequence
    of four digits. Show that if the bank has more than 10,000 customers,
    then some two customers must have the same PIN number. (Hint: See
    exercise 11.)
28. Alice opened her grade report and exclaimed, “I can’t believe Professor
    Jonesflunked me in Probability.” “You were in that course?” said Bob.
    “That’s funny, I was in it too, and I don’t remember ever seeing you there.”
    “Well,” admitted Alice sheepishly, “I guess I did skip class a lot.” “Yeah,
    me too” said Bob. Prove that either Alice or Bob missed at least half of
    the classes.

## 7.2 Countable and Uncountable Sets

Often when we perform some set-theoretic operation with countable sets, the
result is again a countable set.

**Theorem 7.2.1.** _Suppose A and B are countable sets. Then:_

1. _A_ × _B is countable_.
2. _A_ , _B is countable_.

_Proof._ Since _A_ and _B_ are countable, by Theorem 7.1.5 we can choose one-to-
one functions _f_ : _A_ →Z+and _g_ : _B_ →Z+.

316 _Infinite Sets_

1. Define _h_ : _A_ × _B_ →Z+×Z+by the formula

```
h ( a , b )=( f ( a ), g ( b )).
```

```
As in the proof of part 1 Theorem 7.1.2, it is not hard to show that h is one-
to-one. SinceZ+×Z+is denumerable, we can let j :Z+×Z+→Z+be
a one-to-one, onto function. Then by Theorem 5.2.5, j ◦ h : A × B →Z+
is one-to-one, so by Theorem 7.1.5, A × B is countable.
```

2. Define _h_ : _A_ , _B_ →Zas follows:

```
h ( x )=
```

#### {

```
f ( x )
- g ( x )
```

```
if x ∈ A
if x ∈/ A.
```

```
We claim now that h is one-to-one. To see why, suppose that h ( x 1 )= h ( x 2 ),
for some x 1 and x 2 in A , B. If h ( x 1 )= h ( x 2 )>0, then according to the
definition of h , we must have x 1 ∈ A , x 2 ∈ A , and f ( x 1 )= h ( x 1 )= h ( x 2 )=
f ( x 2 ). But then since f is one-to-one, x 1 = x 2. Similarly, if h ( x 1 )= h ( x 2 )≤
0, then we must have g ( x 1 )= - h ( x 1 )= - h ( x 2 )= g ( x 2 ), and then since g
is one-to-one, x 1 = x 2. Thus, h is one-to-one.
SinceZis denumerable, we can let j :Z→Z+be a one-to-one, onto
function. As in part 1, we then find that j ◦ h : A , B →Z+is one-to-one,
so A , B is countable.

```

As our next theorem shows, part 2 of Theorem 7.2.1 can be extended to
unions of more than two sets.

**Theorem 7.2.2.** _The union of countably many countable sets is countable. In
other words, if_ F _is a family of sets,_ F _is countable, and also every element of_
F _is countable, then_ ,F _is countable.
Proof._ We will assume first that∅∈/F. At the end of the proof we will discuss
the case∅∈F.
IfF=∅, then of course,F=∅, which is countable. Now supposeF=
∅. Then, as described after the proof of Theorem 7.1.5, sinceF is count-
able and nonempty we can write the elements ofFin a list, indexed by the
positive integers. In other words, we can say thatF= { _A_ 1 , _A_ 2 , _A_ 3 ,... }. Sim-
ilarly, every element ofFis countable and nonempty (since∅∈/F), so for
each positive integer _i_ the elements of _Ai_ can be written in a list. Thus we
can write

```
A 1 = { a 11 , a^12 , a 31 ,... },
A 2 = { a 12 , a^22 , a 32 ,... },
```

```
Countable and Uncountable Sets 317
and, in general,
```

```
Ai = { a 1 i , ai 2 , ai 3 ,... }.
```

```
Note that, by the definition of union,,F= { aij | i ∈Z+, j ∈Z+}.
Now define a function f :Z+×Z+→ , Fby the formula
```

```
f ( i , j )= aij.
```

```
Clearly f is onto. SinceZ+×Z+is denumerable, we can let g :Z+→Z+×
Z+be a one-to-one, onto function. Then f ◦ g :Z+→ , Fis onto, so,Fis
countable.
Finally, suppose∅∈F. LetF′=F\{∅}. ThenF′is also a countable
family of countable sets and∅ ∈/F′, so by the earlier reasoning,,F′ is
countable. But clearly,F= , F′, so ,Fis countable too. 
```

Another operation that preserves countability is the formation of finite se-
quences. Suppose _A_ is a set and _a_ 1 , _a_ 2 ,... , _an_ is a list of elements of _A_. We
might specify the terms in this list with a function _f_ : _In_ → _A_ , where for each
_i_ , _f_ ( _i_ )= _ai_ =the _i_ thterm in the list. Such a function is called a _finite sequence_
of elements of _A_.

```
Definition 7.2.3. Suppose A is a set. A function f : In → A , where n is a
natural number, is called a finite sequence of elements of A , and n is called the
length of the sequence.
```

```
Theorem 7.2.4. Suppose A is a countable set. Then the set of all finite se-
quences of elements of A is also countable.
Proof. For each n ∈N, let Sn be the set of all sequences of length n of elements
of A. We first show that for every n ∈N, Sn is countable. We proceed by
induction on n.
In the base case we assume n =0. Note that I 0 =∅, so a sequence of length
0 is a function f :∅→ A , and the only such function is∅. Thus, S 0 ={∅},
which is clearly a countable set.
For the induction step, suppose n is a natural number and Sn is countable. We
must show that Sn + 1 is countable. Consider the function F : Sn × A → Sn + 1
defined as follows:
F ( f , a )= f , { ( n + 1 , a )}.
```

```
In other words, for any sequence f ∈ Sn and any element a ∈ A , F ( f , a ) is the
sequence you get by starting with f , which is a sequence a length n , and then
tacking on a as term number n +1. You are asked in exercise 2 to verify that F
```

318 _Infinite Sets_

is one-to-one and onto. Thus, _Sn_ × _A_ ∼ _Sn_ + 1. But _Sn_ and _A_ are both countable,
so by Theorem 7.2.1 _Sn_ × _A_ is countable, and therefore _Sn_ + 1 is countable.
This completes the inductive proof that for every _n_ ∈N, _Sn_ is countable.
Finally, note that the set of all finite sequences of elements of _A_ is, _n_ ∈N _Sn_ , and
this is countable by Theorem 7.2.2. 

As an example of the use of Theorem 7.2.4, you should be able to show
that the set of all grammatical sentences of English is a denumerable set. (See
exercise 10.)
By now you may be wondering if perhaps _all_ sets are countable!Is there any
set-theoretic operation that can be used to produce uncountable sets? We’ll see
in our next theorem that the answer is yes, the power set operation. This fact was
discovered by theGerman mathematicianGeorg Cantor (1845–1918) by means
of a famous and ingenious proof. In fact, it was Cantor who first conceived of the
idea of comparing the sizes of infinite sets. Important mathematical theorems
are often named after their discoverers, so we have identified Theorem 7.2.5 as
_Cantor’s theorem_. Cantor’s proof is somewhat harder than the previous proofs
in this chapter, so we’ll discuss the strategy behind the proof before presenting
the proof itself.

**Theorem 7.2.5.** _(Cantor’s theorem)_ P(Z+) _is uncountable._

_Scratch work_

The proof is based on statement 2 of Theorem 7.1.5. We’ll show that there
is no function _f_ :Z+→P(Z+) that is onto. ClearlyP(Z+)=∅, so by
Theorem 7.1.5 this shows thatP(Z+) is not countable.
Our strategy will be to let _f_ :Z+→P(Z+) be an arbitrary function and
prove that _f_ is not onto. Reexpressing this negative goal as a positive statement,
we must show that∃ _D_ [ _D_ ∈P(Z+)and  ∀ _n_ ∈Z+( _D_ = _f_ ( _n_ ))]. This suggests
that we should try to find a particular set _D_ for which we can prove both
_D_ ∈P(Z+) and∀ _n_ ∈Z+( _D_ = _f_ ( _n_ )). This is the most difficult step in figuring
out the proof. There is a set _D_ that makes the proof work, but it will take some
cleverness to come up with it.
We want to make sure that _D_ ∈P(Z+), or in other words _D_ ⊆Z+, so we
know that we need only consider positive integers when deciding what the
elements of _D_ should be. But this still leaves us infinitely many decisions to
make: For each positive integer _n_ , we must decide whether or not we want _n_
to be an element of _D_. We also need to make sure that∀ _n_ ∈Z+( _D_ = _f_ ( _n_ )).
This imposes infinitely many restrictions on our choice of _D_ : For each positive
integer _n_ , we must make sure that _D_ = _f_ ( _n_ ). Why not make each of our

```
Countable and Uncountable Sets 319
```

infinitely many decisions in such a way that it guarantees that the corresponding
restriction is satisfied? In other words, for each positive integer _n_ , we’ll make
our decision about whether or not _n_ is an element of _D_ in such a way that it
will guarantee that _D_ = _f_ ( _n_ ). This isn’t hard to do. We can let _n_ be an element
of _D_ if _n_ ∈/ _f_ ( _n_ ), and leave _n_ out of _D_ if _n_ ∈ _f_ ( _n_ ). This will guarantee that
_D_ = _f_ ( _n_ ), because one of these sets will contain _n_ as an element and the other
won’t. This suggests that we should let _D_ = { _n_ ∈Z+| _n_ ∈/ _f_ ( _n_ )}.
Figure 1 may help you understand the definition of the set _D_. For each
_m_ ∈Z+, _f_ ( _m_ ) is a subset ofZ+, which can be specified by saying, for each
positive integer _n_ , whether or not _n_ ∈ _f_ ( _m_ ). The answers to these questions
can be arranged in a table as shown in Figure 1. Each row of the table gives the
answers needed to specify the set _f_ ( _m_ ) for a particular value of _m_. The set _D_
can also be specified with a row of yesses and noes, as shown at the bottom of
Figure 1. For each _n_ ∈Z+we’ve decided to determine whether or not _n_ ∈ _D_
by asking whether or not _n_ ∈ _f_ ( _n_ ), and the answers to these questions are the
ones surrounded by boxes in Figure 1. Because _n_ ∈ _D_ iff _n_ ∈/ _f_ ( _n_ ), the row of
yesses and noes that specifies _D_ can be found by reading the boxed answers
along the diagonal of Figure 1, and reversing all the answers. This is guaranteed
to be different from every row of the table in Figure 1, because for each _n_ ∈Z+
it differs from row _n_ in the _n_ thposition.

```
Figure 1
```

If you found this reasoning difficult to follow, don’t worry about it. Remem-
ber, the reasoning used in choosing the set _D_ won’t be part of the proof anyway!
After you finish reading the proof, you can go back and try reading the last two
paragraphs again.
It should be clear that the set _D_ we have chosen is a subset ofZ+, so
_D_ ∈P(Z+). Our other goal is to prove that∀ _n_ ∈Z+( _D_ = _f_ ( _n_ )), so we let _n_

320 _Infinite Sets_

be an arbitrary positive integer and prove _D_ = _f_ ( _n_ ). Now recall that we chose
_D_ carefully so that we would be able to prove _D_ = _f_ ( _n_ ), and the reasoning
behind this choice hinged on whether or not _n_ ∈ _f_ ( _n_ ). Perhaps the easiest way
to write the proof is to consider the two cases _n_ ∈ _f_ ( _n_ ) and _n_ ∈/ _f_ ( _n_ ) separately.
In each case, applying the definition of _D_ easily leads to the conclusion that
_D_ = _f_ ( _n_ ).

_Proof._ Suppose _f_ :Z+→P(Z+). We will show that _f_ cannot be onto by
finding a set _D_ ∈P(Z+) such that _D_ ∈/Ran( _f_ ). Let _D_ = { _n_ ∈Z+| _n_ ∈/ _f_ ( _n_ )}.
Clearly _D_ ⊆Z+, so _D_ ∈P(Z+). Now let _n_ be an arbitrary positive integer.
We consider two cases.
_Case 1_. _n_ ∈ _f_ ( _n_ ). Since _D_ = { _n_ ∈Z+| _n_ ∈/ _f_ ( _n_ )}, we can conclude that
_n_ ∈/ _D_. But then since _n_ ∈ _f_ ( _n_ ) and _n_ ∈/ _D_ , it follows that _D_ = _f_ ( _n_ ).
_Case 2_. _n_ ∈/ _f_ ( _n_ ). Then by the definition of _D_ , _n_ ∈ _D_. Since _n_ ∈ _D_ and
_n_ ∈/ _f_ ( _n_ ), _D_ = _f_ ( _n_ ).
Since these cases are exhaustive, this shows that∀ _n_ ∈Z+( _D_ = _f_ ( _n_ )), so
_D_ ∈/ Ran( _f_ ). Since _f_ was arbitrary, this shows that there is no onto function
_f_ :Z+→P(Z+). ClearlyP(Z+)=∅, so by Theorem 7.1.5,P(Z+) is
uncountable. 

The method used in the proof of Theorem 7.2.5 is called _diagonaliza-
tion_ because of the diagonal arrangement of the boxed answers in Figure 1.
Diagonalization is a powerful technique that can be used to prove many the-
orems, including our next theorem. However, rather than doing another di-
agonalization argument, we’ll simply apply Theorem 7.2.5 to prove the next
theorem.

**Theorem 7.2.6.** R _is uncountable.
Proof._ We will define a function _f_ :P(Z+)→R and show that _f_ is
one-to-one. IfRwere countable, then there would be a one-to-one function
_g_ :R→Z+. But then _g_ ◦ _f_ would be a one-to-one function fromP(Z+) to
Z+and thereforeP(Z+) would be countable, contradicting Cantor’s theorem.
Thus, this will show thatRis uncountable.
To define _f_ , suppose _A_ ∈P(Z+). Then _f_ ( _A_ ) will be a real number between
0 and 1 that we will specify by giving its decimal expansion. For each positive
integer _n_ , the _n_ thdigit of _f_ ( _A_ ) will be the number _dn_ defined as follows:

```
dn =
```

#### {

```
3 if n ∈/ A
7 if n ∈ A.
```

```
Countable and Uncountable Sets 321
```

In other words, in decimal notation we have _f_ ( _A_ )= 0. _d_ 1 _d_ 2 _d_ 3.... For example,
if _E_ is the set of all positive even integers, then _f_ ( _E_ )= 0. 37373737.... If _P_
is the set of all prime numbers, then _f_ ( _P_ )= 0. 37737373337....
To see that _f_ is one-to-one, suppose that _A_ ∈P(Z+), _B_ ∈P(Z+), and _A_ =
_B_. Then there is some _n_ ∈Z+such that either _n_ ∈ _A_ and _n_ ∈/ _B_ , or _n_ ∈ _B_ and
_n_ ∈/ _A_. But then _f_ ( _A_ ) and _f_ ( _B_ ) cannot be equal, since their decimal expansions
differ in the _n_ thdigit. Thus, _f_ is one-to-one.

```
Exercises
```

∗1. (a) Prove that the set of all irrational numbers,R\Q, is uncountable.

```
(b) Prove thatR\Q∼R.
```

2. Let _F_ : _Sn_ × _A_ → _Sn_ + 1 be the function defined in the proof of Theo-
    rem 7.2.4. Show that _F_ is one-to-one and onto.
3. Let _P_ = { _X_ ∈P(Z+)| _X_ is finite}. Prove that _P_ is denumerable.
∗4. Prove the following more general form of Cantor’s theorem: For any set

```
A , A ∼P( A ). (Hint: Imitate the proof of Theorem 7.2.5.)
```

5. For the meaning of the notation used in this exercise, see exercise 21 of
    Section 7.1.
       (a) Prove that for any sets _A_ , _B_ , and _C_ , _A_ ( _B_ × _C_ )∼ _AB_ × _AC_.
    (b) Prove that for any sets _A_ , _B_ , and _C_ ,( _A_ × _B_ ) _C_ ∼ _A_ ( _BC_ ).
       (c) Prove that for any set _A_ ,P( _A_ )∼ _A_ {yes,no}. (Note that if _A_ is finite
          and| _A_ | = _n_ then, by exercise 21(c) of Section 7.1, it follows that
          |P( _A_ )| = |{ yes,no}|| _A_ |= 2 _n_. Of course, you already proved this, by
          a different method, in exercise 10 of Section 6.2.)
    (d) Prove thatZ+P(Z+)∼P(Z+).
6. Suppose _A_ is denumerable. Prove that there is a partition _P_ of _A_ such that
    _P_ is denumerable and for every _X_ ∈ _P_ , _X_ is denumerable.
∗7. Prove that if _A_ and _B_ are disjoint sets, then P( _A_ , _B_ )∼P( _A_ )×

```
P( B ).
```

8. Suppose _A_ ⊆R+, _b_ ∈R+, and for every list _a_ 1 , _a_ 2 ,... , _an_ of finitely many
    distinct elements of _A_ , _a_ 1 + _a_ 2 + · · · + _an_ ≤ _b_. Prove that _A_ is countable.
    (Hint: For each positive integer _n_ , let _An_ = { _x_ ∈ _A_ | _x_ ≥ 1 / _n_ }. What can
    you say about the number of elements in _An_ ?)
∗9. SupposeF⊆ { _f_ | _f_ :Z+→R}andFis countable. Prove that there is

```
a function g :Z+→Rsuch thatF⊆ O ( g ). (See exercise 16 of Section
5.1 for the meaning of the notation used here.)
```

10. Prove that the set of all grammatical sentences of English is denumer-
    able. (Hint: Every grammatical sentence of English is a finite sequence

322 _Infinite Sets_

```
of English words. First show that the set of all grammatical sentences is
countable, and then show that it is infinite.)
```

11. Some real numbers can be defined by a phrase in the English language.
    For example, the phrase “the ratio of the circumference of a circle to its
    diameter” defines the numberπ.
    (a) Prove that the set of numbers that can be defined by an English phrase
       is denumerable. (Hint: See exercise 10.)
    (b) Prove that there are real numbers that cannot be defined by English
       phrases.

## 7.3 The Cantor–Schr ̈oder–Bernstein Theorem

Suppose _A_ and _B_ are sets and _f_ is a one-to-one function from _A_ to _B_. Then _f_
shows that _A_ ∼Ran( _f_ )⊆ _B_ , so it is natural to think of _B_ as being _at least as
large as A_. This suggests the following notation:

**Definition 7.3.1.** If _A_ and _B_ are sets, then we will say that _B dominates A_ , and
write _A_  _B_ , if there is a function _f_ : _A_ → _B_ that is one-to-one. If _A_  _B_
and _A_ ∼ _B_ , then we say that _B strictly dominates A_ , and write _A_ ≺ _B_.

For example, in the proof of Theorem 7.2.6 we gave a one-to-one function
_f_ :P(Z+)→R, so P(Z+)R. Of course, for any sets _A_ and _B_ , if _A_ ∼ _B_
then also _A_  _B_. It should also be clear that if _A_ ⊆ _B_ then _A_  _B_. For example,
Z+R. In fact, by Theorem 7.2.6 we also know thatZ+ ∼R, so we can say
thatZ+ ≺R.
You might think thatwould be a partial order, but it turns out that it isn’t.
You’re asked in exercise 1 to check thatis reflexive and transitive, but it
is not antisymmetric. (In the terminology of exercise 24 of Section 4.6,is
a preorder.) For example,Z+∼Q, so Z+QandQZ+, but of course
Z+=Q. But this suggests an interesting question: If _A_  _B_ and _B_  _A_ , then
_A_ and _B_ might not be equal, but must they be equinumerous?
The answer, it turns out, is yes, as we’ll prove in our next theorem. Several
mathematicians’ names are usually associated with this theorem. Cantor proved
a limited version of the theorem, and later Ernst Schr ̈oder (1841–1902) and
Felix Bernstein (1878–1956) discovered proofs independently.

**Theorem 7.3.2.** (Cantor–Schr ̈oder–Bernstein theorem) _Suppose A and B are
sets. If A_  _B_ and _B_  _A,_ then _A_ ∼ _B._

```
The Cantor–Schroder–Bernstein Theorem ̈ 323
Scratch work
```

We start by assuming that _A_  _B_ and _B_  _A_ , which means that we can choose
one-to-one functions _f_ : _A_ → _B_ and _g_ : _B_ → _A_. To prove that _A_ → _B_ we
need to find a one-to-one, onto function _h_ : _A_ → _B_.
At this point, we don’t know much about _A_ and _B_. The only tools we have to
help us match up the elements of _A_ and _B_ are the functions _f_ and _g_. If _f_ is onto,
then of course we can let _h_ = _f_ ; and if _g_ is onto, then we can let _h_ = _g_ -^1.
But it may turn out that neither _f_ nor _g_ is onto. How can we come up with the
required function _h_ in this case?
Our solution will be to combine parts of _f_ and _g_ -^1 to get _h_. To do this, we’ll
split _A_ into two pieces _X_ and _Y_ , and _B_ into two pieces _W_ and _Z_ , in such a way
that _X_ and _W_ can be matched up by _f_ , and _Y_ and _Z_ can be matched up by _g_.
More precisely, we’ll have _W_ = _f_ ( _X_ )= { _f_ ( _x_ )| _x_ ∈ _X_ } and _Y_ = _g_ ( _Z_ )=
{ _g_ ( _z_ )| _z_ ∈ _Z_ }. The situation is illustrated in Figure 1. Once we have this, we’ll
be able to define _h_ by letting _h_ ( _a_ )= _f_ ( _a_ ) for _a_ ∈ _X_ , and _h_ ( _a_ )= _g_ -^1 ( _a_ ) for
_a_ ∈ _Y_.

```
Figure 1
```

How can we choose the sets _X, Y, W_ , and _Z_? First of all, note that every
element of _Y_ must be in Ran( _g_ ), so any element of _A_ that is not in Ran( _g_ )
must be in _X_. In other words, if we let _A_ 1 = _A_ \Ran( _g_ ), then we must have
_A_ 1 ⊆ _X_. But now consider any _a_ ∈ _A_ 1. We know that we must have _a_ ∈ _X_ ,
and therefore _f_ ( _a_ )∈ _W_. But now note that since _g_ is one-to-one, _g_ ( _f_ ( _a_ )) will
be different from _g_ ( _z_ ) for every _z_ ∈ _Z_ , and therefore _g_ ( _f_ ( _a_ ))∈/ _g_ ( _Z_ )= _Y_.
Thus, we must have _g_ ( _f_ ( _a_ ))∈ _X_. Since _a_ was an arbitrary element of _A_ 1 , this
shows that if we let _A_ 2 = _g_ ( _f_ ( _A_ 1 ))= { _g_ ( _f_ ( _a_ ))| _a_ ∈ _A_ 1 }, then we must have
_A_ 2 ⊆ _X_. Similarly, if we let _A_ 3 = _g_ ( _f_ ( _A_ 2 )), then it will turn out that we must

324 _Infinite Sets_

have _A_ 3 ⊆ _X_. Continuing in this way we can define sets _An_ for every positive
integer _n_ , and for every _n_ we must have _An_ ⊆ _X_. As you will see, letting
_X_ = , _n_ ∈Z+ _An_ works. In the following proof, we actually do not mention the
sets _W_ and _Z_.

_Proof._ Suppose _A_  _B_ and _B_  _A_. Then we can choose one-to-one func-
tions _f_ : _A_ → _B_ and _g_ : _B_ → _A_. Let _R_ =Ran( _g_ )⊆ _A_. Then if we think of
_g_ as a function from _B_ to _R_ , it is one-to-one and onto, so by Theorem 5.3.4,
_g_ -^1 : _R_ → _B_.
We now define a sequence of sets _A_ 1 , _A_ 2 , _A_ 3 ,... by recursion as follows:

```
A 1 = A \ R ;
for every n ∈Z+, An + 1 = g ( f ( An ))= { g ( f ( a ))| a ∈ An }.
```

Let _X_ = , _n_ ∈Z+ _An_ and _Y_ = _A_ \ _X_. Of course, every element of _A_ is in either
_X_ or _Y_ , but not both. Now define _h_ : _A_ → _B_ as follows:

```
h ( a )=
```

#### {

```
f ( a ) if a ∈ X
g -^1 ( a ) if a ∈ Y.
```

Note that for every _a_ ∈ _A_ , if _a_ ∈/ _R_ then _a_ ∈ _A_ 1 ⊆ _X_. Thus, if _a_ ∈ _Y_ then
_a_ ∈ _R_ , so _g_ -^1 ( _a_ ) is defined. Therefore this definition makes sense.
We will show that _h_ is one-to-one and onto, which will establish that _A_ ∼ _B_.
To see that _h_ is one-to-one, suppose _a_ 1 ∈ _A_ , _a_ 2 ∈ _A_ , and _h_ ( _a_ 1 )= _h_ ( _a_ 2 ).
_Case 1_. _a_ 1 ∈ _X_. Suppose _a_ 2 ∈ _Y_. Then according to the definition of
_h_ , _h_ ( _a_ 1 )= _f_ ( _a_ 1 ) and _h_ ( _a_ 2 )= _g_ -^1 ( _a_ 2 ). Thus, the equation _h_ ( _a_ 1 )= _h_ ( _a_ 2 )
means _f_ ( _a_ 1 )= _g_ -^1 ( _a_ 2 ), so _g_ ( _f_ ( _a_ 1 ))= _g_ ( _g_ -^1 ( _a_ 2 ))= _a_ 2. Since _a_ 1 ∈ _X_ =
, _n_ ∈Z+ _An_ , we can choose some _n_ ∈Z+ such that _a_ 1 ∈ _An_. But then _a_ 2 =
_g_ ( _f_ ( _a_ 1 ))∈ _g_ ( _f_ ( _An_ ))= _An_ + 1 , so _a_ 2 ∈ _X_ , contradicting our assumption that
_a_ 2 ∈ _Y_.
Thus, _a_ 2 ∈/ _Y_ , so _a_ 2 ∈ _X_. This means that _h_ ( _a_ 2 )= _f_ ( _a_ 2 ), so from the equa-
tion _h_ ( _a_ 1 )= _h_ ( _a_ 2 ) we get _f_ ( _a_ 1 )= _f_ ( _a_ 2 ). But _f_ is one-to-one, so it follows that
_a_ 1 = _a_ 2.
_Case 2_. _a_ 1 ∈ _Y_. As in case 1, if _a_ 2 ∈ _X_ , then we can derive a contradiction,
so we must have _a_ 2 ∈ _Y_. Thus, the equation _h_ ( _a_ 1 )= _h_ ( _a_ 2 ) means _g_ -^1 ( _a_ 1 )=
_g_ -^1 ( _a_ 2 ). Therefore, _a_ 1 = _g_ ( _g_ -^1 ( _a_ 1 ))= _g_ ( _g_ -^1 ( _a_ 2 ))= _a_ 2.
In both cases we have _a_ 1 = _a_ 2 , so _h_ is one-to-one.
To see that _h_ is onto, suppose _b_ ∈ _B_. Then _g_ ( _b_ )∈ _A_ , so either _g_ ( _b_ )∈ _X_ or
_g_ ( _b_ )∈ _Y_.
_Case 1_. _g_ ( _b_ )∈ _X_. Choose _n_ such that _g_ ( _b_ )∈ _An_. Note that _g_ ( _b_ )∈Ran( _g_ )=
_R_ and _A_ 1 = _A_ \ _R_ , so _g_ ( _b_ )∈/ _A_ 1. Thus, _n_ >1, so _An_ = _g_ ( _f_ ( _An_ - 1 )), and there-
fore we can choose some _a_ ∈ _An_ - 1 such that _g_ ( _f_ ( _a_ ))= _g_ ( _b_ ). But then since

```
The Cantor–Schroder–Bernstein Theorem ̈ 325
```

_g_ is one-to-one, _f_ ( _a_ )= _b_. Since _a_ ∈ _An_ - 1 , _a_ ∈ _X_ , so _h_ ( _a_ )= _f_ ( _a_ )= _b_. Thus,
_b_ ∈Ran( _h_ ).
_Case 2_. _g_ ( _b_ )∈ _Y_. Then _h_ ( _g_ ( _b_ ))= _g_ -^1 ( _g_ ( _b_ ))= _b_ , so _b_ ∈ Ran( _h_ ).
In both cases we have _b_ ∈Ran( _h_ ), so _h_ is onto. 

The Cantor–Schr ̈oder–Bernstein theorem is often useful for showing that
sets are equinumerous. For example, in exercise 3 of Section 7.1 you were
asked to show that (0, 1]∼(0, 1), where

```
(0,1]= { x ∈R| 0 < x ≤ 1 }
```

and

```
(0,1)= { x ∈R| 0 < x < 1 }.
```

It is surprisingly difficult to find a one-to-one correspondence between these
two sets, but it is easy to show that they are equinumerous using the Cantor–
Schr ̈oder–Bernstein theorem. Of course, (0,1)⊆(0,1], so clearly (0,1)
(0,1]. For the other direction, define _f_ : (0 ,1]→(0,1) by the formula

```
f ( x )=
```

```
x
2
```

#### 

It is easy to check that this function is one-to-one (although it is not onto), so
(0, 1](0, 1). Thus, by the Cantor–Schr ̈oder–Bernstein theorem, (0,1]∼
(0,1). For more on this example see exercise 9.
Our next theorem gives a more surprising consequence of the Cantor–
Schr ̈oder–Bernstein theorem.

**Theorem 7.3.3.** R∼P(Z+)_._

It is quite difficult to prove Theorem 7.3.3 directly by giving an example
of a one-to-one, onto function fromRtoP(Z+). In our proof we’ll use the
Cantor–Schr ̈oder–Bernstein theorem and the following lemma.

**Lemma 7.3.4.** _Suppose x and y are real numbers and x_ < _y. Then there is a
rational number q such that x_ < _q_ < _y.
Proof._ Let _k_ be a positive integer larger than _y_ -^1 _x_. Then^1 _k_ < _y_ - _x_. We
will show that there is a fraction with denominator _k_ that is between _x_
and _y_.
Let _m_ and _n_ be integers such that _m_ < _x_ < _n_ , and let _S_ = { _j_ ∈N| _m_ + _kj_ >
_x_ }. Note that _m_ + _k_ ( _n_ - _km_ )= _n_ > _x_ , and therefore _k_ ( _n_ - _m_ )∈ _S_. Thus _S_ =∅,
so by the well-ordering principle it has a smallest element. Let _j_ be the smallest
element of _S_. Note also that _m_ +^0 _k_ = _m_ < _x_ , so 0 ∈/ _S_ , and therefore _j_ >0.

326 _Infinite Sets_

Thus, _j_ -1 is a natural number, but since _j_ is the smallest element of _S_ , _j_ - 1 ∈/
_S_. It follows that _m_ + _j_ - _k_^1 ≤ _x_.
Let _q_ = _m_ + _kj_. Clearly _q_ is a rational number, and since _j_ ∈ _S_ , _q_ =
_m_ + _kj_ > _x_. Also, combining the observations that _m_ + _j_ - _k_^1 ≤ _x_ and^1 _k_ <
_y_ - _x_ , we have

```
q = m +
```

```
j
k
```

```
= m +
```

```
j - 1
k
```

#### +

#### 1

```
k
```

```
< x +( y - x )= y.
```

Thus, we have _x_ < _q_ < _y_ , as required. 

_Proof of Theorem 7.3.3_. As we observed earlier, we already know that
P(Z+)R. But now consider the function _f_ :R→P(Q) defined as fol-
lows:

```
f ( x )= { q ∈Q| q < x }.
```

We claim that _f_ is one-to-one. To see why, suppose _x_ ∈R, _y_ ∈R, and _x_ = _y_.
Then either _x_ < _y_ or _y_ < _x_. Suppose first that _x_ < _y_. By Lemma 7.3.4, we
can choose a rational number _q_ such that _x_ < _q_ < _y_. But then _q_ ∈ _f_ ( _y_ ) and
_q_ ∈/ _f_ ( _x_ ), so _f_ ( _x_ )= _f_ ( _y_ ). A similar argument shows that if _y_ < _x_ then _f_ ( _x_ )=
_f_ ( _y_ ), so _f_ is one-to-one.
Since _f_ is one-to-one, we have shown thatRP(Q). But we also know that
Q∼Z+, so by exercise 5 in Section 7.1 it follows thatP(Q)∼P(Z+). Thus,
RP(Q)P(Z+), so by transitivity ofwe haveRP(Z+). Combin-
ing this with the fact thatP(Z+)Rand applying the Cantor–Schr ̈oder–
Bernstein theorem, we conclude thatR∼P(Z+). 

We said at the beginning of this chapter that we would show that infinity
comes in different sizes. We now see that, so far, we have found only two
sizes of infinity. One size is represented by the denumerable sets, which are all
equinumerous with each other. The only examples of nondenumerable infinite
sets we have given so far areP(Z+) andR, which we now know are equinu-
merous. In fact, there are many more sizes of infinity. For example,P(R) is
an infinite set that is neither denumerable nor equinumerous withR. Thus, it
represents a third size of infinity. For more on this see exercise 8.
BecauseZ+≺R, it is natural to think of the set of real numbers as _larger_
than the set of positive integers. In 1878, Cantor asked whether there was a
size of infinity between these two sizes. More precisely, is there a set _X_ such
thatZ+≺ _X_ ≺R? Cantor conjectured that the answer was no, but he was
unable to prove it. His conjecture is known as the _continuum hypothesis_. At
the Second International Congress of Mathematicians in 1900, David Hilbert

```
The Cantor–Schroder–Bernstein Theorem ̈ 327
```

(1862–1943) gave a famous lecture in which he listed what he believed to be
the most important unsolved mathematical problems of the time, and the proof
or disproof of the continuum hypothesis was number one on his list.
The status of the continuum hypothesis was “resolved” in a remarkable way
by the work of KurtG ̈odel (1906–1978) in 1939 and Paul Cohen (1934– ) in

1963. The resolution turns out to require even more careful analyses than we
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

∗1. Prove thatis reflexive and transitive. In other words:

```
(a) For every set A , A  A.
(b) For all sets A , B , and C , if A  B and B  C then A  C.
```

2. Prove that≺is irreflexive and transitive. In other words:
    (a) For every set _A_ , _A_ ≺ _A_.
(b) For all sets _A_ , _B_ , and _C_ , if _A_ ≺ _B_ and _B_ ≺ _C_ then _A_ ≺ _C_.
3. Suppose _A_ ⊆ _B_ ⊆ _C_ and _A_ ∼ _C_. Prove that _B_ ∼ _C_.
4. Suppose _A_  _B_ and _C_  _D_.
    (a) Prove that _A_ × _C_  _B_ × _D_.
(b) Provethatif _A_ and _C_ aredisjointand _B_ and _D_ aredisjoint,then _A_ , _C_ 
_B_ , _D_.
    (c) Prove thatP( _A_ )P( _B_ ).
∗5. For the meaning of the notation used in this exercise, see exercise 21 of

```
Section 7.1. Suppose A  B and C  D.
(a) Prove that if A =∅then AC  BD.
(b) Is the assumption that A =∅needed in part (a)?
```

6. (a) Prove that if _A_  _B_ and _B_ is finite, then _A_ is finite and| _A_ | ≤ | _B_ |.
    (b) Prove that if _A_ ≺ _B_ and _B_ is finite, then _A_ is finite and| _A_ |<| _B_ |.
7. Prove that for every set _A_ , _A_ ≺P( _A_ ). (Hint: See exercise 4 of Sec-
    tion 7.2. Note that in particular, if _A_ is finite and| _A_ | = _n_ then, by exercise
    10 of Section 6.2,|P( _A_ )| = 2 _n_. It follows, by exercise 6(b), that 2 _n_ > _n_.
    Of course, you already proved this, by a different method, in exercise 12(a)
    of Section 6.3.)

328 _Infinite Sets_
∗8. Let _A_ 1 =Z+, and for all _n_ ∈Z+let _An_ + 1 =P( _An_ ).
(a) Prove that for all _n_ ∈Z+and _m_ ∈Z+, if _n_ < _m_ then _An_ ≺ _Am_.
(b) The sets _An_ , for _n_ ∈Z+, represent infinitely many sizes of infinity.
Are there any more sizes of infinity? In other words, can you think
of an infinite set that is not equinumerous with _An_ for any _n_ ∈Z+?

9. The proof of the Cantor–Schr ̈oder–Bernstein theorem gives a method
    for constructing a one-to-one and onto function _h_ : _A_ → _B_ from one-
    to-one functions _f_ : _A_ → _B_ and _g_ : _B_ → _A_. Use this method to find
    a one-to-one, onto function _h_ : (0 ,1]→(0,1). Start with the functions
       _f_ : (0 ,1]→(0,1) and _g_ : (0 ,1)→(0,1] given by the formulas:

```
f ( x )=
```

```
x
2
```

```
, g ( x )= x.
∗10. LetE= { R | R is an equivalence relation onZ+}.
(a) Prove thatEP(Z+).
(b) Let A =Z+\ { 1 , 2 }andletPbethesetofallpartitionsofZ+.Define
f :P( A )→P by the formula f ( X )= { X , { 1 },( A \ X ), { 2 }}.
Prove that f is one-to-one.
(c) Prove thatE∼P(Z+).
```

11. LetT = { _R_ | _R_ is a total order onZ+}. Prove thatT ∼P(Z+). (Hint:
    Imitate the solution to exercise 10.)
12. (a) Provethatif _A_ hasatleasttwoelementsand _A_ × _A_ ∼ _A_ thenP( _A_ )×
    P( _A_ )∼P( _A_ ). (Hint: Use exercise 7 of Section 7.2.)
    (b) Prove thatR×R∼R.
13. An _interval_ is a set _I_ ⊆Rwith the property that for all real numbers
    _x_ , _y_ , and _z_ , if _x_ ∈ _I_ , _z_ ∈ _I_ , and _x_ < _y_ < _z_ , then _y_ ∈ _I_. An interval is
    _nondegenerate_ if it contains at least two different real numbers. Suppose
    Fis a set of nondegenerate intervals andFis pairwise disjoint. Prove
    thatFis countable. (Hint: By Lemma 7.3.4, every nondegenerate interval
    contains a rational number.)
*14. For the meaning of the notation used in this exercise, see exercise 21 of
Section 7.1.
(a) Prove thatRR∼P(R).
(b) Prove thatQR∼R.
(c) (For students who have studied calculus) LetC= { _f_ ∈RR| _f_ is
continuous}. Prove thatC∼R. (Hint: Show that if _f_ and _g_ are con-
tinuous functions and∀ _x_ ∈Q( _f_ ( _x_ )= _g_ ( _x_ )), then _f_ = _g_ .)

### Appendix 1

## Appendix 1: Solutions to Selected Exercises

```
Introduction
```

1. (a) One possible answer is 32,767= 31 ·1057.
    (b) One possible answer is _x_ = 231 - 1 =2,147,483,647.
3. (a) The method yields the prime number 211.
    (b) The method yields two primes, 3 and 37.

```
Chapter 1
```

```
Section 1.1
```

1. (a) ( _R_ or  _H_ )and  not  ( _H_ and  _T_ ), where _R_ stands for the statement “We’ll have a
    reading assignment,” _H_ stands for “We’ll have homework problems,”
    and _T_ stands for “We’ll have a test.”
(b) not  _G_ or ( _G_ and  not  _S_ ), where _G_ stands for “You’ll go skiing,” and _S_ stands
for “There will be snow.”
(c) not [(

#### √

#### 7 <2)or (

#### √

#### 7 =2)]

5. (a) I won’t buy the pants without the shirt.
    (b) I won’t buy the pants and I won’t buy the shirt.
    (c) Either I won’t buy the pants or I won’t buy the shirt.

```
Section 1.2
```

1. (a) _P Q_ not  _P_ or  _Q_
    F F T
    F T T
    T F F
    T T T

#### 329

330 _Appendix 1: Solutions to Selected Exercises_

```
(b) S G ( S or  G )and (not  S or  not  G )
F F F
F T T
T F T
T T F
```

5. (a) _P Q P_ ↓ _Q_
    F F T
    F T F
    T F F
    T T F

```
(b)not ( P or  Q ).
(c)not  P is equivalent to P ↓ P , P or  Q is equivalent to ( P ↓ Q )↓
( P ↓ Q ), and P and  Q is equivalent to ( P ↓ P )↓( Q ↓ Q ).
```

7. (a) and (c) are valid; (b) and (d) are invalid.
9. (a) is neither a contradiction nor a tautology; (b) is a contradiction; (c) and
    (d) are tautologies.
11. (a) _P_ or  _Q_.
(b) _P_.
(c)not  _P_ or  _Q_.
14. We use the associative law forand twice:

```
[ P and ( Q and  R )]and  S is equivalent to [( P and  Q )and  R ]and  S
which is equivalent to ( P and  Q )and ( R and  S )
```

16. _P_ or  not  _Q_.

```
Section 1.3
```

1. (a) _D_ (6)and  _D_ (9)and  _D_ (15), where _D_ ( _x_ ) means “ _x_ is divisible by 3.”
    (b) _D_ ( _x_ ,2)and  _D_ ( _x_ ,3)and  not  _D_ ( _x_ ,4), where _D_ ( _x_ , _y_ ) means “ _x_ is divisible
       by _y_ .”
    (c) _N_ ( _x_ )and  _N_ ( _y_ )and [( _P_ ( _x_ )and  not  _P_ ( _y_ ))or ( _P_ ( _y_ )and  not  _P_ ( _x_ ))], where _N_ ( _x_ )
       means “ _x_ is a natural number” and _P_ ( _x_ ) means “ _x_ is prime.”
3. (a) { _x_ | _x_ is a planet}.
    (b){ _x_ | _x_ is an Ivy League school}.
    (c){ _x_ | _x_ is a state in the United States}.
    (d){ _x_ | _x_ is a province or territory in Canada}.

```
Appendix 1: Solutions to Selected Exercises 331
```

5. (a) (- 3 ∈R)and (13-2(-3)>1). Bound variables: _x_ ; no free variables.
    This statement is true.
(b) (4∈R)and (4<0)and (13-2(4)>1). Bound variables: _x_ ; no free vari-
ables. This statement is false.
(c) not [(5∈R)and (13-2(5)> _c_ )]. Bound variables: _x_ ; free variables: _c_.
7. (a) { _x_ |Elizabeth Taylor was once married to _x_ } = {Conrad Hilton Jr.,
    Michael Wilding, Michael Todd, Eddie Fisher, Richard Burton, John
    Warner, Larry Fortensky}.
(b) { _x_ | _x_ is a logical connective studied in Section 1.1}= {and  ,or ,not }.
(c) { _x_ | _x_ is the author of this book}={Daniel J. Velleman}.

```
Section 1.4
```

1. (a) { 3 , 12 }.
    (b) { 1 , 12 , 20 , 35 }.
    (c) { 1 , 3 , 12 , 20 , 35 }.
    The sets in parts (a) and (b) are both subsets of the set in part (c).
4. (a) Both Venn diagrams look like this:

#### U A B

```
(b) Both Venn diagrams look like this:
```

#### U A B

#### C

332 _Appendix 1: Solutions to Selected Exercises_

8. Sets (a), (d), and (e) are equal, and sets (b) and (c) are equal.
10. (a) There is no region corresponding to the set ( _A_ + _D_ )\( _B_ , _C_ ), but this
set could have elements.
(b) Here is one possibility:

#### U

#### A B

#### C

#### D

12. The Venn diagrams for both sets look like this:

#### U A B

#### C

```
Section 1.5
```

1. (a) ( _S_ or  not  _E_ )→ not  _H_ , where _S_ stands for “This gas has an unpleasant
    smell,” _E_ stands for “This gas is explosive,” and _H_ stands for “This
    gas is hydrogen.”
(b) ( _F_ and  _H_ )→ _D_ , where _F_ stands for “George has a fever,” _H_ stands
for “George has a headache,” and _D_ stands for “George will go to the
doctor.”
(c) ( _F_ → _D_ )and ( _H_ → _D_ ), where the letters have the same meanings as
in part (b).
(d) ( _x_ =2)→( _P_ ( _x_ )→ _O_ ( _x_ )), where _P_ ( _x_ ) stands for “ _x_ is prime” and
_O_ ( _x_ ) stands for “ _x_ is odd.”
4. (a) and (b) are valid, but (c) is invalid.

```
Appendix 1: Solutions to Selected Exercises 333
```

6. (a) Either make a truth table, or reason as follows:
    ( _P_ → _R_ )and ( _Q_ → _R_ ) is equivalent to (not  _P_ or  _R_ )and (not  _Q_ or  _R_ )
       which is equivalent to (not  _P_ and  not  _Q_ )or  _R_
       which is equivalent tonot ( _P_ or  _Q_ )or  _R_
       which is equivalent to ( _P_ or  _Q_ )→ _R_
(b) ( _P_ → _R_ )or ( _Q_ → _R_ ) is equivalent to ( _P_ and  _Q_ )→ _R_.
8.not ( _P_ → not  _Q_ ).

```
Chapter 2
```

```
Section 2.1
```

1. (a) ∀ _x_ [∃ _yF_ ( _x_ , _y_ )→ _S_ ( _x_ )], where _F_ ( _x_ , _y_ ) stands for “ _x_ has forgiven _y_ ,”
    and _S_ ( _x_ ) stands for “ _x_ is a saint.”
(b) not ∃ _x_ [ _C_ ( _x_ )and  ∀ _y_ ( _D_ ( _y_ )→ _S_ ( _x_ , _y_ ))], where _C_ ( _x_ ) stands for “ _x_ is in the
calculus class,” _D_ ( _y_ ) stands for “ _y_ is in the discrete math class,” and
_S_ ( _x_ , _y_ ) stands for “ _x_ is smarter than _y_ .”
(c) ∀ _x_ (not ( _x_ = _m_ )→ _L_ ( _x_ , _m_ )), where _L_ ( _x_ , _y_ ) stands for “ _x_ likes _y_ ,” and
_m_ stands for Mary.
(d) ∃ _x_ ( _P_ ( _x_ )and  _S_ ( _j_ , _x_ ))and  ∃ _y_ ( _P_ ( _y_ )and  _S_ ( _r_ , _y_ )), where _P_ ( _x_ ) stands for “ _x_ is
a police officer,” _S_ ( _x_ , _y_ ) stands for “ _x_ saw _y_ ,” _j_ stands for Jane, and
_r_ stands for Roger.
(e) ∃ _x_ ( _P_ ( _x_ )and  _S_ ( _j_ , _x_ )and  _S_ ( _r_ , _x_ )), where the letters have the same mean-
ings as in part (d).
4. (a) All unmarried men are unhappy.
    (b) _y_ is a sister of one of _x_ ’s parents; i.e., _y_ is _x_ ’s blood aunt.
7. (a), (d), and (e) are true; (b), (c), and (f) are false.

```
Section 2.2
```

1. (a) ∃ _x_ [ _M_ ( _x_ )and  ∀ _y_ ( _F_ ( _x_ , _y_ )→ not  _H_ ( _y_ ))], where _M_ ( _x_ ) stands for “ _x_ is ma-
    joring in math,” _F_ ( _x_ , _y_ ) stands for “ _x_ and _y_ are friends,” and _H_ ( _y_ )
    stands for “ _y_ needs help with his homework.” In English: There is a
    math major all of whose friends don’t need help with their homework.
(b) ∃ _x_ ∀ _y_ ( _R_ ( _x_ , _y_ )→ ∃ _zL_ ( _y_ , _z_ )), where _R_ ( _x_ , _y_ ) stands for “ _x_ and _y_ are
roommates” and _L_ ( _y_ , _z_ ) stands for “ _y_ likes _z_ .” In English: There is
someone all of whose roommates like at least one person.
(c) ∃ _x_ [( _x_ ∈ _A_ or  _x_ ∈ _B_ )and ( _x_ ∈/ _C_ or  _x_ ∈ _D_ )].
(d) ∀ _x_ ∃ _y_ [ _y_ > _x_ and  ∀ _z_ ( _z_^2 + 5 _z_ = _y_ )].
4. Hint: Begin by replacing _P_ ( _x_ ) withnot  _P_ ( _x_ ) in the first quantifier negation
    law, to get the fact thatnot ∃ _x_ not  _P_ ( _x_ ) is equivalent to∀ _x_ not not  _P_ ( _x_ ).

334 _Appendix 1: Solutions to Selected Exercises_

6. Hint: Begin by showing that ∃ _x_ ( _P_ ( _x_ )or  _Q_ ( _x_ )) is equivalent to
    not ∀ _x_ not ( _P_ ( _x_ )or  _Q_ ( _x_ )).
8. (∀ _x_ ∈ _AP_ ( _x_ ))and (∀ _x_ ∈ _B P_ ( _x_ ))
    is equivalent to∀ _x_ ( _x_ ∈ _A_ → _P_ ( _x_ ))and  ∀ _x_ ( _x_ ∈ _B_ → _P_ ( _x_ ))
    which is equivalent to∀ _x_ [( _x_ ∈ _A_ → _P_ ( _x_ ))and ( _x_ ∈ _B_ → _P_ ( _x_ ))]
    which is equivalent to∀ _x_ [( _x_ ∈/ _A_ or  _P_ ( _x_ ))and ( _x_ ∈/ _B_ or  _P_ ( _x_ ))]
    which is equivalent to∀ _x_ [( _x_ ∈/ _A_ and  _x_ ∈/ _B_ )or  _P_ ( _x_ )]
    which is equivalent to∀ _x_ [not ( _x_ ∈ _A_ or  _x_ ∈ _B_ )or  _P_ ( _x_ )]
    which is equivalent to∀ _x_ [ _x_ ∈( _A_ , _B_ )→ _P_ ( _x_ )]
    which is equivalent to∀ _x_ ∈( _A_ , _B_ ) _P_ ( _x_ ).
11. _A_ \ _B_ =∅is equivalent tonot ∃ _x_ ( _x_ ∈ _A_ and  _x_ ∈/ _B_ )
which is equivalent to∀ _x_ not ( _x_ ∈ _A_ and  _x_ ∈/ _B_ )
which is equivalent to∀ _x_ ( _x_ ∈/ _A_ or  _x_ ∈ _B_ )
which is equivalent to∀ _x_ ( _x_ ∈ _A_ → _x_ ∈ _B_ )
which is equivalent to _A_ ⊆ _B_.

```
Section 2.3
```

1. (a) ∀ _x_ ( _x_ ∈F→ ∀ _y_ ( _y_ ∈ _x_ → _y_ ∈ _A_ )).
    (b)∀ _x_ ( _x_ ∈ _A_ → ∃ _n_ ∈N( _x_ = 2 _n_ +1)).
    (c)∀ _n_ ∈N∃ _m_ ∈N( _n_^2 + _n_ + 1 = 2 _m_ +1).
    (d)∃ _x_ (∀ _y_ ( _y_ ∈ _x_ → ∃ _i_ ∈ _I_ ( _y_ ∈ _Ai_ ))and  ∀ _i_ ∈ _I_ ∃ _y_ ( _y_ ∈ _x_ and  _y_ ∈/ _Ai_ )).
4.+F={red, blue}and,F={red, green, blue, orange, purple}.
8. (a) _A_ 2 = { 2 , 4 }, _A_ 3 = { 3 , 6 }, _B_ 2 = { 2 , 3 }, _B_ 3 = { 3 , 4 }.
    (b)+ _i_ ∈ _I_ ( _Ai_ , _Bi_ )= { 3 , 4 }and (+ _i_ ∈ _IAi_ ),(+ _i_ ∈ _IBi_ )= { 3 }.
    (c) They are not equivalent.
11. One example is _A_ = { 1 , 2 }and _B_ = { 2 , 3 }.
13. (a) _B_ 3 = { 1 , 2 , 3 , 4 , 5 }and _B_ 4 = { 1 , 2 , 4 , 5 , 6 }.
(b)+ _j_ ∈ _JBj_ = { 1 , 2 , 4 , 5 }.
(c), _i_ ∈ _I_ (+ _j_ ∈ _JAi_ , _j_ )= { 1 , 2 , 4 }.
(d) _x_ ∈ + _j_ ∈ _J_ (, _i_ ∈ _IAi_ , _j_ ) means ∀ _j_ ∈ _J_ ∃ _i_ ∈ _I_ ( _x_ ∈ _Ai_ , _j_ ) and _x_ ∈
, _i_ ∈ _I_ (+ _j_ ∈ _JAi_ , _j_ ) means ∃ _i_ ∈ _I_ ∀ _j_ ∈ _J_ ( _x_ ∈ _Ai_ , _j_ ). They are not
equivalent.

```
Chapter 3
```

```
Section 3.1
```

1. (a) Hypotheses: _n_ is an integer larger than 1 and _n_ is not prime. Conclu-
    sion: 2 _n_ -1 is not prime. The hypotheses are true when _n_ =6, so

```
Appendix 1: Solutions to Selected Exercises 335
the theorem tells us that 2^6 -1 is not prime. This is correct, since
26 - 1 = 63 = 9 ·7.
(b) We can conclude that 32767 is not prime. This is correct, since
32767 = 151 ·217.
(c) The theorem tells us nothing; 11 is prime, so the hypotheses are not
satisfied.
```

4. Suppose 0< _a_ < _b_. Then _b_ - _a_ >0. Multiplying both sides by the pos-
    itive number _b_ + _a_ , we get ( _b_ + _a_ )·( _b_ - _a_ )>( _b_ + _a_ )·0, or in other
    words _b_^2 - _a_^2 >0. Since _b_^2 - _a_^2 >0, it follows that _a_^2 < _b_^2. Therefore
    if 0< _a_ < _b_ then _a_^2 < _b_^2.
9. Hint: Add _b_ to both sides of the inequality _a_ < _b_.
11. We will prove the contrapositive. Suppose _c_ ≤ _d_. Multiplying both sides of
this inequality by the positive number _a_ , we get _ac_ ≤ _ad_. Also, multiplying
both sides of the given inequality _a_ < _b_ by the positive number _d_ gives us
_ad_ < _bd_. Combining _ac_ ≤ _ad_ and _ad_ < _bd_ , we can conclude that _ac_ <
_bd_. Thus, if _ac_ ≥ _bd_ then _c_ > _d_.
14. Since _x_ > 3 >0, by the theorem in Example 3.1.2, _x_^2 >9. Also, multi-
plying both sides of the given inequality _y_ <2 by -2 (and reversing
the direction of the inequality, since-2 is negative) we get- 2 _y_ >-4.
Finally, adding the inequalities _x_^2 >9 and - 2 _y_ >-4 gives us
_x_^2 - 2 _y_ >5.

```
Section 3.2
```

1. (a) Suppose _P_. Since _P_ → _Q_ , it follows that _Q_. But then, since _Q_ → _R_ ,
    we can conclude _R_. Thus, _P_ → _R_.
(b) Suppose _P_. To prove that _Q_ → _R_ , we will prove the contrapositive,
so supposenot  _R_. Sincenot  _R_ →( _P_ → not  _Q_ ), it follows that _P_ → not  _Q_ ,
and since we know _P_ , we can conclude not  _Q_. Thus, _Q_ → _R_ , so
_P_ →( _Q_ → _R_ ).
5. Suppose _a_ ∈ _A_ \ _B_. This means that _a_ ∈ _A_ and _a_ ∈/ _B_. Since _a_ ∈ _A_ and
    _a_ ∈ _C_ , _a_ ∈ _A_ + _C_. But then since _A_ + _C_ ⊆ _B_ , it follows that _a_ ∈ _B_ , and
    this contradicts the fact that _a_ ∈/ _B_. Thus, _a_ ∈/ _A_ \ _B_.
8. Hint: Assume _a_ < 1 / _a_ < _b_ < 1 / _b_. Now prove that _a_ <0, and then use
    this fact to prove that _a_ <-1.
11. (a) The sentence “Then _x_ =3 and _y_ =8” is incorrect. (Why?)
(b) One counterexample is _x_ = 3 , _y_ =7.

336 _Appendix 1: Solutions to Selected Exercises_

14. _P Q R P_ →( _Q_ → _R_ ) not  _R_ →( _P_ → not  _Q_ )
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

1. Suppose ∃ _x_ ( _P_ ( _x_ )→ _Q_ ( _x_ )). Then we can choose some _x_ 0 such that
    _P_ ( _x_ 0 )→ _Q_ ( _x_ 0 ). Now suppose that∀ _x P_ ( _x_ ). Then in particular, _P_ ( _x_ 0 ),
and since _P_ ( _x_ 0 )→ _Q_ ( _x_ 0 ), it follows that _Q_ ( _x_ 0 ). Since we have found a
particular value of _x_ for which _Q_ ( _x_ ) holds, we can conclude that∃ _x Q_ ( _x_ ).
Thus∀ _x P_ ( _x_ )→ ∃ _x Q_ ( _x_ ).
3. Suppose that _A_ ⊆ _B_ \ _C_ , but _A_ and _C_ are not disjoint. Then we can choose
    some _x_ such that _x_ ∈ _A_ and _x_ ∈ _C_. Since _x_ ∈ _A_ and _A_ ⊆ _B_ \ _C_ , it follows
    that _x_ ∈ _B_ \ _C_ , which means that _x_ ∈ _B_ and _x_ ∈/ _C_. But now we have both
    _x_ ∈ _C_ and _x_ ∈/ _C_ , which is a contradiction. Thus, if _A_ ⊆ _B_ \ _C_ then _A_ and
    _C_ are disjoint.
7. Suppose _x_ >2. Let _y_ =( _x_ +

#### √

```
x^2 -4)/2, which is defined since
x^2 - 4 >0. Then
```

```
y +
```

#### 1

```
y
```

#### =

```
x +
```

#### √

```
x^2 - 4
2
```

#### +

#### 2

```
x +
```

#### √

```
x^2 - 4
```

#### =

```
2 x^2 + 2 x
```

#### √

```
x^2 - 4
2( x +
```

#### √

```
x^2 -4)
```

```
= x.
```

9. SupposeFis a family of sets and _A_ ∈F. Suppose _x_ ∈ + F. Then by the
    definition of+F, since _x_ ∈ + Fand _A_ ∈F, _x_ ∈ _A_. But _x_ was an arbitrary
    element of+F, so it follows that+F⊆ _A_.
12. Hint: AssumeF⊆Gand let _x_ be an arbitrary element of,F. You must
prove that _x_ ∈ , G, which means∃ _A_ ∈G( _x_ ∈ _A_ ), so you should try to find
some _A_ ∈Gsuch that _x_ ∈ _A_. To do this, write out the givens in logical
notation. You will find that one of them is a universal statement, and one
is existential. Apply existential instantiation to the existential one.
14. Suppose _x_ ∈ , _i_ ∈ _I_ P( _Ai_ ). Then we can choose some _i_ ∈ _I_ such that _x_ ∈
P( _Ai_ ), or in other words _x_ ⊆ _Ai_. Now let _a_ be an arbitrary element of _x_.
Then _a_ ∈ _Ai_ , and therefore _a_ ∈ , _i_ ∈ _IAi_. Since _a_ was an arbitrary element
of _x_ , it follows that _x_ ⊆ _Ui_ ∈ _IAi_ , which means that _x_ ∈P( _Ui_ ∈ _IAi_ ). Thus
, _i_ ∈ _I_ P( _Ai_ )⊆P(, _i_ ∈ _IAi_ ).

```
Appendix 1: Solutions to Selected Exercises 337
```

17. Hint: The last hypothesis means∀ _A_ ∈F∀ _B_ ∈G( _A_ ⊆ _B_ ), so if in the
    course of the proof you ever come across sets _A_ ∈Fand _B_ ∈G, you can
    conclude that _A_ ⊆ _B_. Start the proof by letting _x_ be arbitrary and assuming
    _x_ ∈ , F, and prove that _x_ ∈ + G. To see where to go from there, write these
    statements in logical symbols.
20. The sentence “Then for every real number _x_ , _x_^2 <0” is incorrect. (Why?)
22. Based on the logical form of the statement to be proven, the proof should
    have this outline:
       Let _x_ =....
          Let _y_ be an arbitrary real number.
             [Proof of _xy_^2 = _y_ - _x_ goes here.]
          Since _y_ was arbitrary,∀ _y_ ∈R( _xy_^2 = _y_ - _x_ ).
       Thus,∃ _x_ ∈R∀ _y_ ∈R( _xy_^2 = _y_ - _x_ ).
This outline makes it clear that _y_ should be introduced into the proof
    _after x_. Therefore, _x_ cannot be defined in terms of _y_ , because _y_ will not yet
    have been introduced into the proof when _x_ is being defined. But in the
    given proof, _x_ is defined in terms of _y_ in the first sentence. (The mistake
    has been disguised by the fact that the sentence “Let _y_ be an arbitrary real
    number” has been left out of the proof. If you try to add this sentence to
    the proof, you will find that there is nowhere it could be added that would
    lead to a correct proof of the incorrect theorem.)
25. Here is the beginning of the proof: Let _x_ be an arbitrary real number. Let
    _y_ = 2 _x_. Now let _z_ be an arbitrary real number. Then....

```
Section 3.4
```

1. (→) Suppose∀ _x_ ( _P_ ( _x_ )and  _Q_ ( _x_ )). Let _y_ be arbitrary. Then since∀ _x_ ( _P_ ( _x_ )and 
    _Q_ ( _x_ )), _P_ ( _y_ )and  _Q_ ( _y_ ), and so in particular _P_ ( _y_ ). Since _y_ was arbitrary,
this shows that∀ _x P_ ( _x_ ). A similar argument proves∀ _x Q_ ( _x_ ): for arbitrary
_y_ , _P_ ( _y_ )and  _Q_ ( _y_ ), and therefore _Q_ ( _y_ ). Thus,∀ _x P_ ( _x_ )and  ∀ _x Q_ ( _x_ ).
(←) Suppose∀ _x P_ ( _x_ )and  ∀ _x Q_ ( _x_ ). Let _y_ be arbitrary. Then since∀ _x P_ ( _x_ ),
_P_ ( _y_ ), and similarly since∀ _x Q_ ( _x_ ), _Q_ ( _y_ ). Thus, _P_ ( _y_ )and  _Q_ ( _y_ ), and since _y_
was arbitrary, it follows that∀ _x_ ( _P_ ( _x_ )and  _Q_ ( _x_ )).
4. Suppose that _A_ ⊆ _B_ and _A_ ⊆ _C_. Since _A_ ⊆ _C_ , we can choose some _a_ ∈ _A_
    such that _a_ ∈/ _C_. Since _a_ ∈ _A_ and _A_ ⊆ _B_ , _a_ ∈ _B_. Since _a_ ∈ _B_ and _a_ ∈/
    _C_ , _B_ ⊆ _C_.
7. Let _A_ and _B_ be arbitrary sets. Let _x_ be arbitrary, and suppose that
    _x_ ∈P( _A_ + _B_ ). Then _x_ ⊆ _A_ + _B_. Now let _y_ be all arbitrary element of
    _x_. Then since _x_ ⊆ _A_ + _B_ , _y_ ∈ _A_ + _B_ , and therefore _y_ ∈ _A_. Since _y_ was

338 _Appendix 1: Solutions to Selected Exercises_

```
arbitrary, this shows that x ⊆ A , so x ∈P( A ). A similar argument shows
that x ⊆ B , and therefore x ∈P( B ). Thus, x ∈P( A )+P( B ).
Now suppose that x ∈P( A )+P( B ). Then x ∈P( A ) and x ∈P( B ),
so x ⊆ A and x ⊆ B. Suppose that y ∈ x. Then since x ⊆ A and x ⊆ B ,
y ∈ A and y ∈ B , so y ∈ A + B. Thus, x ⊆ A + B , so x ∈P( A + B ).
```

9. Suppose that _x_ and _y_ are odd. Then we can choose integers _j_ and _k_ such that
    _x_ = 2 _j_ +1 and _y_ = 2 _k_ +1. Therefore _xy_ =(2 _j_ +1)(2 _k_ +1)= 4 _jk_ +
    2 _j_ + 2 _k_ + 1 =2(2 _jk_ + _j_ + _k_ )+1. Since 2 _jk_ + _j_ + _k_ is an integer, it
    follows that _xy_ is odd.
12. Hint: Let _x_ ∈Rbe arbitrary, and prove both directions of the biconditional
separately. For the “→” direction, use existential instantiation and proof
by contradiction. For the “←” direction, assume that _x_ =1 and then solve
the equation _x_ + _y_ = _xy_ for _y_ in order to decide what value to choose
for _y_.
15. Suppose that,Fand+Gare not disjoint. Then we can choose some _x_ such
that _x_ ∈ , Fand _x_ ∈ + G. Since _x_ ∈ , F, we can choose some _A_ ∈Fsuch
that _x_ ∈ _A_. Since we are given that every element ofFis disjoint from
some element ofG, there must be some _B_ ∈Gsuch that _A_ + _B_ =∅.
Since _x_ ∈ _A_ , it follows that _x_ ∈/ _B_. But we also have _x_ ∈ + Gand _B_ ∈G,
from which it follows that _x_ ∈ _B_ , which is a contradiction. Thus,,Fand
+Gmust be disjoint.
17. (a) Suppose _x_ ∈ , (F+G). Then we can choose some _A_ ∈F+Gsuch
that _x_ ∈ _A_. Since _x_ ∈ _A_ and _A_ ∈F, _x_ ∈ , F, and similarly since
_x_ ∈ _A_ and _A_ ∈G, _x_ ∈ , G. Therefore, _x_ ∈(,F)+(,G). Since _x_ was
arbitrary, this shows that,(F+G)⊆(,F)+(,G).
(b) The sentence “Thus, we can choose a set _A_ such that _A_ ∈F, _A_ ∈G,
and _x_ ∈ _A_ ” is incorrect. (Why?)
(c) One example isF= {{ 1 },{ 2 }},G= {{ 1 },{ 1 , 2 }}.
21. Suppose that,F⊆ , G. Then there is some _x_ ∈ , Fsuch that _x_ ∈ , / G.
Since _x_ ∈ , F, we can choose some _A_ ∈F such that _x_ ∈ _A_. Now let
_B_ ∈Gbe arbitrary. If _A_ ⊆ _B_ , then since _x_ ∈ _A_ , _x_ ∈ _B_. But then since
_x_ ∈ _B_ and _B_ ∈G, _x_ ∈ , G, which we already know is false. Therefore
_A_ ⊆ _B_. Since _B_ was arbitrary, this shows that for all _B_ ∈G, _A_ ⊆ _B_.
Thus, we have shown that there is some _A_ ∈Fsuch that for all _B_ ∈G,
_A_ ⊆ _B_.
23. (a) Suppose _x_ ∈ , _i_ ∈ _I_ ( _Ai_ \ _Bi_ ). Then we can choose some _i_ ∈ _I_ such
that _x_ ∈ _Ai_ \ _Bi_ , which means _x_ ∈ _Ai_ and _x_ ∈/ _Bi_. Since _x_ ∈ _Ai_ ,
_x_ ∈ , _i_ ∈ _IAi_ , and since _x_ ∈/ _Bi_ , _x_ ∈ + / _i_ ∈ _IBi_. Thus, _x_ ∈(, _i_ ∈ _IAi_ )\
(+ _i_ ∈ _IBi_ ).
(b) One example is _I_ = { 1 , 2 }, _A_ 1 = _B_ 1 = { 1 }, _A_ 2 = _B_ 2 = { 2 }.

```
Appendix 1: Solutions to Selected Exercises 339
```

```
Section 3.5
```

1. Suppose _x_ ∈ _A_ +( _B_ , _C_ ). Then _x_ ∈ _A_ , and either _x_ ∈ _B_ or _x_ ∈ _C_.
    _Case 1_. _x_ ∈ _B_. Then since _x_ ∈ _A_ , _x_ ∈ _A_ + _B_ , so _x_ ∈( _A_ + _B_ ), _C_.
    _Case 2_. _x_ ∈ _C_. Then clearly _x_ ∈( _A_ + _B_ ), _C_.
    Since _x_ was arbitrary, we can conclude that _A_ +( _B_ , _C_ )⊆
( _A_ + _B_ ), _C_.
4. Suppose _x_ ∈ _A_. We now consider two cases:
    _Case 1_. _x_ ∈ _C_. Then _x_ ∈ _A_ + _C_ , so since _A_ + _C_ ⊆ _B_ + _C_ , _x_ ∈ _B_ + _C_ ,
and therefore _x_ ∈ _B_.
_Case 2_. _x_ ∈/ _C_. Since _x_ ∈ _A_ , _x_ ∈ _A_ , _C_ , so since _A_ , _C_ ⊆ _B_ , _C_ ,
_x_ ∈ _B_ , _C_. But _x_ ∈/ _C_ , so we must have _x_ ∈ _B_.
Thus, _x_ ∈ _B_ , and since _x_ was arbitrary, _A_ ⊆ _B_.
7. Hint: Assume _x_ ∈P( _A_ ),P( _B_ ), which means that either _x_ ∈P( _A_ ) or
    _x_ ∈P( _B_ ). Treat these as two separate cases. In case 1, assume _x_ ∈P( _A_ ),
    which means _x_ ⊆ _A_ , and prove _x_ ∈P( _A_ , _B_ ), which means _x_ ⊆ _A_ , _B_.
    Case 2 is similar.
11. Let _x_ be an arbitrary real number.
(←) Suppose| _x_ - 4 |>2.
_Case 1_. _x_ - 4 ≥0. Then| _x_ - 4 | = _x_ -4, so we have _x_ - 4 >2, and
    therefore _x_ >6.Adding _x_ tobothsidesgivesus2 _x_ > 6 + _x_ ,so2 _x_ - 6 > _x_.
    Since _x_ >6, this implies that 2 _x_ -6 is positive, so| 2 _x_ - 6 | = 2 _x_ - 6 > _x_.
       _Case 2_. _x_ - 4 <0. Then| _x_ - 4 | = 4 - _x_ , so we have 4 - _x_ >2, and
    therefore _x_ <2. Therefore 3 _x_ <6, and subtracting 2 _x_ from both sides
    we get _x_ < 6 - 2 _x_. Also, from _x_ <2 we get 2 _x_ <4, so 2 _x_ - 6 <-2.
    Therefore 2 _x_ -6 is negative, so | 2 _x_ - 6 | = 6 - 2 _x_ > _x_.
       (→) Hint: Imitate the “←” direction, using the cases 2 _x_ - 6 ≥0 and
    2 _x_ - 6 <0.
15. (a) Suppose _x_ ∈ , (F,G). Then we can choose some _A_ ∈F,Gsuch
that _x_ ∈ _A_. Since _A_ ∈F,G, either _A_ ∈For _A_ ∈G. If _A_ ∈Fthen,
since _x_ ∈ _A_ , it follows that _x_ ∈ , F. Similarly, if _A_ ∈Gthen _x_ ∈ , G.
Thus either _x_ ∈ , For _x_ ∈ , G, so _x_ ∈(,F),(,G).
Nowsupposethat _x_ ∈(,F),(,G).Theneither _x_ ∈ , For _x_ ∈ , G.
If _x_ ∈ , F, then we can choose some _A_ ∈Fsuch that _x_ ∈ _A_. Since
_A_ ∈F, _A_ ∈F,G, so since _x_ ∈ _A_ , it follows that _x_ ∈ , (F,G). A
similar argument shows that if _x_ ∈ , Gthen _x_ ∈ , (F,G).
    (b) The theorem is:+(F,G)=(+F)+(+G).
19. (→) Suppose that _A_  _B_ and _C_ are disjoint. Let _x_ be an arbitrary element of
_A_ + _C_. Then _x_ ∈ _A_ and _x_ ∈ _C_. If _x_ ∈/ _B_ , then since _x_ ∈ _A_ , _x_ ∈ _A_ \ _B_ , and
    therefore _x_ ∈ _A_  _B_. But also _x_ ∈ _C_ , so this contradicts our assumption

340 _Appendix 1: Solutions to Selected Exercises_

```
that A  B and C are disjoint. Therefore x ∈ B. Since we also know x ∈ C ,
we have x ∈ B + C. Since x was an arbitrary element of A + C , this shows
that A + C ⊆ B + C. A similar argument shows that B + C ⊆ A + C.
(←) Suppose that A + C = B + C. Suppose that A  B and C are not
disjoint. Then we can choose some x such that x ∈ A  B and x ∈ C. Since
x ∈ A  B , either x ∈ A \ B or x ∈ B \ A.
Case 1. x ∈ A \ B. Then x ∈ A and x ∈/ B. Since we also know x ∈ C ,
we can conclude that x ∈ A + C but x ∈/ B + C. This contradicts the fact
that A + C = B + C.
Case 2. x ∈ B \ A. Similarly, this leads to a contradiction.
Thus we can conclude that A  B and C are disjoint.
```

22. (a) Hint: Suppose _x_ ∈ _A_ \ _C_ , and then break the proof into cases, depend-
    ing on whether or not _x_ ∈ _B_.
(b) Hint: Apply part (a).
23. (a) Suppose _x_ ∈( _A_ , _B_ ) _C_. Then either _x_ ∈( _A_ , _B_ )\ _C_ or _x_ ∈ _C_ \
    ( _A_ , _B_ ).
       _Case 1_. _x_ ∈( _A_ , _B_ )\ _C_. Then either _x_ ∈ _A_ or _x_ ∈ _B_ , and _x_ ∈/ _C_.
    We now break case 1 into two subcases, depending on whether _x_ ∈ _A_
    or _x_ ∈ _B_ :
       _Case 1a_. _x_ ∈ _A_. Then _x_ ∈ _A_ \ _C_ , so _x_ ∈ _A_  _C_ , so _x_ ∈( _A_  _C_ ),
    ( _B_  _C_ ).
       _Case 1b_. _x_ ∈ _B_. Similarly, _x_ ∈ _B_  _C_ , so _x_ ∈( _A_  _C_ ),( _B_  _C_ ).
       _Case 2_. _x_ ∈ _C_ \( _A_ , _B_ ). Then _x_ ∈ _C_ , _x_ ∈/ _A_ , and _x_ ∈/ _B_. It
    follows that _x_ ∈ _A_  _C_ and _x_ ∈ _B_  _C_ , so certainly _x_ ∈( _A_  _C_ ),
    ( _B_  _C_ ).
(b) Here is one example: _A_ = { 1 }, _B_ = { 2 }, _C_ = { 1 , 2 }.
26. The proof is incorrect, because it only establishes that either 0< _x_ or
    _x_ <6, but what must be proven is that 0< _x_ and _x_ <6. However, it can
    be fixed.
28. The proof is correct.
30. Hint: Here is a counterexample to the theorem: _A_ = { 1 , 2 }, _B_ = { 1 },
    _C_ = { 2 }.

```
Section 3.6
```

1. Let _x_ be an arbitrary real number. Let _y_ = _x_ /( _x_^2 +1). Then

```
x - y = x -
```

```
x
x^2 + 1
```

#### =

```
x^3 + x
x^2 + 1
```

#### -

```
x
x^2 + 1
```

#### =

```
x^3
x^2 + 1
```

```
= x^2
```

```
x
x^2 + 1
```

```
= x^2 y.
```

```
Appendix 1: Solutions to Selected Exercises 341
To see that y is unique, suppose that x^2 z = x - z. Then z ( x^2 +1)= x ,
and since x^2 + 1 =0, we can divide both sides by x^2 +1 to conclude that
z = x /( x^2 +1)= y.
```

4. Suppose _x_ =0. Let _y_ = 1 / _x_. Now let _z_ be an arbitrary real number. Then
    _zy_ = _z_ (1/ _x_ )= _z_ / _x_ , as required.
       To see that _y_ is unique, suppose that _y_ ′is a number with the property that
    ∀ _z_ ∈R( _zy_ ′= _z_ / _x_ ). Then in particular, taking _z_ =1, we have _y_ ′= 1 / _x_ ,
    so _y_ ′= _y_.
6. (a) Let _A_ =∅∈P( _U_ ). Then clearly for any _B_ ∈P( _U_ ), _A_ , _B_ =
    ∅, _B_ = _B_.
       To see that _A_ is unique, suppose that _A_ ′∈P( _U_ ) and for all
    _B_ ∈P( _U_ ), _A_ ′, _B_ = _B_. Then in particular, taking _B_ = ∅, we can
    conclude that _A_ ′,∅=∅. But clearly _A_ ′,∅= _A_ ′, so we have _A_ ′=
    ∅= _A_.
    (b) Hint: Let _A_ = _U_.
11. Existence: We are given that for everyG⊆F,,G∈F, so in particular,
sinceF⊆F,,F∈F. Let _A_ = , F. Now suppose _B_ ∈F. Then by ex-
ercise 8 of Section 3.3, _B_ ⊆ , F= _A_ , as required.
Uniqueness: Suppose that _A_ 1 ∈F, _A_ 2 ∈F,∀ _B_ ∈F( _B_ ⊆ _A_ 1 ), and
∀ _B_ ∈F( _B_ ⊆ _A_ 2 ). Applying this last fact with _B_ = _A_ 1 we can conclude
that _A_ 1 ⊆ _A_ 2 , and similarly the previous fact implies that _A_ 2 ⊆ _A_ 1. Thus
_A_ 1 = _A_ 2.

```
Section 3.7
```

1. Hint: Comparing (b) to exercise 16 of Section 3.3 may give you an idea of
    what to use for _A_.
4. Suppose P(, _i_ ∈ _IAi_ )⊆ , _i_ ∈ _I_ P( _Ai_ ). Clearly , _i_ ∈ _IAi_ ⊆ , _i_ ∈ _IAi_ , so
    , _i_ ∈ _IAi_ ∈P(, _i_ ∈ _IAi_ ) and therefore, _i_ ∈ _IAi_ ∈ , _i_ ∈ _I_ P( _Ai_ ). By the defini-
    tion of the union of a family, this means that there is some _i_ ∈ _I_ such that
    , _i_ ∈ _IAi_ ⊆ _Ai_. Now let _j_ ∈ _I_ be arbitrary. Then it is not hard to see that
       _Aj_ ⊆ , _i_ ∈ _IAi_ , so _Aj_ ⊆ _Ai_.
7. Suppose that lim _x_ → _cf_ ( _x_ )= _L_ >0. Let= _L_. Then by the definition of
    limit, there is some δ > 0 such that for all _x_ , if 0 < | _x_ - _c_ |< δ then
    | _f_ ( _x_ )- _L_ |<  = _L_. But if| _f_ ( _x_ )- _L_ |< _L_ then- _L_ < _f_ ( _x_ )- _L_ < _L_ ,
    so 0< _f_ ( _x_ )< 2 _L_. Therefore, if 0<| _x_ - _c_ |< δ then _f_ ( _x_ )>0.
9. The proof is correct.

342 _Appendix 1: Solutions to Selected Exercises_

```
Chapter 4
```

```
Section 4.1
```

1. (a) {( _x_ , _y_ )∈ _P_ × _P_ | _x_ is a parent of _y_ } = {(George H. W. Bush,George
    W. Bush), (Goldie Hawn, Kate Hudson),... }.
(b){( _x_ , _y_ )∈ _C_ × _U_ | there is someone who lives in _x_ and attends _y_ }. If
you are a university student, then let _x_ be the city you live in, and let
_y_ be the university you attend; ( _x_ , _y_ ) will then be an element of this
truth set.
4. _A_ ×( _B_ + _C_ )=( _A_ × _B_ )+( _A_ × _C_ )= { (1,4),(2,4),(3,4)},
    _A_ ×( _B_ , _C_ )=( _A_ × _B_ ),( _A_ × _C_ )= { (1,1),(2,1),(3,1),(1,3),(2,3),
       (3,3),(1,4),(2,4),(3,4)},
( _A_ × _B_ )+( _C_ × _D_ )=( _A_ + _C_ )×( _B_ + _D_ )=∅,
( _A_ × _B_ ),( _C_ × _D_ )= { (1,1),(2,1),(3,1),(1,4),(2,4),(3,4),(3,5),
(4,5)},
( _A_ , _C_ )×( _B_ , _D_ )= { (1,1),(2,1),(3,1),(4,1),(1,4),(2,4),(3,4),
(4,4),(1,5),(2,5),(3,5),(4,5)}.
6. The cases are not exhaustive.
8. True.
12. The theorem is incorrect. Counterexample: _A_ = { 1 }, _B_ = _C_ = _D_ =∅.
Notice that _A_ ⊆ _C_. Where is the mistake in the proof that _A_ ⊆ _C_?

```
Section 4.2
```

1. (a) Domain= { _p_ ∈ _P_ | _p_ has a living child}; Range= { _p_ ∈ _P_ | _p_ has a
    living parent}.
(b) Domain=R; Range=R+.
4. (a) {(1,4),(1,5),(1,6),(2,4),(3,6)}.
    (b){(4,4),(5,5),(5,6),(6,5),(6,6)}.
7. _E_ ◦ _E_ ⊆ _F_.
10. We prove the contrapositives of both directions.
(→) Suppose Ran( _R_ ) and Dom( _S_ ) are not disjoint. Then we can choose
    some _b_ ∈Ran( _R_ )+Dom( _S_ ).Since _b_ ∈Ran( _R_ ),wecanchoosesome _a_ ∈ _A_
    such that ( _a_ , _b_ )∈ _R_. Similarly, since _b_ ∈Dom( _S_ ), we can choose some
    _c_ ∈ _C_ such that ( _b_ , _c_ )∈ _S_. But then ( _a_ , _c_ )∈ _S_ ◦ _R_ , so _S_ ◦ _R_ =∅.
       (←) Suppose _S_ ◦ _R_ =∅. Then we can choose some ( _a_ , _c_ )∈ _S_ ◦ _R_.
    By definition of _S_ ◦ _R_ , this means that we can choose some _b_ ∈ _B_ such
    that ( _a_ , _b_ )∈ _R_ and ( _b_ , _c_ )∈ _S_. But then _b_ ∈Ran( _R_ ) and _b_ ∈Dom( _S_ ), so
    Ran( _R_ ) and Dom( _S_ ) are not disjoint.

```
Appendix 1: Solutions to Selected Exercises 343
Section 4.3
```

```
1.
```

```
a
bad
bed
cab
```

```
b
c
d
e
```

#### 3

#### 1 2 3 4

5. _S_ ◦ _R_ = { ( _a_ , _y_ ),( _a_ , _z_ ),( _b_ , _x_ ),( _c_ , _y_ ),( _c_ , _z_ )}.
7. (→) Suppose _R_ is reflexive. Let ( _x_ , _y_ ) be arbitrary element of _iA_. Then by
    the definition of _iA_ , _x_ = _y_ ∈ _A_. Since _R_ is reflexive, ( _x_ , _y_ )=( _x_ , _x_ )∈ _R_.
    Since ( _x_ , _y_ ) was arbitrary, this shows that _iA_ ⊆ _R_.
       (←) Suppose _iA_ ⊆ _R_. Let _x_ ∈ _A_ be arbitrary. Then ( _x_ , _x_ )∈ _iA_ , so
    since _iA_ ⊆ _R_ , ( _x_ , _x_ )∈ _R_. Since _x_ was arbitrary, this shows that _R_ is reflex-
    ive.
10. Suppose ( _x_ , _y_ )∈ _iD_. Then _x_ = _y_ ∈ _D_ =Dom( _S_ ), so there is some _z_ ∈ _A_
such that ( _x_ , _z_ )∈ _S_. Therefore ( _z_ , _x_ )∈ _S_ -^1 , so ( _x_ , _y_ )=( _x_ , _x_ )∈ _S_ -^1 ◦ _S_.
Thus, _iD_ ⊆ _S_ -^1 ◦ _S_. The proof of the other statement is similar.
13. (a) Yes. To prove it, suppose _R_ 1 and _R_ 2 are reflexive, and suppose _a_ ∈ _A_.
Since _R_ 1 is reflexive, ( _a_ , _a_ )∈ _R_ 1 , so ( _a_ , _a_ )∈ _R_ 1 , _R_ 2.
(b) Yes. To prove it, suppose _R_ 1 and _R_ 2 are symmetric, and suppose
( _x_ , _y_ )∈ _R_ 1 , _R_ 2. Then either ( _x_ , _y_ )∈ _R_ 1 or ( _x_ , _y_ )∈ _R_ 2. If ( _x_ , _y_ )∈
_R_ 1 then since _R_ 1 is symmetric, ( _y_ , _x_ )∈ _R_ 1 , so ( _y_ , _x_ )∈ _R_ 1 , _R_ 2. Sim-
ilar reasoning shows that if ( _x_ , _y_ )∈ _R_ 2 then ( _y_ , _x_ )∈ _R_ 1 , _R_ 2.
(c) No. Counterexample: _A_ = { 1 , 2 , 3 }, _R_ 1 = { (1,2)}, _R_ 2 = { (2,3)}.
17. First note that by part 2 of Theorem 4.3.4, since _R_ and _S_ are symmetric,
_R_ = _R_ -^1 and _S_ = _S_ -^1. Therefore
_R_ ◦ _S_ is symmetric iff _R_ ◦ _S_ =( _R_ ◦ _S_ )-^1 (Theorem 4.3.4, part 2)
iff _R_ ◦ _S_ = _S_ -^1 ◦ _R_ -^1 (Theorem 4.2.5, part 5)
iff _R_ ◦ _S_ = _S_ ◦ _R_.

344 _Appendix 1: Solutions to Selected Exercises_

20. Suppose _R_ is transitive, and suppose ( _X_ , _Y_ )∈ _S_ and ( _Y_ , _Z_ )∈ _S_. To prove
    that ( _X_ , _Z_ )∈ _S_ we must show that∀ _x_ ∈ _X_ ∀ _z_ ∈ _Z_ ( _x Rz_ ), so let _x_ ∈ _X_ and
    _z_ ∈ _Z_ be arbitrary. Since _Y_ ∈ _B_ , _Y_ =∅, so we can choose _y_ ∈ _Y_. Since
    ( _X_ , _Y_ )∈ _S_ and ( _Y_ , _Z_ )∈ _S_ , by the definition of _S_ we have _x Ry_ and _yRz_.
    But then since _R_ is transitive, _x Rz_ , as required. The empty set had to
    be excluded from _B_ so that we could come up with _y_ ∈ _Y_ in this proof.
    (Can you find a counterexample if the empty set is not excluded?)
23. Hint: Suppose _aRb_ and _bRc_. To prove _aRc_ , suppose that _X_ ⊆ _A_ \ { _a_ , _c_ }
    and _X_ , { _a_ } ∈ F; you must prove that _X_ , { _c_ } ∈ F. To do this, you may
    find it helpful to consider two cases: _b_ ∈/ _X_ or _b_ ∈ _X_. In the second of
    these cases, try working with the sets _X_ ′=( _X_ , { _a_ })\ { _b_ }and _X_ ′′=
    ( _X_ , { _c_ })\ { _b_ }.

```
Section 4.4
```

1. (a) Partial order, but not total order.
    (b) Not a partial order.
    (c) Partial order, but not total order.
4. (→) Suppose that _R_ is both antisymmetric and symmetric. Suppose that
    ( _x_ , _y_ )∈ _R_. Then since _R_ is symmetric, ( _y_ , _x_ )∈ _R_ , and since _R_ is anti-
    symmetric, it follows that _x_ = _y_. Therefore ( _x_ , _y_ )∈ _iA_. Since ( _x_ , _y_ ) was
    arbitrary, this shows that _R_ ⊆ _iA_.
       (←) Suppose that _R_ ⊆ _iA_. Suppose ( _x_ , _y_ )∈ _R_. Then ( _x_ , _y_ )∈ _iA_ , so
    _x_ = _y_ , and therefore ( _y_ , _x_ )=( _x_ , _y_ )∈ _R_. This shows that _R_ is symmetric.
    To see that _R_ is antisymmetric, suppose that ( _x_ , _y_ )∈ _R_ and ( _y_ , _x_ )∈ _R_.
    Then ( _x_ , _y_ )∈ _iA_ , so _x_ = _y_.
8. To see that _T_ is reflexive, consider an arbitrary ( _a_ , _b_ )∈ _A_ × _B_. Since _R_
    and _S_ are both reflexive, we have _aRa_ and _bSb_. By the definition of _T_ ,
    it follows that ( _a_ , _b_ ) _T_ ( _a_ , _b_ ). To see that _T_ is antisymmetric, suppose that
    ( _a_ , _b_ ) _T_ ( _a_ ′, _b_ ′) and ( _a_ ′, _b_ ′) _T_ ( _a_ , _b_ ). Then _aRa_ ′and _a_ ′ _Ra_ , so since _R_ is anti-
    symmetric, _a_ = _a_ ′. Similarly, _bSb_ ′and _b_ ′ _Sb_ , so since _S_ is antisymmetric,
    we also have _b_ = _b_ ′. Thus ( _a_ , _b_ )=( _a_ ′, _b_ ′), as required. Finally, to see
    that _T_ is transitive, suppose that ( _a_ , _b_ ) _T_ ( _a_ ′, _b_ ′) and ( _a_ ′, _b_ ′) _T_ ( _a_ ′′, _b_ ′′). Then
    _aRa_ ′and _a_ ′ _Ra_ ′′, so since _R_ is transitive, _aRa_ ′′. Similarly, _bSb_ ′and _b_ ′ _Sb_ ′′,
    so _bSb_ ′′, and therefore ( _a_ , _b_ ) _T_ ( _a_ ′′, _b_ ′′).
       Even if both _R_ and _S_ are total orders, _T_ need not be a total order.
11. The minimal elements of _B_ are the prime numbers. _B_ has no smallest
element.

```
Appendix 1: Solutions to Selected Exercises 345
```

14. (a)

```
b is the R -largest element of B iff b ∈ B and∀ x ∈ B ( x Rb )
iff b ∈ B and∀ x ∈ B ( bR -^1 x )
iff b is the R -^1 -smallest element of B.
```

```
(b)
```

```
b is an R -maximal element of B iff b ∈ B andnot ∃ x ∈ B ( bRx and  b = x )
iff b ∈ B andnot ∃ x ∈ B ( x R -^1 b
and  x = b )
iff b is an R -minimal element of B.
```

17. No. Let _A_ =R×R, and let _R_ = { (( _x_ , _y_ ),( _x_ ′, _y_ ′))∈ _A_ × _A_ | _x_ ≤ _x_ ′and
    _y_ ≤ _y_ ′}. (You might want to compare this to exercise 8.) Let _B_ = { (0,0)} ,
({ 1 } × R). We will leave it to you to check that _R_ is a partial order on _A_ ,
and that (0,0) is the only minimal element of _B_ , but it is not a smallest
element.
21. (a) Suppose that _x_ ∈ _U_ and _x Ry_. To prove that _y_ ∈ _U_ , we must show that
    _y_ is an upper bound for _B_ , so suppose that _b_ ∈ _B_. Since _x_ ∈ _U_ , _x_ is an
    upper bound for _B_ , so _bRx_. But we also have _x Ry_ , so by transitivity
    of _R_ we can conclude that _bRy_. Since _b_ was arbitrary, this shows that
    _y_ is an upper bound for _B_.
(b) Suppose _b_ ∈ _B_. To prove that _b_ is a lower bound for _U_ , let _x_ be an
arbitrary element of _U_. Then by definition of _U_ , _x_ is an upper bound
for _B_ , so _bRx_. Since _x_ was arbitrary, this shows that _b_ is a lower bound
for _U_.
(c) Hint: Suppose _x_ is the greatest lower bound of _U_. First use part (b) to
show that _x_ is an upper bound for _B_ , and therefore _x_ ∈ _U_. Then use the
fact that _x_ is a lower bound for _U_ to show that _x_ is the smallest element
of _U_ – in other words, it is the least upper bound of _B_.

```
Section 4.5
```

1. (a) Reflexive closure:{( _a_ , _a_ ),( _a_ , _b_ ),( _b_ , _c_ ),( _c_ , _b_ ),( _b_ , _b_ ),( _c_ , _c_ )}.
    Symmetric closure:{( _a_ , _a_ ),( _a_ , _b_ ),( _b_ , _c_ ),( _c_ , _b_ ),( _b_ , _a_ )}.
    Transitive closure:{( _a_ , _a_ ),( _a_ , _b_ ),( _b_ , _c_ ),( _c_ , _b_ ),( _a_ , _c_ ),( _b_ , _b_ ),( _c_ , _c_ )}.
(b) Reflexive closure:{( _x_ , _y_ )∈R×R| _x_ ≤ _y_ }.
Symmetric closure:{( _x_ , _y_ )∈R×R| _x_ = _y_ }.
Transitive closure: _R_.

346 _Appendix 1: Solutions to Selected Exercises_

```
(c) Reflexive closure and symmetric closure are both Dr. Transitive
closure isR×R.
```

3. (a) Suppose that _R_ is an asymmetric relation on _A_. Then the statement
    ∀ _x_ ∈ _A_ ∀ _y_ ∈ _A_ (( _x Ry_ and  _yRx_ )→ _x_ = _y_ ) is vacuously true, because
       _x Ry_ and  _yRx_ is always false.
(b) Suppose that _R_ is a strict partial order, and suppose that for some
_x_ , _y_ ∈ _A_ ,( _x_ , _y_ )∈ _R_ and ( _y_ , _x_ )∈ _R_. Then by transitivity of
_R_ ,( _x_ , _x_ )∈ _R_ , which contradicts the fact that _R_ is irreflexive. There-
    fore, _R_ is asymmetric.
5. (a) Hint: LetF= { _T_ ⊆ _A_ × _A_ | _T_ ⊆ _R_ and _T_ is irreflexive}. Then you
    must prove that _S_ ∈Fand∀ _T_ ∈F( _T_ ⊆ _S_ ). For the first of these, you
    must prove that _S_ ⊆ _R_ and _S_ is irreflexive. Both of these follow easily
    from the definition of _S_. For the second, let _T_ ∈Fbe arbitrary and
    prove _T_ ⊆ _S_. Since _T_ ∈F, you know that _T_ ⊆ _R_ and _T_ is irreflexive.
    Let ( _x_ , _y_ ) be an arbitrary element of _T_ , and use these facts about _T_ ,
    together with the definition of _S_ , to prove ( _x_ , _y_ )∈ _S_.
(b) Suppose _R_ is a partial order on _A_. We already showed in part (a) that
_S_ is irreflexive. To show that it is transitive, suppose ( _x_ , _y_ )∈ _S_ and
( _y_ , _z_ )∈ _S_. Then by the definition of _S_ ,( _x_ , _y_ )∈ _R_ and ( _y_ , _z_ )∈ _R_ , so
since _R_ is transitive, ( _x_ , _z_ )∈ _R_. If _x_ = _z_ then we have ( _x_ , _y_ )∈ _R_ and
( _y_ , _x_ )∈ _R_ , so by the antisymmetry of _R_ , _x_ = _y_. But then ( _x_ , _y_ )∈ _iA_ ,
which contradicts the fact that ( _x_ , _y_ )∈ _S_ = _R_ \ _iA_. Therefore _x_ = _z_ ,
so ( _x_ , _z_ )∈/ _iA_ and hence ( _x_ , _z_ )∈ _S_.
7. (a) Let _S_ be the reflexive closure of _R_.
    (→) Suppose _R_ is reflexive. By clause 1 in the definition of reflex-
ive closure (Definition 4.5.1), _R_ ⊆ _S_ , and by clause 3 (with _T_ = _R_ ),
_S_ ⊆ _R_. Therefore _R_ = _S_.
(←) Suppose _R_ = _S_. By clause 2 in the definition of reflexive clo-
sure, _R_ is reflexive.
(b) Yes; the proofs are very similar.
9. Hint: Let _T_ = { ( _x_ , _y_ )∈ _S_ | _x_ ∈Dom( _R_ ) and _y_ ∈Ran( _R_ )}. Prove that
    _R_ ⊆ _T_ and _T_ is transitive.
12. (a) _S_ 1 , _S_ 2 =( _R_ 1 , _iA_ ),( _R_ 2 , _iA_ )=( _R_ 1 , _R_ 2 ), _iA_ = _R_ , _iA_ = _S_.
(b) It is possible to give a proof that is similar to the proof in part (a),
using formulas for _S_ 1 , _S_ 2 , and _S_. However, we will take a different
approach. First, note that _R_ 1 ⊆ _R_ and _R_ 2 ⊆ _R_. It follows, by exercise
11, that _S_ 1 ⊆ _S_ and _S_ 2 ⊆ _S_ , so _S_ 1 , _S_ 2 ⊆ _S_. For the other direction,
notethat _R_ = _R_ 1 , _R_ 2 ⊆ _S_ 1 , _S_ 2 ,andbyexercise13(b)ofSection4.3,
_S_ 1 , _S_ 2 is symmetric. Therefore, by definition of symmetric closure,
_S_ ⊆ _S_ 1 , _S_ 2.

```
Appendix 1: Solutions to Selected Exercises 347
(c) Imitating the first half of the proof in part (b), we can use exercise 11
to show that S 1 , S 2 ⊆ S. However, the answer to exercise 13(c) of
Section 4.3 was no, so we can’t imitate the second half of the proof.
In fact, the example given in the solution to exercise 13(c) works as an
example for which S 1 , S 2 = S.
```

15. Hint: Let _S_ = _R_ , _R_ -^1 , _iA_.
18. (a) We have _R_ ⊆ _Q_ and _Q_ ⊆ _S_ , so _R_ ⊆ _S_. By definition of symmetric
    closure, _Q_ is symmetric, and therefore, by exercise 17, _S_ is symmetric.
    By definition of transitive closure, _S_ is also transitive. Now suppose
    that _T_ ⊆ _A_ × _A_ , _R_ ⊆ _T_ , and _T_ is both symmetric and transitive. Since
    _Q_ is the _smallest_ symmetric relation on _A_ containing _R_ , _Q_ ⊆ _T_. But
    then since _S_ is the _smallest_ transitive relation on _A_ containing _Q_ ,
    _S_ ⊆ _T_.
(b) Since _R_ ⊆ _Q_ , _Q_ ′is the transitive closure of _R_ , and _S_ is the transitive
closure of _Q_ , by exercise 11, _Q_ ′⊆ _S_. Since _S_ is symmetric and _S_ ′is
the _smallest_ symmetric relation on _A_ containing _Q_ ′, _S_ ′⊆ _S_.
(c) No. Counterexample: _A_ = { 1 , 2 , 3 }, _R_ = { (1,2),(3,2)}.
20. (a) One example is{(San Francisco, Chicago), (Chicago, Dallas), (Dallas,
    New York), (New York, Washington, D.C.), (Washington, D.C., San
    Francisco)}.
(b) No.

```
Section 4.6
```

1. Here is a list of all partitions:

```
{{ 1 , 2 , 3 }}
{{ 1 , 2 },{ 3 }}
{{ 1 , 3 },{ 2 }}
{{ 2 , 3 },{ 1 }}
{{ 1 },{ 2 },{ 3 }}
```

3. (a) _R_ is an equivalence relation. There are 26 equivalence classes – one
    for each letter of the alphabet. The equivalence classes are: the set of
    all words that start with _a_ , the set of all words that start with _b_ ,... ,
    the set of all words that start with _z_.
(b) _S_ is not an equivalence relation, because it is not transitive.
(c) _T_ is an equivalence relation. The equivalence classes are: the set of
all one-letter words, the set of all two-letter words,... , the set of all
_n_ -letter words, where _n_ is the length of the longest English word.

348 _Appendix 1: Solutions to Selected Exercises_

5. The assumption that is needed is that for every date _d_ , someone was born
    on the date _d_. What would go wrong if, say, just by chance, no one was
    born on April 23? Where in the proof is this assumption used?
9. Since _S_ is the equivalence relation determined byF, the proof of Theo-
    rem 4.6.6 shows that _A_ / _S_ =F= _A_ / _R_. The desired conclusion now fol-
    lows from exercise 8.
12. Suppose _a_ ≡ _c_ (mod _m_ ) and _b_ ≡ _d_ (mod _m_ ). Then _m_ |( _a_ - _c_ ) and _m_ |
( _b_ - _d_ ). By exercise 18(a) of Section 3.3, it follows that _m_ |( _a_ - _c_ +
_b_ - _d_ ). But _a_ - _c_ + _b_ - _d_ =( _a_ + _b_ )-( _c_ + _d_ ), so _m_ |(( _a_ + _b_ )-
( _c_ + _d_ )), and therefore _a_ + _b_ ≡ _c_ + _d_ (mod _m_ ).
For the second half of the problem, you might find it useful to begin
with the equation _ab_ - _cd_ =( _ab_ - _ad_ )+( _ad_ - _cd_ ).
15. By exercise 15(a) of Section 3.5,,(F,G)=(,F),(,G)= _A_ , _B_. To
see thatF,Gis pairwise disjoint, suppose that _X_ ∈F,G, _Y_ ∈F,G,
and _X_ + _Y_ =∅. If _X_ ∈Fand _Y_ ∈Gthen _X_ ⊆ _A_ and _Y_ ⊆ _B_ , and since
_A_ and _B_ are disjoint it follows that _X_ and _Y_ are disjoint, which is a con-
tradiction. Thus it cannot be the case that _X_ ∈Fand _Y_ ∈G, and a similar
argument can be used to rule out the possibility that _X_ ∈Gand _Y_ ∈F.
Thus, _X_ and _Y_ are either both elements ofFor both elements ofG. If
they are both inF, then sinceFis pairwise disjoint, _X_ = _Y_. A similar
argument applies if they are both inG. Finally, we have∀ _X_ ∈F( _X_ =∅)
and∀ _X_ ∈G( _X_ =∅), and it follows by exercise 8 of Section 2.2 that
∀ _X_ ∈F,G( _X_ =∅).
19. (a) Here is the proof of transitivity: Suppose ( _x_ , _y_ )∈ _T_ and ( _y_ , _z_ )∈ _T_.
Then since _T_ = _R_ + _S_ ,( _x_ , _y_ )∈ _R_ and ( _y_ , _z_ )∈ _R_ , so since _R_ is tran-
sitive, ( _x_ , _z_ )∈ _R_. Similarly, ( _x_ , _z_ )∈ _S_ , so ( _x_ , _z_ )∈ _R_ + _S_ = _T_.
(b) Suppose _x_ ∈ _A_. Then for all _y_ ∈ _A_ ,
_y_ ∈[ _x_ ] _T_ iff ( _y_ , _x_ )∈ _T_ iff ( _y_ , _x_ )∈ _R_ and ( _y_ , _x_ )∈ _S_
iff _y_ ∈[ _x_ ] _R_ and  _y_ ∈[ _x_ ] _S_ iff _y_ ∈[ _x_ ] _R_ +[ _x_ ] _S_.
(c) Suppose _X_ ∈ _A_ / _T_. Then since _A_ / _T_ is a partition, _X_ =∅. Also,
for some _x_ ∈ _A_ , _X_ =[ _x_ ] _T_ =[ _x_ ] _R_ +[ _x_ ] _S_ , so since [ _x_ ] _R_ ∈ _A_ / _R_ and
[ _x_ ] _S_ ∈ _A_ / _S_ , _X_ ∈( _A_ / _R_ )·( _A_ / _S_ ).
Now suppose _X_ ∈( _A_ / _R_ )·( _A_ / _S_ ). Then for some _y_ and _z_ in _A_ , _X_ =
[ _y_ ] _R_ +[ _z_ ] _S_. Also, _X_ =∅, so we can choose some _x_ ∈ _X_. There-
fore _x_ ∈[ _y_ ] _R_ and _x_ ∈[ _z_ ] _S_ , and by part 2 of Lemma 4.6.5 it fol-
lows that [ _x_ ] _R_ =[ _y_ ] _R_ and [ _x_ ] _S_ =[ _z_ ] _S_. Therefore _X_ =[ _x_ ] _R_ +[ _x_ ] _S_ =
[ _x_ ] _T_ ∈ _A_ / _T_.
21. F⊗F= { R+×R+,R-×R+,R-×R-,R+×R-,R+× { 0 },R-× { 0 },
{ 0 } × R+,{ 0 } × R-,{(0,0)}}. In geometric terms these are the four

```
Appendix 1: Solutions to Selected Exercises 349
quadrants of the plane, the positive and negative x -axes, the positive and
negative y -axes, and the origin.
```

23. (a) Hint: Let _T_ = { ( _X_ , _Y_ )∈ _A_ / _S_ × _A_ / _S_ | ∃ _x_ ∈ _X_ ∃ _y_ ∈ _Y_ ( _x Ry_ )}.
    (b) Suppose _x_ , _y_ , _x_ ′, _y_ ′∈ _A_ , _xSx_ ′, and _ySy_ ′. Then [ _x_ ] _S_ =[ _x_ ′] _S_ and
       [ _y_ ] _S_ =[ _y_ ′] _S_ , so _x Ry_ iff [ _x_ ] _ST_ [ _y_ ] _S_ iff [ _x_ ′] _ST_ [ _y_ ′] _S_ iff _x_ ′ _Ry_ ′.

```
Chapter 5
```

```
Section 5.1
```

1. (a) Yes.
    (b) No.
    (c) Yes.
3. (a) _f_ ( _a_ )= _b_ , _f_ ( _b_ )= _b_ , _f_ ( _c_ )= _a_.
    (b) _f_ (2)=0.
    (c) _f_ (π)=3 and _f_ (-π)= - 4.
5. _L_ ◦ _H_ : _N_ → _N_ , and for every _n_ ∈ _N_ ,( _L_ ◦ _H_ )( _n_ )= _n_. Thus, _L_ ◦ _H_ =
    _iN_.
       _H_ ◦ _L_ : _C_ → _C_ , and for every _c_ ∈ _C_ ,( _H_ ◦ _L_ )( _c_ )=the capital of the
    country in which _c_ is located.
7. (a) Suppose that _c_ ∈ _C_. We must prove that there is a unique _b_ ∈ _B_ such
    that ( _c_ , _b_ )∈ _f_  _C_.
       Existence: Let _b_ = _f_ ( _c_ )∈ _B_. Then ( _c_ , _b_ )∈ _f_ and ( _c_ , _b_ )∈ _C_ × _B_ ,
    and therefore ( _c_ , _b_ )∈ _f_ +( _C_ × _B_ )= _f_  _C_.
       Uniqueness: Suppose that ( _c_ , _b_ 1 )∈ _f_  _C_ and ( _c_ , _b_ 2 )∈ _f_  _C_. Then
    ( _c_ , _b_ 1 )∈ _f_ and ( _c_ , _b_ 2 )∈ _f_ , so since _f_ is a function, _b_ 1 = _b_ 2.
       This proves that _f_  _C_ is a function from _C_ to _B_. Finally, to derive
    the formula for ( _f_  _C_ )( _c_ ), suppose that _c_ ∈ _C_ , and let _b_ = _f_ ( _c_ ). We
    showed in the _existence_ half of the proof that ( _c_ , _b_ )∈ _f_  _C_. It follows
    that
       _f_ ( _c_ )= _b_ =( _f_  _C_ )( _c_ ).

```
(b) (→) Suppose g = f  C. Then g = f +( C × B ), so clearly g ⊆ f.
(←) Suppose g ⊆ f. Suppose c ∈ C , and let b = g ( c ). Then ( c , b )∈
g , so ( c , b )∈ f , and therefore f ( c )= b. But then by part (a),
( f  C )( c )= f ( c )= b = g ( c ). Since c was arbitrary, it follows by
Theorem 5.1.4 that g = f  C.
(c) h Z= h +(Z×R)= { ( x , y )∈R×R| y = 2 x + 3 } + (Z×R)=
{( x , y )∈Z×R| y = 2 x + 3 } = g.
```

350 _Appendix 1: Solutions to Selected Exercises_

10. (a) Suppose _b_ ∈ _B_. Since Dom( _S_ )= _B_ , we know that there is some _c_ ∈ _C_
    such that ( _b_ , _c_ )∈ _S_. To see that it is unique, suppose that _c_ ′∈ _C_ and
    ( _b_ , _c_ ′)∈ _S_. Since Ran( _R_ )= _B_ , we can choose some _a_ ∈ _A_ such that
    ( _a_ , _b_ )∈ _R_ .Butthen( _a_ , _c_ )∈ _S_ ◦ _R_ and( _a_ , _c_ ′)∈ _S_ ◦ _R_ ,andsince _S_ ◦ _R_
    is a function, it follows that _c_ = _c_ ′.
(b) _A_ = { 1 }, _B_ = { 2 , 3 }, _C_ = { 4 }, _R_ = { (1,2),(1,3)}, _S_ = { (2,4),(3,4)}.
12. (a) No. Example: _A_ = { 1 }, _B_ = { 2 , 3 }, _f_ = { (1,2)}, _R_ = { (1,1)}.
    (b) Yes. Suppose _R_ is symmetric. Suppose ( _x_ , _y_ )∈ _S_. Then we can choose
       some _u_ and _v_ in _A_ such that _f_ ( _u_ )= _x_ , _f_ ( _v_ )= _y_ , and ( _u_ , _v_ )∈ _R_. Since
       _R_ is symmetric, ( _v_ , _u_ )∈ _R_ , and therefore ( _y_ , _x_ )∈ _S_.
    (c) No. Example: _A_ = { 1 , 2 , 3 , 4 }, _B_ = { 5 , 6 , 7 }, _f_ = { (1,5),(2,6),
       (3,6),(4,7)}, _R_ = { (1,2),(3,4)}.
16. (a) Let _a_ =3 and _c_ =8. Then for any _x_ > _a_ =3,

```
| f ( x )| = | 7 x + 3 | = 7 x + 3 < 7 x + x = 8 x < 8 x^2 = c | g ( x )|.
```

```
This shows that f ∈ O ( g ).
Now suppose that g ∈ O ( f ). Then we can choose a ∈Z+ and
c ∈R+such that∀ x > a (| g ( x )| ≤ c | f ( x )|), or in other words,∀ x > a
( x^2 ≤ c (7 x +3)). Let x be any positive integer larger than both a
and 10 c. Multiplying both sides of the inequality x > 10 c by x ,
we can conclude that x^2 > 10 cx. But since x > a , we also have
x^2 ≤ c (7 x +3)≤ c (7 x + 3 x )= 10 cx , so we have reached a contra-
diction. Therefore g ∈/ O ( f ).
(b) Clearly for any function f ∈Fwe have∀ x ∈Z+(| f ( x )| ≤ 1 · | f ( x )|),
so f ∈ O ( f ), and therefore ( f , f )∈ S. Thus, S is reflexive. To see that
it is also transitive, suppose ( f , g )∈ S and ( g , h )∈ S. Then there are
positive integers a 1 and a 2 and positive real numbers c 1 and c 2 such
that∀ x > a 1 (| f ( x )| ≤ c 1 | g ( x )|) and∀ x > a 2 (| g ( x )| ≤ c 2 | h ( x )|). Let
a be the maximum of a 1 and a 2 , and let c = c 1 c 2. Then for all x > a ,
| f ( x )| ≤ c 1 | g ( x )| ≤ c 1 c 2 | h ( x )| = c | h ( x )|.
```

```
Thus, ( f , h )∈ S , so S is transitive. Finally, to see that S is not a partial
order, we show that it is not antisymmetric. Let f and g be the functions
fromZ+toRdefined by the formulas f ( x )= x and g ( x )= 2 x. Then
for all x ∈Z+,| f ( x )| ≤ | g ( x )|and| g ( x )| ≤ 2 | f ( x )|, so f ∈ O ( g ) and
also g ∈ O ( f ). Therefore ( f , g )∈ S and ( g , f )∈ S , but f = g.
(c) Since f 1 ∈ O ( g ), we can choose a 1 ∈Z+and c 1 ∈R+such that∀ x >
a 1 (| f 1 ( x )| ≤ c 1 | g ( x )|). Similarly, since f 2 ∈ O ( g ) we can choose a 2 ∈
Z+and c 2 ∈R+such that∀ x > a 2 (| f 2 ( x )| ≤ c 2 | g ( x )|). Let a be the
maximum of a 1 and a 2 , and let c = | s | c 1 + | t | c 2 +1. (We have added
```

```
Appendix 1: Solutions to Selected Exercises 351
1 here just to make sure that c is positive, as required in the definition
of O .) Then for all x > a ,
| f ( x )| = | s f 1 ( x )+ t f 2 ( x )| ≤ | s || f 1 ( x )| + | t || f 2 ( x )|
≤ | s | c 1 | g ( x )| + | t | c 2 | g ( x )| = (| s | c 1 + | t | c 2 )| g ( x )| ≤ c | g ( x )|.
Therefore f ∈ O ( g ).
```

18. (a) Hint: Let _h_ = { ( _X_ , _y_ )∈ _A_ / _R_ × _B_ | ∃ _x_ ∈ _X_ ( _f_ ( _x_ )= _y_ )}.
    (b) Hint: Use the fact that if _xRy_ then [ _x_ ] _R_ =[ _y_ ] _R_.

```
Section 5.2
```

2. (a) _f_ is not a function.
    (b) _f_ is not a function. _g_ is a function that is onto, but not one-to-one.
    (c) _R_ is one-to-one and onto.
5. (a) Suppose that _x_ 1 ∈ _A_ , _x_ 2 ∈ _A_ , and _f_ ( _x_ 1 )= _f_ ( _x_ 2 ). Then we can per-
    form the following algebraic steps:
       _x_ 1 + 1
       _x_ 1 - 1

#### =

```
x 2 + 1
x 2 - 1
```

#### 

```
( x 1 +1)( x 2 -1)=( x 2 +1)( x 1 -1),
x 1 x 2 - x 1 + x 2 - 1 = x 1 x 2 - x 2 + x 1 - 1 ,
2 x 2 - 2 x 1 = 0 ,
x 1 = x 2.
This shows that f is one-to-one.
To show that f is onto, suppose that y ∈ A. Let
```

```
x =
```

```
y + 1
y - 1
```

#### 

```
Notice that this is defined, since y =1, and also clearly x =1, so
x ∈ A. Then
```

```
f ( x )=
```

```
x + 1
x - 1
```

#### =

```
y + 1
y - 1 +^1
y + 1
y - 1 -^1
```

#### =

```
2 y
y - 1
2
y - 1
```

```
= y.
```

```
(b) For any x ∈ A ,
```

```
( f ◦ f )( x )=
```

```
x + 1
x - 1 +^1
x + 1
x - 1 -^1
```

#### =

```
2 x
x - 1
2
x - 1
```

```
= x = iA ( x ).
```

7. (a) {1, 2, 3, 4}.
    (b) _f_ is onto, but not one-to-one.

352 _Appendix 1: Solutions to Selected Exercises_

10. (a) Suppose that _f_ is one-to-one. Suppose that _c_ 1 ∈ _C_ , _c_ 2 ∈ _C_ , and
    ( _f_  _C_ )( _c_ 1 )=( _f_  _C_ )( _c_ 2 ). By exercise 7(a) of Section 5.1, it follows
    that _f_ ( _c_ 1 )= _f_ ( _c_ 2 ), so since _f_ is one-to-one, _c_ 1 = _c_ 2.
(b) Suppose that _f_  _C_ is onto. Suppose _b_ ∈ _B_. Then since _f_  _C_ is onto,
we can choose some _c_ ∈ _C_ such that ( _f_  _C_ )( _c_ )= _b_. But then _c_ ∈ _A_ ,
and by exercise 7(a) of Section 5.1, _f_ ( _c_ )= _b_.
(c) Let _A_ = _B_ =Rand _C_ =R+. For (a), use _f_ ( _x_ )= | _x_ |, and for (b), use
_f_ ( _x_ )= _x_.
14. (a) Suppose _R_ is reflexive and _f_ is onto. Let _x_ ∈ _B_ be arbitrary. Since _f_
    is onto, we can choose some _u_ ∈ _A_ such that _f_ ( _u_ )= _x_. Since _R_ is
    reflexive, ( _u_ , _u_ )∈ _R_. Therefore ( _x_ , _x_ )∈ _S_.
(b) Suppose _R_ is transitive and _f_ is one-to-one. Suppose that ( _x_ , _y_ )∈ _S_
and ( _y_ , _z_ )∈ _S_. Since ( _x_ , _y_ )∈ _S_ , we can choose some _u_ and _v_ in
_A_ such that _f_ ( _u_ )= _x_ , _f_ ( _v_ )= _y_ , and ( _u_ , _v_ )∈ _R_. Similarly, since
( _y_ , _z_ )∈ _S_ we can choose _p_ and _q_ in _A_ such that _f_ ( _p_ )= _y_ , _f_ ( _q_ )= _z_ ,
and ( _p_ , _q_ )∈ _R_. Since _f_ ( _v_ )= _y_ = _f_ ( _p_ ) and _f_ is one-to-one, _v_ = _p_.
Therefore ( _v_ , _q_ )=( _p_ , _q_ )∈ _R_. Since we also have ( _u_ , _v_ )∈ _R_ , by tran-
sitivity of _R_ it follows that ( _u_ , _q_ )∈ _R_ , so ( _x_ , _z_ )∈ _S_.
17. (a) Let _b_ ∈ _B_ be arbitrary. Since _f_ is onto, we can choose some _a_ ∈ _A_
    such that _f_ ( _a_ )= _b_. Therefore _g_ ( _b_ )=( _g_ ◦ _f_ )( _a_ )=( _h_ ◦ _f_ )( _a_ )=
       _h_ ( _b_ ). Since _b_ was arbitrary, this shows that∀ _b_ ∈ _B_ ( _g_ ( _b_ )= _h_ ( _b_ )), so
       _g_ = _h_.
(b) Let _c_ 1 and _c_ 2 be two distinct elements of _C_. Suppose _b_ ∈ _B_. Let
_g_ and _h_ be functions from _B_ to _C_ such that ∀ _x_ ∈ _B_ ( _g_ ( _x_ )= _c_ 1 ),
∀ _x_ ∈ _B_ \ { _b_ }( _h_ ( _x_ )= _c_ 1 ), and _h_ ( _b_ )= _c_ 2. (Formally, _g_ = _B_ × { _c_ 1 }and
_h_ =[( _B_ \ { _b_ })× { _c_ 1 }], { ( _b_ , _c_ 2 )}.) Then _g_ = _h_ , so by assumption
_g_ ◦ _f_ = _h_ ◦ _f_ , and therefore we can choose some _a_ ∈ _A_ such that
_g_ ( _f_ ( _a_ ))= _h_ ( _f_ ( _a_ )). But by the way _g_ and _h_ were defined, the only
_x_ ∈ _B_ for which _g_ ( _x_ )= _h_ ( _x_ ) is _x_ = _b_ , so it follows that _f_ ( _a_ )= _b_.
Since _b_ was arbitrary, this shows that _f_ is onto.

```
Section 5.3
```

1. _R_ -^1 ( _p_ )=the person sitting immediately to the right of _p_.
3. Let _g_ ( _x_ )=(3 _x_ -5)/2. Then for any _x_ ∈R,

```
f ( g ( x ))=
```

```
2(3 x -5)/ 2 + 5
3
```

#### =

```
3 x - 5 + 5
3
```

#### =

```
3 x
3
```

```
= x
```

```
and
```

```
g ( f ( x ))=
```

```
3(2 x +5)/ 3 - 5
2
```

#### =

```
2 x + 5 - 5
2
```

#### =

```
2 x
2
```

```
= x.
```

```
Appendix 1: Solutions to Selected Exercises 353
Therefore f ◦ g = i Rand g ◦ f = i R, and by Theorems 5.3.4 and 5.3.5 it
follows that f is one-to-one and onto and f -^1 = g.
```

5. _f_ -^1 ( _x_ )= 2 -log _x_.
9. Suppose that _f_ : _A_ → _B_ , _g_ : _B_ → _A_ , and _f_ ◦ _g_ = _iB_. Let _b_ be an
    arbitrary element of _B_. Let _a_ = _g_ ( _b_ )∈ _A_. Then _f_ ( _a_ )= _f_ ( _g_ ( _b_ ))=
    ( _f_ ◦ _g_ )( _b_ )= _iB_ ( _b_ )= _b_. Since _b_ was arbitrary, this shows that _f_ is onto.
11. (a) Suppose that _f_ is one-to-one and _f_ ◦ _g_ = _iB_. By part 2 of Theo-
rem 5.3.3, _f_ is also onto, so _f_ -^1 : _B_ → _A_ and _f_ -^1 ◦ _f_ = _iA_. This
gives us enough information to imitate the reasoning in the proof of
Theorem 5.3.5:
_g_ = _iA_ ◦ _g_ =( _f_ -^1 ◦ _f_ )◦ _g_ = _f_ -^1 ◦( _f_ ◦ _g_ )= _f_ -^1 ◦ _iB_ = _f_ -^1.

```
(b) Hint: Imitate the solution to part (a).
(c) Hint: Use parts (a) and (b), together with Theorem 5.3.3.
```

14. (a) Suppose _x_ ∈ _A_ ′=Ran( _g_ ). Then we can choose some _b_ ∈ _B_ such
    that _g_ ( _b_ )= _x_. Therefore ( _g_ ◦ _f_ )( _x_ )= _g_ ( _f_ ( _g_ ( _b_ )))= _g_ (( _f_ ◦ _g_ )( _b_ ))=
    _g_ ( _iB_ ( _b_ ))= _g_ ( _b_ )= _x_.
(b) By the given information, ( _f_  _A_ ′)◦ _g_ = _iB_ , and by part (a),
_g_ ◦( _f_  _A_ ′)= _iA_ ′. Therefore by Theorem 5.3.4, _f_  _A_ ′is a one-to-one,
onto function from _A_ ′to _B_ , and by Theorem 5.3.5, _g_ =( _f_  _A_ ′)-^1.
16. Hint: Suppose _x_ ∈R. To determine whether or not _x_ ∈Ran( _f_ ), you must
    see if you can find a real number _y_ such that _f_ ( _y_ )= _x_. In other words, you
    must try to solve the equation 4 _y_ - _y_^2 = _x_ for _y_ in terms of _x_. Notice that
    this is similar to the method we used in part 1 of Example 5.3.6. However,
    in this case you will find that for some values of _x_ there is no solution for
    _y_ , and for some values of _x_ there is more than one solution for _y_.

```
Chapter 6
Section 6.1
```

1. Base case: When _n_ =0, both sides of the equation are 0.
    Induction step: Suppose that _n_ ∈N and 0+ 1 + 2 + · · · + _n_ =
_n_ ( _n_ +1)/2. Then

```
0 + 1 + 2 + · · · + ( n +1)=(0+ 1 + 2 + · · · + n )+( n +1)
```

```
=
```

```
n ( n +1)
2
```

```
+( n +1)
```

```
=( n +1)
```

```
( n
2
```

#### + 1

#### )

#### =

```
( n +1)( n +2)
2
```

#### 

```
as required.
```

354 _Appendix 1: Solutions to Selected Exercises_

3. Base case: When _n_ =0, both sides of the equation are 0.
    Induction step: Suppose that _n_ ∈Nand 0^3 + 13 + 23 + · · · + _n_^3 =
[ _n_ ( _n_ +1)/2]^2. Then

```
03 + 13 + 23 + · · · + ( n +1)^3 =(0^3 + 13 + 23 + · · · + n^3 )+( n +1)^3
```

```
=
```

#### [

```
n ( n +1)
2
```

#### ] 2

```
+( n +1)^3
```

```
=( n +1)^2
```

#### [

```
n^2
4
```

```
+ n + 1
```

#### ]

```
=( n +1)^2 ·
```

```
n^2 + 4 n + 4
4
```

```
=
```

#### [

```
( n +1)( n +2)
2
```

#### ] 2

#### 

7. Hint: The formula is (3 _n_ +^1 -1)/2.
10. Base case: When _n_ = 0 , 9 _n_ - 8 _n_ - 1 = 0 = 64 ·0, so 64|(9 _n_ - 8 _n_ -1).
Induction step: Suppose that _n_ ∈Nand 64|(9 _n_ - 8 _n_ -1). Then there
is some integer _k_ such that 9 _n_ - 8 _n_ - 1 = 64 _k_. Therefore

```
9 n +^1 -8( n +1)- 1 = 9 n +^1 - 8 n - 9
= 9 n +^1 - 72 n - 9 + 64 n
=9(9 n - 8 n -1)+ 64 n
=9(64 k )+ 64 n
=64(9 k + n ),
```

```
so 64|(9 n +^1 -8( n +1)-1).
```

14. Base case: When _n_ = 10 , 2 _n_ = 1024 > 1000 = _n_^3.
    Induction step: Suppose _n_ ≥10 and 2 _n_ > _n_^3. Then

```
2 n +^1 = 2 · 2 n
> 2 n^3 (by inductive hypothesis)
= n^3 + n^3
≥ n^3 + 10 n^2 (since n ≥10)
= n^3 + 3 n^2 + 7 n^2
≥ n^3 + 3 n^2 + 70 n (since n ≥10)
= n^3 + 3 n^2 + 3 n + 67 n
> n^3 + 3 n^2 + 3 n + 1 =( n +1)^3.
```

19. (a) Basecase:When _n_ =1,thestatementtobeprovenis0< _a_ < _b_ ,which
    was given.

```
Appendix 1: Solutions to Selected Exercises 355
Induction step: Suppose that n ≥1 and 0< an < bn. Multiplying
this inequality by the positive number a we get 0< an +^1 < abn , and
multiplying the inequality a < b by the positive number bn gives
us abn < bn +^1. Combining these inequalities, we can conclude that
0 < an +^1 < bn +^1.
(b) Hint: First note that n
```

#### √

```
a and n
```

#### √

```
b are both positive. (For n odd, this
follows from exercise 18. For n even, each of a and b has two n th
roots, one positive and one negative, but n
```

#### √

```
a and n
```

#### √

```
b are by definition
the positive roots.) Now use proof by contradiction, and apply part (a).
(c) Hint: The inequality to be proven can be rearranged to read an +^1 -
abn - ban + bn +^1 >0. Now factor the left side of this inequality.
(d) Hint: Use mathematical induction. For the base case, use the n =1 case
of part (c). For the induction step, multiply both sides of the inductive
hypothesis by ( a + b )/2 and then apply part (c).
```

```
Section 6.2
```

1. (a) We must prove that _R_ ′is reflexive, transitive, and antisymmetric. For
    the first, suppose _x_ ∈ _A_ ′. Since _R_ is reflexive, ( _x_ , _x_ )∈ _R_ , so ( _x_ , _x_ )∈
       _R_ +( _A_ ′× _A_ ′)= _R_ ′. This shows that _R_ ′is reflexive.
          Next, suppose that ( _x_ , _y_ )∈ _R_ ′ and ( _y_ , _z_ )∈ _R_ ′. Then ( _x_ , _y_ )∈
       _R_ ,( _y_ , _z_ )∈ _R_ , and _x_ , _y_ , _z_ ∈ _A_ ′. Since _R_ is transitive, ( _x_ , _z_ )∈ _R_ , so
    ( _x_ , _z_ )∈ _R_ +( _A_ ′× _A_ ′)= _R_ ′. Therefore _R_ ′is transitive.
       Finally, suppose that ( _x_ , _y_ )∈ _R_ ′and ( _y_ , _x_ )∈ _R_ ′. Then ( _x_ , _y_ )∈ _R_
    and ( _y_ , _x_ )∈ _R_ , so since _R_ is antisymmetric, _x_ = _y_. Thus _R_ ′is anti-
    symmetric.
(b) To see that _T_ is reflexive, suppose _x_ ∈ _A_. If _x_ = _a_ , then ( _x_ , _x_ )=
( _a_ , _a_ )∈ { _a_ } × _A_ ⊆ _T_. If _x_ = _a_ , then _x_ ∈ _A_ ′, so since _R_ ′is reflexive,
( _x_ , _x_ )∈ _R_ ′⊆ _T_ ′⊆ _T_.
For transitivity, suppose that ( _x_ , _y_ )∈ _T_ and ( _y_ , _z_ )∈ _T_. If _x_ = _a_
then ( _x_ , _z_ )=( _a_ , _z_ )∈ { _a_ } × _A_ ⊆ _T_. Now suppose _x_ = _a_. Then
( _x_ , _y_ )∈ { / _a_ } × _A_ , so since ( _x_ , _y_ )∈ _T_ = _T_ ′,({ _a_ } × _A_ ) we must have
( _x_ , _y_ )∈ _T_ ′. But _T_ ′⊆ _A_ ′× _A_ ′, so _y_ ∈ _A_ ′and therefore _y_ = _a_. Similar
reasoning now shows that ( _y_ , _z_ )∈ _T_ ′. Since _T_ ′is transitive, it follows
that ( _x_ , _z_ )∈ _T_ ′⊆ _T_.
To show that _T_ is antisymmetric, suppose ( _x_ , _y_ )∈ _T_ and ( _y_ , _x_ )∈ _T_.
If _x_ = _a_ then ( _y_ , _x_ )∈/ _T_ ′, so ( _y_ , _x_ )∈ { _a_ } × _A_ and therefore _y_ = _a_ =
_x_. Similarly, if _y_ = _a_ then _x_ = _y_. Now suppose _x_ = _a_ and _y_ = _a_. Then
as in the proof of transitivity it follows that ( _x_ , _y_ )∈ _T_ ′and ( _y_ , _x_ )∈ _T_ ′,
so by antisymmetry of _T_ ′, _x_ = _y_.

356 _Appendix 1: Solutions to Selected Exercises_

```
We now know that T is a partial order. To see that it is total, suppose
x ∈ A and y ∈ A. If x = a then ( x , y )∈ { a } × A ⊆ T. Similarly, if
y = a then ( y , x )∈ T. Now suppose x = a and y = a. Then x ∈ A ′
and y ∈ A ′, so since T ′is a total order, either ( x , y )∈ T ′⊆ T or
( y , x )∈ T ′⊆ T.
Finally, to see that R ⊆ T , suppose that ( x , y )∈ R. If x = a then
( x , y )∈ { a } × A ⊆ T. Now suppose x = a. If y = a then the fact that
( x , y )∈ R would contradict the R -minimality of a. Therefore y = a.
But then ( x , y )∈ R +( A ′× A ′)= R ′⊆ T ′⊆ T.
```

4. (a) We will prove the statement: For every _n_ ≥1, for every _B_ ⊆ _A_ , if _B_ has
    _n_ elements then there is some _x_ ∈ _B_ such that∀ _y_ ∈ _B_ (( _x_ , _y_ )∈ _R_ ◦ _R_ ).
    We proceed by induction on _n_.
       Base case: Suppose _n_ =1. If _B_ ⊆ _A_ and _B_ has one element, then for
    some _x_ ∈ _B_ , _B_ = { _x_ }. Since _R_ is reflexive, ( _x_ , _x_ )∈ _R_ , and therefore
    ( _x_ , _x_ )∈ _R_ ◦ _R_. But _x_ is the only element in _B_ , so ∀ _y_ ∈ _B_ (( _x_ , _y_ )∈
       _R_ ◦ _R_ ), as required.
          Induction step: Suppose that _n_ ≥1 and for every _B_ ⊆ _A_ , if _B_ has
    _n_ elements then∃ _x_ ∈ _B_ ∀ _y_ ∈ _B_ (( _x_ , _y_ )∈ _R_ ◦ _R_ ). Now suppose that
       _B_ ⊆ _A_ and _B_ has _n_ +1 elements. Choose some _b_ ∈ _B_ , and let
       _B_ ′= _B_ \ { _b_ }. Then _B_ ′⊆ _A_ and _B_ ′has _n_ elements, so by inductive
    hypothesis there is some _x_ ∈ _B_ ′such that∀ _y_ ∈ _B_ ′(( _x_ , _y_ )∈ _R_ ◦ _R_ ).
    We now consider two cases.
       Case 1: ( _x_ , _b_ )∈ _R_ ◦ _R_. Then∀ _y_ ∈ _B_ (( _x_ , _y_ )∈ _R_ ◦ _R_ ), so we are
    done.
       Case 2: ( _x_ , _b_ )∈/ _R_ ◦ _R_. In this case, we will prove that ∀ _y_ ∈
       _B_ (( _b_ , _y_ )∈ _R_ ◦ _R_ ). To do this, let _y_ ∈ _B_ be arbitrary. If _y_ = _b_ , then
    since _R_ is reflexive, ( _b_ , _b_ )∈ _R_ , and therefore ( _b_ , _y_ )=( _b_ , _b_ )∈ _R_ ◦ _R_.
    Now suppose _y_ = _b_. Then _y_ ∈ _B_ ′, so by the choice of _x_ we know
    that ( _x_ , _y_ )∈ _R_ ◦ _R_. This means that for some _z_ ∈ _A_ ,( _x_ , _z_ )∈ _R_ and
    ( _z_ , _y_ )∈ _R_. We have ( _x_ , _z_ )∈ _R_ , so if ( _z_ , _b_ )∈ _R_ then ( _x_ , _b_ )∈ _R_ ◦ _R_ ,
    contrary to the assumption for this case. Therefore ( _z_ , _b_ )∈/ _R_ , so by the
    hypothesis on _R_ ,( _b_ , _z_ )∈ _R_. But then since ( _b_ , _z_ )∈ _R_ and ( _z_ , _y_ )∈ _R_ ,
    we have ( _b_ , _y_ )∈ _R_ ◦ _R_ , as required.
(b) Hint: Let _A_ = _B_ =the set of contestants and let _R_ = { ( _x_ , _y_ )∈ _A_ ×
_A_ | _x_ beats _y_ } , _iA_. Now apply part (a).
8. (a) Let _m_ =( _a_ + _b_ )/2, the arithmetic mean of _a_ and _b_ , and let _d_ =
    ( _a_ - _b_ )/2. Then it is easy to check that _m_ + _d_ = _a_ and _m_ - _d_ = _b_ , so

```
√
ab =
```

#### √

```
( m + d )( m - d )=
```

#### √

```
m^2 - d^2 ≤
```

#### √

```
m^2 = m =
```

```
a + b
2
```

#### 

```
Appendix 1: Solutions to Selected Exercises 357
```

(b) We use induction on _n_.
Base case: _n_ =1. This case is taken care of by part (a).
Induction step: Suppose _n_ ≥1, and the arithmetic-geometric mean
inequality holds for lists of length 2 _n_. Now let _a_ 1 , _a_ 2 ,... , _a_ 2 _n_ + 1 be a
list of 2 _n_ +^1 positive real numbers. Let

```
m 1 =
```

```
a 1 + a 2 + · · · + a 2 n
2 n
```

```
and m 2 =
```

```
a 2 n + 1 + a 2 n + 2 + · · · + a 2 n + 1
2 n
```

#### 

```
Notice that a 1 + a 2 + · · · + a 2 n = m 12 n , and similarly a 2 n + 1 +
a 2 n + 2 + · · · + a 2 n +^1 = m 22 n. Also, by inductive hypothesis, we know
that m 1 ≥^2 n
```

#### √

```
a 1 a 2 · · · a 2 n and m 2 ≥^2 √ na 2 n + 1 a 2 n + 2 · · · a 2 n +^1. Therefore
a 1 + a 2 + · · · + a 2 n + 1
2 n +^1
```

#### =

```
m 12 n + m 22 n
2 n +^1
```

#### =

```
m 1 + m 2
2
```

#### ≥

#### √

```
m 1 m 2
```

```
≥
```

#### √

```
2 √ na 1 a 2 · · · a 2 n 2 √ na 2 n + 1 a 2 n + 2 · · · a 2 n + 1
```

```
=^2 n +^1
```

#### √

```
a 1 a 2 · · · a 2 n +^1.
```

(c) We use induction on _n_.
Base case: If _n_ = _n_ 0 , then by assumption the arithmetic-geometric
mean inequality fails for some list of length _n_.
Induction step: Suppose _n_ ≥ _n_ 0 , and there are positive real numbers
_a_ 1 , _a_ 2 ,... , _an_ such that
_a_ 1 + _a_ 2 + · · · + _an
n_

```
< n
```

#### √

```
a 1 a 2 · · · an.
```

```
Let m =( a 1 + a 2 + · · · + an )/ n , and let an + 1 = m. Then we have
m <√ na 1 a 2 · · · an , so mn < a 1 a 2 · · · an. Multiplying both sides of
this inequality by m gives us mn +^1 < a 1 a 2 · · · anm = a 1 a 2 · · · an + 1 ,
so m < n +√^1 a 1 a 2 · · · an + 1. But notice that we also have mn = a 1 +
a 2 + · · · + an , so
```

```
a 1 + · · · + an + 1
n + 1
```

#### =

```
mn + m
n + 1
```

#### =

```
m ( n +1)
n + 1
```

```
= m < n +^1
```

#### √

```
a 1 a 2 · · · an + 1.
```

Thus, we have a list of length _n_ +1 for which the arithmetic-geometric
mean inequality fails.
(d) Suppose that the arithmetic-geometric mean inequality fails for some
list of positive real numbers. Let _n_ 0 be the length of this list, and choose
an integer _n_ ≥1 such that _n_ 0 ≤ 2 _n_. (In fact, we could just let _n_ = _n_ 0 ,
as you will show in exercise 12(a) in Section 6.3.) Then by part (b),
the arithmetic-geometric mean inequality holds for all lists of length

358 _Appendix 1: Solutions to Selected Exercises_

```
2 n , but by part (c), it must fail for some list of length 2 n. This is a
contradiction, so the inequality must always hold.
```

10. We proceed by induction on _n_.
    Base case: _n_ =0. If _A_ has 0 elements, then _A_ =∅, so P( _A_ )= { ∅},
which has 1= 20 elements.
Induction step: Suppose that for every set _A_ with _n_ elements,P( _A_ )
has 2 _n_ elements. Now suppose that _A_ has _n_ +1 elements. Let _a_ be any
element of _A_ , and let _A_ ′= _A_ \ { _a_ }. Then _A_ ′has _n_ elements, soP( _A_ ′)
has 2 _n_ elements. There are two kinds of subsets of _A_ : those that contain _a_
as an element, and those that don’t. The subsets that don’t contain _a_ are
just the subsets of _A_ ′, and by inductive hypothesis there are 2 _n_ of these.
Those that do contain _a_ are the sets of the form _X_ , { _a_ }, where _X_ ∈P( _A_ ′),
and there are also 2 _n_ of these, since by inductive hypothesis there are 2 _n_
possible choices for _X_. Thus the total number of elements ofP( _A_ ) is
2 _n_ + 2 _n_ = 2 _n_ +^1.
13. Base case: _n_ =1. One chord cuts the circle into two regions, and
    ( _n_^2 + _n_ +2)/ 2 =2.
       Induction step: Suppose that when _n_ chords are drawn, the circle is cut
    into ( _n_^2 + _n_ +2)/2 regions. When another chord is drawn, it will intersect
    each of the first _n_ chords exactly once. Therefore it will pass through _n_ + 1
    regions, cutting each of those regions in two. (Each time it crosses one
    of the first _n_ chords, it passes from one region to another.) Therefore the
    number of regions after the next chord is drawn is
       _n_^2 + _n_ + 2
          2

```
+( n +1)=
```

```
n^2 + 3 n + 4
2
```

#### =

```
( n +1)^2 +( n +1)+ 2
2
```

#### 

```
as required.
```

```
Section 6.3
```

1. Hint: The formula is
    ∑ _n_

```
i = 1
```

#### 1

```
i ( i +1)
```

#### =

```
n
n + 1
```

#### 

6. Base case: _n_ =1. Then
    ∑ _n_

```
i = 1
```

#### 1

```
i^2
```

#### = 1 ≤ 1 = 2 -

#### 1

```
n
```

#### 

```
Induction step: Suppose that
∑ n
```

```
i = 1
```

#### 1

```
i^2
```

#### ≤ 2 -

#### 1

```
n
```

#### 

```
Appendix 1: Solutions to Selected Exercises 359
Then
∑ n +^1
```

```
i = 1
```

#### 1

```
i^2
```

#### =

```
∑ n
```

```
i = 1
```

#### 1

```
i^2
```

#### +

#### 1

```
( n +1)^2
```

#### ≤ 2 -

#### 1

```
n
```

#### +

#### 1

```
( n +1)^2
```

```
= 2 -
```

```
n^2 + n + 1
n ( n +1)^2
```

#### < 2 -

```
n^2 + n
n ( n +1)^2
```

#### = 2 -

#### 1

```
n + 1
```

#### 

8. (a) We let _m_ be arbitrary and then prove by induction that for all _n_ ≥ _m_ ,
    _Hn_ - _Hm_ ≥( _n_ - _m_ )/ _n_.
       Base case: _n_ = _m_. Then _Hn_ - _Hm_ = 0 ≥ 0 =( _n_ - _m_ )/ _n_.
       Induction step: Suppose that _n_ ≥ _m_ and _Hn_ - _Hm_ ≥( _n_ - _m_ )/ _n_.
Then

```
Hn + 1 - Hm = Hn +
```

#### 1

```
n + 1
```

```
- Hm ≥
```

```
n - m
n
```

#### +

#### 1

```
n + 1
```

```
=
```

```
n^2 + n - mn - m + n
n ( n +1)
```

#### ≥

```
n^2 + n - mn
n ( n +1)
```

```
=
```

```
n + 1 - m
n + 1
```

#### 

```
(b) Base case: If n =0 then H 2 n = H 1 = 1 ≥ 1 = 1 + n /2.
Induction step: Suppose n ≥0 and H 2 n ≥ 1 + n /2. By part (a),
```

```
H 2 n + 1 - H 2 n ≥
```

```
2 n +^1 - 2 n
2 n +^1
```

#### =

#### 1

#### 2

#### 

```
Therefore
```

```
H 2 n + 1 ≥ H 2 n +
```

#### 1

#### 2

#### ≥ 1 +

```
n
2
```

#### +

#### 1

#### 2

#### = 1 +

```
n + 1
2
```

#### 

```
(c) Since lim n →∞ 1 + n / 2 = ∞ , by part (b) lim n →∞ H 2 n = ∞. Clearly
the Hn ’s form an increasing sequence, so lim n →∞ Hn = ∞.
```

12. (a) Hint: Try proving that 2 _n_ ≥ _n_ +1, from which the desired conclusion
    follows.
(b) Base case: _n_ =9. Then _n_ != 362880 ≥ 262144 =(2 _n_ )^2.
Induction step: Suppose that _n_ ≥9 and _n_ !≥(2 _n_ )^2. Then

```
( n +1)!=( n +1)· n !≥( n +1)·(2 n )^2 ≥ 10 · 22 n ≥ 22 · 22 n
= 22 n +^2 =(2 n +^1 )^2.
(c) Base case: n =0. Then n != 1 ≤ 1 = 2 ( n
```

(^2) )
.
Induction step: Suppose that _n_ !≤ 2 ( _n_
(^2) )

. Then

```
2 (( n +1)^2 )= 2 n^2 +^2 n +^1 = 2 ( n^2 )· 22 n +^1 ≥ 2 ( n^2 )· 2 n +^1 > n !·( n +1)
=( n +1)!
```

360 _Appendix 1: Solutions to Selected Exercises_

```
(Notice that the second to last step uses both the inductive hypothesis
and part (a).)
```

15. Base case: _n_ =0. Then _an_ = _a_ 0 = 0 = 20 - 0 - 1 = 2 _n_ - _n_ -1.
    Induction step: Suppose that _n_ ∈Nand _an_ = 2 _n_ - _n_ -1. Then

```
an + 1 = 2 an + n =2(2 n - n -1)+ n
= 2 n +^1 - 2 n - 2 + n = 2 n +^1 - n - 2 = 2 n +^1 -( n +1)- 1.
```

18. (a)

```
( n
0
```

#### )

```
= 0 n !·! n !=1 and
```

```
( n
n
```

#### )

```
= nn !·! 0 !=1.
(b)
(
n
k
```

#### )

#### +

#### (

```
n
k - 1
```

#### )

#### =

```
n!
k !( n - k )!
```

#### +

```
n!
( k -1)!( n - k +1)!
```

```
=
```

```
n !( n - k +1)
k !( n - k +1)!
```

#### +

```
n! k
k !( n - k +1)!
```

```
=
```

```
n !( n +1)
k !( n + 1 - k )!
```

#### =

#### (

```
n + 1
k
```

#### )

#### 

```
(c) We follow the hint.
Base case: n =0. Suppose A is a set with 0 elements. Then A =∅,
the only value of k we have to worry about is k =0,P 0 ( A )= { ∅},
which has 1 element, and
```

#### ( 0

```
0
```

#### )

#### =1

```
Induction step: Suppose the desired conclusion holds for sets with
n elements, and A is a set with n +1 elements. Let a be an element of
A , and let A ′= A \ { a }, which is a set with n elements. Now suppose
0 ≤ k ≤ n +1. We consider three cases.
( Case 1: k =0. ThenP k ( A )= { ∅}, which has 1 element, and
n + 1
k
```

#### )

#### =1

```
( Case 2: k = n +1. ThenP k ( A )= { A }, which has 1 element, and
n + 1
k
```

#### )

#### =1

```
Case 3. 0< k ≤ n. There are two kinds of k -element subsets of
A : those that contain a as an element, and those that don’t. The k -
element subsets that don’t contain a are just the k -element subsets
of A ′, and by inductive hypothesis there are
```

```
( n
k
```

#### )

```
of these. Those that
do contain a are the sets of the form X , { a }, where X ∈P k - 1 ( A ′),
and by inductive hypothesis there are
```

```
( n
k - 1
```

#### )

```
of these, since this is the
number of possibilities for X. Therefore by part (b), the total number
of k -element subsets of A is
(
n
k
```

#### )

#### +

#### (

```
n
k - 1
```

#### )

#### =

#### (

```
n + 1
k
```

#### )

#### 

```
Appendix 1: Solutions to Selected Exercises 361
(d) We let x and y be arbitrary and then prove the equation by induction
on n.
Base case: n =0. Then both sides of the equation are equal to 1.
Induction step: We will make use of parts (a) and (b). Suppose that
```

```
( x + y ) n =
```

```
∑ n
```

```
k = 0
```

#### (

```
n
k
```

#### )

```
xn - kyk.
```

```
Then
( x + y ) n +^1 =( x + y )( x + y ) n
```

```
=( x + y )
```

```
∑ n
```

```
k = 0
```

#### (

```
n
k
```

#### )

```
xn - kyk (by inductive hypothesis)
```

```
=( x + y )
```

#### [(

```
n
0
```

#### )

```
xn +
```

#### (

```
n
1
```

#### )

```
xn -^1 y +
```

#### (

```
n
2
```

#### )

```
xn -^2 y^2 + · · ·
```

#### +

#### (

```
n
n
```

#### )

```
yn
```

#### ]

#### =

#### (

```
n
0
```

#### )

```
xn +^1 +
```

#### (

```
n
0
```

#### )

```
xny +
```

#### (

```
n
1
```

#### )

```
xny +
```

#### (

```
n
1
```

#### )

```
xn -^1 y^2 + · · ·
```

#### +

#### (

```
n
n
```

#### )

```
xyn +
```

#### (

```
n
n
```

#### )

```
yn +^1
```

```
= xn +^1 +
```

#### [(

```
n
0
```

#### )

#### +

#### (

```
n
1
```

#### )]

```
xny +
```

#### [(

```
n
1
```

#### )

#### +

#### (

```
n
2
```

#### )]

```
xn -^1 y^2
```

#### + · · · +

#### [(

```
n
n - 1
```

#### )

#### +

#### (

```
n
n
```

#### )]

```
xyn + yn +^1
```

#### =

#### (

```
n + 1
0
```

#### )

```
xn +^1 +
```

#### (

```
n + 1
1
```

#### )

```
xny +
```

#### (

```
n + 1
2
```

#### )

```
xn -^1 y^2
```

#### + · · · +

#### (

```
n + 1
n
```

#### )

```
xyn +
```

#### (

```
n + 1
n + 1
```

#### )

```
yn +^1
```

#### =

```
n ∑+ 1
```

```
k = 0
```

#### (

```
n + 1
k
```

#### )

```
xn +^1 - kyk.
```

20. Hint: Surprisingly, it is easier to prove that for all _n_ ≥1, 0< _an_ < 1 /2.

```
Section 6.4
```

1. (a) (→) Suppose that∀ _n Q_ ( _n_ ). Let _n_ be arbitrary. Then _Q_ ( _n_ +1) is true,
    which means∀ _k_ < _n_ +1( _P_ ( _k_ )). In particular, since _n_ < _n_ +1, _P_ ( _n_ )
    is true. Since _n_ was arbitrary, this shows that∀ _n P_ ( _n_ ).
       (←) Suppose that∀ _n P_ ( _n_ ). Then for any _n_ , it is clearly true that
    ∀ _k_ < _nP_ ( _k_ ), which means that _Q_ ( _n_ ) is true.

362 _Appendix 1: Solutions to Selected Exercises_

```
(b) Base case: n =0. Then Q ( n ) is the statement∀ k < 0 P ( k ), which is
vacuously true.
Induction step: Suppose Q ( n ) is true. This means that∀ k < nP ( k )
is true, so by assumption, it follows that P ( n ) is true. Therefore∀ k <
n +1( P ( k )) is true, which means that Q ( n +1) is true.
```

3. (a) Suppose

#### √

```
6 is rational. Let S = { q ∈Z+| ∃ p ∈Z+( p / q =
```

#### √

#### 6 }

```
Then S =∅, so we can let q be the smallest element of S , and we can
choose a positive integer p such that p / q =
```

#### √

6. Therefore _p_^2 = 6 _q_^2 ,
so _p_^2 is even, and hence _p_ is even. This means that _p_ = 2 ̄ _p_ , for some
integer _p_ ̄. Thus 4 _p_ ̄^2 = 6 _q_^2 , so 2 _p_ ̄^2 = 3 _q_^2 and therefore 3 _q_^2 is even.
It is easy to check that if _q_ is odd then 3 _q_^2 is odd, so _q_ must be even,
which means that _q_ = 2 _q_ ̄for some integer _q_ ̄. But then

#### √

```
6 = p ̄/ q ̄and
q ̄< q , contradicting the fact that q is the smallest element of S.
(b) Suppose that
```

#### √

#### 2 +

#### √

```
3 = p / q. Squaring both sides gives us 5+
2
```

#### √

```
6 = p^2 / q^2 , so
```

#### √

```
6 =( p^2 - 5 q^2 )/(2 q^2 ), which contradicts part (a).
```

6. (a) We use ordinary induction on _n_.
    Base case: _n_ =0. Both sides of the equation are equal to 0.
    Induction step: Suppose that

```
∑ n
i = 0 Fi = Fn +^2 -1. Then
∑ n +^1
```

```
i = 0
```

```
Fi =
```

```
∑ n
```

```
i = 0
```

```
Fi + Fn + 1 =( Fn + 2 -1)+ Fn + 1 = Fn + 3 - 1.
```

```
(b) We use ordinary induction on n.
Base case: n =0. Both sides of the equation are equal to 0.
Induction step. Suppose that
```

```
∑ n
i = 0 ( Fi )
```

(^2) = _FnFn_ + 1. Then
∑ _n_ +^1
_i_ = 0
( _Fi_ )^2 =
∑ _n
i_ = 0
( _Fi_ )^2 +( _Fn_ + 1 )^2 = _FnFn_ + 1 +( _Fn_ + 1 )^2
= _Fn_ + 1 ( _Fn_ + _Fn_ + 1 )= _Fn_ + 1 _Fn_ + 2.
(c) We use ordinary induction on _n_.
Base case: _n_ =0. Both sides of the equation are equal to 1.
Induction step: Suppose that
∑ _n
i_ = 0 _F_^2 _i_ +^1 = _F_^2 _n_ +^2. Then
∑ _n_ +^1
_i_ = 0
_F_ 2 _i_ + 1 =
∑ _n
i_ = 0
_F_ 2 _i_ + 1 + _F_ 2 _n_ + 3 = _F_ 2 _n_ + 2 + _F_ 2 _n_ + 3
= _F_ 2 _n_ + 4 = _F_ 2( _n_ +1)+ 2.
(d) The formula is
∑ _n
i_ = 0 _F_^2 _i_ = _F_^2 _n_ +^1 -1.

8. (a) (→) Suppose _a_ 0 , _a_ 1 , _a_ 2 ,... is aGibonacci sequence. Then in particular
    _a_ 2 = _a_ 0 + _a_ 1 , which means _c_^2 = 1 + _c_. Solving this quadratic equa-
    tion by the quadratic formula leads to the conclusion _c_ =(1±

#### √

#### 5)/2

```
(←) Suppose either c =(1+
```

#### √

```
5)/2 or c =(1-
```

#### √

```
5)/2. Then
c^2 = 1 + c , and therefore for every n ≥2, an = cn = cn -^2 c^2 =
cn -^2 (1+ c )= cn -^2 + cn -^1 = an - 2 + an - 1.
```

```
Appendix 1: Solutions to Selected Exercises 363
(b) It will be convenient to introduce the notation c 1 =(1+
```

#### √

#### 5)/ 2

```
and c 2 =(1-
```

#### √

```
5)/2. Then for any n ≥ 2 , an = sc 1 n + tcn 2 =
scn 1 -^2 c^21 + tcn 2 -^2 c^22 = scn 1 -^2 (1+ c 1 )+ tcn 2 -^2 (1+ c 2 )=( scn 1 -^2 +
tcn 2 -^2 )+( scn 1 -^1 + tcn 2 -^1 )= an - 2 + an - 1.
(c) Hint: Let s =(5 a 0 +(2 a 1 - a 0 )
```

#### √

```
√ 5)/10 and t =(5 a^0 -(2 a^1 - a^0 )
5)/10.
```

10. Hint: The formula is _an_ = 2 · 3 _n_ - 3 · 2 _n_.
14. Let _a_ be the larger of 5 _k_ and _k_ ( _k_ +1). Now suppose _n_ > _a_ , and by the
    division algorithm choose _q_ and _r_ such that _n_ = _kq_ + _r_ and 0≤ _r_ < _k_.
    Now note that if _q_ ≤4 then _n_ = _kq_ + _r_ ≤ 4 _k_ + _r_ < 5 _k_ ≤ _a_ , which is a
    contradiction. Therefore _q_ >4, so _q_ ≥5, and by Example 6.1.3 it follows
    that 2 _q_ ≥ _q_^2. Similar reasoning shows that _q_ ≥ _k_ +1, so _q_^2 ≥ _q_ ( _k_ +1)=
    _kq_ + _q_ > _kq_ + _r_ = _n_. Therefore 2 _n_ ≥ 2 _kq_ =(2 _q_ ) _k_ ≥( _q_^2 ) _k_ ≥ _nk_.
18. We proceed by induction on _j_.
    Base case: _j_ =1. Suppose that _p_ 1 , _q_ 1 , _q_ 2 ,... , _qk_ are prime num-
    bers and _p_ 1 = _q_ 1 _q_ 2 · · · _qk_. Since _p_ 1 is prime, we must have _k_ =1 and
       _p_ 1 = _q_ 1.
          Induction step: Suppose that _j_ ≥1, and for all _k_ ≥1 and all non-
    decreasing sequences of primes _p_ 1 , _p_ 2 ,... , _pj_ and _q_ 1 , _q_ 2 ,... , _qk_ , if
       _p_ 1 _p_ 2 · · · _pj_ = _q_ 1 _q_ 2 · · · _qk_ then _j_ = _k_ and _pi_ = _qi_ for all _i_ , 1 ≤ _i_ ≤ _j_. Now
    suppose _p_ 1 , _p_ 2 ,... , _pj_ + 1 and _q_ 1 , _q_ 2 ,... , _qk_ are nondecreasing sequences
    of primes and _p_ 1 _p_ 2 · · · _pj_ + 1 = _q_ 1 _q_ 2 · · · _qk_. Then _k_ ≥2, since otherwise
    we have _p_ 1 _p_ 2 · · · _pj_ + 1 = _q_ 1 , contradicting the fact that _q_ 1 is prime. Also,
       _pj_ + 1 |( _q_ 1 _q_ 2 · · · _qk_ ), so by exercise 17(b), _pj_ + 1 | _qi_ for some _i_. But then
       _pj_ + 1 = _qi_ ≤ _qk_. Similar reasoning shows that _qk_ ≤ _pj_ + 1 , so _pj_ + 1 = _qk_.
    Therefore _p_ 1 _p_ 2 · · · _pj_ = _q_ 1 _q_ 2 · · · _qk_ - 1 , and by inductive hypothesis it fol-
    lows that _k_ - 1 = _j_ and _pi_ = _qi_ for 1≤ _i_ ≤ _j_.
20. Hint: The formula is _an_ = _Fn_ + 2 / _Fn_ + 1.

```
Section 6.5
```

1. (a) To see thatF=∅, notice that _B_ ⊆ _A_ ⊆ _A_ and _A_ is closed under
    _f_ , so _A_ ∈F. It follows that+Fis defined, and in fact by exercise 9
    of Section 3.3,+F⊆ _A_. According to the definition ofF, for every
    _C_ ∈F, _B_ ⊆ _C_ , so by exercise 10 of Section 3.3, _B_ ⊆ + F. Thus, we
    have _B_ ⊆ + F⊆ _A_. To see that+F is closed under _f_ , suppose that
    _x_ ∈ + F. Let _C_ ∈Fbe arbitrary. Then _x_ ∈ _C_ and _C_ is closed under _f_ , so
       _f_ ( _x_ )∈ _C_. Since _C_ was arbitrary, this shows that∀ _C_ ∈F( _f_ ( _x_ )∈ _C_ ),
    so _f_ ( _x_ )∈ + F. Finally, to see thatF is _smallest_ , suppose that _B_ ⊆
    _C_ ⊆ _A_ and _C_ is closed under _f_. Then _C_ ∈F, and therefore, applying
    exercise 9 of Section 3.3 again,+F⊆ _C_.

364 _Appendix 1: Solutions to Selected Exercises_

```
(b) Let C = , n ∈Z+ Bn. Clearly B = B 1 ⊆ C ⊆ A. To see that C is closed
under f , suppose x ∈ C. Then for some n ∈Z+, x ∈ Bn , so f ( x )∈
Bn + 1 and therefore f ( x )∈ C. Finally, to see that C is smallest, suppose
that B ⊆ D ⊆ A and D is closed under f. We prove by induction that
∀ n ∈Z+, Bn ⊆ D , from which it follows that C ⊆ D.
Base case: n =1. Then Bn = B ⊆ D by assumption.
Induction step: Suppose n ∈Z+and Bn ⊆ D. Now let y ∈ Bn + 1 be
arbitrary. Then by the definition of Bn + 1 , we can choose x ∈ Bn such
that y = f ( x ). Since Bn ⊆ D , x ∈ D , and since D is closed under
f , y = f ( x )∈ D. Thus Bn + 1 ⊆ D.
5.{ n ∈Z| n ≥ 2 }.
```

8. (a) _R_ + _S_ ⊆ _R_ and _R_ + _S_ ⊆ _S_. Therefore by exercise 7, for every pos-
    itive integer _n_ ,( _R_ + _S_ ) _n_ ⊆ _Rn_ and ( _R_ + _S_ ) _n_ ⊆ _Sn_ , so ( _R_ + _S_ ) _n_ ⊆
       _Rn_ + _Sn_. However, the two need not be equal. For example,
    if _A_ = { 1 , 2 , 3 , 4 }, _R_ = { (1,2),(2,4)}, and _S_ = { (1,3),(3,4)}, then
    ( _R_ + _S_ )^2 =∅but _R_^2 + _S_^2 = { (1,4)}.
(b) _Rn_ , _Sn_ ⊆( _R_ , _S_ ) _n_ , but they need not be equal. (You should be able
to prove the first statement, and find a counterexample to justify the
second.)
10. (a) We use induction.
Base case: _n_ =1. Suppose ( _a_ , _b_ )∈ _R_^1 = _R_. Let _f_ = { (0, _a_ ),
(1, _b_ )}. Then _f_ is an _R_ -path from _a_ to _b_ of length 1. For the other direc-
tion, suppose _f_ is an _R_ -path from _a_ to _b_ of length 1. By the definition
of _R_ -path, this means that _f_ (0)= _a_ , _f_ (1)= _b_ , and ( _f_ (0), _f_ (1))∈ _R_.
Therefore ( _a_ , _b_ )∈ _R_ = _R_^1.
Induction step: Suppose _n_ is a positive integer and _Rn_ = { ( _a_ , _b_ )∈
_A_ × _A_ |there is an _R_ -path from _a_ to _b_ of length _n_ }. Now suppose
( _a_ , _b_ )∈ _Rn_ +^1 = _R_^1 ◦ _Rn_. Then there is some _c_ such that ( _a_ , _c_ )∈ _Rn_
and ( _c_ , _b_ )∈ _R_. By inductive hypothesis, there is an _R_ -path _f_ from _a_ to
_c_ of length _n_. Then _f_ , { ( _n_ + 1 , _b_ )}is an _R_ -path from _a_ to _b_ of length
_n_ +1. For the other direction, suppose _f_ is an _R_ -path from _a_ to _b_ of
length _n_ +1. Let _c_ = _f_ ( _n_ ). Then _f_ \{( _n_ + 1 , _b_ )}is an _R_ -path from
_a_ to _c_ of length _n_ , so by inductive hypothesis ( _a_ , _c_ )∈ _Rn_. But also
( _c_ , _b_ )=( _f_ ( _n_ ), _f_ ( _n_ +1))∈ _R_ , so ( _a_ , _b_ )∈ _R_^1 ◦ _Rn_ = _Rn_ +^1.
(b) This follows from part (a) and Theorem 6.5.2.
14. We use induction on _n_.
Base case: _n_ =1. Then _x_ = 2 !+ 2 =4. The only value of _i_ we have
to worry about is _i_ =0, and for this value of _i_ we have _i_ + 2 =2 and
_x_ + _i_ =4. Since 2|4, we have ( _i_ +2)|( _x_ + _i_ ), as required.
Induction step: Suppose that _n_ is a positive integer, and for ev-
ery integer _i_ , if 0 ≤ _i_ ≤ _n_ -1 then ( _i_ +2)|(( _n_ +1)!+ 2 + _i_ ). Now let

```
Appendix 1: Solutions to Selected Exercises 365
x =( n +2)!+2, and suppose that 0≤ i ≤ n. If i = n then we have
```

```
x + i =( n +2)!+ 2 + i =( i +2)!+( i +2)=( i +2) (( i +1)!+1),
```

```
so ( i +2)|( x + i ). Now suppose 0≤ i ≤ n -1. By inductive hypoth-
esis, we know that ( i +2)|(( n +1)!+ 2 + i ), so we can choose some
integer k such that ( n +1)!+ 2 + i = k ( i +2), and therefore ( n +1)!=
( k -1)( i +2). Therefore
```

```
x + i =( n +2)!+ 2 + i =( n +2)( n +1)!+( i +2)
=( n +2)( k -1)( i +2)+( i +2)=( i +2) (( n +2) ( k -1)+1),
```

```
so ( i +2)|( x + i ).
```

```
Chapter 7
```

```
Section 7.1
```

1. (a) Define _f_ :Z+→Nby the formula _f_ ( _n_ )= _n_ -1. It is easy to check
    that _f_ is one-to-one and onto.
(b) Let _E_ = { _n_ ∈Z| _n_ is even}, and define _f_ :Z→ _E_ by the formula
_f_ ( _n_ )= 2 _n_. It is easy to check that _f_ is one-to-one and onto, soZ∼ _E_.
    But we already know thatZ+∼Z, so by Theorem 7.1.3,Z+∼ _E_ , and
    therefore _E_ is denumerable.
4. (a) No. Counterexample: Let _A_ = _B_ = _C_ =Z+and _D_ = { 1 }.
    (b) No. Counterexample: Let _A_ = _B_ =N, _C_ =Z-, and _D_ =∅.
6. (a) We proceed by induction on _n_.
    Base case: _n_ =0. Suppose that _m_ ∈Nand there is a one-to-one,
    onto function _f_ : _In_ → _Im_. Since _n_ = 0 , _In_ =∅. But then since _f_ is
    onto, we must also have _Im_ =∅, so _m_ = 0 = _n_.
       Induction step: Suppose that _n_ ∈N, and for all _m_ ∈N, if _In_ ∼ _Im_
    then _n_ = _m_. Now suppose that _m_ ∈Nand _In_ + 1 ∼ _Im_. Let _f_ : _In_ + 1 →
    _Im_ be a one-to-one, onto function. Let _k_ = _f_ ( _n_ +1), and notice that
    1 ≤ _k_ ≤ _m_ , so _m_ is positive. Using the fact that _f_ is onto, choose some
       _j_ ≤ _n_ +1 such that _f_ ( _j_ )= _m_.
          We now define _g_ : _In_ → _Im_ - 1 as follows:

```
g ( i )=
```

#### {

```
f ( i ) if i = j ,
k if i = j.
```

```
We leave it to the reader to verify that g is one-to-one and onto. By
inductive hypothesis, it follows that n = m -1, so n + 1 = m.
```

366 _Appendix 1: Solutions to Selected Exercises_

```
(b) Suppose A is finite. Then by definition of “finite,” we know that there
is at least one n ∈Nsuch that In ∼ A. To see that it is unique, sup-
pose that n and m are natural numbers, In ∼ A , and Im ∼ A. Then by
Theorem 7.1.3, In ∼ Im , so by part (a), n = m.
```

8. (a) We use induction on _n_.
    Base case: _n_ =0. Suppose _A_ ⊆ _In_ =∅. Then _A_ =∅, so | _A_ | = 0.
    Induction step: Suppose that _n_ ∈N, and for all _A_ ⊆ _In_ , _A_ is finite,
| _A_ | ≤ _n_ , and if _A_ = _In_ then| _A_ |< _n_. Now suppose that _A_ ⊆ _In_ + 1. If
_A_ = _In_ + 1 then clearly _A_ ∼ _In_ + 1 , so _A_ is finite and| _A_ | = _n_ +1. Now
suppose that _A_ = _In_ + 1. If _n_ + 1 ∈/ _A_ , then _A_ ⊆ _In_ , so by inductive
hypothesis, _A_ is finite and| _A_ | ≤ _n_. If _n_ + 1 ∈ _A_ , then there must be
some _k_ ∈ _In_ such that _k_ ∈/ _A_. Let _A_ ′=( _A_ , { _k_ })\ { _n_ + 1 }. Then by
matching up _k_ with _n_ +1 it is not hard to show that _A_ ′∼ _A_. Also,
_A_ ′⊆ _In_ ,sobyinductivehypothesis, _A_ ′isfiniteand| _A_ ′| ≤ _n_ .Therefore
by exercise 7, _A_ is finite and| _A_ | ≤ _n_.
(b) Suppose _A_ is finite and _B_ ⊆ _A_. Let _n_ = | _A_ |, and let _f_ : _A_ → _In_ be
one-to-one and onto. Then _f_ ( _B_ )⊆ _In_ , so by part (a), _f_ ( _B_ ) is fi-
nite,| _f_ ( _B_ )| ≤ _n_ , and if _B_ = _A_ then _f_ ( _B_ )= _In_ , so | _f_ ( _B_ )|< _n_. Since
_B_ ∼ _f_ ( _B_ ), the desired conclusion follows.
12. It will be helpful first to verify two facts about the function _f_. Both of the
facts below can be checked by straightforward algebra:
(1) For all _j_ ∈Z+, _f_ (1, _j_ +1)- _f_ (1, _j_ )= _j_.
(2) For all _i_ , _j_ ∈Z+, _f_ (1, _i_ + _j_ -1)≤ _f_ ( _i_ , _j_ )< _f_ (1, _i_ + _j_ ). It follows
that _i_ + _j_ is the smallest _k_ ∈Z+such that _f_ ( _i_ , _j_ )< _f_ (1, _k_ ).
To see that _f_ is one-to-one, suppose that _f_ ( _i_ 1 , _j_ 1 )= _f_ ( _i_ 2 , _j_ 2 ). Then by fact
(2) above,

```
i 1 + j 1 =the smallest k ∈Z+such that f ( i 1 , j 1 )< f (1, k )
=the smallest k ∈Z+such that f ( i 2 , j 2 )< f (1, k )
= i 2 + j 2.
```

```
Using the definition of f , it follows that
```

```
i 1 = f ( i 1 , j 1 )-
```

```
( i 1 + j 1 -2) ( i 1 + j 1 -1)
2
= f ( i 2 , j 2 )-
```

```
( i 2 + j 2 -2) ( i 2 + j 2 -1)
2
= i 2.
```

```
But then since i 1 = i 2 and i 1 + j 1 = i 2 + j 2 , we must also have j 1 = j 2 ,
so ( i 1 , j 1 )=( i 2 , j 2 ). This shows that f is one-to-one.
```

```
Appendix 1: Solutions to Selected Exercises 367
To see that f is onto, suppose n ∈Z+. Let k be the smallest positive
integer such that f (1, k )> n , and notice that f (1,1)= 1 ≤ n , so k ≥2.
Since k is smallest, f (1, k -1)≤ n , and therefore by fact (1),
```

```
0 ≤ n - f (1, k -1)< f (1, k )- f (1, k -1)= k - 1.
```

```
Adding 1 to all terms, we get
```

```
1 ≤ n - f (1, k -1)+ 1 < k.
```

```
Thus, if we let i = n - f (1, k -1)+1 then 1≤ i < k. Let j = k - i , and
notice that i ∈Z+and j ∈Z+. With this choice for i and j we have
```

```
f ( i , j )=
```

```
( i + j -2)( i + j -1)
2
```

```
+ i
```

```
=
```

```
( k -2)( k -1)
2
```

```
+ n - f (1, k -1)+ 1
```

```
=
```

```
( k -2)( k -1)
2
```

```
+ n -
```

#### [

```
( k -2)( k -1)
2
```

#### + 1

#### ]

```
+ 1 = n.
```

14. (a) If _B_ \ { _f_ ( _m_ )| _m_ ∈Z+, _m_ < _n_ } = ∅ then _B_ = { _f_ ( _m_ )| _m_ ∈Z+,
    _m_ < _n_ }, so by exercise 10, _B_ is finite. But we assumed that _B_ was
    infinite, so this is impossible.
(b) We use strong induction. Suppose that ∀ _m_ < _n_ , _f_ ( _m_ )≥ _m_. Now
suppose that _f_ ( _n_ )< _n_. Let _m_ = _f_ ( _n_ ). Then by inductive hypoth-
esis, _f_ ( _m_ )≥ _m_. Also, by the definition of _f_ ( _n_ ), _m_ = _f_ ( _n_ )∈ _B_ \
{ _f_ ( _k_ )| _k_ ∈Z+, _k_ < _n_ } ⊆ _B_ \ { _f_ ( _k_ )| _k_ ∈Z+, _k_ < _m_ }.Butsince _f_ ( _m_ )
is the _smallest_ element of this last set, it follows that _f_ ( _m_ )≤ _m_. Since
we have _f_ ( _m_ )≥ _m_ and _f_ ( _m_ )≤ _m_ , we can conclude that _f_ ( _m_ )= _m_.
But then _m_ ∈/ _B_ \ { _f_ ( _k_ )| _k_ ∈Z+, _k_ < _n_ }, so we have a contradiction.
(c) Suppose that _i_ ∈Z+, _j_ ∈Z+, and _i_ = _j_. Then either _i_ < _j_ or
_j_ < _i_. Suppose first that _i_ < _j_. Then according to the defini-
tion of _f_ ( _j_ ), _f_ ( _j_ )∈ _B_ \ { _f_ ( _m_ )| _m_ ∈Z+, _m_ < _j_ }, and clearly _f_ ( _i_ )∈
{ _f_ ( _m_ )| _m_ ∈Z+, _m_ < _j_ }. It follows that _f_ ( _i_ )= _f_ ( _j_ ). A similar ar-
gument shows that if _j_ < _i_ then _f_ ( _i_ )= _f_ ( _j_ ). This shows that _f_ is
one-to-one.
To see that _f_ is onto, suppose that _n_ ∈ _B_. By part (b), _f_ ( _n_ +1)≥
_n_ + 1 > _n_. But according to the definition of _f_ , _f_ ( _n_ +1) is the
smallest element of _B_ \ { _f_ ( _m_ )| _m_ ∈Z+, _m_ < _n_ + 1 }. It follows that
_n_ ∈/ _B_ \ { _f_ ( _m_ )| _m_ ∈Z+, _m_ < _n_ + 1 }. But _n_ ∈ _B_ , so it must be the
case that also _n_ ∈ { _f_ ( _m_ )| _m_ ∈Z+, _m_ < _n_ + 1 }. In other words, for
some positive integer _m_ < _n_ + 1 , _f_ ( _m_ )= _n_.

368 _Appendix 1: Solutions to Selected Exercises_

17. Following the hint, we recursively define partial orders _Rn_ , for _n_ ∈N, so
    that _R_ = _R_ 0 ⊆ _R_ 1 ⊆ _R_ 2 ⊆... and

```
∀ i ∈ In ∀ j ∈Z+(( ai , aj )∈ Rn or ( aj , ai )∈ Rn ). (∗)
```

```
Let R 0 = R .Given Rn , to define Rn + 1 we apply exercise 2 of Section 6.2,
with B = { ai | i ∈ In }. Finally, let T = , n ∈N Rn. Clearly T is reflexive,
because every Rn is. To see that T is transitive, suppose that ( a , b )∈ T
and ( b , c )∈ T. Then for some natural numbers m and n ,( a , b )∈ Rm
and ( b , c )∈ Rn. If m ≤ n then Rm ⊆ Rn , and therefore ( a , b )∈ Rn and
( b , c )∈ Rn. Since Rn is transitive, it follows that ( a , c )∈ Rn ⊆ T. A sim-
ilar argument shows that if n < m then ( a , c )∈ T , so T is transitive. The
proof that T is antisymmetric is similar. Finally, to see that T is a total
order, suppose x ∈ A and y ∈ A. Since we have numbered the elements of
A , we know that for some positive integers m and n , x = am and y = an.
But then by (∗) we know that either ( am , an ) or ( an , am ) is an element of
Rn , and therefore also an element of T.
```

20. (a) We follow the hint.
    Base case: _n_ =0. Suppose _A_ and _B_ are finite sets and| _B_ | = 0. Then
_B_ =∅, so _A_ × _B_ =∅and| _A_ × _B_ | = 0 = | _A_ | · 0.
Inductionstep:Let _n_ beanarbitrarynaturalnumber,andsupposethat
for all finite sets _A_ and _B_ , if | _B_ | = _n_ then _A_ × _B_ is finite and| _A_ × _B_ | =
| _A_ | · _n_. Now suppose _A_ and _B_ are finite sets and| _B_ | = _n_ +1. Choose
an element _b_ ∈ _B_ , and let _B_ ′= _B_ \ { _b_ }, a set with _n_ elements. Then
_A_ × _B_ = _A_ ×( _B_ ′, { _b_ })=( _A_ × _B_ ′),( _A_ × { _b_ }), and since _b_ ∈/ _B_ ′,
_A_ × _B_ ′and _A_ × { _b_ }are disjoint. By inductive hypothesis, _A_ × _B_ ′
is finite and| _A_ × _B_ ′| = | _A_ | · _n_. Also, it is not hard to see that _A_ ∼
_A_ × { _b_ }–just match up each _x_ ∈ _A_ with ( _x_ , _b_ )∈ _A_ × { _b_ }–so _A_ × { _b_ }
is finite and| _A_ × { _b_ }| = | _A_ |. By Theorem 7.1.7, it follows that _A_ × _B_
is finite and| _A_ × _B_ | = | _A_ × _B_ ′| + | _A_ × { _b_ }| = | _A_ | · _n_ + | _A_ | = | _A_ | ·
( _n_ +1).
(b) To order a meal, you name an element of _A_ × _B_ , where _A_ = { steak,
chicken, pork chops, shrimp, spaghetti}and _B_ = { ice cream, cake,
pie}. So the number of meals is| _A_ × _B_ | = | _A_ | · | _B_ | = 5 · 3 =15.
22. (a) Base case: _n_ =0. If| _A_ | = 0 then _A_ =∅, so _F_ = { ∅}, and| _F_ | =
    1 = 0 !.
       Induction step: Suppose _n_ is a natural number, and the desired
    conclusion holds for _n_. Now let _A_ be a set with _n_ +1 elements,
    and let _F_ = { _f_ | _f_ is a one-to-one, onto function from _In_ + 1 to _A_ }.
    Let _g_ : _In_ + 1 → _A_ be a one-to-one, onto function. For each _i_ ∈ _In_ + 1 ,
    let _Ai_ = _A_ \ { _g_ ( _i_ )}, a set with _n_ elements, and let _Fi_ = { _f_ | _f_ is a

```
Appendix 1: Solutions to Selected Exercises 369
one-to-one, onto function from In to Ai }. By inductive hypothesis, Fi is
finite and| Fi | = n !. Now let Fi ′= { f ∈ F | f ( n +1)= g ( i )}. Define
a function h : Fi → Fi ′by the formula h ( f )= f , { ( n + 1 , g ( i ))}.
It is not hard to check that h is one-to-one and onto, so Fi ′ is
finite and| Fi ′| = | Fi | = n !. Finally, notice that F = , i ∈ In + 1 Fi ′ and
∀ i ∈ In + 1 ∀ j ∈ In + 1 ( i = j → Fi ′+ Fj ′=∅). It follows, by exercise
19, that F is finite and| F | =
```

```
∑ n + 1
i = 1 | F
```

```
′
i | = ( n +1)· n !=( n +1)!.
(b) Hint: Define h : F → L by the formula h ( f )= { ( a , b )∈ A ×
A | f -^1 ( a )≤ f -^1 ( b )}. (You should check that this set is a total order on
A .) To see that h is one-to-one, suppose that f ∈ F , g ∈ F , and f = g.
Let i be the smallest element of In for which f ( i )= g ( i ). Now show
that ( f ( i ), g ( i ))∈ h ( f ) but ( f ( i ), g ( i ))∈/ h ( g ), so h ( f )= h ( g ). To see
that h is onto, suppose R is a total order on A. Define g : A → In by the
formula g ( a )= |{ x ∈ A | x Ra }|. Show that∀ a ∈ A ∀ b ∈ A ( aRb ↔
g ( a )≤ g ( b )), and use this fact to show that g -^1 ∈ F and h ( g -^1 )= R.
(c) 5!=120.
```

25. Base case: _n_ =1. Then _In_ = { 1 }, _P_ = {{ 1 }}, and _A_ { 1 }= _A_ 1. Therefore
    |, _i_ ∈ _InAi_ | = | _A_ 1 |and

#### ∑

#### S ∈ P (-1)

| _S_ |+ (^1) | _AS_ | = (-1) (^2) | _A_ { 1 }| = | _A_ 1 |.
Induction step: Suppose the Inclusion–Exclusion Principle holds for _n_
sets, and suppose _A_ 1 , _A_ 2 ,... , _An_ + 1 are finite sets. Let _Pn_ =P( _In_ )\ { ∅}
and _Pn_ + 1 =P( _In_ + 1 )\ { ∅}. By exercise 24(a), exercise 22(a) of Section
3.4, and the inductive hypothesis,
|, _i_ ∈ _In_ + 1 _Ai_ | = | (, _i_ ∈ _InAi_ ), _An_ + 1 |
= |, _i_ ∈ _InAi_ | + | _An_ + 1 | - | (, _i_ ∈ _InAi_ )+ _An_ + 1 |
=

#### ∑

```
S ∈ Pn
```

```
(-1)| S |+^1 | AS | + | An + 1 | - |, i ∈ In ( Ai + An + 1 )|.
```

```
Now notice that for every S ∈ Pn ,+ i ∈ S ( Ai + An + 1 )=(+ i ∈ SAi )+ An + 1 =
AS ,{ n + 1 }. Therefore, by another application of the inductive hypothesis,
|, i ∈ In ( Ai + An + 1 )| =
```

#### ∑

```
S ∈ Pn (-1)
```

| _S_ |+ (^1) | _AS_ ,{ _n_ + 1 }|. Thus
|, _i_ ∈ _In_ + 1 _Ai_ | =

#### ∑

```
S ∈ Pn
```

```
(-1)| S |+^1 | AS | + | An + 1 | -
```

#### ∑

```
S ∈ Pn
```

```
(-1)| S |+^1 | AS ,{ n + 1 }|
```

#### =

#### ∑

```
S ∈ Pn
```

```
(-1)| S |+^1 | AS | + (-1)^2 | A { n + 1 }|
```

#### +

#### ∑

```
S ∈ Pn
```

```
(-1)| S ,{ n +^1 }|+^1 | AS ,{ n + 1 }|.
```

370 _Appendix 1: Solutions to Selected Exercises_

```
Finally, notice that there are three kinds of elements of Pn + 1 : those that are
elements of Pn , the set{ n + 1 }, and sets of the form S , { n + 1 }, where
S ∈ Pn. It follows that the last formula above is just
```

#### ∑

```
S ∈ Pn + 1 (-1)
```

| _S_ |+ (^1) | _AS_ |,
as required.
Section 7.2

1. (a) By Theorem 7.1.6,Qis countable. IfR\Qwere countable then, by
    Theorem 7.2.1,Q,(R\Q)=Rwould be countable, contradicting
    Theorem 7.2.6. Thus,R\Qmust be uncountable.
(b) Let _A_ = {

#### √

```
2 + n | n ∈Z+}. It is not hard to see that A andQare dis-
joint, since
```

#### √

```
2 is irrational, and A is denumerable. Now apply Theo-
rems 7.1.6 and 7.2.1 to conclude that A ,Qis denumerable, and there-
fore A ,Q∼ A. Finally, observe thatR=(R\( A ,Q)),( A ,Q)
andR\Q=(R\( A ,Q)), A , and apply part 2 of Theorem 7.1.2.
```

4. Suppose that _A_ ∼P( _A_ ). Then there is a one-to-one, onto function _f_ :
    _A_ →P( _A_ ). Let _X_ = { _a_ ∈ _A_ | _a_ ∈/ _f_ ( _a_ )} ∈ P( _A_ ). Since _f_ is onto, there
must be some _a_ ∈ _A_ such that _f_ ( _a_ )= _X_. But then according to the defi-
nition of _X_ , _a_ ∈ _X_ iff _a_ ∈/ _f_ ( _a_ ), so _X_ = _f_ ( _a_ ), which is a contradiction.
7. Hint: Define _f_ :P( _A_ )×P( _B_ )→P( _A_ , _B_ ) by the formula _f_ ( _X_ , _Y_ )=
    _X_ , _Y_ , and prove that _f_ is one-to-one and onto.
9. Hint: First note that ifF=∅then _g_ can be any function. IfF=∅,
    then sinceF is countable, we can write its elements in a list: F=
    { _f_ 1 , _f_ 2 ,... }. Now define _g_ :Z+→Rby the formula _g_ ( _n_ )=max{| _f_ 1 ( _n_ )|,
    | _f_ 2 ( _n_ )|,... , | _fn_ ( _n_ )|}.

```
Section 7.3
```

1. (a) The function _iA_ : _A_ → _A_ is one-to-one.
    (b) Suppose _A_  _B_ and _B_  _C_. Then there are one-to-one functions _f_ :
       _A_ → _B_ and _g_ : _B_ → _C_. By part 1 of Theorem 5.2.5, _g_ ◦ _f_ : _A_ → _C_
is one-to-one, so _A_  _C_.
5. Let _g_ : _A_ → _B_ and _h_ : _C_ → _D_ be one-to-one functions.
    (a) Since _A_ = ∅, we can choose some _a_ 0 ∈ _A_. Notice that _g_ -^1 :
       Ran( _g_ )→ _A_. Now define _j_ : _B_ → _A_ as follows:

```
j ( b )=
```

#### {

```
g -^1 ( b ) if b ∈Ran g ,
a 0 otherwise.
```

```
We let the reader verify that j is onto.
```

```
Appendix 1: Solutions to Selected Exercises 371
Now define F : AC → BD by the formula F ( f )= h ◦ f ◦ j. To
see that F is one-to-one, suppose that f 1 ∈ AC , f 2 ∈ AC , and F ( f 1 )=
F ( f 2 ), which means h ◦ f 1 ◦ j = h ◦ f 2 ◦ j. Let a ∈ A be arbitrary.
Since j is onto, there is some b ∈ B such that j ( b )= a. Therefore
h ( f 1 ( a ))=( h ◦ f 1 ◦ j )( b )=( h ◦ f 2 ◦ j )( b )= h ( f 2 ( a )), and since h
is one-to-one, it follows that f 1 ( a )= f 2 ( a ). Since a was arbitrary, this
shows that f 1 = f 2.
(b) Yes. (You should be able to justify this answer with a counterexample.)
```

8. (a) Let _n_ be arbitrary, and then proceed by induction on _m_. The base case
    is _m_ = _n_ +1, and it is taken care of by exercise 7. For the induction
    step, apply exercise 2(b).
(b) , _n_ ∈Z+ _An_ is an infinite set that is not equinumerous with _An_ for any
_n_ ∈Z+. In fact, for every positive integer _n_ , _An_ ≺ , _n_ ∈Z+ _An_. Can you
find even larger infinite sets?
10. (a) Note thatE⊆P(Z+×Z+). It follows, using exercise 5 of Sec-
tion 7.1, thatEP(Z+×Z+)∼P(Z+).
(b) Suppose _f_ ( _X_ )= _f_ ( _Y_ ). Then _X_ , { 1 } ∈ _f_ ( _X_ )= _f_ ( _Y_ )= { _Y_ , { 1 },
( _A_ \ _Y_ ), { 2 }}, so either _X_ , { 1 } = _Y_ , { 1 }or _X_ , { 1 } = ( _A_ \ _Y_ ),
{ 2 }. But clearly 2∈/ _X_ , { 1 }, so the second possibility can be ruled
out. Therefore _X_ , { 1 } = _Y_ , { 1 }. Since neither _X_ nor _Y_ contains 1, it
follows that _X_ = _Y_.
(c) Clearly _A_ is denumerable, and we showed at the end of Section 5.3
thatP∼E. It follows thatP(Z+)∼P( _A_ )P∼E. Combining this
with part (a) and applying the Cantor–Schr ̈oder–Bernstein Theorem
gives the desired conclusion.
14. (a) According to the definition of function, RR⊆P(R×R), and
therefore by exercise 12(b) and exercise 5 of Section 7.1, RR
P(R×R)∼P(R).
Clearly {yes, no}R, so by exercise 5(c) of Section 7.2 and
exercise 5,P(R)∼R{yes, no} RR. Since we have both RR
P(R) andP(R)RR, by the Cantor–Schr ̈oder–Bernstein theorem,
RR∼P(R).
(b) By Theorems 7.1.6 and 7.3.3, exercise 21(a) of Section 7.1, and exer-
cise 5(d) of Section 7.2,QR∼Z+P (Z+)∼P(Z+)∼R.
(c) Define _F_ :C→QRby the formula _F_ ( _f_ )= _f_ Q. (See exercise 7
of Section 5.1 for the meaning of the notation used here.) Suppose
_f_ ∈C, _g_ ∈C, and _F_ ( _f_ )= _F_ ( _g_ ). Then _f_ Q= _g_ Q, which means
that for all _x_ ∈Q, _f_ ( _x_ )= _g_ ( _x_ ). Now let _x_ be an arbitrary real num-
ber. Use Lemma 7.3.4 to construct a sequence _x_ 1 , _x_ 2 ,... of rational
numbers such that lim _n_ →∞ _xn_ = _x_. Then since _f_ and _g_ are continuous,

372 _Appendix 1: Solutions to Selected Exercises_

```
f ( x )=lim n →∞ f ( xn )=lim n →∞ g ( xn )= g ( x ). Since x was arbitrary,
this shows that f = g. Therefore F is one-to-one, soCQR. Com-
bining this with part (b), we can conclude thatCR.
Now define G :R→Cby the formula G ( x )=R× { x }. In other
words, G ( x ) is the constant function whose value at every real number
is x. Clearly G is one-to-one, soRC. By the Cantor–Schr ̈oder–
Bernstein Theorem, it follows thatC∼R.
```

### Appendix 2

Proof Designer

Proof Designer is a Java applet that writes outlines of proofs in elementary set
theory, under the guidance of the user. It should work on any computer with
a sufficiently up-to-date version of Java, including both PC and Macintosh
computers. To use Proof Designer, open your web browser and go to the Proof
Designer website:

```
http://www.cs.amherst.edu/~djv/pd/pd.html
```

Complete instructions for using Proof Designer can be found at the website.
Here we will provide an outline of these instructions.
When you open the Proof Designer home page in your browser you should
see a button at the bottom of the page that says “Write a Proof.” (If you don’t,
you may need to follow the instructions at the website for setting up your
computer to use Proof Designer.) To start writing a proof, click on the Write a
Proof button.
A dialog box will open, asking you to enter the hypotheses and conclusion
of the theorem you want to prove. The hypotheses and conclusion are entered
using ordinary set-theoretic and logical notation.^1 When you have entered the
hypotheses and conclusion, click OK.
The dialog box will close, and a new window will open. The window will
contain three menus, called “Edit,” “Strategy,” and “Infer.” Below the menus
will be the statement of the theorem you are proving, and then a place where

(^1) There is one significant difference between the way set theory notation is used in Proof Designer
and the way we have used it in this book. The difference concerns intersections of families of
sets. In this book, we have used the notation+Fonly in contexts in which we could be sure that
F=∅; the reason for this rule is discussed in exercise 14 of Section 2.3. Proof Designer enforces
this rule by restricting the contexts in which the notation+Fcan be used. For further details
about this, and a more complete explanation of how to type statements into Proof Designer, see
the website.
373

374 _Appendix 2: Proof Designer_

the proof will go. As you give commands in Proof Designer, an outline of the
proof will gradually take shape in this window. While you are working on the
proof, there will usually be one or more _gaps_ in the proof where additional
steps need to be filled in. Each gap will be indented and enclosed in a box,
and it will have a button labeled “?” in the upper left corner. The gap will say
what needs to be filled in at that point in the proof, and then it will give a list
of _givens_ – statements that are known to be true at that point in the proof – and
the _goal_ of the gap. Usually the goal is a statement that needs to be proven, but
occasionally the goal indicates that you need to assign a value to a variable,
and you can also have gaps that have no goal at all. Initially, the entire proof
consists of a gap whose givens are the hypotheses of the theorem, and whose
goal is the conclusion of the theorem.
To add a step to the proof, you click on a given or goal to select it and then
give a command from one of the menus at the top of the window. Sometimes
you will need to select several items. To do this, select the first item, and then
hold down the shift key on the keyboard and click on additional items to add
them to the selection. You can also select an entire gap by clicking either on
the sentence that introduces the gap or in the margin to the left of the gap.
As you give commands, steps will be added to the proof, and the givens and
goal lists will be updated. Sometimes a step will be justified by a _subproof_ – a
sequence of steps that, together, justify an assertion. Each subproof is indented
and enclosed in a box, and has a button labeled “∴” in the upper left corner.
Subproofs can be nested inside each other, and a subproof may also contain a
gap. You can select a step in the proof by clicking on it. If the step is justified
by one or more subproofs, the subproofs get selected as well.
Some commands will add _variant_ forms to givens or goals. A variant of a
statement is another statement that is equivalent to the original statement. A
variant of a given or goal is listed below the original and indented. You use a
variant just like the original given or goal. In particular, you can select a variant
by clicking on it.
You can change the order of the givens in a givens list by pointing to a given,
pressing and holding down the mouse button to “grab” it, and then dragging it
to a new location in the list. Any variants of the given get moved with it.
If the structure of the proof you are creating gets complicated, you can hide
some of the details by clicking on a “∴” or “?” button in the upper left corner
of a subproof or gap. When you click on the button, the details of the subproof
or gap are hidden. Click again to show the details again.
Applets are not allowed to print. However, you may be able to print your
proof by using one of the Export HTML commands. See the website for details
on this.

## Suggestions for Further Reading

Barwise, J. and Echemendy, J. _Language, Proof and Logic_. Stanford: CSLI
Publications, 2002.
Burton, D. _Elementary Number Theory_ , 5th edition. Boston: McGraw-Hill,
2002.
Eccles, P. _An Introduction to Mathematical Reasoning: Numbers, Sets and
Functions_. Cambridge: Cambridge University Press, 1997.
Enderton, H. _A Mathematical Introduction to Logic_ , 2nd edition. San Diego:
Harcourt/Academic Press, 2001.
Enderton, H. _Elements of Set Theory_. San Diego: Academic Press, 1977.
Epp, S. _Discrete Mathematics with Applications_ , 3rd edition. Belmont, Calif.:
Brooks Cole, 2004.
Halmos, P. _Naive Set Theory_. New York: Springer-Verlag, 1974.
Hamilton, A. _Logic for Mathematicians_ , revised edition. Cambridge: Cam-
bridge University Press, 1988.
Hamilton, A. _Numbers, Sets and Axioms: The Apparatus of Mathematics_.
Cambridge: Cambridge University Press, 1982.
Mendelson, E. _Introduction to Mathematical Logic_ , 4th edition. London:
Chapman & Hall, 1997.
Polya, G. _How to Solve It: A New Aspect of Mathematical Method_ , 2nd edition.
Princeton: Princeton University Press, 1957.
Rosen, K. _Discrete Mathematics and Its Applications_ , 5th edition. Boston:
McGraw-Hill, 2003.
Ross, K. and Wright, C. _Discrete Mathematics_ , 5th edition. Upper Saddle River,
N.J.: Prentice Hall, 2003.
Stark, H. _An Introduction to Number Theory_. Cambridge, Mass.: MIT Press,
1978.
van Dalen, D., Doets, H., and deSwart, H. _Sets: Naive, Axiomatic, and Applied_.
Oxford: Pergamon Press, 1978.
375

## Summary of Proof Techniques

Note: Paragraphs marked with the symbolPDexplain how to use each technique
in Proof Designer.

**To prove a goal of the form:**

1.not  _P_ :
(a) Reexpress as a positive statement.
PD:Select the goal, give the Reexpress command in the Strategy menu,
and use the Reexpress Negative button in the Reexpress dialog box.
(b) Use proof by contradiction; that is, assume that _P_ is true and try to reach
a contradiction.
PD:Select the goal and give the Contradiction command in the Strategy
menu. If you already know which given you are planning to contradict,
you can select it too before giving the Contradiction command, and
Proof Designer will indicate what you have to prove to achieve the
desired contradiction.

2. _P_ → _Q_ :
    (a) Assume _P_ is true and prove _Q_.
       PD:Select the goal and give the Direct command in the Strategy menu.
    (b) Prove the contrapositive; that is, assume that _Q_ is false and prove that
       _P_ is false.
       PD:Select the goal and give the Contrapositive command in the Strategy
          menu.
3. _P_ and  _Q_ :
    Prove _P_ and _Q_ separately. In other words, treat this as two separate goals:
       _P_ , and _Q_.
          PD: Select the goal and give the Conjunction command in the Infer menu.
             If you already have either _P_ or _Q_ as a given, you can select it too,
                376

```
Summary of Proof Techniques 377
and Proof Designer will only ask you to prove the statement that you
don’t already know.
```

4. _P_ or  _Q_ :
    (a) Assume _P_ is false and prove _Q_ , or assume _Q_ is false and prove _P_.
       PD:Select the goal and give the Disjunction command in the Strategy
          menu. Proof Designer will ask which statement you are planning to
          prove.
    (b) Use proof by cases. In each case, either prove _P_ or prove _Q_.
       PD:Use the Cases command in the Strategy menu to break your proof
          into cases. Your goal in each case will be _P_ or  _Q_. In each case, select
          this goal and give the Disjunction command in the Strategy menu,
          and Proof Designer will ask you which statement you plan to prove
          in that case. If you don’t want to assume the negation of the other
          statement, remove the check mark from the “Assume negations of
          others” check box by clicking on it.
5. _P_ ↔ _Q_ :
    Prove _P_ → _Q_ and _Q_ → _P_ , using the methods listed under part 2.
       PD: Select the goal and give the Biconditional command in the Strategy
          menu.
6.∀ _x P_ ( _x_ ):
    Let _x_ stand for an arbitrary object, and prove _P_ ( _x_ ). (If the letter _x_ already
    stands for something in the proof, you will have to use a different letter for
    the arbitrary object.)
       PD: Select the goal and give the Arbitrary Object command in the Strategy
          menu.
7.∃ _x P_ ( _x_ ):
    Find a value of _x_ that makes _P_ ( _x_ ) true. Prove _P_ ( _x_ ) for this value of _x_.
       PD: Select the goal and give the Existence command in the Strategy
          menu. Proof Designer will ask you what value you want to use for
             _x_. If you’re not sure what to use for _x_ , you can choose a variable to
          stand for this value, and fill in the choice of a value for that variable
          later.
8.∃! _x P_ ( _x_ ):
    (a) Prove∃ _x P_ ( _x_ ) (existence) and∀ _y_ ∀ _z_ (( _P_ ( _y_ )and  _P_ ( _z_ ))→ _y_ = _z_ ) (unique-
       ness).
       PD:Select the goal and give the Existence & Uniqueness command in
          the Strategy menu.
    (b) Prove the equivalent statement∃ _x_ ( _P_ ( _x_ )and  ∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ )).
       PD:Select the goal, give the Reexpress command in the Strategy menu,
          and click on the Apply Definition button in the Reexpress dialog box.

378 _Summary of Proof Techniques_

9.∀ _n_ ∈N _P_ ( _n_ ):
(a) Mathematical Induction: Prove _P_ (0) (base case) and∀ _n_ ∈N( _P_ ( _n_ )→
_P_ ( _n_ +1)) (induction step).
(b) Strong Induction: Prove∀ _n_ ∈N[(∀ _k_ < _n P_ ( _k_ ))→ _P_ ( _n_ )].

**To use a given of the form:**

1.not  _P_ :
(a) Reexpress as a positive statement.
PD:Select the given, give the Reexpress command in the Strategy menu,
and use the Reexpress Negative button in the Reexpress dialog box.
(b) In a proof by contradiction, you can reach a contradiction by proving _P_.
PD:Select the given and give the Contradiction command in the Strategy
menu.

2. _P_ → _Q_ :
    (a) If you are also given _P_ , or you can prove that _P_ is true, then you can
       conclude that _Q_ is true.
       PD:Select the givens _P_ and _P_ → _Q_ and give the Modus Ponens com-
          mand in the Infer menu, and Proof Designer will infer _Q_. (If you don’t
          already have _P_ as a given but you think you can prove it, you can use
          the Insert command in the Edit menu to insert a proof of _P_ .)
    (b) Use the contrapositive: If you are given or can prove that _Q_ is false,
       then you can conclude that _P_ is false.
       PD:Select the givensnot  _Q_ and _P_ → _Q_ and give the Modus Tollens com-
          mand in the Infer menu, and Proof Designer will infernot  _P_.
3. _P_ and  _Q_ :
    Treat this as two givens: _P_ , and _Q_.
       PD: Select the given and give the Split Up command in the Infer menu.
4. _P_ or  _Q_ :
    (a) Use proof by cases. In case 1 assume that _P_ is true, and in case 2 assume
       that _Q_ is true.
       PD:Select the given and give the Cases command in the Strategy menu.
    (b) If you are also given that _P_ is false, or you can prove that _P_ is false,
       then you can conclude that _Q_ is true. Similarly, if you know that _Q_ is
       false then you can conclude that _P_ is true.
       PD:Select the givensnot  _P_ (ornot  _Q_ ) and _P_ or  _Q_ and give the Disjunctive
          Syllogism command in the Infer menu.
5. _P_ ↔ _Q_ :
    Treat this as two givens: _P_ → _Q_ , and _Q_ → _P_.
       PD: Select the given and give the Split Up command in the Infer menu.

```
Summary of Proof Techniques 379
```

6.∀ _x P_ ( _x_ ):
You can plug in any value, say _a_ , for _x_ , and conclude that _P_ ( _a_ ) is true.
PD: Select the given and give the Universal Instantiation command in the
Infer menu. Proof Designer will ask you what you want to plug in for
_x_. As with proofs of goals of the form∃ _x P_ ( _x_ ), if you’re not sure what
to plug in for _x_ , you can choose a variable to stand for the object to
be plugged in, and fill in the choice of a value for that variable later.
7.∃ _x P_ ( _x_ ):
Introduce a new variable, say _x_ 0 , into the proof, to stand for a particular
object for which _P_ ( _x_ 0 ) is true.
PD: Select the given and give the Existential Instantiation command in
the Infer menu.
8.∃! _x P_ ( _x_ ):
Introduceanewvariable,say _x_ 0 ,intotheproof,tostandforaparticularobject
for which _P_ ( _x_ 0 ) is true. You may also assume that∀ _y_ ( _P_ ( _y_ )→ _y_ = _x_ 0 ).
PD: Select the given and give the Existential Instantiation command in
the Infer menu.

**Techniques that can be used in any proof:**

1. Proof by contradiction: Assume the goal is false and derive a contradiction.
    PD: Select the goal and give the Contradiction command in the Strategy
       menu. If you already know which given you are planning to contradict,
       you can select it too before giving the Contradiction command.
2. Proofbycases:Considerseveralcasesthatare _exhaustive_ ,thatis,thatinclude
    all the possibilities. Prove the goal in each case.
       PD: If you select a given of the form _P_ or  _Q_ and give the Cases command
          in the Strategy menu, then Proof Designer will break the proof into
          the cases determined by this given. If you select a goal and give the
          Cases command, then Proof Designer will ask you to type in some
          statement _P_ that will be used to distinguish the cases. In case 1, Proof
          Designer will assume that _P_ is true, and in case 2 it will assume that
             _P_ is false.

## Index

absorption laws, 21
antecedent, 44
antisymmetric, 189
arbitrary object, 108
arithmetic mean, 276
arithmetic-geometric mean inequality, 276
associative laws, 22, 23
forand andor , 21, 25
asymmetric, 210

base case,
Bernstein, Felix, 322
biconditional, 23, 52, 53
truth table for, 23, 52
big-oh, 235
bijection, 182, 242
binary relation, 182, 242
binomial coefficient, 288
binomial theorem, 260, 288
bound variable, 29
bounded quantifier, 57, 68

Canter’s Theorem, 318, 320, 321
Cantor,Georg, 318
Cantor-Schr ̈oder-Bernstein Theorem,
322–327
cardinality, 307
Cartesian product, 163–171
cases, 136
closure
reflexive, 202
reflexive symmetric, 212
of a set under a function, 303
symmetric, 204, 205
symmetric transitive, 212
transitive, 204, 209, 300
Cohen, Paul, 327
commutative laws forand andor , 21, 23, 52
compatible, 225, 236

```
composition, 177, 178, 182, 231, 300
conclusion, 8, 85
conditional
antecedent of, 44
consequent of, 44
laws, 44–45, 47, 50
truth table for, 44–45, 47
congruent, 213
conjecture, 2
conjunction, 10
connective symbol, 10
consequent, 44
constant function, 235, 244
continuum hypothesis, 326–327
contradiction, 22, 23, 26, 32, 41
law, 23
proof by, 96, 97, 98, 99
contrapositive, 49, 91
law, 49
converse, 49
coordinate, 163
countable set, 310
counterexample, 2, 85
DeMorgan’s law, 20, 21, 22, 23, 25, 39, 47, 50
denumerable set, 318, 326
diagonalization, 320
difference of sets, 34
directed graph, 183
disjoint, 40
pairwise, 153, 214
disjunction, 10
disjunctive syllogism, 142
distributive laws, 38–39
for∃, 70
for∀andor , 70
for+and,, 38–39
forand andor , 21, 23
divides, 121
```

#### 381

382 _Index_

division algorithm, 290, 291
domain, 172, 230
double negation law, 21, 22, 23, 25, 47

edge, 181
element, 27
empty set, 32
equinumerous sets, 306–312
equivalence class, 214, 215
equivalence relation, 213–222, 309
equivalent formulas, 19, 21
even integer, 134, 312
exclusive cases, 138
exclusive or, 15, 24
exhaustive cases, 136
existential instantiation, 115
existential quantifier, 55, 58

factorial, 282
family of sets, 75
Fermat numbers, 276
Fermat, Pierre de, 276
Fibonacci, 291
Fibonacci numbers, 291–293, 296, 297
finite sequence, 317, 321–322
finite set, 306
fixed point, 255
formula, 12
free variable, 28, 55
function
compatible with an equivalence relation,
225
composition of, 232–233
domain of, 230
function of, 229
identity, 227
inverse of, 245–252
one-to-one, 236
onto, 236
range of, 239
restriction of, 234, 243

geometric mean, 357
Gibonacci sequence, 297
givens, 88
goal, 88
G ̈odel, Kurt, 327
graph, 183
greatest common divisor, 299
greatest lower bound (g.l.b.), 197

harmonic mean, 277
harmonic numbers, 286
Hilbert, David, 326
hypothesis, 85

idempotent laws, 21, 22
identity relation, 183, 203–204, 213

```
iff, 52
image, 227, 230, 255–259
inclusion-exclusion principle, 369
inclusive or, 15
index, 74
index set, 74
indexed family, 74, 75
induction
step, 260, 270
strong, 288–295
inductive hypothesis, 263, 265, 268, 272
inference, rule of, 107
infinite sets, 306
injections, 236
instance of a theorem, 85
integers, 31, 32
intersection
of family of sets, 77, 78
of indexed family of sets, 79
of two sets, 34
interval, 31, 328
inverse, 173, 245–252
inverse image, 255–259
irrational number, 161–162
irreflexive, 204
largest element, 197
least upper bound, 197
lemma, 217
limit, 161
logarithm, 252
loop, 184
lower bound, 197
Lucas, Edouard, 297
Lucas numbers, 297
main connective, 17
mathematical induction. See induction
maximal element, 197
Mersenne, Marin, 5
minimal element, 192, 267–269
modulo, 215, 221
modus ponens, 103
modus tollens, 103, 104, 105, 107
nand, 24
natural number, 31
necessary condition, 50
negation, 10
nor, 24, 133
null set, 32
odd integer, 24, 133, 134
one-to-one, 236
one-to-one correspondence, 242
onto, 236
ordered pair, 163–171
ordered triple or quadruple, 169
```

```
Index 383
```

pairwise disjoint, 153, 214
partial order, 190, 254, 267, 268–269,
314
strict, 211
partition, 214, 215
Pascal, Blaise, 288
Pascal’s triangle, 288
perfect number, 5
Pigeonhole Principle, 313
polynomial, 299
power set, 75–76, 119, 318
premise, 8
preorder, 225
prime number, 1, 74, 94, 156–158
largest known, 5
Mersenne, 5
twin, 6
proof, 1, 84
by cases, 137
by contradiction, 96, 97, 98, 99
Proof Designer, 102, 373–374
Proof Designer, Preface and Appendix,
373–374
proof strategy
for a given of the form
not  _P_ , 99–100, 102
_P_ and  _Q_ , 124
_P_ or  _Q_ , 142–143
_P_ → _Q_ , 102
_P_ ↔ _Q_ , 126
∀ _x P_ ( _x_ ), 115
∃ _x P_ ( _x_ ), 115
∃! _x P_ ( _x_ ), 152
for a goal of the form
not  _P_ , 95, 96
_P_ and  _Q_ , 124
_P_ or  _Q_ , 138, 141–142
_P_ → _Q_ , 88, 90, 91
_P_ ↔ _Q_ , 126
∀ _x P_ ( _x_ ),
∀ _n_ ∈N _P_ ( _n_ ), 260, 289
∃ _x P_ ( _x_ ),
∃! _x P_ ( _x_ ), 149, 150
proper subset, 203

quantifier, 55–64
bounded, 68, 57
existential, 58
negation laws, 65, 66, 69
unique existential, 146
universal, 55
quotient, 290

range, 173, 239
rational number, 31, 311, 326,
328
real number, 31, 297

```
recursive
definition, 280
procedure, 274
refine, 225
reflexive, 184
reflexive closure, 202
reflexive symmetric closure, 212
relation
antisymmetric, 212
asymmetric, 210, 346
binary, 182, 242
composition of, 176, 180–181
domain of, 173
identity, 183, 203–204, 213
inverse of, 173
irreflexive, 204
range of, 311
reflexive, 184
symmetric, 184
transitive, 184
remainder, 290, 139–140
restriction, 234, 243
rule of inference, 107
Russell, Bertrand, 83
Russell’s Paradox, 83
Schr ̈oder, Ernst, 322
sequence, 297–298
set, 27. See also countable set; denumerable
set; empty set (or null set); family of
sets; finite set; index set; infinite sets;
∑ power set; subset; truth set
-notation, 281–282
smallest element, 184, 191
strict partial order, 204
strict total order, 204
strictly dominates, 322
strong induction, 288–295
subset, 40, 184
proper, 203
sufficient condition, 50
surjection, 236
symmetric closure, 204, 205
symmetric difference, 36, 43, 154
symmetric transitive closure, 40, 212, 184
tautology, 23
laws, 23
theorem, 85
total order, 190, 269–270, 275
strict, 204
transitive,
transitive closure, 204, 209, 300
trichotomy, 204
truth set, 27, 30, 37, 163
truth table, 14–23
truth value, 14
```

384 _Index_

uncountable set, 315–321
union
of an indexed family of sets,
79
of a family of sets, 78
of two sets, 78
universal instantiation, 115
universal quantifier, 55
universe of discourse, 31, 328
upper bound, 197

```
vacuously true statement, 70
valid argument, 9
variable, 26
bound, 29
free, 28, 55
Venn diagram, 36, 40–41
vertex, 182
well-formed formula, 12
well-ordered principle, 294, 295, 299
```
