<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:hl7="urn:hl7-org:v3" version="3.0">
    <xsl:output indent="yes" method="html"/>
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
                <xsl:variable name="val" select=".//@value/string()"/>
                <xsl:choose>
                    <!-- TODO: date format voor xsi:type TS -->
                    <xsl:when test="ancestor-or-self::hl7:effectiveTime or self::hl7:birthTime or @xsi:type='TS'">
                        <xsl:value-of select="concat(substring($val, 1, 4), '-', substring($val, 5, 2), '-', substring($val, 7, 2), ' ', substring($val, 9, 2), ':', substring($val, 11, 2), ':', substring($val, 13, 2))"/>
                    </xsl:when>
                    <xsl:when test="self::hl7:deceasedInd and $val='true'">Ja</xsl:when>
                    <xsl:when test="self::hl7:deceasedInd and $val='false'">Nee</xsl:when>
                    <xsl:when test="@xsi:type='BL' and $val='true'">Ja</xsl:when>
                    <xsl:when test="@xsi:type='BL' and $val='false'">Nee</xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$val"/>
                    </xsl:otherwise>
                </xsl:choose>
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
        <xsl:if test=".//@unit">
            <xsl:value-of select="concat(' ', .//@unit/string())"/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="node() | @*"/>
</xsl:stylesheet>
