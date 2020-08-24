<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet exclude-result-prefixes="ditaarch opentopic e dita-ot opentopic-func" version="2.0" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="GSA_pdf" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--cover-->
  <xsl:template name="createFrontCoverContents">
    <fo:block xsl:use-attribute-sets="__frontmatter__title">
      <xsl:choose>
        <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
          <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]" />
        </xsl:when>
        <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
          <xsl:apply-templates select="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]" />
        </xsl:when>
        <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
          <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="/descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]" />
        </xsl:otherwise>
      </xsl:choose>
    </fo:block>
    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]" />
    <fo:block xsl:use-attribute-sets="__frontmatter__owner">
      <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]" />
    </fo:block>
    <fo:block xsl:use-attribute-sets="image__block">
      <xsl:call-template name="e:cover-image" />
    </fo:block>
  </xsl:template>
  <xsl:template name="e:cover-image">
    <xsl:for-each select="($map//*[contains(@class, ' topic/data ')][@name = 'cover-image']/*[contains(@class, ' topic/image ')])[1]">
      <xsl:apply-templates mode="placeImage" select=".">
        <xsl:with-param name="imageAlign" select="@align" />
        <xsl:with-param name="href" select="if (@scope = 'external' or opentopic-func:isAbsolute(@href)) then @href else concat($input.dir.url, @href)" />
        <xsl:with-param name="height" select="@height" />
        <xsl:with-param name="width" select="@width" />
      </xsl:apply-templates>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
