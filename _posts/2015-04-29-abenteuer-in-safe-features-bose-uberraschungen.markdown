---
layout: post
title: Abenteuer in SAFe - Features & böse Überraschungen
date: '2015-04-29 20:29:01'
tags:
- agile
- scrum
- safe
- features
- stories
- xp
---

Vor etwas mehr als einem Jahr hat das Unternehmen, in dem ich arbeiten darf, den Entwicklungsprozess in der IT von einer Wasserfallvariante auf das _Scaled Agile Framework_ - kurz SAFe - umgestellt. SAFe ist ein Framework, welches verspricht, ohne dramatische Änderungen in der Aufbauorganisation Agilität zu skalieren.
Bisher war ich damit nur am Rande in Berührung gekommen (ich hatte das Glück, als ScrumMaster in einem reinen Scrum-Team zu arbeiten), und denke, das SAFe ein Versuch ist, Elemente aller möglichen Prozesse und Frameworks zu kombinieren.

Vor kurzem bin ich mit einem weiteren Team gestartet und damit in den SAFe-Strudel geraten. Neben der Tatsache, dass ein Großteil der Elemente in SAFe nicht wirklich agil ist, habe ich Probleme mit einem wichtigen Element eines jeglichen Projekts: Der Anforderung.

###### Anforderungen in SAFe

SAFe definiert den Fluss einer Anforderung über verschiedene Ebenenen. Dabei soll der Detailgrad der Anforderung in jeder Ebene höher werden.

In der sogenannten _Portfolio-Ebene_ werden Anforderungen als sehr vage Geschäftsziele erstellt - es sind z.B. die Visionen der Geschäftsführung, wohin sich das Geschäft des Unternehmens entwickeln soll. Die Anforderung wird auf dieser Ebene als _Epic_ bezeichnet. Einen genauen zeitlichen Umsetzungsrahmen gibt es erstmal nicht, lediglich eine Priorisierung.

Auf der nächsten Ebene, der _Programm-Ebene_, werden diese Epics in sogenannte _Features_ zergliedert. Ein Feature soll dabei genau so groß sein, dass es in ein _Release_ passt. Ach ja, in SAFe wird die Arbeit der Teams in Releases organisiert. Fünf Sprints formen eine Release, die Release-Inhalte werden im Voraus geplant.

Die letzte Ebene (auf der dann tatsächlich Anforderungen in Software umgesetzt werden) werden die Features in _User Stories_ zerschnitten. Eine Story passt in einen Sprint und ist vom Charakter her so definiert wie gleichnamige Elemente in Scrum oder XP.

Das ganze klingt erstmal nach einer runden Sache. Problematisch ist dabei aus meiner Sicht, dass Features in einem Release vollständig umgesetzt werden sollen. Ein Feature ist dabei aber noch so abstrakt definiert, dass es nicht nur die wichtigsten umzusetzenden Funktionalitäten enthält, sondern eben alle. Das Releaseende ist ein definiertes Datum.

###### Den Scope im Blick

Was macht ein Product Owner in einem agilen Team in so einem Fall? Wenn das Datum feststeht und es deutlich wird, dass nicht alle Anforderungen (== User Stories) erfüllt werden können, muss ich am Scope drehen, d.h. entscheiden, welche Story gemacht werden soll und welche dann eben nicht - ich will als Kunde zum festgesetzten Zeitpunkt ja das bestmögliche Produkt mit den von mir am wichtigsten bewerteten Funktionen haben.
SAFe verbietet diesen Ansatz auch nicht, er hat aber einen negativen Effekt: Aus Sicht der Verantwortlichen der Portfolio- und Programm-Ebene ist die Anforderung nicht erfüllt - es sind ja nur X Prozent umgesetzt. Das dies die wichtigsten Dinge sind ist allen klar, es spielt aber auf dieser Ebene keine Rolle. Es entsteht der Eindruck, dass die Teams nicht gut funktionieren ("zu langsam sind"), weil die Features (die ja in ein Release passen) nicht umgesetzt werden konnten. Das führt dann in eine Spirale aus Problemlösungen, die das ursprüngliche Problem aber wahrscheinlich nicht lösen.

###### Die richtigen Dinge tun

Durch die SAFe-Definition des Begriffes "Feature" nimmt man den Teams also ein wichtiges Mittel der agilen Softwareentwicklung.
Mein Versuch das Dilemma zu lösen besteht darin, die Features sehr sehr klein zu schneiden - es sind dann eigentlich schon User Stories. Wenn man das tut, passt ein Feature natürlich problemlos in ein Release. Nebeneffekt ist auch, dass die Programm-Ebene mit ihren zahlreichen Rollen und Prozessen eigentlich nicht mehr benötigt wird. 

Dann kann man natürlich die Frage stellen, ob dieses Vorgehen noch SAFe ist...