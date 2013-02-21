---
layout: post
title: "Four-by-four Tic Tac Toe"
snippet: "Surprisingly not as difficult as you'd think"
date-string: February 21, 2013
---

I started refactoring my code in preparation of implementing the 4x4
board and the eventual 3x3x3 board. I began by re-namespacing my files
for clarity. In my main `ticlj` directory, I now have `board`, `player`,
`printer` and `rules` as directories and `core.clj` as the only file in the
root directory. I felt this cleaned up the root directory and made the
subdirectory names more meaningful. I previously had `model` and `io` as the
only subdirectories of the root which weren't very clear. 

I also began converting functions to use multi-methods as their data source 
and the process has been pretty straightforward. 

I worked my way through adding new tests that needed a 4x4 counterpart.
Once done, I realized I hadn't ran the game once to see how things were
going and I was very proud. After making sure there weren't any missing
tests, I fired up the game and everything worked right off the bat. The
4x4 board printed as expected and the AI's played without problems (aside
form performance issues). Everything worked as well, if not better than I 
could have hoped for the first run.

Now I think the 3x3x3 Tic Tac Toe game should be very easy to implement
as well. I'll be doing that next week.

_Sidenote: It's my mom's 71st Birthday today. :tada:_
