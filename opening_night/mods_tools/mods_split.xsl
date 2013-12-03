<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/modsCollection">
    <xsl:for-each select="mods">
        <xsl:result-document method="xml" href="operas{position()}.xml">
            <mods xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">
                <xsl:copy-of select="." />
            </mods>
        </xsl:result-document>
    </xsl:for-each>
</xsl:template> 
</xsl:stylesheet>