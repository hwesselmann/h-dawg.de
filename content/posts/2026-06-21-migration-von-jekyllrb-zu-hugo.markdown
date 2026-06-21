---
title: "Migration von JekyllRB zu Hugo"
date: '2026-06-21 11:25:00'
tags:
- blog
- hugo
- jekyll
- jekyllrb
- migration
- docker
- deployment
- watchtower
- static-site-generator
categories: 
- blog
- technologie
---

Es war mal wieder soweit: Der gute alte [JekyllRB](https://jekyllrb.com) hat mich jahrzehntelang treu begleitet. Aber die Zeichen der Zeit sind nicht zu übersehen - das Projekt ist seit einiger Zeit nur noch im Wartungsmodus. Das allein wäre noch nicht Dramatisch, aber der Build-Prozess war immer eine kleine Hürde. Ruby, Bundler, Gemfile, und dann diese endlose Wartezeit bis ein neuer Post endlich online ging. Jedes Mal, wenn ich schnell etwas veröffentlichen wollte, wurde ich an diese Komplexität erinnert. 

Also musste eine moderne Alternative her - und die Wahl fiel auf [Hugo](https://gohugo.io). Schlank, schnell, in Go geschrieben. Keine Abhängigkeiten, kein langes Warten. Einfach `hugo` und fertig.

Die Migration selbst war überraschend einfach. Hugo bietet ein [Jekyll-Import-Tool](https://gohugo.io/tools/migrate/jekyll/) an, das den Großteil der Arbeit übernimmt: Markdown-Dateien, Front Matter, sogar die Struktur bleibt erhalten. Nach ein paar kleinen Anpassungen an der Konfiguration und dem Theme war alles bereit.

Der Workflow hat sich kaum verändert: Ich schreibe weiterhin in Markdown, speichere die Datei im `content/posts` Verzeichnis, und Hugo erledigt den Rest. Der einzige Unterschied ist, dass ich jetzt nicht mehr minutenlang auf den Build warte.

Aber das eigentliche Highlight kommt jetzt: Deployment. Nach einem `git push` wird automatisch ein neues Docker-Image gebaut. Und hier kommt der Clou: Auf meinem Server läuft ein Fork von [Watchtower](https://watchtower.nickfedor.com/v1.18.1/), der darauf horcht, ob ein neues Image verfügbar ist. Sobald das der Fall ist, aktualisiert Watchtower das Deployment automatisch. Kein manueller Login, kein `docker pull`, kein `docker restart`. Einfach pushen und fertig.

Fazit: Die Migration war es wert. Hugo ist schnell, unkompliziert, und das Deployment ist jetzt so nahtlos, wie ich es mir immer gewünscht habe. Und das Beste? Ich kann mich auf das konzentrieren, worum es eigentlich gehen sollte - das Schreiben. Vielleicht schreibe ich dann auch wieder regelmäßger...