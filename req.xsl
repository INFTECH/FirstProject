<xsl:stylesheet version="1.0" xmlns:xsl="http://w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
	<h1>Request</h1>
	<table>
		<thead>
			<th>Номер заявки</th>
			<th>Фамилия отправителя</th>
			<th>Фамилия получателя</th>
			<th>Цена</th>
		</thead>
		<tbody><xsl:apply-templates select="//application"/></tbody>
	</table>	
</body>
</html>

<xsl:template match="application">
<xsl:if test="generate-id(.)=generate-id(current(application[1]))">
	<tr><xsl:value-of select="application/@id"/></tr>
	<tr><xsl:value-of select="/sender/@surname"/></tr>
	<tr><xsl:value-of select="/recipient/surname"/></tr>
	<tr><xsl:value-of select="/rate/price"/></tr>
</xsl:if>
</xsl:template>