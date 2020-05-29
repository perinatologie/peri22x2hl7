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
        <xsl:variable name="section" select="."/>
        <!-- Kopieer de section -->
        <section>
            <xsl:copy-of select="$section/@*"/>
            <xsl:if test="@type='zwangerschap' and @uuid">
                <value concept='peri22-dataelement-20280' value='{@uuid}'/>
            </xsl:if>
            <xsl:call-template name="doRepeats">
                <xsl:with-param name="section" select="$section"/>
            </xsl:call-template>
        </section>
    </xsl:template>
    
    <xsl:template name="doRepeats">
        <xsl:param name="section"/>
        <xsl:variable name="repeats" select="distinct-values(.//@repeat/string())"/>
        <!-- Eerst de values die niet herhalend zijn -->
        <xsl:if test="$section//value[not(@repeat)]">
            <values>
                <xsl:call-template name="doGroups">
                    <xsl:with-param name="values" select="$section//value[not(@repeat)]"/>
                </xsl:call-template>
            </values>
        </xsl:if>
        <!-- Dan de values die wel herhalend zijn, met een repeat nummer op values element -->
        <xsl:for-each select="$repeats">
            <xsl:variable name="this-repeat" select="."/>
            <values repeat="{$this-repeat}">
                <xsl:call-template name="doGroups">
                    <xsl:with-param name="values" select="$section//value[@repeat=$this-repeat]"/>
                </xsl:call-template>
            </values>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="doGroups">
        <xsl:param name="values"/>
        <xsl:variable name="groups" select="distinct-values($values//@group/string())"/>
        <!-- Eerst de values die niet herhalend zijn -->
        <xsl:apply-templates select="$values[not(@group)]"/>
        <!-- Dan de values die wel herhalend zijn, met een group op values element -->
        <xsl:for-each select="$groups">
            <xsl:variable name="this-group" select="."/>
            <group group="{$this-group}">
                <xsl:apply-templates select="$values[@group=$this-group]"/>
            </group>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="value">
        <xsl:choose>
            <!-- Lege velden negeren -->
            <xsl:when test="string-length(@value) = 0"/>
            <!-- Temp fix voor Onatal probleem -->
            <xsl:when test="@value='T'"/>
            <!-- Temp fix voor BMA probleem -->
            <xsl:when test="count(//value[@concept='peri22-dataelement-82160']) > 1 and ./ancestor::section/@type='zwangerschap'"/>
            <xsl:otherwise>
                <xsl:copy-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="@* | node()"/>

</xsl:stylesheet>
