---
layout: post
title: ActiveSync für Kalender/Kontakte mit ownCloud, IMAP mit Dovecot
date: '2012-06-07 18:45:00'
tags:
- owncloud
- webos
- android
- windows-phone
- ubuntu
- z-push
- activesync
- dovecot
- google
- imap
---

Ich habe es heute geschafft &#8211; die Ent-Googleung ist einen großen Schritt weiter! Heute habe ich mein Kontakte und meinen persönlichen Kalender , sowie das erste Mailkonto auf meinen eigenen Server umgezogen. Wichtig ist mir dabei immer die Kompatibilität mit webOS. Eigentlich ist das ganze sehr einfach:

Ich habe einen Virtual Server bei einem Webhoster, der mit Ubuntu 10.04 läuft &#8211; jedes andere Linux sollte aber genau so konfigurierbar sein. Auf meinem Server laufen Postfix und Dovecot (mit diversen Werkzeugen drumherum, um Viren und Spam zu reduzieren) für die E-Mailverarbeitung, ein Apache2 mit php5 und ein selbstsigniertes Wildcard-Zertifikat für alle Dienste, die man auf diesem Weg absichern kann. <a href="http://www.owncloud.org" target="_blank">ownCloud</a> habe ich in Version 4.0.1 installiert.

Das Problem: ownCloud bietet eine akzeptable Kontakverwaltung und einen brauchbaren Kalender, spricht allerdings nur CarDAV und CalDAV nach außen. Außer iOS von Apple spricht allerdings kein anderes der relevanten Smartphone-Betriebssysteme diese Protokolle &#8211; teilweise kann eine Synchronisation über kommerzielle &#8220;Apps&#8221; erreicht werden &#8211; das finde ich allerdings eher unbefriedigend. Was ist der gemeinsame Nenner? Alle für mich relevanten Systeme können Microsofts Activesync-Protokoll sprechen, mit <a href="http://z-push.sourceforge.net/soswp/" target="_blank">Z-Push</a> exisitiert eine erprobte Open Source-Implementierung. Z-Push kann verschiedene Backend-Systemenutzen. Zum Glück hat sich nicht nur jemand die Mühe gemacht, eine Backend für die von ownCloud genutzten Protokolle zu schreiben (das kann z.B. <a href="https://github.com/xbgmsharp/sogosync" target="_blank">sogosync</a>), es exisitiert sogar eine <a href="https://github.com/gza/oczpush" target="_blank">Implementierung, die spezifisch für ownCloud</a> erstellt und weitgehend vorkonfiguriert wurde.

Die Installation und Basiskonfiguration ist sehr einfach zu bewerkstelligen &#8211; man braucht keine Serverdienste, nur einen Webserver mit php-Support!
In dieser Konfiguration ist allerdings Mail-Push (via IMAP) nicht aktiviert. Um das auf einfachen Wege zu machen, tragt Ihr zuerst in der Datei _config.php_ im Hauptordner Eure IMAP-Server-Verbindungsdaten ein:

<pre class="brush: php; title: ; notranslate" title="">
// ************************
//  BackendIMAP settings
// ************************
// Defines the server to which we want to connect
define('IMAP_SERVER', 'mail.DeinServer.de');
// connecting to default port (143)
define('IMAP_PORT', 993);
// best cross-platform compatibility (see http://php.net/imap_ope$
define('IMAP_OPTIONS', '/notls/norsh/ssl/novalidate-cert');
// overwrite the &quot;from&quot; header if it isn't set when sending emails
// options: 'username'    - the username will be set (usefull if $
//        'domain'    - the value of the &quot;domain&quot; field is used
//        '@mydomain.com' - the username is used and the given st$
define('IMAP_DEFAULTFROM', '');
// copy outgoing mail to this folder. If not set z-push will try $
define('IMAP_SENTFOLDER', 'Sent');
// forward messages inline (default false - as attachment)
define('IMAP_INLINE_FORWARD', true);
// use imap_mail() to send emails (default) - if false mail() is $
define('IMAP_USE_IMAPMAIL', false);
</pre>

Danach müsst ihr noch in der Datei _config.php_ diese Zeile einkommentieren, um Mailfunktionen zu aktivieren:
<pre class="brush: php; title: ; notranslate" title="">
//define('OC_MAIL', 'i');
</pre>

In webOS hatte ich noch ein Problem mit meinem selbstsignierten Zertifikat, aber Dank des guten Palm Supports weiß ich: Ich muss eine mit dem Zertifikat versehene Seite aufrufen. Wenn ich bei der Abfrage bestätige, dass ich dem Zertifikat vertraue, wird es permanent auf dem webOS-Gerät hinzugefügt und auch der Exchange ActiveSync meckert nicht mehr!