---
layout: post
title: "Zurück zu Jekyll"
date: '2022-05-09 22:59:00'
tags:
- blog
- wordpress
- jekyll
- ruby
- docker
- wirres-zeug
categories: allgemein
---
Ehrlicherweise habe ich beinahe ein Jahr lang nichts neues gepostet. Das passiert ja schonmal. Warum wechsele ich dann schon wieder die Blogging-Engine?  

Das ist eigentlich ganz einfach: Ich habe meinen Hosting-Anbieter gewechselt und lasse meine Webseiten und Webanwendungen jetzt in Containern laufen. Um die Resourcen meines Servers zu schonen und noch ein wenig Platz für wichtigere Dinge zu haben, mache ich aus zwei Containern (Wordpress & mySQL), die ziemlich viele Prozesse starten (apache2, mysql, php uvm.) nur noch einen Container, der mit nginx ein wenig sparsamer ist, kein internes Netzwerk mehr braucht und als Bonus nur einen Bruchteil der Imagegröße der anderen Lösung hat.

Und sind wir ehrlich, bei meiner Frequenz and Postings und der niedrigen Zahl an Besuchern/Tag ist das wohl mehr als ausreichend...