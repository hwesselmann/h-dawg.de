---
layout: post
title: alui Collaboration UI Customizing
date: '2009-03-26 16:13:00'
tags:
- alui
- collaboration
- css
---

Wir haben unser ALUI-System vor kurzem auf Version 6.5 MP1 gehoben. Dabei haben wir auch gleich das Add-On Collaboration auf die aktuellste BEA-Version 4.5 gebracht. Bei den neuen Features &#8211; die meisten davon sind ja ganz ok &#8211; hat mich eins wirklich geärgert: Die neue Übersichtsseite. BEA hat hier per <a href="http://www.dojotoolkit.org/">DoJo-Toolkit</a> einige tolle Möglichkeiten integriert &#8211; Drag&#8217;n'drop, inline-refresh und einige andere DHTML/Ajax-Spielereien. Das Ärgerliche daran? Unser angepasster Stylesheet greift nicht mehr. Das mitgelieferte Template bringt auch keine Erleichterung &#8211; die Überschriften der dargestellten Bereiche bleiben hellblau mit Farbverlauf nach weiss.

<img src="/assets/images/posts/collaboration.jpg" alt="alui_collaboration" title="alui_collaboration" width="448" height="315" class="aligncenter size-full wp-image-574" />

Wie kann man diese Farben ändern, wenn das Corporate Design nicht zufällig gerade hellblau ist?
Ich habe zuerst das Collab.war-File ein wenig angepasst (vorher Sicherungskopie machen!). Das ist nicht unbedingt notwendig, hat aber die Konfiguration des Kopfbereichs in der Collaboration-AppView wesentlich erleichtert, da es nach meiner Anpassung keine Nebeneffekte zum restlichen Portal geben kann.
Öffnet das war-file, zum Beispiel mit <a href="http://www.winrar.de/">WinRAR</a>. Klickt Euch in den Ordner _\layout\templates_ und öffnet dort die Datei __appViewLayout.jsp__.
In der Zeile 107 ändert Ihr den Eintrag</p>
<pre class="brush: xml; title: ; notranslate" title="">
&lt;div class=&quot;collab&quot;&gt;
</pre>

in 

<pre class="brush: xml; title: ; notranslate" title="">
&lt;div id=&quot;collab&quot;&gt;
</pre>

ab. Nun könnt Ihr im Stylesheet den Block _portal styles_ entsprechend ändern und habt m.E. besseren Einfluß auf die optische Gestaltung. Der geänderte Block (mit ein paar farblichen Anpassungen von mir&#8230;):

<pre class="brush: css; title: ; notranslate" title="">
/* portal styles */
#collab a					{color:#666666;}
#collab td					{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}
#collab .objectHeader 		{color: #000000; font: bold 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none; padding: 0px 0px 0px 5px;}
#collab .objectHeaderBg 	{background-color: #c72820;}
#collab .objectContentBg	{background-color: #EDEDED;}
#collab .objectText			{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}

#collab .listSortHeaderBg	{background-color: #666666;}
#collab .listSortHeader		{color: #fff; font: bold 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none; padding: 0px 3px 0px 3px;}
#collab .listText			{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}
#collab .listText A			{color: #003399; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}

#collab .formTextboxText	{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}
#collab .formBtnText		{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none; background-color: #efefef;} /* copy to clipboard */
#collab .formPulldownText	{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}
#collab .formInputBoxText	{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;}
#collab .formEditorBtnText	{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none; background-color: #efefef;} /* close button with bluish background */


#collab .banTopbarBg		{background-color: #c72820; border-top: 1pt solid #777777;border-left: 1pt solid #777777;border-right: 1pt solid #777777;} /*used for collab tabs background*/
#collab .actionbarText		{color: #000000; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;} /*used for collab tabs text*/
#collab .banHeaderBg		{background-color: #a0261d;} /* used for displaying project name banner */
#collab .banHeader			{background-color: #a0261d; color: #ffffff; font: bold 14px arial,helvetica,&quot;sans-serif&quot;; margin-top: 0px; margin-bottom: 0px;} /* used for project name title */

#collab .banText			{color: #FFFFFF; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;} /*search text */
#collab .banText A			{color: #fff; font: 10px arial,helvetica,&quot;sans-serif&quot;; text-decoration: none;} /*links within tabs and help link */
</pre>

Nun aber zu den lästigen blauen Titelbalken:
Im war-file könnt Ihr ohne Probleme die Datei __\js\collab\widget\templates\images\titlebar_bg.png__ umbenennen, löschen oder ersetzen. Im Stylesheet könnt Ihr alternativ auch eine andere Datei als Hintergrund angeben, wenn ihr die Balken mit Farbverlauf &#8211; wie beim BEA-Original &#8211; abbilden wollt oder müsst oder natürlich hier den Hintergrundverweis (wie ich) einfach weglassen.
Nun sind es nur noch ein paar Zeilen bis zum gewünschten UI. In Eurem aktuell verwendeten Stylesheet, bzw. in der cssmill-Vorlage, fügt Ihr diese Zeilen ein (ich zeige der Einfachheit halber den fertigen Stylesheet):

<pre class="brush: css; title: ; notranslate" title="">
.modulecontent  div .dojoModuleTitle {
    color: #fff;
    padding:1px 2px;
    vertical-align: center;
    font: bold 10px verdana,arial,helvetica,&quot;sans-serif&quot;;
    height:20px; 
    background-color: #c72820;}
</pre>

Fertig! Speichern, AppView neu aufrufen und Eure neue Gestaltungsfreiheit genießen :-)