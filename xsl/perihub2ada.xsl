<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    Author: Marc de Graauw 2018
    
    This will convert perihub XML with @conceptId to ADA 
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="dataset" select="doc('RetrieveTransaction_kernset_22.xml')"/>
    <xsl:variable name="doc" select="resource"/>

    <!-- We'll pass a param $items to every template which processes concepts.
        $items should contain the subtree(s) of input perihub doc which contain the values to be used.
        This way we can collect data from several perihub sections to populate repeating concepts. 
    -->
    <xsl:template match="/">
        <xsl:for-each select="$dataset/dataset">
            <xsl:element name="kernset_aanleverbericht">
                <xsl:for-each select="concept">
                    <xsl:call-template name="concept">
                        <xsl:with-param name="items" select="$doc"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- Concept switch -->
    <xsl:template name="concept">
        <xsl:param name="items"/>
        <xsl:variable name="concept" select="."/>
        <xsl:if test="@type = 'group'">
            <xsl:choose>
                <xsl:when test="@shortName = 'obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap'">
                    <xsl:for-each select="$items//section[@type = 'anamnese']">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:when test="@shortName = 'prenatale_controle'">
                    <xsl:for-each select="($items//section[@type = 'consult'], $items//section[@type = 'intake'])">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:when test="@shortName = 'diagnose'">
                    <xsl:for-each select="($items//section[@type = 'diagnose'])">
                        <!-- Alleen diagnose aanmaken als er andere waarden dan datum en duur zwangerschap ingevuld zijn -->
                        <xsl:if test=".//value[not(@concept='peri22-dataelement-82272') and not(@concept='peri22-dataelement-82285') and not(@value='')]">
                            <xsl:call-template name="conceptGroup">
                                <xsl:with-param name="items" select="."/>
                                <xsl:with-param name="concept" select="$concept"/>
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:when>
                <xsl:when test="@shortName = 'bevalling'">
                    <xsl:for-each select="$items//section[@type = 'baring']">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:when test="@shortName = 'vorige_uitkomst_per_kind'">
                    <xsl:for-each select="$items//values[@repeat]">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:if test="not($items//values[@repeat])">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:if>
                </xsl:when>
                <xsl:when test="@shortName = 'pijnbestrijding'">
                    <xsl:for-each select="$items//group">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:if test="not($items//group)">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:if>
                </xsl:when>
                <xsl:when test="@shortName = 'vaginale_kunstverlossing_groep'">
                    <xsl:for-each select="$items//group">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:if test="not($items//group)">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:if>
                </xsl:when>
                <xsl:when test="@shortName = 'uitkomst_per_kind'">
                    <xsl:for-each select="$items//section[(@type = 'kind' or @type = 'baring')]//values[@repeat]">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- peri22x baring heeft gegevens van PWD bevalling en PWD uitkomst_per_kind,
                        dus altijd de non-repeating gegevens oppakken -->
                    <xsl:for-each select="$items//section[(@type = 'kind' or @type = 'baring')]//values[not(@repeat)]">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:when test="@shortName = 'kindspecifieke_gegevens'">
                    <xsl:for-each select="$items//section[@type = 'kraambed']//values[@repeat]">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="."/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="$items//section[@type = 'kraambed']//values[not(@repeat)]">
                        <xsl:call-template name="conceptGroup">
                            <xsl:with-param name="items" select="$items"/>
                            <xsl:with-param name="concept" select="$concept"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <!-- Dit is een gegeven uit 'baring' en dus potentieel per kind in peri22xx. In PWD is dit een gegeven per zwangerschap, en dus niet per kind.
                    Uitgangspunt: als direct na interventie de indicatie komt, horen die bij elkaar.
                -->
                <xsl:when test="@shortName = 'interventies_begin_baring_groep'">
                    <xsl:variable name="conceptInterventie" select=".//concept[@shortName = 'interventie_begin_baring']"/>
                    <xsl:variable name="conceptIndicatie" select=".//concept[@shortName = 'indicatie_interventie_begin_baring']"/>
                    <xsl:for-each select="$items//value[@concept = 'peri22-dataelement-20560']">
                        <interventies_begin_baring_groep conceptId="2.16.840.1.113883.2.4.3.11.60.90.77.2.5.20555">
                            <xsl:call-template name="conceptItem">
                                <xsl:with-param name="items" select="."/>
                                <xsl:with-param name="concept" select="$conceptInterventie"/>
                            </xsl:call-template>
                            <xsl:if test="./following-sibling::value[@concept = 'peri22-dataelement-20570']">
                                <xsl:call-template name="conceptItem">
                                    <xsl:with-param name="items" select="./following-sibling::*"/>
                                    <xsl:with-param name="concept" select="$conceptIndicatie"/>
                                </xsl:call-template>
                            </xsl:if>
                        </interventies_begin_baring_groep>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="conceptGroup">
                        <xsl:with-param name="items" select="$items"/>
                        <xsl:with-param name="concept" select="$concept"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="@type = 'item'">
            <xsl:call-template name="conceptItem">
                <xsl:with-param name="concept" select="."/>
                <xsl:with-param name="items" select="$items"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <!-- Group concepten. -->
    <xsl:template name="conceptGroup">
        <xsl:param name="items"/>
        <xsl:param name="concept"/>
        <xsl:variable name="iddisplays" select="$concept/descendant-or-self::*/@iddisplay"/>
        <xsl:variable name="childCount" select="count($items//value[@concept = $iddisplays]/@value)"/>
        <xsl:if test="$childCount != 0 or $concept/@minimumMultiplicity = '1'">
            <xsl:element name="{$concept/@shortName}">
                <xsl:attribute name="conceptId" select="$concept/@id"/>
                <xsl:if test="$concept/@shortName='zwangerschap'">
                    <xsl:if test="$items//value[@concept='peri22-dataelement-20280']">
                        <dossiernummer value="{$items//value[@concept='peri22-dataelement-20280']/@value}"/>
                    </xsl:if>
                </xsl:if> 
                <xsl:if test="@repeat">
                    <rangnummer_kind value="{@repeat}"/>
                </xsl:if> 
                <xsl:for-each select="$concept/concept">
                    <xsl:call-template name="concept">
                        <xsl:with-param name="items" select="$items"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:element>
        </xsl:if>
    </xsl:template>

    <!-- Item templates, eerst specialisaties, dan de generieke. -->
    <!-- Zwangerschapsduur zit ook in echo in perihub, alleen opnemen vanuit prenatale controle -->
    <xsl:template name="conceptZwangerschapsduur">
        <xsl:param name="items"/>
        <xsl:if test="$items//section[@type = 'consult']">
            <xsl:variable name="concept" select="."/>
            <xsl:call-template name="conceptItem">
                <xsl:with-param name="concept" select="$concept"/>
                <xsl:with-param name="items" select="$items//section[@type = 'consult']//value[@concept = 'peri22-dataelement-80738']"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="conceptItem">
        <xsl:param name="concept"/>
        <xsl:param name="items"/>
        <xsl:param name="values" select="$items/descendant-or-self::value[@concept = $concept/@iddisplay]"/>
        <xsl:variable name="datatype" select="$concept/valueDomain/@type"/>
        <!-- nullfFlavor voor 1..1 R concepten -->
        <xsl:if test="count($values) = 0 and $concept/@minimumMultiplicity = '1' and $concept/@conformance = 'R'">
            <xsl:element name="{$concept/@shortName}">
                <xsl:attribute name="nullFlavor" select="'UNK'"/>
                <xsl:attribute name="conceptId" select="$concept/@id"/>
            </xsl:element>
        </xsl:if>
        <!-- nullFlavor voor anamnese als vraag? ja is maar geen element met code wordt meegegeven -->
        <xsl:choose>
            <!-- Als autoimmuun_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82220'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80905'][@value='true']">
                    <autoimmuun_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als cardiovasculaire_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80906'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82216'][@value='true']">
                    <cardiovasculaire_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als urogenitale_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82267'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80907'][@value='true']">
                    <urogenitale_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als oncologische_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82221'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80908'][@value='true']">
                    <oncologische_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als schildklier_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80909'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82217'][@value='true']">
                    <schildklier_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als neurologische_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80912'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82218'][@value='true']">
                    <neurologische_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als infectieziekteq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82210'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80913'][@value='true']">
                    <infectieziekte code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als mdl_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82219'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80914'][@value='true']">
                    <mdl_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als anemieq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82222'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80915'][@value='true']">
                    <anemie code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als longaandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.82266'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80916'][@value='true']">
                    <longaandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als gynaecologische_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80917'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82211'][@value='true']">
                    <gynaecologische_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als orthopedische_afwijkingq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80918'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82213'][@value='true']">
                    <orthopedische_afwijking code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als operatieq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80818'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80939'][@value='true']">
                    <type_operatie code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als stollingsprobleemq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80817'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-80940'][@value='true']">
                    <type_stollingsprobleem code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als overige_aandoeningq  = 'true' en geen concept, dan NI genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.80919'">
                <xsl:if test="count($values) = 0 and $items/descendant-or-self::value[@concept='peri22-dataelement-82212'][@value='true']">
                    <overige_aandoening code="NI" codeSystem="2.16.840.1.113883.5.1008" conceptId="{$concept/@id}"/>
                </xsl:if>
            </xsl:when>
            <!-- Als geen perinatale_sterfteq = 'true' maar wel fase_perinatale_sterfte en niet of Datum/tijd vaststelling perinatale sterfte dan q genereren -->
            <xsl:when test="$concept/@id='2.16.840.1.113883.2.4.3.11.60.90.77.2.5.40280'">
                <xsl:if test="not($items/descendant-or-self::value[@concept='peri22-dataelement-40280']) and ($items/descendant-or-self::value[@concept='peri22-dataelement-40290'] or $items/descendant-or-self::value[@concept='peri22-dataelement-40300'])">
                    <perinatale_sterfteq value="true" conceptId="2.16.840.1.113883.2.4.3.11.60.90.77.2.5.40280"/>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
        
        <xsl:for-each select="$values">
            <xsl:variable name="inValue" select="@value/string()"/>
            <xsl:variable name="outCode">
                <xsl:if test="$datatype = 'code'">
                    <xsl:choose>
                        <xsl:when test="string-length($inValue) = 0 and valueSet//exception[@code = 'NI'][@codeSystem = '2.16.840.1.113883.5.1008']"
                            >NI</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$inValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:variable>
            <xsl:variable name="outValue">
                <xsl:if test="$datatype != 'code'">
                    <xsl:choose>
                        <xsl:when test="count($inValue) > 1">
                            <xsl:value-of select="concat('MORETHANONE', string-join($inValue, ' '))"/>
                        </xsl:when>
                        <!-- Datetime compleet maken wanneer alleen datum gegeven wordt -->
                        <xsl:when test="$datatype = 'datetime' and string-length($inValue) = 10">
                            <xsl:value-of select="concat($inValue, 'T00:00:00')"/>
                        </xsl:when>
                        <!-- Datetime compleet maken als wel langer dan 10 -->
                        <xsl:when test="$datatype = 'datetime' and string-length($inValue) > 10">
                            <xsl:variable name="tempTime" select="concat(substring($inValue, 1, 10), 'T', substring($inValue, 12, string-length($inValue)))"/>
                            <xsl:choose>
                                <xsl:when test="string-length($tempTime) = 16">
                                    <xsl:value-of select="concat($tempTime, ':00')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$tempTime"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <!-- Normaliseer hoofdlettergebruik van booleans, sta ook 1/0 en  ja/nee toe -->
                        <xsl:when test="$datatype = 'boolean' and (lower-case($inValue) = 'ja' or lower-case($inValue) = 'true' or $inValue = '1')">true</xsl:when>
                        <xsl:when test="$datatype = 'boolean' and (lower-case($inValue) = 'nee' or lower-case($inValue) = 'false' or $inValue = '0')">false</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$inValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:variable>
            <xsl:if test="string-length($outValue) > 0">
                <xsl:element name="{$concept/@shortName}">
                    <xsl:attribute name="value" select="$outValue"/>
                    <xsl:attribute name="conceptId" select="$concept/@id"/>
                    <xsl:copy-of select="$concept/valueDomain/property/@unit"/>
                </xsl:element>
            </xsl:if>
            <xsl:if test="string-length($outCode) > 0">
                <xsl:element name="{$concept/@shortName}">
                    <xsl:attribute name="code" select="$outCode"/>
                    <xsl:attribute name="codeSystem" select="$concept/valueSet//*[@code = $outCode]/@codeSystem"/>
                    <xsl:attribute name="displayName" select="$concept/valueSet//*[@code = $outCode]/@displayName"/>
                    <xsl:attribute name="conceptId" select="$concept/@id"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="@* | node()"/>

</xsl:stylesheet>
