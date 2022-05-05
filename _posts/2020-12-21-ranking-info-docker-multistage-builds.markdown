---
layout: post
title: 'Ranking-Info: Docker Multistage Builds'
date: '2020-12-21 18:41:26'
featured-image: 2020-12-21_184548_ranking-info.net_.png
featured-image-alt: Der aktuelle Stand von Ranking-Info
tags:
- dtb-rangliste
- rails
- ruby
- docker
categories: tennis
---
In den Monaten seit März ist nicht wirklich viel passiert - die anhaltende Corona-Pandemie hat dafür gesorgt, dass die DTB-Ranglisten mehr schläft,  als das sie Updates erfährt. Klar, es ist im Moment auch nicht so einfach: Lockdown I, dann ein kurzer intensiver Sommer und dann ein Lockdown II auf Raten. Immer wieder kurzfristig abgesagte Turniere oder als Alternative ziemlich überfüllte Meldelisten. Das hatte ich mir in den [Osterferien anders vorgestellt](https://www.h-dawg.de/nebenprojekt-ranking-info/), als ich meine kleine Anwendung __[Ranking-Info](https://www.ranking-info.net/)__ ins Leben gerufen habe. Ich hatte angenommen, dass die regelmäßigen Updates der Rangliste kommen und die Anwendung dem Einen oder Anderen nützlich sein kann. So dümpelte sie sicherlich mehr oder weniger vor sich hin. Da das kleine Projekt für mich aber auch zum Lernen und Ausprobieren dient, hat Ranking-Info keineswegs geschlafen! Teil eins meiner kleinen Update-Serie: Docker Multistage Builds bei Ranking-Info.

## Docker Multistage Builds

Das Docker-Image für das Deployment von Ranking-Info war bisher ziemlich gewichtig: rund 1,07 GB brachte es auf die Waage. Aber warum?  Die Anwendung selber ist ja nicht gerade umfangreich und Konfiguration, Bilder und sonstige Bestandteile bringen auch nicht viele Daten dazu. Schuld an der enormen Image-Größe sind die vielen Abhängigkeiten und Build-Artefakte für die Installation der benötigten Rubygems. Zudem basiert das Ruby-Basisimage auf Debian Buster und bringt schon einige nicht benötigte Programme und Bibliotheken mit.

Die Lösung? Ranking Info nutzt Docker Multistage Builds! Der einfache Trick ist die Nutzung von zwei Images - eines zum Bauen der Software und eines für das Deployment. Informationen gibt es dazu im Internet tonnenweise. Und sicherlich auch verständlichere Informationen, als ich sie liefern könnte :-)  
Die Methode verlagert das Bauen der Rubygems inklusive der benötigten Linux-Bibliotheken in das Build-Image. In das Ziel-Image kommen dann nur noch die Binaries und die Applikation selbst. Zusätzlich basiert das Deployment Image nicht mehr auf Debian, sondern auf Alpine (ein sehr schlankes Linux extra für Container konzipiert). Das Ergebnis? 220 MB - mehr als 80% weniger als vorher.

<pre class="wp-block-code"><code>REPOSITORY                                                    TAG                 SIZE
docker.pkg.github.com/hwesselmann/ranking-info/ranking-info   1.4.4               220MB</code></pre>

Ein weiterer netter Effekt: Für viele Schritte beim Zusammenbau des Docker-Images nun der Docker-Cache genutzt werden kann. Der Build produziert also nicht nur ein kleineres Artefakt, sondern geht in vielen Fällen auch schneller!

Das Projekt findert ihr auf [Github](https://github.com/hwesselmann/ranking-info), das Dockerfile [hier](https://github.com/hwesselmann/ranking-info/blob/main/Dockerfile)!