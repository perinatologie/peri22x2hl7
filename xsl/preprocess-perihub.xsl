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
            <xsl:if test="@type='zwangerschap' and @uuid">
                <value concept='peri22x-dossiernummer' value='{@uuid}'/>
            </xsl:if>
            <!-- Eerst de values die niet herhalend zijn -->
            <xsl:if test="$section//value[not(@repeat)]">
                <values>
                    <xsl:apply-templates select="$section//value[not(@repeat)]"/>
                </values>
            </xsl:if>
            <!-- Dan de values die wel herhalend zijn, met een repeat nummer op values element -->
            <xsl:for-each select="$repeats">
                <xsl:variable name="this-repeat" select="."/>
                <values repeat="{$this-repeat}">
                    <xsl:apply-templates select="$section//value[@repeat=$this-repeat]"/>
                </values>
            </xsl:for-each>
        </section>
    </xsl:template>
    
    <xsl:template match="value">
        <xsl:choose>
            <!-- Lege velden negeren -->
            <xsl:when test="string-length(@value) = 0"/>
            <!-- Temp fix voor Onatal probleem -->
            <xsl:when test="@value='T'"/>
            <!-- Temp fix voor BMA probleem -->
            <xsl:when test="count(//@concept='peri22-dataelement-82160') > 1 and ./ancestor::section/@type='intake'"/>
            <xsl:otherwise>
                <xsl:copy-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="@* | node()"/>

</xsl:stylesheet>
