<?xml version="1.0" encoding="UTF-8"?>
<!-- Stylesheet die de RetrieveTransaction van kernset aanleverbericht omzet naar termplates.
    Zie add-hl7concepts.xsl voor uitvoer hiervan.
-->
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xsi" version="2.0">

    <xsl:output indent="true"/>
    <xsl:template match="/">
        <xsl:element name="xsl:stylesheet">
            <xsl:namespace name="hl7">urn:hl7-org:v3</xsl:namespace>
            <xsl:attribute name="version">3.0</xsl:attribute>
            <xsl:comment>Gegenereerd met meat-hl72html.xsl</xsl:comment>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="concept[@type='item']">
        <xsl:if test="implementation/@xpath">
        <xsl:element name="xsl:template">
            <xsl:attribute name="match">
                <xsl:value-of select="implementation/@xpath/string()"/>
            </xsl:attribute>
            <div class="concept-item">
                <div class="concept-item-name">
                    <xsl:copy-of select="name/text()"/>
                </div>
                <div class="concept-item-cell">
                    <xsl:choose>
                        <xsl:when test="ends-with(name/string(), '?')">
                            <xsl:element name="xsl:call-template">
                                <xsl:attribute name="name">getNegationInd</xsl:attribute>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="xsl:call-template">
                                <xsl:attribute name="name">getValue</xsl:attribute>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </div>
        </xsl:element>
        </xsl:if>
        <xsl:if test="not(implementation/@xpath)">
            <xsl:comment>Geen Xpath voor <xsl:value-of select="name//text()"/></xsl:comment>
        </xsl:if>
            <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="node()">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="@*"/>
</xsl:stylesheet>
