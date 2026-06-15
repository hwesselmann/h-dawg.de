---
title: "KotlinConf 2026 und die Nebenwirkungen"
date: '2026-06-17 21:08:00'
tags:
- projekte
- rankinginfo
- ruby
- rails
- kotlin
- exposed
- spring-boot
- tennis
- dtb-rangliste
categories: 
- tennis
- kotlin
- java
---


Ende Mai durfte ich beruflich auf die [KotlinConf 2026](https://kotlinconf.com) nach München. Es waren zwei  kurzweilige Konferenztage mit vielen guten Sessions und interessanten Menschen. Im tiefsten Inneren meines Wesens bin ich Java-Entwickler, aber da Kotlin auch eine JVM-Sprache ist und massiv von JetBrains unterstützt und gepushed wird, habe ich natürlich auch schon einige Male damit herumexperimentiert, ohne es je produktiv zu nutzen.

Ich weiß nicht, wie es bei euch ist, aber ich muss manche Dinge - am besten direkt - ausprobieren, wenn ich einen interessanten Beitrag oder Artikel höre, sehe oder lese. Was habe ich also während der Konferenz getan: Anstatt zu schlafen, habe ich Abends mein Hobbyprojekt [RankingInfo](https://ranking-info.de) von ruby/rails auf Kotlin mit Spring-Boot portiert. Das ging erstaunlich schnell, Kotlin hat mich wirklich beeindruckt - mit seiner Einfachheit und einem ruby-ähnlichen Programmiergefühl. Neue Dinge, wie die ORM-Library [Exposed](https://www.jetbrains.com/exposed/) für Kotlin haben dank guter Dokumentation auf Anhieb die Entwicklung beschleunigt und die Applikation schlanker gemacht als mit dem Standard Spring-Data-JPA.

Das Ganze ist dann in ein separates Repo auf github gewandert und lag ein paar Tage rum. Ich konnte mich nicht dazu durchringen, das Kotlin-Version live zu nehmen und die gute, einsatzerprobte Version in ruby und rails aufs Abstellgleis zu stellen (das ist zumindest das passende Bild dazu!). Stattdessen habe ich da Ökosystem weiter erforscht: was ist der aktuelle Zustand von gradle (immer noch nicht meins), wie macht man Formatierung, Linting oder statische Codeanalyse im Kotlin-Universum.

Ich war kurz davor, die Kotlin-Version dann doch zum neuen Hauptentwicklungszweig für RankingInfo zu machen - der Kommentar im README war schon geschrieben.

Aber dann kam es doch wieder anders - die Arbeit war Schuld...