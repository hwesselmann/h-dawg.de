---
layout: post
title: Thunar startet sehr, sehr langsam
date: '2021-01-01 18:26:00'
featured-image: thunar-startet-langsam.png
featured-image-alt: Mein Desktop mit Thunar
tags:
- archlinux
- linux
- xfce
- thunar
categories: linux
---
<p>Seit ein vielen Jahren ist XFCE meine Standard-Desktop-Umgebung und ich nutze Thunar als Dateimanager. Alles lief gut, bis einen Tages, ohne Update und ohne dass ich mich erinnern könnte, etwas am System kaputt gemacht zu haben, startete Thunar plötzlich sehr, sehr langsam. Sehr langsam bedeutet dabei: Vom Drücken der Tastatur bist zum Erscheinen des Anwendungsfensters vergehen mindestens 30 Sekunden. Währenddessen rotiert die Festplatte ziemlich wild. Auch seltsam: Die Verzögerung tritt nur beim ersten Start auf.</p>
<p>Ich habe ziemlich viel im Internet gesucht und einige Beschreibungen gefunden, die sehr ähnlich klangen. Leider half alles nichts. Auch wenn ich das Problem so weiter eingrenzen konnte - es betraf nur meinen Benutzer, als root oder neu eingerichteter Nutzer startete Thunar immer schnell. Das kürzlich eingetroffenen XFCE 4.16 brachte auch keine Besserung. Ich hatte schon resigniert, als ich zufällig meinen Desktop-Papierkorb öffnete. Dann passierte lange Zeit gar nichts. Nach laaaaaangem Warten musste ich feststellen, dass einige Programme die ich regelmäßig nutze (u.a. Shotwell, Rhythmbox) Objekte nicht löschen, sondern in den globalen Papierkorb legen. Mittlerweile hatten sich dort fröhliche 220 GB angesammelt :-|<br><br>Nachdem ich den Papierkorb geleert habe (auch das hat sehr lange gedauert) hat sich mein Thunar wieder so flott wie immer gemeldet - auch beim ersten Start nach dem Boot! Wenn ihr mal ein ähnliches Problem habt, hilft dieser Tipp vielleicht ;-)</p>
<p>Und natürlich: Ein frohes neues Jahr!</p>