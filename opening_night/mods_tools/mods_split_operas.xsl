<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/modsCollection">
    <xsl:for-each select="mods">
        <xsl:result-document method="xml" href="operas{position()}.xml">
                <xsl:copy-of select="." />
        </xsl:result-document>
    </xsl:for-each>
</xsl:template> 
</xsl:stylesheet>