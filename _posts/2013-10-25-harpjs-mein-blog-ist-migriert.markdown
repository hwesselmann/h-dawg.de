---
layout: post
title: harpjs - mein Blog ist migriert
date: '2013-10-25 21:23:00'
tags:
- harpjs
- ghost-tag
- wirres-zeug
- wordpress
---

Ich habe nach langer Zeit an meinem Blog etwas geändert. 

#### neue Optik
Das Offensichtliche: Ich habe die Optik stark zusammengedampft. Vielleicht hat mich der aktuelle Microsoft-Look inspiriert, vielleicht hatte ich nach mittlerweile 8 Jahren auch genug von Farbverläufen, Schatten und elend langen Menüs in der Sidebar.

Viele Dinge, die vorher da waren, habe ich mir gespart. Ich denke, dass heute niemand mehr lesen will, ob eine ziemlich alte Version einer Linux-Distribution auf einem hoffnungslos veralteten Laptop läuft. Auch vor irgendwelchen Links zu anderen Seiten kann ich Euch nun schützen. Ihr wisst, dass ich auf Archlinux und openSUSE stehe (Auch wenn ich seit Oktober 2012 wieder Windows auf meinem privaten Laptop nutze). Ihr habt auch mit gekriegt, dass ich webOS verehre und HP auf ewig für das hassen werde, was sie diesem System angetan haben. Kurzum - ich glaube, Ihr findet die entsprechenden Seiten selber, wenn Ihr wollt.

Ich reduziere also alles auf das Wesentliche - meine wirren Einträge!

#### neue Technik

Das nicht ganz so Offensichtliche: Ich habe die komplette Technologie ausgetauscht. Auch dafür gab es verschiedene Gründe

* Wordpress ist immer mehr zum Allzweck-System geworden, die Administrationsoberfläche ist seit 2005 massiv gewachsen. Nicht schlimm, wenn nicht die sehr regelmässigen Updates kämen
* Ich möchte nicht pauschal eine serverseitige Skriptsprache verwenden - wofür auch? PHP frisst Ressourcen und besonders dynamsch war mein Blog ja technisch nie (es gab ja noch nichtmal eine Volltextsuche)
* Warum eine Datenbank? MySQL bzw. MariaDB haben mir bisher gute Dienste geleistet. Fast alles, was man an Software auf einem Server installieren kann, nutzt MySQL als Datenspeicher. Der DB-Server hat aber auch einige an Speicher belegt. In meiner Standardkonfiguration waren es bequeme 800MB. Das hat dazu geführt, dass der ganze Server zeitweise stehen geblieben ist, weil in den Swapspace ausgelagert werden musste. Meine aktuelle Konfiguration will immer noch 350MB Speicher haben. Wenn man wie ich alleine auf einem System arbeitet, greifen zahlreiche Argumente für ein DBMS nicht, also habe ich für meine Webseiten (vorerst) auf eine Datenbank verzichtet.

Was habe ich also stattdessen genutzt? Nachdem ich einige Zeit mit der [ghost-Plattform](http://www.ghost.org) geliebäugelt habe, bin ich nun bei [harpjs](http://www.harpjs.com) angekommen. Mit dem harp Server kann ich sehr schnell Frontend-Entwicklung machen. In vielen Fällen - wie meinem Blog - reicht das auch vollkommen aus. Am Ende stehen statische Inhalte im klassischen Dreigespann _HTML_, _CSS_ und _Javascript_.

#### harpjs, statische Inhalte - haben wir 1998?

_harpjs_ hat mich gereizt - für mich neue Technik ausprobieren (jade, less, coffeescript, markdown), Infrastruktur auf- und umbauen (ich konnte mich intensiver mit nodesjs und einigen Modulen, z.B. pm2 befassen) und bei der (noch nicht ganz abgeschlossenen) Datenmigration einige Schätze heben - habe ich wirklich mein gesamtes Studium damit verbracht, Linux-Distributionen zu installieren und konfigurieren?

Statische Inhalte bieten aus meiner Sicht einige Vorteile

* keine Angst vor SQL Injection
* kurze Ladezeiten, effektives Caching
* reduzierte Serverlast

Zusätzlich kann man schon seit längerem viele Dinge, für die ich früher auf serverseitig laufende Sprachen wie Java, Ruby oder eben PHP zurückgreifen musste, mit Javascript auf dem Client machen.

Insgesamt also kein Blocker, es nicht einmal mit _harpjs_ zu probieren.

#### Schneller Prototyp, unkomplizierte Migration

Bis hierhin hat alles reibungslos funktioniert. In nicht ganz 20 Stunden (meistens in ein bis zwei Stunden-Blöcken am Abend), konnte ich die Seite erstellen und einen Großteil der alten Inhalte überführen.

Jetzt muss ich nur noch klären, was ich mit dem ganzen freien RAM und der freigewordenen CPU-Kapazität mache...