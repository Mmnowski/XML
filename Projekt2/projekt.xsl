<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:key name="kierunek-by-id" match="kierunek" use="@id" />

<xsl:template match="/uczelnia">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
<html>
<head>
<style>
body {background-color: powderblue;
}
h1 {text-align:center;}
p    {color: red;}
div.element {border-style: solid;
    width: 300px;
    margin-top: 10px;
    margin-bottom: 10px;
    margin-right: 50px;
    margin-left: 50px;
padding: 10px 10px 10px 10px;
background-color: lightgray;
}
img {
float:left;
}
</style>
</head>
<body>
<h1>Studenci</h1>
        <xsl:for-each select="osoby/student">
<div class="element">
            <xsl:copy>
<img src="{obrazek}" width="50" height="50"/>
      <b><xsl:copy-of select="imie"/><br/>
	 <xsl:copy-of select="nazwisko"/><br/></b>
      Miejscowosc: <xsl:value-of select="danekontaktowe/adres/miejscowosc"/><br/>
      Ulica: <xsl:value-of select="danekontaktowe/adres/ulica"/><br/>
      Nr-domu: <xsl:value-of select="danekontaktowe/adres/nrdomu"/><br/>
      Kod-pocztowy: <xsl:value-of select="danekontaktowe/adres/kod"/><br/>
      Kierunki: <xsl:for-each select="kierunek"><br/>
                        	<xsl:value-of select="key('kierunek-by-id', @id)"/>
				<xsl:value-of select="nazwa"/><br/>
 		</xsl:for-each>

            </xsl:copy>
</div>
<br/>
        </xsl:for-each>
</body>
</html>
</xsl:template>

</xsl:stylesheet>