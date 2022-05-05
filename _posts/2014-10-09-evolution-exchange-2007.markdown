---
layout: post
title: Evolution & Exchange 2007
date: '2014-10-09 20:21:11'
tags:
- archlinux
- linux
- suse
- gnome
- evolution
- novell
- ximian
- exchange-server-2007
---

I am using Linux as a desktop system for quite some time now. Starting with a distribution of SuSE dual-booting on my Windows 95 gaming machine some years past, it eventually became my main system, although I also had short stints with Windows 2000, Windows 7 and Windows 8.1 (which I think is a really good operating system). 

###### Evolution
I prefer Evolution as client for my mails, addressbooks and calendars; although I tried other clients - claws, Thunderbird, geary, mutt - I always move back to Evolution. Switching was a matter of functionality most of the times. The look and feel of Evolution was always great for my personal taste, but when I changed from local calendars and addressbooks to online services or from POP3 to IMAP, evolution fell short of other clients. Everything was implemented rather fast, but sometimes, things just did not work properly. Calendars would not sync, buttons in Evolution just did nothing or at least not what they said.

Things changed to some degree when "ownership" changed. When Evolution was a Ximian project, it focused on looking and behaving like Microsoft Outlook, even adding a connector to older Exchange Mail Servers (which did not work quite reliable...).
When aquired by Novell, efforts were made to connect as a Groupwise client and being integrated tighter into the Gnome desktop environment.

Currently, the software is evolving slower, but functionality and overall quality is improving (so I am using it again!).

###### Microsoft Exchange
Most companies I worked in had their email, calendars and addressbooks provided by a Microsoft Exchange server - which is not a bad thing at all unless you are using Linux in that environment.
Exchange has been using proprietary protocols to connect with clients, keeping most clients other than Outlook out.

###### Exchange Web Services Connector
Starting with Exchange 2007, you can use web services to communicate with the server. In the archlinux repositories, I found a package called _evolution-ews_ - Evolution Exchange Web Services. This looked promising! On the net, I found reports that this connector really works as one would expect it to do, so I gave it a try.

Until today, most things are working fine. I can read and write mails, can see and place events in the calendar and can access the personal and global addressbooks. I can access all mail folders and see tasks. I can activate out-of-office-replies.

I have not yet figured out how to access other colleagues' shared calendars.

###### Conclusion
What's my conclusion on all of this?
Evolution has become a much better client for use with an Exchange server. On Linux, you do not need to rely on Outlook web access alone now as most of the tasks can be performed by the client application that was originally made up resembling Outlook in the Linux desktop world.

