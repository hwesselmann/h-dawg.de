---
layout: post
title: Plex Media Server
date: '2014-07-01 16:00:00'
tags:
- archlinux
- raspberry-pi
- plex
---

Vor ein paar Tagen ging in meinem Rasperry Pi die SD-Karte kaputt und ich hatte die Wahl: Nochmal openELEC mit XBMC aufspielen oder etwa anderes probieren.
Wer sich die Überschrift sorgfätig angesehen hat, ahnt schon: Ich habe mich für etwas anderes entschieden!

Nach kurzer Recherche habe ich mich für den [Plex Media Server](http://www.plex.tv) entschieden und diesen auf meiner MSI Windbox installiert - es gibt im AUR en Paket für den Server (ist nicht Open Source), der Client, das sogenannte "Plex Home Theater" ist frei und in den Archlinux Standard-Repositories enthalten.
Für das Raspberry Pi gibt es mit [rasPlex](http://www.rasplex.com) eine auf openELEC aufsetzende Distribution, die sehr einfach und schnell erlaubt, einen Client für den Plex Server aufzusetzen. Schön fand ich dabei auch, dass ich die SD-Karte nicht manuell anpassen musste, damit die Partitionen sich der Größe der Karte anpassen - das erledigt rasPlex beim ersten Booten automagisch!

Plex ist optisch sehr ansprechend und es war sehr einfach, meine mit tvheadend aufgenommenen Serien so umzubenennen, dass Plex von alleine Metadaten findet. Im Idealfall gibt es für jede Serie ein Hintergrundposter, die Serien- und Folgenbeschreibung und beim Aufruf der Folgenübersicht einer Fernsehserie die Titelmelodie dezent im Hintergrund. Was war es für eine Freude, das Titellied von ["Peppa Wutz"](http://de.wikipedia.org/wiki/Peppa_Wutz) wieder und wieder zu hören :-)

Weitere tolle Features: Es gibt einen Client für HP webOS - ich kann also auch auf meinem HP Touchpad "Peppa Wutz" gucken, und: Letztes Wochenende gab es den [Plex Client für Android](http://www.amazon.de/Plex-Inc/dp/B004Y1WCDE) gratis im Amazon App Market - ich habe also nun auch auf meinem ZTPad als auch auf dem Jolla die Möglichkeit, im Heimnetzwerk Filme und Musik von Server zu streamen!

Da auf dem Raspberry nur der Client läuft, geht das ganze also deutlich schneller und ressourcenschonender vonstatten als zuvor mit XBMC. Zusätzlich ist ein Plex Server für einige NAS-Modelle verfügbar, zu Beispiel die von Synology oder QNAP, ein Plex Client ist in vielen Smart TVs auch schon integriert, zum Beispiel in den aktuellen LG webOS-Fernsehern.

Wenn Ihr nach einer Alternative zu XBMC für den Pi sucht, kann ich Plex wirklich empfehlen!