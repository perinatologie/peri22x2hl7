# peri22x2hl7
Conversie van peri22x format naar ADA, wat weer naar HL7 geconverteerd wordt met de Nictiz converters.

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
Voer preprocess-perihub.xsl uit op een peri22x bestand. In de standaard directory layout zal:
```
Transform -t -s:.\peri22x -xsl:.\xsl\preprocess-perihub.xsl -o:.\peri22xpre\
```
alles converteren naar het preprocessed formaat (voor .NET, zie Java commando voor andere omgevingen). 
## peri22x naar ADA
Dito preprocessed naar ADA:
```
Transform -t -s:.\peri22xpre\ -xsl:.\xsl\perihub2ada.xsl -o:.\ada\
```
## ADA naar HL7
Voor de conversie van ADA naar HL7 wordt de conversie software van Nictiz gebruikt. Deze is te vinden op:
https://github.com/Nictiz/Geboortezorg
De huidige te gebruiken versie is Publicaties/20180320. Zowel de hl7 als de peri tak zijn nodig. Binnen de peri tak is alleen de 2_2 branch nodig.
Gebruik:
```
Transform -t -s:.\ada\ -xsl:..\Geboortezorg\Publicaties\20180320\peri\2_2\kernset_aanleverbericht\wrapper\kernset_aanleverbericht_wrapper.xsl -o:.\hl7\
```
om te converteren, pas indien nodig het pad aan naar de lokale locatie van de xsl.
## HL7 naar HTML
Voer hl72html.xsl uit op een HL7 bestand. In de standaard directory layout zal:
```
Transform -t -s:.\hl7 -xsl:.\xsl\hl72html.xsl -o:.\html\
```
alles converteren naar het HTML (voor .NET, zie Java commando voor andere omgevingen). 
## Validatie
Validatie gebruikt de SVRL versie van de schematrons die Nictiz publiceert op http://decor.nictiz.nl/perinatologie/. 
Voor deze conversie is de versie van 20-3-2018 gebruikt. Download de XML en extraheer. Deze bevat de nodige materialen.
Maak een validatiereport (in XML) met (pas indien nodig de locatie van de XSL aan): 
```
Transform -t -s:.\hl7\ -xsl:..\XML\schematron_svrl\peri20-albprn-ks-22_svrl.xsl -o:.\report\
```
Om de XML reports om te zetten naar HTML, gebruik:
```
Transform -t -s:.\report\voorbeeld-kernset-1.xml -xsl:..\XML\schematron_svrl\svrl2html.xsl -o:.\report\voorbeeld-kernset-1.html
```
Het is met Saxon niet mogelijk wildcards te gebruiken in de output, dus moet per file een input en output filename opgegeven worden.
