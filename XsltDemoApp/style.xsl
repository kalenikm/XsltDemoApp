<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <HTML>
      <head>
        <title>Books</title>
      </head>
      <body>
        <h1>Books</h1>
        <table border="3">
          <xsl:apply-templates/>
        </table>
      </body>
    </HTML>
  </xsl:template>

  <xsl:template match="book">

    <tbody>
      <tr style="width: 100%;">
        <td>
          <img width="200">
            <xsl:attribute name="src">
              <xsl:value-of select="img_url"/>
            </xsl:attribute>
          </img>
        </td>
        <td>
          <h3>
            <xsl:value-of select="title"/> (<xsl:value-of select="substring-before(publish_date, '-')"/>)
          </h3>
          <p>
            Author: <xsl:value-of select="author"/>
          </p>
          <p>
            Genre: <xsl:value-of select="genre"/>
          </p>
          <p>
            <em>
              <xsl:value-of select="description"/>
            </em>
          </p>
          <p>
            <b>
              Price: 
            </b>
            <xsl:value-of select="price"/>
          </p>
        </td>
      </tr>
    </tbody>





    <!--<tr>
      <td>
        <xsl:value-of select="author"/>
      </td>
      <td>
        <xsl:value-of select="title"/>
      </td>
      <td>
        <xsl:value-of select="genre"/>
      </td>
      <td>
        <xsl:value-of select="price"/>
      </td>
      <td>
        <xsl:value-of select="publish_date"/>
      </td>
      <td>
        <xsl:value-of select="description"/>
      </td>
      <td>
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="img_url"/>
          </xsl:attribute>
        </img>
      </td>
    </tr>-->
  </xsl:template>
</xsl:stylesheet>