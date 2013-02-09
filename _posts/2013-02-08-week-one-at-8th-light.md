---
layout: post
title: "Week One at 8th Light"
snippet: "One fun week learning Clojure and putting what I learned
into use by making a Tic Tac Toe game"
date-string: February 8, 2012
---

It's been a great first week at 8th Light as a Resident Apprentice. I
started the week by performing the [bowling game kata][2] in Java for [Micah][3] with
Rick, a fellow apprentice. I enjoyed practicing the kata last weekend,
but it still took me 15 minutes to perform which was 5 minutes shy of
my 10 minute goal. I realized if I want to get my time down I don't just need to
type faster, but really get familiar with IntelliJ IDEA to take advantage of all
the keyboard shortcuts it offers. I hadn't programmed in Java in quite a few
years, and I was happily surprised to find a new feature (to me)
called annotations. From Wikipedia, "An annotation, in the Java
computer programming language, is a form of syntactic metadata that
can be added to Java source code." In short, annotations let you add
information about the source code. I noticed annoations while using JUnit,
the tests are marked with an `@Test` annotation.

I've spent the majority of this week learning Clojure and making a 
command-line Tic Tac Toe game. The process has been rewarding and 
frustrating at the same time. I call the project [Ticlj][1], although 
I'm planning to change the name to [TicljTacToe][1] soon. I wrote the 
basic human vs human game in a few days, but after talking to Micah, I 
learned the way I coded my program had imperative programming qualities rather 
than being purely functional; I kept a reference to the Tic Tac Toe board and 
I was changing the reference to point at other iterations of the board via `ref` 
and `ref-set` calls.

I took some time today to refactor my game into being purely
functional. In order to do so, I had to change about 15 or so
functions to accept a new `board` argument. By doing so, the reference
to the board was no longer necessary, so now my Tic Tac Toe game has no
mutable state.

I'm very happy with what I've been able to accomplish this week.
Clojure has actually been a nice language to work with, aside from the
initial shock over the incredible number of parenthesis, the language
is simple and succint.

Thanks to Micah, Rick, Ryan and Rylan for helping me wrap my head
around functional programming principles. After a long time of not thinking
about it, the principles of functional programming were a little
confusing, but I think I have a good grasp on it.

On a separate note, I noticed some interesting books on design
patterns and TDD in the 8th Light library and I plan to take a closer 
look next week.

### Things to accomplish next week:

1. Complete the AI for my [Tic Tac Toe game.][1]
2. Finish the full [Tic Tac Toe game.][1]
3. Read a book from the 8th Light library.

[1]: https://github.com/spadin/ticlj
[2]: http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata
[3]: http://www.8thlight.com/our-team/micah-martin
