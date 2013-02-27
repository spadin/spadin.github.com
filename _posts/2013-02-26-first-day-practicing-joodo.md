---
layout: post
title: "First Day Practicing Joodo"
snippet: "A Few Minor Bumps But Still Chugging Along"
date-string: February 26, 2013
---

I downloaded and started working with Joodo this morning. This is my
first Clojure web framework. I've work with several other web frameworks
in several languages and I'm familiar with how they work. 

Joodo is as simple to use as any other framework. The setup time was
minimal and I had the server up and running in less than 30 minutes. The
only bump I came up against was when I tried deploying my test app on
Heroku. The included Procfile wasn't starting up the web worker properly
and Heroku complained about binding to the wrong port and address. I
fixed these and was about to submit a bug when I noticed the bug is
already fixed on the Joodo Github repo but the new jar hasn't been
deployed to Clojars. 

Working with Joodo meant working with hiccup templates. When I first saw
these templates a few weeks ago I found them a bit odd. They reminded me
of Haml which I don't use unless necessary. Having worked with Clojure
these past few weeks, however, has warmed me up to these hiccup
templates and now I find them very easy to use. I also enjoy not having
to switch contexts in my brain from HTML to Clojure and vice versa. 

Resources:

* [Joodo Web Framework][1]
* [Hiccup Templates][2]

[1]: http://www.joodoweb.com/
[2]: https://github.com/weavejester/hiccup
