---
title: "Update-Zeit bei ranking-info"
date: '2026-06-14 18:14:00'
tags:
- projekte
- rankinginfo
- ruby
- rails
- tennis
- dtb-rangliste
categories: ["tennis"]
---
[RankingInfo](https://ranking-info.net) - eine Anwendung zur einfachen Visualisierung der Deutschen Jugend-Tennisrangliste - läuft nun schon einige Jahre - die Daten wurden jedes Quartal aktualisiert, die Anwendung ist aber dieselbe geblieben. Das ist erstmal nicht schlimm, obwohl GitHub Dependabot immer wieder Schwachstellen angemeckert hat. Nachdem plötzlich ein wenig Freizeit erschienen ist, habe ich in den letzten Wochen immer mal wieder an meiner kleinen Webapplikation gearbeitet. Deswegen wird es Zeit für eine Reihe kurzer Updates!

Das erste Schritt war ein globales Update. RankingInfo lief noch mit veralteten Versionen von [ruby](https://ruby-lang.org) und [rails](https://rubyonrails.org) - ruby 3.3 und rails 7. Dazu kamen noch viele Ruby- und JavaScript-Abhängigkeiten des Projekts, die ebenfalls auf Versionen standen, die schon mehrere, teils kritische Schwachstellen enthielten.

Dank der guten Doku und den mitgelieferten Update-Tools war der Prozess sehr geradlinig und einfach - zumindest für eine so einfache Applikation. Dazu habe ich dann noch die CI aktualisiert und so spannende Dinge wie Dependency-Checks mit Brakeman und bundler-audit eingefügt, aber dann auch yarn-audit eingefügt.

So war die Grundlage gelegt, nach langer Zeit mal wieder an ein neues Feature zu gehen - die Erweiterung für die Ranglisten der Aktiven!