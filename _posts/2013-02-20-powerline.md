---
layout: post
title: "Powerline"
snippet: "Decorate your Vim and tmux"
date-string: February 20, 2013
---

I ran across a cool Vim plugin today named, [Powerline][1]. It nicely decorates
your Vim status line and includes VCS status, file path, file type,
etc. My previous status line was hard to read and understand so I hardly
looked at it.

Here's a look at my new Vim status line:
[![Vim Powerline status line][2]][2]

Along the way, while figuring out how to configure Powerline for Vim, I
ran across [tmux-powerline][3] which decorates tmux's status line. The
concept is directly taken from Powerline, but there are more widgets
for showing different information, including: WAN and
LAN IP, your current Git branch and status, weather, and a few
more.

Here's a look at my new tmux status line:
[![tmux-powerline status line][4]][4]

Both plugins look nice, but besides the aesthetics, the information
the provided is very useful and prensented clearly.

Although the setup for these plugins is a little difficult, I still
recommend taking the half hour to an hour it takes and check them out.

[1]: https://github.com/Lokaltog/powerline
[2]: /images/powerline-vim.png
[3]: https://github.com/erikw/tmux-powerline
[4]: /images/tmux-powerline.png 
