<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>STUDENCI</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="student">
  <ol>
    <xsl:apply-templates select="nazwisko"/>  
    <xsl:apply-templates select="imie"/>
    <xsl:apply-templates select="grupa"/>
  </ol>
</xsl:template>

<xsl:template match="nazwisko">
  <span style="font-weight:bold">
  <xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="imie">
  <span style="font-weight:bold">
  <xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="grupa">
  grupa: <xsl:value-of select="."/>
  <br/>
</xsl:template>

</xsl:stylesheet>
