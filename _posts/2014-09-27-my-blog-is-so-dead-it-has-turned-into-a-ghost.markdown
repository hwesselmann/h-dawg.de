---
layout: post
title: My blog is so dead - it has turned into a ghost
date: '2014-09-27 12:25:44'
tags:
- harpjs
- blog
- ghost-tag
---

A year ago, I migrated my blog from wordpress to static assets created with [harpjs](http://www.harpjs.com). It was fun and I learned a lot by using technology like LESS and jade which I had not gotten into before.

I ran the blog using harp as application server using __pm2__ for service and cluster management at first, so publishing was as easy as writing on my laptop, checking into source control and updating the "working copy" on the server. I had some problems with that as my server got unresponsive for other services I run there and it was rather obvious that node (or better stated pm2) ate a lot of cpu.
After trying to work around that issue by reducing other services cpu- and memory-usage (I switched my web server from apache to lighttpd and eventually nginx in those attempts) I decided to compile my blog with harp and server static assets only.

Unfortunately this turned out to be bad for my posting freqency (which had just gotten up a bit before...) as a build pipeline was needed to get a new post published on the server - I started a few posts but never published them.

So now that my blog was killed this way, I am migrating it again. This post is already server by the awesome [ghost blogging platform](http://www.ghost.org). Setting it up was fast and fun - the documentation is really complete and cover several setup scenarios.

Now, I am on the way of migrating my minimalistic theme over to work with ghost.
I will also be moving my old stuff over - as ghost uses markdown for editing, this is a rather simple task!