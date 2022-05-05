---
layout: post
title: Two days running with FirefoxOS
date: '2013-11-23 22:18:00'
tags:
- firefoxos
- enyojs
- harpjs
- html5
- javascript
---

When the first devices running Mozilla mobile operating system were announced, I must admit I was a bit disappointed - low end devices, non-emotional hardware design, software still running in alpha status. On the bright side, this also meant it would be inexpensive to try out the new system on real hardware!

In Germany, [Congstar](http://www.congstar) announced the availability of the Alcatel Onetouch Fire for the end of October 2013, so I ordered one of those - in green, to match my Linux desktop theme. Two days ago, it was delivered to me, and I was anxious to put a SIM in and give it a shot as my daily driver for some time. Today, I stopped using it again and went back to my Nokia Lumia 820.

##### FirefoxOS is just not there yet

There are quite a few reasons I have put the device aside, general usability and speed were non of them. The systems felt quite fluent, apps did start fast, I was able to get my contacts and calendar up in no time.

The trouble began when I wanted to add my personal mail account. I am running my own mail server, using an self-signed certificate to make it a bit more secure. Using this setup is not supported in FirefoxOS - currently, there is no way to add your own certs to the device, also, you cannot ignore the security risk, you even cannot run the account without TLS or SSL. So, no mails for me, huh? Adding my Gmail or outlook.com-account was painless, though...

One thing I really got used to was contact synchronization. Palm integrated this feature and called it __Synergy__, Android, WP and iOS implemented something similar in later versions of the systems. FirefoxOS is aiming at converts from feature phones. I cannot imagine those people would not like their contacts to be synchronized?!?

Next problem was app installation. I loved Project Macaw on webOS, fortunately there is a rewrite - [macaw-enyo](https://github.com/minego/macaw-enyo) - using [enyojs](http://www.enyojs.com) that will also run on FirefoxOS. This app is a priviledged app as it needs to make xhr-calls to Twitter. It is not on the Marketplace yet. Priviledged apps cannot be installed as hosted apps. Packaged apps can only be installed from a custom server if the app is not a priviledged one. Come on Mozilla, this is ridiculous!

I managed to install is using the FFOS simulator after fiddling around many hours. But this is far too complicated for the average user (which has just dropped his feature phone to get the cool apps on a smartphone).

##### hardware is not just about specs

The Alcatel runs ok. You can use it for a long time when the battery was fully charged, I had good connection speed and making calls was fun as the phone is smaller and lighter than my previous phones (Lumia 820, Pre3, Pre2, Pre+, Pre-, Nokia 2120...).
The device is cheap (or "affordable" as others might say) and it feels cheap. This would be fine with me, but it also looks cheap. My parents taught me this was not important at all, but nevertheless I care about this kind of thing. Especially since there are other devices out there that are only some Euros more in pricing, but do not look as if they have been priced like that.

##### waiting for the next update

I will put the device aside and give it another try with every update Mozilla will deliver. I remember webOS was not perfect when the first versions were available, although it was more mature than FirefoxOS is to date...