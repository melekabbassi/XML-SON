<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <head>
                <title>My Slaves</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Adresse</th>
                        <th>Telephones</th>
                        <th>Emails</th>
                    </tr>
                    <xsl:for-each select="repertoire/*">
                        <tr>
                            <td>
                                <xsl:value-of select="nom" />
                            </td>
                            <td>
                                <xsl:value-of select="prenom" />
                            </td>
                            <td>
                                <xsl:value-of select="adresse" />
                            </td>
                            <td>
                                <!-- show telephone numbers and types -->
                                <xsl:for-each select="telephones/telephone">
                                    <xsl:value-of select="." />
                                    <xsl:value-of select="concat(' (', @type, ')')" />
                                    <br />
                                </xsl:for-each>
                            </td>
                            <td>
                                <!-- show email addresses and types -->
                                <xsl:for-each select="emails/email">
                                    <xsl:value-of select="." />
                                    <xsl:value-of select="concat(' (', @type, ')')" />
                                    <br />
                                </xsl:for-each>
                            </td>
                        </tr>

                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>