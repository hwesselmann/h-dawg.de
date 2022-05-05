---
layout: post
title: PVR mit tvheadend auf meiner Windbox mit Archlinux
date: '2013-10-28 20:58:00'
tags:
- archlinux
- raspberry-pi
- openelec
- pvr
- windbox
---

Seit einiger Zeit habe ich einen digitalen Videorekorder - hauptsächlich, um diverse Kinderserien von KiKa und Toggo ohne Rücksicht auf die Uhrzeit bereit zu haben. Am Anfang lief das System unter [_openELEC_](http://www.openelec.tv) auf meinem alten Thinkpad. Das hat gut funktioniert, allerdings war das Laptop nicht ganz die richtige Plattform für den Zweck, der Kabelsalat im Keller war zusätzlich eine Belastung. Eine Lösung war schnell gefunden - eine MSI Windbox, ein sogenannter Nettop. Die Box ist kompakt und hat (für mich) noch akzeptable Energiewerte. Sie passt wunderbar in das Regal, hinter dem alle notwendigen Anschlüsse liegen!

_openELEC_ hatte ich nur als Vorab-Übung aufgespielt - ich wollte sehen, was es alles kann, bevor ich mir ein _Raspberry Pi_ für mein Wohnzimmer kaufe. Die Linux-Distributionen meiner Wahl sind openSUSE und Archlinux. Für den PVR hat sich Archlinux qualifiziert - es ist von Haus aus leichtgewichtiger und muss nicht aufwendig kleinkonfiguriert werden. Seit meiner letzten Archlinux-Installation hat das Projekt sich vom grafischen Installationsprogramm verabschiedet - es lief trotzdem alles problemlos (vor allem Dank der nach wie vor exzellenten okumentation im [Arch Wiki](http://wiki.archlinux.org))!

Als Backend habe ich _tvheadend_ ausgewählt - einfach, weil es unter _openELEC_ einfach funktioniert hat. Die notwendigen Pakete gibt es im [AUR](http://aur.archlinux.org), so dass auch hier keine Probleme aufgetreten sind. Als Hardware habe ich auf ebay einen __PCTV Quadro Stick__ ersteigert (ich habe DVB-C), der auch gut mit Linux zusammenarbeitet - vorausgesetzt man hat die notwendige Firmware an Bord. Nach kurzer Recherche im AUR und im Netz habe ich dann die geschummelte Variante gewählt - ich habe die Firmware-Datei von meinem Thinkpad auf die Windbox kopiert. Nach dem nächsten Booten konnte ich den Sendersuchlauf starten und erfolgreich abschließen.

Seit drei Wochen läuft die Box nun fehlerfrei durch, es sind schon zahlreiche Folgen "Ritter Trenk" oder "Die Oktonauten" auf der Platte meines NAS. Zusätzlich nutze ich die Windbox noch für andere Netzwerkdienste, z.B. als zentralen Druckserver über CUPS.

Auch auf diesem Feld hat Archlinux mich absolut überzeugt - es ist vielseitig und hat eine erstklassige Community, die dafür sorgt, dass Updates sehr schnell ins System kommen und die Dokumentation immer auf einem guten Stand ist. Schon während der Installation habe ich mich wieder 'zu Hause' gefühlt, wie es weder openSUSE, MacOS oder Windows bei mir schaffen :-)