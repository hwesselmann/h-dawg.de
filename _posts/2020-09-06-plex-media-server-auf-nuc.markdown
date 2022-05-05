---
layout: post
title: Plex Media Server auf NUC
date: '2020-09-06 07:50:00'
tags:
- archlinux
- linux
- intel
- mediaserver
- plex-media-server
categories: linux
---  
<p>Es ist schon eine ganze Weile her, dass ich mir auf einer - damals - kleinen und handlichen <a href='https://www.h-dawg.de/plex-media-server/'>MSI Windbox einen Plex Media Server installiert</a> habe. Das hat sich auf jeden Fall gelohnt! Erst über einen RasPi mit dem Plex Home Theater und dann über ein <a rel="noreferrer noopener" href="https://www.amazon.de/Fire-Stick-Basic-Internationale-EU-Netzteil/dp/B01ETRGE7M/ref=sr_1_5?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&amp;dchild=1&amp;keywords=fire+tv&amp;qid=1599202981&amp;sr=8-5" target="_blank">Amazon Fire TV</a> konnten wir alle unsere Filmsammlung genießen und später sogar aus dem normalen Fernsehprogramm aufnehmen. Nun ist die Windobox ziemlich in die Jahre gekommen. Der Stromverbrauch ist nicht so doll und mit dem Celeron geht das mit dem Transcoding nicht so wirklich. Zeit für etwas Neues. Auftritt Intel NUC für meinen Plex Media Server!</p>

<p>Schön länger habe ich mich geärgert:  Meine alte WindBox von MSI hat meinen Plex Media Server bisher zuverlässig serviert. Aber neuere Medien (z.B. welche in HD Auflösung) können nicht direkt auf meine Endgeräte gestreamt werden. Warum? Trotz eines dicken Netzteils und scheinbar hohem Prozessortakt ist der eingebaute Celeron einfach zu schlapp - manches NAS kann da schon mehr. Da hieß es immer, optimierte Versionen erstellen und den Plattenspeicher zumüllen.</p>

<h2>Ein Ersatz  für den Plex Media Server muss her</h2>

<p>Ich habe mich also auf die Suche nach einem Ersatz gemacht. Vom RasPi über Synology-NAS-Systeme bis zu Micro-Servern war alles in der Auswahl. Am Ende habe ich mich für einen gebrauchten Intel NUC entschieden. Übersichtlicher Stromverbrauch, sehr kleiner Formfaktor, gute Linux-Unterstützung und nicht zuletzt ein erschwinglicher Preis von knappt 140€ waren ausschlaggebend.  Mit einem Core i5, 8 GB RAM und einer 120 GB SSD hat dieser NUC mehr als genug Power, um einen Plex Media Server laufen zu lassen. Inklusive Transcoding und Aufnahme via DVB-C-Stick. Die kleine Kiste lag dann eine Weile bei mir herum, denn es gab kleine Hürde. Nur der Fernseher hat einen HDMI-Anschluss - es darf für die Installation also niemand fernsehen wollen. zusätzlich besaß unser Haushalt bis vor kurzem kein Mini-auf-HDMI-Kabel.</p>

<p>Dann ging es aber erstaunlich schnell - anschließen, ArchLinux-Installationsmedium booten und eine Installation machen. In meiner Erinnerung war die Installation von Arch immer kompliziert und langwierig. In der Realität war alles in unter einer Stunde erledigt.  Basissystem installiert, feste IP vergeben, Zeitserver eingestellt, Benutzer eingerichtet, SSH-Server konfiguriert, NFS-Shares eingebunden, überflüssige Ports geschlossen und zuletzt den <a href="https://www.plex.tv/" target="_blank" rel="noreferrer noopener">Plex Media Server</a> aus dem <a href="https://aur.archlinux.org/packages/plex-media-server-plexpass/" target="_blank" rel="noreferrer noopener">AUR</a> installiert. Schon ist der Plex Media Server auf dem NUC!</p>