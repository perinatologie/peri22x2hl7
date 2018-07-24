<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" version="3.0">
    <xsl:output indent="true" method="html"/>
    <xsl:include href="add-hl7concepts.xsl"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Kernset aanleverbericht</title>
                <link rel="stylesheet" type="text/css" href="../css/ada.css"/>
            </head>
            <body class="orbeon ada">
                <h1>Kernset aanleverbericht</h1>
                <h2>Verzendgegevens</h2>
                <div class="concept-item">
                    <div class="concept-item-name">Ontvanger</div>
                    <div class="concept-item-cell">
                        <xsl:value-of select="normalize-space(string-join(//hl7:receiver//text(), ' '))"/>
                    </div>
                </div>
                <div class="concept-item">
                    <div class="concept-item-name">Zender</div>
                    <div class="concept-item-cell">
                        <xsl:value-of select="normalize-space(string-join(//hl7:sender//text(), ' '))"/>
                    </div>
                </div>
                <div class="concept-item">
                    <div class="concept-item-name">Auteur</div>
                    <div class="concept-item-cell">
                        <xsl:value-of select="normalize-space(string-join(//hl7:authorOrPerformer//text(), ' '))"/>
                    </div>
                </div>
                <h2>Bericht</h2>
                <xsl:for-each select=".//*">
                    <xsl:apply-templates/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="getValue">
        <xsl:choose>
            <xsl:when test=".//@negationInd[. = 'true']">Nee</xsl:when>
            <xsl:when test=".//@displayName">
                <xsl:value-of select=".//@displayName/string()"/>
            </xsl:when>
            <xsl:when test=".//@value">
                <xsl:value-of select=".//@value/string()"/>
            </xsl:when>
            <xsl:when test=".//@code">
                <xsl:value-of select=".//@code/string()"/>
            </xsl:when>
            <xsl:when test=".//@extension">
                <xsl:value-of select=".//@extension/string()"/>
            </xsl:when>
            <xsl:when test=".//@nullFlavor">
                <xsl:value-of select="concat(.//@nullFlavor/string(), ' ', .//hl7:originalText/text())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="text()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getNegationInd">
        <xsl:choose>
            <xsl:when test=".//@negationInd[. = 'true']">Nee</xsl:when>
            <xsl:otherwise>Ja</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="node() | @*"/>
</xsl:stylesheet>
