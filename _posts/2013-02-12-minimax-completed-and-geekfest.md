---
layout: post
title: "Minimax and Geekfest"
snippet: "Completed Minimax algorithm and Clojure talk at Geekfest"
date-string: February 12, 2012
---

Today I finished debugging my minimax algorithm implementation in
Clojure. I finally figured out the bug in my code. I'd previously been
returning a hash which included the position being returned by the recursive 
call, whereas I should have just been returning the position from the current 
loop iteration. 

Here's the finished simple minimax algorithm:

{% highlight clojure %}
(defn min-move [mark board depth]
  (let [moves
        (for [position (board/get-empty-indices board)
              :let [new-board (board/set-mark-at-index mark position board)]]
          (if (rules/gameover? new-board)
            ; this is where my bug was
            {:score (+ (- -1000 (calculate-score (rules/next-player mark) new-board)) depth)
             :position position}
            {:score (:score (max-move (rules/next-player mark) new-board (inc depth)))
             :position position}))]
    (reduce (fn [memo val]  (if (< (:score val) (:score memo)) val memo)) moves)))

(defn max-move [mark board depth]
  (let [moves
        (for [position (board/get-empty-indices board)
              :let [new-board (board/set-mark-at-index mark position board)]]
          (if (rules/gameover? new-board)
            ; this is where my bug was
            {:score (- 1000 (calculate-score mark new-board) depth)
             :position position}
            {:score (:score (min-move (rules/next-player mark) new-board (inc depth)))
             :position position}))]
    (reduce (fn [memo val]  (if (> (:score val) (:score memo)) val memo)) moves)))
{% endhighlight %}

<br>
This algorithm isn't quite complete. It's slow and not as smart as it can be. I'll be 
refactoring the algorithm to use [Alpha-beta pruning][1] tomorrow.

I took a break during lunch to go to my first [Geekfest][2]. The topic today
was Clojure which was cool as I've been working with it so
much lately. The talk focused on ways to define macros and arguments 
for and against using macros. Overall it was an interesting talk although a bit 
complicated at points. I don't really see myself applying what I learned
about macros anytime soon, but I enjoyed the talk.

[1]: http://en.wikipedia.org/wiki/Alpha%E2%80%93beta_pruning
[2]: http://www.meetup.com/Geekfest/
