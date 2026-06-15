---
title: "ranking-info-aktivenrangliste-und-mehr"
date: '2026-06-16 19:46:00'
tags:
- projekte
- rankinginfo
- ruby
- rails
- tennis
- aktive
- dtb-rangliste
categories: 
- tennis
---
Schon lange gab es keine funktionalen Erweiterungen mehr für [RankingInfo](https://ranking-info.net) - meine Anwendung zur einfachen Visualisierung der Deutschen Jugend-Tennisrangliste.

Nachdem ich die Applikation auf den [aktuellen Stand der genutzten Technologien](update-zeit-bei-ranking-info/) gebracht habe, war es also dringend an der Zeit. Zunächst habe ich im Code neue Möglichkeiten, die Ruby 4 und Rails 8 bieten, integriert und vieles mit kleinen und größeren Refactorings optimiert - Datenbankqueries, Caching, Komplexitätsreduzierung. Auch der Import der Ranglisten erfolgt nun automatisch über das Backend, so dass ich im Frontend keine Login- und Sessionlogik mehr brauchte.

Danach ging es an die Herren- und Damenrangliste. Der Import ist deutlich einfacher als bei den Jugendranglisten. Es gibt ja nur eine Altersklasse und keine Berechnungslogik. Stück für Stück wurden die Daten in die Ansichten integriert - Listenfilter, Spielerprofil, Vereinsansicht, Verbandsstatistik.

In überschaubarer Zeit war die Funktionalität fertig und die neuen Daten fügen sich gut in die bestehenden Views ein. Im Laufe der Implementierung sind mir aber zwei Dinge aufgefallen:
Erstens funktionierte CodeClimate für das Projekt nicht mehr, und zweitens Bestand das Repo zu fast 50% aus HTML- und CSS-Code. Das erste Problem ließ sich durch einen Schwenk zu [sonarcloud](https://sonarcloud.io/project/overview?id=hwesselmann_ranking-info) schnell und unkompliziert lösen - es musste nur der codeclimat-Teil in der CI-Pipeline angepasst werden.

Das zweite Problem war etwas größer. Ich habe damit begonnen, die Asset-Pipeline zu verbessern - bisher gab es für [bulma](https://bulma.io) da keine Komprimierung der Ausgabedatei. Dann habe ich - mit Unterstützung eines Coding-Agenten - nur das CSS und JavaScript behalten, das wirklich genutzt wird. Und auch nur auf den Seiten, wo es genutzt wird, also z.B. die Diagramme nur beim Spielerprofil.
Das war schon recht erfolgreich: Zum einen wurde das Projekt wieder zu einem ruby-Projekt, zum anderen haben sich die Ladezeiten und die Größe der Applikation deutlich verbessert. Im Vorbeilaufen habe ich dann noch alle Länderflaggen in das Repo integriert - keine Releases mehr für fehlende Flaggen nach dem Import einer neuen Rangliste!

Ich habe allerdings auf dem Weg auch gemerkt, dass bulma kein weit verbreitetes Projekt ist und das Update auf die aktuellste Version einiges an meiner UI verändert hat - andere Abstände, andere Defaultfarben. Also habe ich dann noch eine weitere Migration gemacht und das Frontend auf [tailwindcss](https://tailwindcss.com) umgestellt. schwieriger als gedacht, weil es nicht für jedes bulma-Utility eine Entsprechung bei tailwind gibt. Aber: durch diesen Schwenk wurde die Build-Pipeline noch ein Stück einfacher, das Projekt sah für den Nutzer genauso aus wie vorher und der Anteil an CSS hat sich noch einmal stark reduziert (und damit auch die Ladezeiten ebenfalls)!

Commited, gepushed und ein neues Release in Produktion gebracht. Jetzt war ich erstmal zufrieden mit mir und mir der Anwendung.

Aber dann bin ich beruflich auf die [KotlinConf 2026](https://kotlinconf.com) in München gefahren...