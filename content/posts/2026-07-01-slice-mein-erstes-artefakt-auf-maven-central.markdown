---
title: "Slice: Mein erstes Artefakt auf Maven Central"
date: '2026-07-01 19:15:00'
tags:
- projekte
- rankinginfo
- tennis
- java
- maven-central
- open-source
- pdf
- dtb
- bibliothek
- gpg
categories:
- tennis
- java
- projekte
---

Ein kleiner Meilenstein für mich: Mein erstes eigenes Artefakt ist auf Maven Central gelandet!

Der Hintergrund: Für [RankingInfo](https://ranking-info.de) musste ich bisher immer manuell aus den offiziellen Ranglisten des Deutschen Tennis Bundes eine CSV extrahieren, bevor ich die Daten importieren konnte. Die Ranglisten selbst gibt es aber nur als PDF - also musste ich mich jedes Mal von Hand durch die Dokumente wühlen. Auf Dauer nervig und natürlich auch fehleranfällig.

Also habe ich mir die Zeit genommen und [slice](https://github.com/hwesselmann/slice) gebaut: Eine kleine Java-Library, die genau diese DTB-Ranglisten-PDFs einliest und direkt in ein Java-Modell überführt. Der manuelle CSV-Umweg entfällt damit - ein kleiner Schritt in Richtung Automatisierung.

Das Hochladen zu Maven Central war dabei deutlich unkomplizierter, als ich erwartet hatte: Account registrieren, die eigene Domain für den Namespace verifizieren, und die Artefakte mit GPG signieren - fertig. Keine Ahnung, warum ich mir das jahrelang komplizierter vorgestellt habe.

![slice auf Maven Central](/img/2026-07-01-slice-maven-central.png)

Das Artefakt findet ihr unter [`de.hdawg.tennis:slice`](https://central.sonatype.com/artifact/de.hdawg.tennis/slice) auf Maven Central, den Quellcode wie immer auf [GitHub](https://github.com/hwesselmann/slice).

Der erste "echte" Einsatz kommt schon bald: Zum Stichtag 30.06. nutzt RankingInfo slice zum ersten Mal, um die aktuelle Rangliste einzulesen. Wenn das gut läuft, ist ein weiteres Stück des Import-Prozesses automatisiert.

Vielleicht ist die Library ja auch für andere interessant, die Software rund um Tennis bauen und die Ranglistendaten des DTB brauchen - schaut gerne mal rein!
