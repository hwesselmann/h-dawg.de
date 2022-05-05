---
layout: post
title: BEA Aqualogic User Interaction 6.5 auf Sun GlassFish v3 Prelude
date: '2009-03-09 20:14:00'
tags:
- alui
- idk
- glassfish
- java
- portal
- sun
---

Tja, was soll ich sagen, der Titel ist ja eigentlich schon lang genug.

Um ALUI 6.5 auf [GlassFish](https://glassfish.dev.java.net/) laufen zu lassen braucht es nicht viel &#8211; eine ALUI-Installation und einen funktionierenden Prelude-Server. Dann nur noch die _portal.war_ aus dem Verzeichnis _alui/ptportal/6.5/webapps_ deployen &#8211; sofern Ihr die sonstigen ALUI-Einstellungen per Configuration Manager korekt habt, könnt Ihr Euch jetzt über ein funktionierendes Portal auf einem schnellen und modernen Applicationserver freuen! Eigentlich doch gar nicht so kompliziert, oder?

Das IDK 6.0 und alles, was Ihr damit machen könnt, laufen natürlich genauso problemlos!

__Nochwas:__ GlassFish ist definitiv von BEA/Oracle __nicht unterstützt__ und wird wohl nicht auf die Liste der möglichen Serverkonfigurationen kommen. Also betreibt Ihr diese Konfiguration auf eigene Gefahr&#8230;