---
layout: post
title: "Installing Ruby 2.0.0-p0"
snippet: ""
date-string: February 24, 2013
---

I kept receiving a complilation error while installing Ruby 2.0.0-p0 today. 

I use rbenv/ruby-build and had to use this snippet for installation:

    $ CC=cc rbenv install 2.0.0-p0

<br>
I hope this helps anyone experiencing trouble installing Ruby 2.0.0
