<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet exclude-result-prefixes="xs ditaarch opentopic e dita-ot opentopic-func" version="2.0" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="GSA_pdf" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="pdfFormatter" select="'fop'" />
  <xsl:param name="tocMaximumLevel" select="4" />
  <xsl:variable name="page-width">8.5in</xsl:variable>
  <xsl:variable name="page-height">14in</xsl:variable>
  <xsl:variable name="page-margin-top">20mm</xsl:variable>
  <xsl:variable name="page-margin-outside">20mm</xsl:variable>
  <xsl:variable name="page-margin-bottom">20mm</xsl:variable>
  <xsl:variable name="page-margin-inside">20mm</xsl:variable>
  <xsl:variable name="default-font-size">10pt</xsl:variable>
  <xsl:variable name="default-line-height">1.2</xsl:variable>
  <xsl:variable name="side-col-width">25pt</xsl:variable>
</xsl:stylesheet>
