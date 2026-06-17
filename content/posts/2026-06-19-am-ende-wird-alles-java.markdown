---
title: "Am Ende wird alle Java"
date: '2026-06-19 16:47:00'
tags:
- projekte
- rankinginfo
- kotlin
- java
- spring-boot
- ui-refresh
- tennis
- dtb-rangliste
categories: 
- tennis
- kotlin
- java
---
Bei meinem Arbeitgeber ist seit einiger Zeit  die Transformation rund um die Nutzung von künstlicher Intelligenz im Fokus - wir sind da sicherlich keine Ausnahme, sondern eher die Regel.
Wir haben uns dort ein Setup überlegt, welches ganz gut funktionieren könnte. Als guter Arbeitnehmer wollte ich das natürlich gerne in einem Hobbyprojekt ausprobieren. Welches? Natürlich [RankingInfo](https://ranking-info.de)!

Dabei musste ich aber feststellen, dass Kotlin zwar kompakt ist und auch durchaus Spaß macht, aber im Vergleich zu neuen Java-Versionen gar keine großen Vorteile bietet - zumindest nicht in meinen täglichen Anwendungsfällen. Und noch eine Feststellung: Im tiefsten Inneren meines Wesens bin ich ein Java-Entwickler...

Also habe ich doch noch ein bisschen mehr Zeit investiert und die Kotlin-Applikation in eine reine Java/Spring-Boot-Applikation umgeschrieben - auch das ging erstaunlich schnell. Mit dieser Version habe ich dann auch das erste Release erstellt und in das Live-System übertragen - die ruby/rails-Version ist damit erstmal im Lokschuppen auf Standy.

Und damit fing der Spaß erst richtig an: Wo kann ich noch optimieren? Was geht anders besser? Wo kann ich neue Java-Features nutzen? 
Natürlich und offensichtlich: Neue Sprachkonstrukte nutzen und den Datenzugriff beschleunigen - die Applikation führt ja rein lesende Zugriffe aus - den Import im Hintergrund 4-mal im Jahr einmal ausgenommen. Das hat schon einmal deutlich attraktivere Ladezeiten erzeugt als in der Ursprungsversion - aber auch in der rails-Orginalvariante.

Mit dem für meine Zwecke vollkommen ausreicherenden _Free Tier_ von [New Relic](https://newrelic.com) konnte ich aber ein viel größeres Potenzial sehen: Thymeleaf ist wirklich - vor allem bei der Anzeige der Ranglisten - sehr teuer. Ich habe die aktuellen Alternativen im Java/Spring-Ökosystem angeschaut (es gibt gar nicht so viele, wie man annehmen würde) und mich für [jte](https://jte.gg) entschieden. Die Unterschiede in der Handhabung sind nicht so groß - jte ist sogar um Einiges schneller zu lernen - die Zugewinne an Antwortzeit und die Bearbeitung in der IDE dafür aber gewaltig - die Antwortzeiten gingen massiv nach unten, vor allem bei den großen Seiten mit viel Inhalt.

Und noch mehr: Bei der Thymeleaf-Ablösung immer wieder auf dieselbe UI zu starren sorgt irgendwann für schlechte Gefühle: Das sieht seit Jahren gleich aus - und ist leider damals wie heute nicht besonders modern. Dank AI-Tools wurde mein Logo auf Papier schnell zu einer deutlich cooleren Version in SVG und die Idee für einen Styleguide schnell zu einer nutzbaren Vorlage. Hier ist also nun die aufgefrischte UI auf ranking-info.de und ranking-info.net:

![ranking-info listenansicht](/img/2026-06-14-ranking-info-de.png)

![ranking-info hilfe](/img/2026-06-14-ranking-info-hilfe.png)

Schaut gerne mal wieder vorbei, wenn ihr eh im Internet seid!