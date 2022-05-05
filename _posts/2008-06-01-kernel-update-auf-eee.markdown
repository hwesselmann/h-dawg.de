---
layout: post
title: Kernel-Update auf Eee
date: '2008-06-01 14:21:00'
tags:
- archlinux
- linux
- eeepc
- pkgbuild
---

Ich habe es gewagt, meinen Eee PC auf Kernel 2.6.25 zu aktualisieren. Natürlich wusste ich, dass danach vieles nicht funktionieren würde, vor allem ACPI, WLAN und Webcam. Ich kann Euch beruhigen: Ihr solltet VOR dem Update [__dieses PKGBUILD__](http://members.shaw.ca/dkite/eeemodules.tar.gz) von [__dkite__](http://members.shaw.ca/dkite/) runterladen und nach dem Update laufen lassen. Dazu braucht Ihr allerdings eine Netzwerkverbindung über LAN (der Treiber ist zum Glück in 2.6.25 integriert!). Bauen, installieren, neu starten und alles läuft wie gewohnt.