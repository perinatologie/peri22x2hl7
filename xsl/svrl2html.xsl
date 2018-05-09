<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron"
    xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" version="2.0" exclude-result-prefixes="#all">

    <xsl:output method="xhtml" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="svrl:schematron-output/@title"/>
                </title>
                <script type="text/javascript" language="javascript"> 
                    <xsl:text disable-output-escaping="no">
                function tableRows() {
                    if (document.getElementsByTagName) {
                        var tables = document.getElementsByTagName('table');
                        for (var i = 0; i &lt; tables.length; i++) {
                            if (tables[i].className == "highlight") {
                                var trs = tables[i].getElementsByTagName('tr');
                                for (var j = 1; j &lt; trs.length; j += 2) {
                                    trs[j].className = 'alternate';
                                }
                            }
                        }
                    }
                }</xsl:text></script>
                <style type="text/css"><xsl:copy-of select="unparsed-text('../XML/css/nictiz.css')"/></style>
            </head>
            <body onload="tableRows();">
                <h1>
                    <xsl:value-of select="svrl:schematron-output/@title"/>
                </h1>
                <h1>
                    <xsl:value-of select="//svrl:active-pattern[1]/@document"/>
                </h1>
                <p/>
                <xsl:choose>
                    <xsl:when test="count(//svrl:failed-assert)=0 and count(//svrl:successful-report)=0">
                        <h3>
                            <xsl:text>Geen fouten, geen waarschuwingen</xsl:text>
                        </h3>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates/>
                    </xsl:otherwise>
                </xsl:choose>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="svrl:active-pattern">
        <h2>
            <xsl:value-of select="@name"/>
        </h2>
    </xsl:template>
    <xsl:template match="svrl:failed-assert | svrl:successful-report">
        <table>
            <tr>
                <th colspan="2" class="alert">
                    <xsl:if test="@see">
                        <xsl:variable name="messageColor">
                            <xsl:choose>
                                <xsl:when test="not(@role) or @role='error'">
                                    <xsl:text>red</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>yellow</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <a href="{@see}" style="font-weight:bold; color:black; background-color:{$messageColor}; margin-right: 5px; padding: 2px 4px 2px 4px; -moz-user-select: none; -khtml-user-select: none;-moz-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">?</a>
                        <xsl:text>&#160;</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="svrl:text"/>
                </th>
            </tr>
            <tr>
                <td class="value-label">
                    <xsl:text>Pad</xsl:text>
                </td>
                <td>
                    <xsl:variable name="l0" select="@location"/>
                    <xsl:variable name="l1" select="replace($l0,'\*:([^\[]+)\[namespace-uri..=.http://schemas.xmlsoap.org/soap/envelope/.\]','SOAP:$1')"/>
                    <xsl:variable name="l2" select="replace($l1,'\*:([^\[]+)\[namespace-uri..=.urn:hl7-org:v3.\]','$1')"/>
                    <!--<xsl:value-of
                        select="replace(replace(replace(replace(@location,'\[namespace-uri\(\)=',''),string('urn:hl7-org:v3'),''),'\*:',''),'''''\]','')"
                    />-->
                    <xsl:value-of select="$l2"/>
                </td>
            </tr>
            <tr>
                <td class="value-label">
                    <xsl:text>Test</xsl:text>
                    <xsl:if test="@role">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="@role"/>
                        <xsl:text>)</xsl:text>
                    </xsl:if>
                </td>
                <td>
                    <xsl:value-of select="@test"/>
                </td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
