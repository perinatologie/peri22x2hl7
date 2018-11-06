<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    Author: Marc de Graauw 2018
    
    This will convert any XML with @conceptId to ADA on best effort basis
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="resource|sections">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="section">
        <xsl:variable name="repeats" select="distinct-values(.//@repeat/string())"/>
        <xsl:variable name="section" select="."/>
        <!-- Kopieer de section -->
        <section>
            <xsl:copy-of select="$section/@*"/>
            <!-- Eerst de values die niet herhalend zijn -->
            <xsl:if test="$section//value[not(@repeat)]">
                <values>
                    <xsl:copy-of select="$section//value[not(@repeat)]"/>
                </values>
            </xsl:if>
            <!-- Dan de values die wel herhalend zijn, met een repeat nummer op values element -->
            <xsl:for-each select="$repeats">
                <xsl:variable name="this-repeat" select="."/>
                <values repeat="{$this-repeat}">
                    <xsl:copy-of select="$section//value[@repeat=$this-repeat]"/>
                </values>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="@* | node()"/>

</xsl:stylesheet>
