---
layout: post
title: "Head Scratch Minimax"
snippet: "First big challenge with Clojure, Minimax algorithm"
date-string: February 11, 2012
---

I spent all of today trying to implement the minimax algorithm in
Clojure. I spent the morning looking at my old Ruby implementation and
determining how to convert it to a functional style.

I came up with a plan for testing the `min-move` and `max-move` functions
and began implementing. Figuring out which tests to write proved to be
very difficult. 

My unfamiliarity with Clojure caught up with me today. I was testing the
functions and some aspects where working while others were not, it was
very frustrating. 

I finally decided to fire up the REPL and run some examples as a sanity
check which is when I found the bug that had been biting me all day. 

I was calculating the `max-move` by first running a `for` loop that collects
all the moves with their score as a list, then tries to reduce that list to only
hold the item with the highest score. I was doing the opposite for the
`min-move` function. Or so I thought...

Neither the `max-move` nor the `min-move` functions were working as I
expected them. The way in which I was reducing the list of moves and
scores was incorrect. 

And that is where I left off this evening. Now that I understand what
isn't functioning I can go in with a clear head tomorrow morning and
finish the minimax algorithm. 

This is the non-functioning Minimax algorithm for posterity.

    (defn min-move [mark board]
      (let [moves
           (for [position (board/get-empty-indices board) 
                 :let [new-board (board/set-mark-at-index mark position
board)]]
             (if (rules/gameover? new-board) 
               {:score (calculate-score mark new-board)
                :position position}
               (max-move (rules/next-player mark) new-board)))]
        (do
          (reduce min-key :score (reverse moves)))))

    (defn max-move [mark board]
      (let [moves
           (for [position (board/get-empty-indices board)
                 :let [new-board (board/set-mark-at-index mark position
board)]]
             (if (rules/gameover? new-board)
               {:score (calculate-score mark new-board)
                :position position}
               (min-move (rules/next-player mark) new-board)))]
        (do
          (reduce max-key :score (reverse moves)))))
{:lang="clojure"}
