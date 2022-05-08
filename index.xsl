<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
	<meta charset="utf-8"/>
	<title>Práctica 3</title>
	<link rel="stylesheet" href="styles.css"/>
	<link rel="stylesheet" href="styles.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Pushster&amp;family=Roboto:ital@1&amp;display=swap" rel="stylesheet"/>
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/elemenz-initials" type="text/css"/>
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/romanesque-serif" type="text/css"/>


</head>
<body>
	<h1>Facciones</h1>
	<main>
		<h2>Facciones Total War Uno</h2>
		<table id="TotalWar1">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Líder</th>
					<th>Raza</th>
					<th>Facciones Menores</th>
					<th>Heráldica</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="facciones/faccion">
					<xsl:sort select="raza" data-type="text" order="descending"/>
					<xsl:if test="juego/text()='Total war 1'">
						<tr>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
							<td>
								<xsl:value-of select="raza"/>
							</td>
							<td>
								<xsl:value-of select="lider"/>
							</td>
							<td>
								<ul>
									<xsl:for-each select="faccionmenor/nombre">
										<li>
											<xsl:value-of select="."/>
										</li>
									</xsl:for-each>
								</ul>
							</td>
							<td>
								<img>
									<xsl:attribute name="src">
		        						<xsl:value-of select="imagen/text()"/>
		    						</xsl:attribute>
	    						</img>
							</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</tbody>
		</table>
		<h2>Facciones Total War Dos</h2>
		<table id="TotalWar2">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Líder</th>
					<th>Raza</th>
					<th>Facciones Menores</th>
					<th>Heráldica</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="facciones/faccion">
					<xsl:sort select="raza" data-type="text" order="descending"/>
					<xsl:if test="juego/text()='Total war 2'">
						<tr>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
							<td>
								<xsl:value-of select="raza"/>
							</td>
							<td>
								<xsl:value-of select="lider"/>
							</td>
							<td>
								<ul>
									<xsl:for-each select="faccionmenor/nombre">
										<li>
											<xsl:value-of select="."/>
										</li>
									</xsl:for-each>
								</ul>
							</td>
							<td>
								<img>
									<xsl:attribute name="src">
		        						<xsl:value-of select="imagen/text()"/>
		    						</xsl:attribute>
	    						</img>
							</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</tbody>
		</table>
		<table id="TotalWar3">
			<h2>Facciones Total War Tres</h2>
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Líder</th>
					<th>Raza</th>
					<th>Facciones Menores</th>
					<th>Heráldica</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="facciones/faccion">
					<xsl:sort select="raza" data-type="text" order="descending"/>
					<xsl:if test="juego/text()='Total war 3'">
						<tr>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
							<td>
								<xsl:value-of select="raza"/>
							</td>
							<td>
								<xsl:value-of select="lider"/>
							</td>
							<td>
								<ul>
									<xsl:for-each select="faccionmenor/nombre">
										<li>
											<xsl:value-of select="."/>
										</li>
									</xsl:for-each>
								</ul>
							</td>
							<td>
								<img>
									<xsl:attribute name="src">
		        						<xsl:value-of select="imagen/text()"/>
		    						</xsl:attribute>
	    						</img>
							</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</tbody>
		</table>
	</main>
</body>
</html>

</xsl:template>
</xsl:stylesheet> 