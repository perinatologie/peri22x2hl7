# peri22x2hl7

Conversie van peri22x format naar ADA, wat weer naar HL7 geconverteerd wordt met de Nictiz converters.

## Dependencies: packages via NPM

De conversie naar HL7 maakt gebruik van de nictiz/Geboortezorg conversie software en de schematrons gepubliceerd op http://decor.nictiz.nl/perinatologie/.

Om deze dependencies eenvoudig te installeren wordt gebruik gemaakt van `npm`. Installeer de dependencies middels onderstaande commando:

    npm install

De dependencies zijn nu geinstalleerd in de nieuwe directory `node_modules/`

## Workflow

Conversie gebeurt in een aantal stappen:

1. Preprocessing van het peri22x formaat, waarbij:
  * repeats worden opgelost
1. Conversie van het preprocessed formaat naar ADA
1. Conversie van ADA naar HL7 met de Nictiz converter
1. Validatie van het HL7 formaat met de Nictiz schematron

Directory layout (dit is alleen een voorbeeld, er kan een andere layout gekozen worden):

- peri2xx: Bestanden in input formaat
- peri2xxpre: Preprocessed uitvoer
- ada: ADA uitvoer
- hl7: HL7 uitvoer
- report:  Validatie uitvoer
In deze directories zitten voorbeelden.
- xslt: De gebruikte stylesheets

## SAXON

Conversies gebeuren met Saxon HE. Zie:
https://www.art-decor.org/mediawiki/index.php?title=Schematron-validation
voor een beschrijving.

## Preprocessing

Voer preprocess-perihub.xsl uit op een peri22x bestand. In de standaard directory layout zal onderstaande commando alles converteren naar het preprocessed formaat (voor .NET, zie Java commando voor andere omgevingen).

    Transform -t -s:.\peri22x -xsl:.\xsl\preprocess-perihub.xsl -o:.\peri22xpre\

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:peri22x/voorbeeld-kernset-1.xml -xsl:xsl/preprocess-perihub.xsl  -o:peri22xpre/voorbeeld-kernset-1.xml

## peri22x naar ADA

Dito preprocessed naar ADA:

    Transform -t -s:.\peri22xpre\ -xsl:.\xsl\perihub2ada.xsl -o:.\ada\

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:peri22xpre/voorbeeld-kernset-1.xml -xsl:xsl/perihub2ada.xsl -o:ada/voorbeeld-kernset-1.xml

## ADA naar HL7

Voor de conversie van ADA naar HL7 wordt de conversie software van Nictiz gebruikt. Deze is te vinden op: https://github.com/Nictiz/Geboortezorg

De huidige te gebruiken versie is Publicaties/20180320. Zowel de hl7 als de peri tak zijn nodig. Binnen de peri tak is alleen de 2_2 branch nodig.

Gebruik om te converteren, pas indien nodig het pad aan naar de lokale locatie van de xsl.

    Transform -t -s:.\ada\ -xsl:node_modules\@nictiz\Geboortezorg\Publicaties\20180320\peri\2_2\kernset_aanleverbericht\wrapper\kernset_aanleverbericht_wrapper.xsl -o:.\hl7\

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:ada/voorbeeld-kernset-1.xml -xsl:node_modules/\@nictiz/Geboortezorg/Publicaties/20180320/peri/2_2/kernset_aanleverbericht/wrapper/kernset_aanleverbericht_wrapper.xsl -o:hl7/voorbeeld-kernset-1.xml

## HL7 naar HTML

Voer hl72html.xsl uit op een HL7 bestand. In de standaard directory layout zal:

    Transform -t -s:.\hl7 -xsl:.\xsl\hl72html.xsl -o:.\html\

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:hl7/voorbeeld-kernset-1.xml -xsl:xsl/hl72html.xsl -o:html/voorbeeld-kernset-1.xml

alles converteren naar het HTML (voor .NET, zie Java commando voor andere omgevingen). 

## Validatie

Validatie gebruikt de SVRL versie van de schematrons die Nictiz publiceert op http://decor.nictiz.nl/perinatologie/. 
Voor deze conversie is de versie van 20-3-2018 gebruikt.


<!--
Onderstaande was nodig in verleden, maar lijkt inmiddels verholpen. Hier bewaard voor archief.

Download de XML en extraheer. Deze bevat de nodige materialen.

Let op, download naast de schematrons ook de XML publicatie. Symlink de `vocab/` map uit `peri20-xml-*` naar de map waarin ook `peri20-runtime-*` is geplaatst. Op deze manier kan de schematron
de `vocab/` includes gebruiken. Gebruik een symlink ipv het maken van een kopie.
-->

Maak een validatiereport (in XML) met (pas indien nodig de locatie van de XSL aan): 

    Transform -t -s:.\hl7\ -xsl:node_modules\@nictiz\peri20-xml\XML\schematron_svrl\peri20-albprn-ks-22_svrl.xsl -o:.\report\

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:hl7/voorbeeld-kernset-1.xml -xsl:node_modules/\@nictiz/peri20-xml/XML/schematron_svrl/peri20-albprn-ks-22_svrl.xsl -o:report/voorbeeld-kernset-1.xml

Om de XML reports om te zetten naar HTML, gebruik:

    Transform -t -s:.\report\voorbeeld-kernset-1.xml -xsl:node_modules\@nictiz\peri20-xml\XML\schematron_svrl\svrl2html.xsl -o:.\report\voorbeeld-kernset-1.html

Of vanuit Linux/Mac OS command-line:

    saxon -t -s:report/voorbeeld-kernset-1.xml -xsl:node_modules/\@nictiz\peri20-xml/XML/schematron_svrl/svrl2html.xsl -o:report/voorbeeld-kernset-1.html

Het is met Saxon niet mogelijk wildcards te gebruiken in de output, dus moet per file een input en output filename opgegeven worden.


## XProc 3 Pipeline

Het bestand `pipeline.xpl` is een [xproc 3](https://xproc.org/) pipeline die kan worden gebruikt icm [MorganaXProc-III](https://www.xml-project.com/morganaxproc-iii/)

    morgana pipeline.xpl -input:source=peri22x/minimaalDossier-geen-pijnbestrijding.xml

De output is een HTML weergave van het HL7v3 Kernset bericht.