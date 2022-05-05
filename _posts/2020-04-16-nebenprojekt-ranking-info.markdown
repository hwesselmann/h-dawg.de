---
layout: post
title: "Nebenprojekt: ranking-info"
date: '2020-04-16 19:53:00'
featured-image: Screenshot_2020-04-16-Status-Ranking-Info-e1587061613909.png
featured-image-alt: Der aktuelle Stand von Ranking-Info
tags:
- tennis
- rails
- ruby
- dtb-rangliste
categories: tennis
---
Dank der aktuell grassierenden COVID-19-Pandemie hat jeder von uns ja mehr Zeit für Dinge, für die man nicht das Haus verlassen muss - die Arbeit macht man zu Hause, das Freizeitprogramm der Kinder ist auf Null heruntergefahren, außer Spazieren gehen, Fahrrad fahren und ab und zu mal in den Supermarkt ist ja seit fünf Wochen nicht viel los...

Höchste Zeit also, mal wieder mit etwas Altem herumzuspielen. Außer kleinen Skripten für die Arbeit habe ich schon sehr lange nichts mehr mit Ruby gemacht, Rails kenne ich dunkel noch in Version 2 - Lust mal zu schauen, was sich getan hat, hatte ich schon länger, die Zeit allerdings nicht. Bis jetzt.

Das Thema des Projektes war schnell klar, die Entwicklungsumgebung mit Visual Studio Code und rbenv schnell eingerichtet, ein wenig origineller Name gefunden: ranking-info!  
Es ist eine kleine Webanwendung, die es dem Benutzer erlaubt, einige einfache Analyseaufgaben auf der Jugendrangliste des Deutschen Tennisbundes durchzuführen. Warum? Die Liste gibt es nur als PDF und auch nur in den Ausprägungen __Alles__, __U12__, __U14__, __U16__ und __U18__. Und selbstverständlich immer nur die aktuelle Ausgabe - keine Historie, keine "Trends".  Auf mybigpoint.de kann man als zahlender Kunde immerhin noch die Daten der letzten 3 Quartale abrufen, allerdings isoliert und ohne Verbindung zu den Vorgänger- oder Folgedaten.

![Importstatus](/assets/img/Screenshot_2020-04-16-Status-Ranking-Info-e1587061613909.png)

Die Frage "Auf welchem Platz steht mein Sohn in seinem Geburtsjahrgang? Im Verband? In der Altersklasse U14?" hießen dann immer: Zählen oder raten. ranking-info erledigt genau das alles automatisch - man muss lediglich die Gesamtrangliste in ein CSV-Format umwandeln, importieren und los geht's! Wie sieht das ganze aus? So:

![Spielerprofilansicht](/assets/img/Screenshot_2020-04-16-Spielerprofil-Noah-Wesselmann-Ranking-Info-e1587061639745.png)

Neben ein paar Kleinigkeiten, die ich gerne noch einbauen würde und vielen möglichen Verbesserungen am Code könnte ich das ganze eigentlich im Netz verfügbar machen - ich muss nur noch klären wo ich die Anwendung am einfachsten deployen kann und ob ich die Daten überhaupt öffentlich verwenden darf - auch wenn die Ursprungsdaten frei verfügbar sind, ist das leider noch lange kein Indiz dafür, dass die Weiterverarbeitung erlaubt ist...

Die Arbeit mit Ruby und Rails war wie in der Vergangenheit sehr spaßig. Wenig war kompliziert, Testen war eingebaut und Activerecord macht nach wie vor mehr Spaß als die Dinge, die ich bei meiner richtigen Arbeit im Java-Umfeld verwenden darf. Die letzten Tage haben auf jeden Fall Lust auf mehr geweckt :-)