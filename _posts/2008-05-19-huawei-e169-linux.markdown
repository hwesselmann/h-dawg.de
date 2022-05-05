---
layout: post
title: Huawei E169 & Linux
date: '2008-05-19 21:18:00'
tags:
- archlinux
- linux
- eeepc
- 3g
- e169
- huawei
- umts
- howto
---

Als ich meinen Eee PC eingerichtet habe, suchte ich nach einer Möglichkeit, einfach und kostengünstig unterwegs ins Internet gehen zu können. Klar, mit dem Handy per USB-Kabel war das kein Problem, aber auch nicht wirklich schön &#8211; es hängt halt immer ein Telefon am Kabel und zerstört den kompakten Charakter des Eee.

Ich habe mich für ein Huawei E169 UMTS-Modem entschieden. Das Modem ist nur wenig größer als ein gewöhnlicher USB-Stick und schmiegt sich farblich schön an meinen weißern Eee PC an. Das Modem gibt es von allen Mobilfunkbetreibern unter unterschiedlichen Namen &#8211; bei O2 heißt es z.B. &#8220;O2 SurfStick&#8221;. Auf meinem Gerät steht &#8220;eplus/base&#8221; &#8211; dort bekommt man für 25 Euro eine echte UMTS-Flatrate, die zum Jahresende auch HSDPA kann (laut Eplus).

Nun zur Handhabung mit Linux. Grundsätzlich funktionieren die Geräte von Huawei sehr gut mit Linux, sofern man einen relativ aktuellen Kernel hat (2.6.20 oder höher sollte reichen). Ich nutze Archlinux &#8211; Archlinux-User benutzen keinen alten Kram, also muss man sich dabei keine Sorgen machen...

Nun zum Wort &#8220;grundsätzlich&#8221; im vorigen Satz: Auch das E169 arbeitet tadellos mit Linux zusammen, es gibt lediglich einen kleinen Stolperstein. Das E169 ist ein sogenanntes &#8220;Composite-Gerät&#8221; &#8211; es ist nicht nur Modem, sondern auch USB-Speicher (für die Windows-Treiber) und SD-Kartengerät. Steckt ihr den Stick in Euren Rechner, bevor Ihr ihn hochfahrt, könnt Ihr das Huawei E169 problemlos mit Software zum Herstellen einer PPP-Verbindung nutzen &#8211; etwa _wvdial_ oder _kinternet_.
Blöd wird es nur, wenn Ihr das Modem erst nach dem Start Eures Rechners einsteckt &#8211; das Gerät öffnet sich dann im USB-Storage-Mode. Damit kommt man leider nicht ins UMTS-Netz&#8230;

Die Lösung ist aber sehr, sehr einfach:
Ihr müsst lediglich __libusb__ installiert haben &#8211; wenn ihr USB-Geräte nicht aus religiösen Gründen ablehnt (warum habt Ihr Euch dann ein USB-UMTS-Modem gekauft?!?), ist die Bibliothek wahrscheinlich schon auf Eurem Rechner. Zusätzlich benötigt Ihr das kleine Tool [__usb_modeswitch__](http://www.draisberghof.de/usb_modeswitch/), ein Utility für die einfache Manipulation von USB-Composite-Modi.
Da nur _root_ solche Kommandos absetzen darf, müsst ihr es als _root_-user aufrufen. Nur noch ein Schritt zum Glück: Ihr müsst für das Werkzeug eine Konfiguration erzeugen und in /etc ablegen. Für das E169 sieht die Datei _usb_modeswitch.conf_ so aus:

<pre class="brush: bash; title: ; notranslate" title="">
##############################
# Huawei E169
DefaultVendor= 0x12d1
DefaultProduct= 0x1001

DetachStorageOnly= 0
HuaweiMode= 1
</pre>

Diese Daten könnt ihr mit einem USB-Sniffer bestimmen und so sicher auch andere Huawei-Geräte zur Kooperation bewegen!

Nun müsst Ihr nur noch usb_modeswitch als root ausführen, damit das Modem in den richtigen Modus versetzt wird:

<code>/Pfad/zu/usb_modeswitch/usb_modeswitch</code>

Nun könnt Ihr eine Wählverbindung mit dem Tool Eurer Wahl einrichten (z.B. über _wvdial_)!

Meine wvdial.conf:

<pre class="brush: bash; title: ; notranslate" title="">
[Dialer Defaults]
Init1 = ATZ
Init2 = ATQ0 V1 E1 S0=0 &amp;C1 &amp;D2 +FCLASS=0
Init3 = AT+CGDCONT=1, &#8220;IP&#8221;, &#8220;internet.eplus.de&#8221;, &#8220;0.0.0.0&#8243;
Modem Type = Analog Modem
Baud = 460800
New PPPD = yes
Modem = /dev/ttyUSB0
ISDN = 0
Phone = *99***1#
Password = eplus
Username = eplus
Auto DNS = 1
Stupid Mode = 1
</pre>

Viel Spaß beim Lossurfen!