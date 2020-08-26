<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              	xmlns:xs="http://www.w3.org/2001/XMLSchema"
              	xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
              	exclude-result-prefixes="xs dita-ot"
              	version="2.0">
	<!-- ===============================================================   GSA overrides to base HTML processing  =============================================================== -->
	<!-- =============================================================== Mode get-output-class  Add values to the @class value.  The GSA content uses lots of attributes to convey styling details.  The get-output-class mode generates zero or more tokens that will be added to the @class value of the  generated HTML element. =============================================================== -->
	<!-- Give us a chance to make each attribute contribute to @class -->
	<xsl:template match="*"
            		mode="get-output-class">
		<xsl:param name="default"/>
		<xsl:apply-templates select="@*"
                   			mode="#current"/>
		<xsl:next-match>
			<xsl:with-param name="default"
              				select="$default"/>
		</xsl:next-match>
	</xsl:template>
	<xsl:template mode="get-output-class"
            		match="@props | @otherprops | @audience | @xtrf | @product | @xtrc | @rev">
		<xsl:value-of select="."/>
	</xsl:template>
</xsl:stylesheet>
