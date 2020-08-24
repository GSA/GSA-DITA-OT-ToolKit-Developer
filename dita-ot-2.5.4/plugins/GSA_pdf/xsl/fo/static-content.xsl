<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet exclude-result-prefixes="ditaarch opentopic e dita-ot opentopic-func" version="2.0" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="GSA_pdf" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="insertBodyOddHeader">
    <xsl:param as="xs:string" name="flow-name" select="'odd-body-header'" />
    <fo:static-content flow-name="{$flow-name}">
      <fo:block xsl:use-attribute-sets="__body__odd__header">
        <fo:page-number />
      </fo:block>
    </fo:static-content>
  </xsl:template>
  <xsl:template name="insertBodyEvenHeader">
    <xsl:param as="xs:string" name="flow-name" select="'even-body-header'" />
    <fo:static-content flow-name="{$flow-name}">
      <fo:block xsl:use-attribute-sets="__body__even__header" />
    </fo:static-content>
  </xsl:template>
  <xsl:template name="insertBodyOddFooter">
    <xsl:param as="xs:string" name="flow-name" select="'odd-body-footer'" />
    <fo:static-content flow-name="{$flow-name}">
      <fo:block xsl:use-attribute-sets="__body__odd__footer">
        <fo:page-number />
      </fo:block>
    </fo:static-content>
  </xsl:template>
  <xsl:template name="insertBodyEvenFooter">
    <xsl:param as="xs:string" name="flow-name" select="'even-body-footer'" />
    <fo:static-content flow-name="{$flow-name}">
      <fo:block xsl:use-attribute-sets="__body__even__footer" />
    </fo:static-content>
  </xsl:template>
</xsl:stylesheet>
