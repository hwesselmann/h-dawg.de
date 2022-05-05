---
layout: post
title: cloudMarks - was für eine Woche
date: '2015-09-13 18:35:51'
tags:
- jolla
- sailfishos
- qml
- openrepos
- github
- transifex
---

Letzte Woche habe ich in meiner (viel zu knappen) Freizeit meine erste Applikation für SailfishOS erstellt. Seit dem habe ich in so kurzer Zeit sehr viel gelernt und bin begeistert, sowohl von der ownCloud-, als auch von der Sailfish-Community.

Die erste Version konnte eigentlich noch gar nichts, dank vieler vorhandener Beispiele konnte ich aber jeden Tag mit nur wenig Zeit - es war selten mehr als eine Stunde - ein wenig mehr Funktionalität implementieren. Am Freitag habe ich dann die Übersetzung über Transifex auf den Weg gebracht und bis heute schon vier neue Sprachdateien erhalten!
Gleichzeitig habe ich eine Anfrage an das Team des ownCloud Bookmark-Moduls gestellt - es gibt aktuell nur das Lesen von Lesezeichen als Endpunkt an der öffentlichen REST-API, ich habe nach einer Methode zum Anlegen eines Lesezeichens gefragt - heute kam genau dazu ein Pull-Request in das Repository. Sehr cool!

Im Jolla Store sind schon mehr als 60 aktive Installationen gemeldet, auf openRepos sehe ich mehr als 100 Downloads! Vielen Dank!
Ich werde also immer mal wieder ein paar Stunden investieren, bevor ich mich an einem weiteren Sailfish-Projekt versuche. Es gibt noch einige Dinge auf meiner Liste - Unit-Tests (weiß noch nicht, wie es geht), ~~selbstsignierte SSL-Zertifikate akzeptieren (bedeutet, ich muss Python oder C++ anfassen)~~ (_erledigt ab Version 0.6)_, die neuen Endpunkte der öffentlichen API anbinden, hinzufügen eines Lesezeichens direkt über die "Share"-Funktion des Sailfish-Browsers und noch ein paar Kleinigkeiten mehr.

So viel zu tun...

Das Projekt findet Ihr auf [GitHub](https://github.com/hwesselmann/harbour-cloudmarks), die Übersetzung findet auf [Transifex](https://www.transifex.com/h-dawgde/cloudmarks/dashboard/) statt, die Applikation gibt es beo [openRepos](https://openrepos.net/content/hwesselmann/cloudmarks) oder im Jolla Store. Im Jolla Store dauern Updates wegen des QA-Prozesses allerdings ein paar Tage, so dass dort nicht die aktuellste Version bereit steht. 