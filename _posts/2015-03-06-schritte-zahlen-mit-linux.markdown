---
layout: post
title: Schritte zählen mit Linux
date: '2015-03-06 17:41:00'
tags:
- archlinux
- linux
- aur
- fitbit
- galileo
---

Vor einer Woche habe ich mir ein neues Spielzeug gekauft: Einen [fitbit Charge HR](https://www.fitbit.com/de/chargehr#i.3kym4rixifeftw). Das Gerät ist im Grunde ein Schrittzähler mit Höhen- und Pulsmesser. Alle drei Komponenten funktionieren ziemlich gut.
Insgesamt ist das Konzept, sich Tagesziele zu setzen und zu überwachen ziemlich einfach, aber trotzdem ungemein motivierend. 
Ich gehe mit meinem Kleinsten nun regelmäßiger mit dem Kinderwagen spazieren oder nehme die Treppe statt des Fahrstuhlen, nur um das Tagesziel eher zu erreichen! Das Armband 
ist schlicht und fällt daher nicht negativ auf. Als "Bonusfunktion" hat eine integrierte Uhr.

Offensichtlich bewege ich mich also zu wenig und habe Probleme mit meinem Gewicht. Darauf will ich aber gar nicht hinaus. 
Ich habe eine eher exotische Gerätelandschaft zu Hause - Linux auf PC und Laptop, ein Jolla als Mobilsystem. Die spannende Frage ist also: Funktioniert das Schritte zählen auch unter Linux?

###### Ersteinrichtung
Um das Charge HR mit seinem fitbit-Konto zu verknüpfen, führt leider kein Weg an Windows oder einem Mac vorbei. Sobald das Armband aber registriert ist, kommt man auch mit alternativen Systemen ziemlich weit:

###### Jolla
Es gibt von fitbit eine Android-App, die auch auf dem Jolla läuft. Die App ist über Google Play, Aptoide und den Amazon Appstore auf dem Jolla installierbar. In der App kann man schön grafisch aufbereit den aktuellen Status und seine Aufzeichnungshistorie ansehen. Theoretisch kann man mit einem kompatiblen Android- oder iOS-Gerät auch im Viertelstundentakt mit der zentralen Datenhaltung bei fitbit.com synchronisieren.
Diese automatische Synchronisation zwischen dem Cloud-Dashboard bei fitbit und dem Charge HR funktioniert auf dem Jolla leider nicht. Hier könnte in Zukunft etwas passieren, wenn Jolla bessere Unterstützung für Bluetooth aus der Android-Umgebung integriert. 

###### Linux
Das ist allerdings nicht dramatisch, denn man kann natürlich auch per PC abgleichen. Es leigt beim Armband ein kleiner USB-Dongle dabei, der es ermöglicht, mit diversen firbit-Produkten einen PC-Sync zu machen. Leider aber nur mit den üblichen Verdächtigen: Windows und OSX.
Glücklicherweise gibt es ein kleines Programm namens "galileo", welches unter Linux die Synchronisation ziemlich zuverlässig erledigt.

Die Software ist unter Archlinux im [AUR](https://aur.archlinux.org/packages/galileo) verfügbar und bringt - zumindest theoretisch - auch einen systemd-Service mit. Diesen habe ich allerdings noch nicht gefunden, so dass meine Synchronisation per cron-Job erledigt wird. Anders als die Windows-Software, die alle 15 Minuten einen Abgleich versucht, reichen mir aber größere Intervalle. Ich rede mir ein, dass das natürlich auch den Akku meine Armbandes schont...

###### Geht also...
Bis auf die Ersteinrichtung ist es also kein Problem, einen Aktivitätstracker von fitbit unter Linux zu nutzen. Bei der Nutzung mit alternativen Mobilbetriebssystemen sieht es allerdings aktuell mau aus. Hier hilft die Androidkompatibilität des Jolla zumindest ein wenig weiter.