---
layout: post
title: Thunderbird & Lightning unter Archlinux
date: '2008-06-09 21:36:00'
tags:
- archlinux
- linux
- thunderbird
- kalender
- lightning
---

Mir ist gerade etwas aufgefallen:

Wenn Ihr die <a href="https://addons.mozilla.org/de/thunderbird/addon/2313" target="_blank">Lightning-Erweiterung</a> für Thunderbird in Archlinux ordentlich zum Laufen bringen wollt, müsst ihr <a href="http://www.archlinux.org/packages/1247/" target="_blank">libstdc++5</a> installieren, da die Erweiterung anders kompilliert wurde als der Thunderbrid in Arch!

Ohne diese Kompatibilitätsbibliothek sieht die Darstellung verschoben aus 