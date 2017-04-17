<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
		<xsl:template match="/">
			
			[
			<xsl:for-each select="aplikace">
				{
				"nazev":"<xsl:value-of select="nazev"/>",
				}</xsl:for-each>			
			
			<xsl:for-each select="aplikace/osoba/osobni_info">
			<xsl:sort select="prijmeni"/>
				{
				"jmeno":"<xsl:value-of select="jmeno"/>",
				"prijmeni":"<xsl:value-of select="prijmeni"/>",
				"titulek_profilu":"<xsl:value-of select="titulek_profilu"/>",
				"den_nar":"<xsl:value-of select="den_nar"/>",
				"zeme_pusobeni":"<xsl:value-of select="zeme_pusobeni"/>",
				"PSC":"<xsl:value-of select="PSC"/>",
				"prumysl":"<xsl:value-of select="prumysl"/>",
				}<xsl:if test="position() != last()">,</xsl:if>
			</xsl:for-each>
			
			<xsl:for-each select="aplikace/osoba/vzdelani">
			<xsl:sort select="nazev_skoly"/>            
                {
                "škola":"<xsl:value-of select="nazev_skoly"/>",
                "fakulta":"<xsl:value-of select="fakulta"/>",
                "obor":"<xsl:value-of select="obor"/>",
                "program":"<xsl:value-of select="program"/>",
                "rocnik":"<xsl:value-of select="rocnik"/>",
                "typ studia":"<xsl:value-of select="typ_studia"/>",
                "kód oboru":"<xsl:value-of select="kod_oboru"/>",                
                }<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>

            ]

		</xsl:template> 
</xsl:stylesheet>		