<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html> 
            <head>
                <title>hello</title>
            </head>
            <body>
                <h1>L dddiste des etudiants </h1>
                <xsl:for-each select="/biblio/etudiant">
                    <ul>
                        <li>code : <xsl:value-of select="@code"></xsl:value-of></li>
                        <li>Nom : <xsl:value-of select="@nom"></xsl:value-of></li>
                        <li>Age : <xsl:value-of select="@age"></xsl:value-of></li>
                    </ul>
              
                
                <table width="100%" border="1">
                    <thead>
                        <tr>
                          
                                <th>Id</th>
                                <th>Titre</th>
                                <th>Date</th>
                                <th>Rendu</th>
                        </tr>
                      
                    </thead>
                    <tbody>
                        <xsl:for-each select="livre">
                          <tr>
                              <td><xsl:value-of select="@id"></xsl:value-of></td>
                              <td><xsl:value-of select="@titre"></xsl:value-of></td>
                              <td><xsl:value-of select="@dateEmprunt"></xsl:value-of></td>
                              <td><xsl:value-of select="@rendu"></xsl:value-of></td>
                          </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
