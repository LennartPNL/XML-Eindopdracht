﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:math="http://exslt.org/math"
                extension-element-prefixes="math">


    <xsl:template match="/">
        <html>
            <head>
                <title>Garage!</title>
                <!--Styles-->
                <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
            </head>
            <body>
                <div class="container">
                    <div class="header">
                        <h1>Welkom Bij de Garage specialist</h1>
                        <h2>Totale hoeveelheid garages: <xsl:value-of select="count(garages/garage)"/></h2>
                    </div>
                    <!-- Ga door alle garages heen-->
                    <xsl:for-each select="garages/garage">
                        <div class="garageName">
                            <h2><xsl:value-of select="@naam"/></h2>
                        </div>
                        <div class="content">
                            <div class="adres">
                                <h2>Adres</h2>
                                <ul>
                                    <li class="straat"><xsl:value-of select="adres/straat"/></li>
                                    <li class="nummer"><xsl:value-of select="adres/nummer"/></li>
                                    <li class="postcode"><xsl:value-of select="adres/postcode"/></li>
                                    <li class="plaats"><xsl:value-of select="adres/plaats"/></li>
                                    <li class="provincie"><xsl:value-of select="adres/provincie"/></li>
                                </ul>
                            </div>
                            <div class="contactgegevens">
                                <h2>Contact</h2>
                                <table class="contactTabel">
                                    <tr class="tel">
                                        <td>Tel.</td>
                                        <td class="tel"><xsl:value-of select="contactGegevens/telefoonnummer"/></td>
                                    </tr>
                                    <tr class="email">
                                        <td>Mail</td>
                                        <td class="email"><xsl:value-of select="contactGegevens/email"/></td>
                                    </tr>
                                    <tr class="site">
                                        <td>site</td>
                                        <td class="site"><xsl:value-of select="contactGegevens/website"/></td>
                                    </tr>
                                    <tr class="omschrijving">
                                        <td>Omschrijving</td>
                                        <td class="omschrijving"><xsl:value-of select="contactGegevens/omschrijving"/></td>
                                    </tr>
                                    <tr class="route">
                                        <td>Route</td>
                                        <td class="route"><xsl:value-of select="contactGegevens/routebeschrijving"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="afbeelding">
                                <h2>Keurmerken</h2>
                                <xsl:for-each select="keurmerken/keurmerk">
                                    <xsl:value-of select='@type'/>
                                </xsl:for-each>
                                <h2>Medewerkers</h2>
                                <div class="medewerkers">
                                    <xsl:for-each select="medewerkers/medewerker">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="concat('../',foto/bestandsLocatie, 'gezicht', (floor(math:random()*29) mod 10), '.jpg')"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="alt">
                                                    <xsl:value-of select="foto/alt"/>
                                                </xsl:attribute>
                                            </img>
                                        <p><xsl:value-of select='naam'/></p>
                                    </xsl:for-each>
                                </div>
                            </div>
                            <div class="faciliteiten">
                                <h2>Faciliteiten</h2>
                                <div class="pomp">
                                    <h3>Pomp</h3>
                                    <ul class="brandstof">
                                        <xsl:for-each select="faciliteiten/pompen/pomp">
                                            <li><xsl:value-of select='@brandstofType'/></li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                                <div class="was">
                                    <h3>Was</h3>
                                    <ul class="wasbox">
                                        <xsl:for-each select="faciliteiten/wassen/wasbox">
                                            <li>aantal wasboxen=<xsl:value-of select='@aantal'/></li>
                                        </xsl:for-each>
                                    </ul>
                                    <ul class="wasstraat">
                                        <xsl:for-each select="faciliteiten/wassen/wasstraat">
                                            <li>aantal wasstraten=<xsl:value-of select='@aantal'/></li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                                <div class="winkel">
                                    <h3>Winkel</h3>
                                    <ul class="assortiment">
                                        <xsl:for-each select="faciliteiten/winkel/assortiment">
                                            <li><xsl:value-of select='levensmiddelen'/></li>
                                            <li><xsl:value-of select='rookwaar'/></li>
                                            <li><xsl:value-of select='tijdschriften'/></li>
                                            <li><xsl:value-of select='autoAccesoires'/></li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                            <div class="openingstijden">
                                <h2>Openingstijden</h2>
                                <!--winkel-->
                                <div class="winkel">
                                    <h3>Winkel</h3>
                                    <table class="winkel">
                                        <tr>
                                            <th class="dag">
                                                Dag
                                            </th>

                                            <th class="tijd">
                                                Tijd
                                            </th>
                                        </tr>
                                        <xsl:for-each select="faciliteiten/winkel/openingstijden">
                                            <tr class="maandag">
                                                <td>Maandag</td>
                                                <td class="tijd"><xsl:value-of select='maandag/@open'/> - <xsl:value-of select='maandag/@sluiting'/></td>
                                            </tr>
                                            <tr class="dinsdag">
                                                <td>Dinsdag</td>
                                                <td class="tijd"><xsl:value-of select='dinsdag/@open'/> - <xsl:value-of select='dinsdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="woensdag">
                                                <td>Woensdag</td>
                                                <td class="tijd"><xsl:value-of select='woensdag/@open'/> - <xsl:value-of select='woensdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="donderdag">
                                                <td>Donderdag</td>
                                                <td class="tijd"><xsl:value-of select='donderdag/@open'/> - <xsl:value-of select='donderdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="vrijdag">
                                                <td>Vrijdag</td>
                                                <td class="tijd"><xsl:value-of select='vrijdag/@open'/> - <xsl:value-of select='vrijdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zaterdag">
                                                <td>Zaterdag</td>
                                                <td class="tijd"><xsl:value-of select='zaterdag/@open'/> - <xsl:value-of select='zaterdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zondag">
                                                <td>Zondag</td>
                                                <td class="tijd"><xsl:value-of select='zondag/@open'/> - <xsl:value-of select='zondag/@sluiting'/></td>
                                            </tr>
                                        </xsl:for-each>
                                    </table>
                                </div>
                                <!--werkplaats-->
                                <div class="werkplaats">
                                    <h3>Werkplaats</h3>
                                    <table class="werkplaats">
                                        <tr>
                                            <th class="dag">
                                                Dag
                                            </th>
                                            <th class="tijd">
                                                Tijd
                                            </th>
                                        </tr>
                                        <xsl:for-each select="werkplaats/openingstijden">
                                            <tr class="maandag">
                                                <td>Maandag</td>
                                                <td class="tijd"><xsl:value-of select='maandag/@open'/> - <xsl:value-of select='maandag/@sluiting'/></td>
                                            </tr>
                                            <tr class="dinsdag">
                                                <td>Dinsdag</td>
                                                <td class="tijd"><xsl:value-of select='dinsdag/@open'/> - <xsl:value-of select='dinsdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="woensdag">
                                                <td>Woensdag</td>
                                                <td class="tijd"><xsl:value-of select='woensdag/@open'/> - <xsl:value-of select='woensdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="donderdag">
                                                <td>Donderdag</td>
                                                <td class="tijd"><xsl:value-of select='donderdag/@open'/> - <xsl:value-of select='donderdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="vrijdag">
                                                <td>Vrijdag</td>
                                                <td class="tijd"><xsl:value-of select='vrijdag/@open'/> - <xsl:value-of select='vrijdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zaterdag">
                                                <td>Zaterdag</td>
                                                <td class="tijd"><xsl:value-of select='zaterdag/@open'/> - <xsl:value-of select='zaterdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zondag">
                                                <td>Zondag</td>
                                                <td class="tijd"><xsl:value-of select='zondag/@open'/> - <xsl:value-of select='zondag/@sluiting'/></td>
                                            </tr>
                                        </xsl:for-each>
                                    </table>
                                </div>
                                <!--showroom-->
                                <div class="showroomdiv">
                                    <h3>Showroom</h3>
                                    <table class="showroom">
                                        <tr>
                                            <th class="dag">
                                                Dag
                                            </th>
                                            <th class="tijd">
                                                Tijd
                                            </th>
                                        </tr>
                                        <xsl:for-each select="showroom/openingstijden">
                                            <tr class="maandag">
                                                <td>Maandag</td>
                                                <td class="tijd"><xsl:value-of select='maandag/@open'/> - <xsl:value-of select='maandag/@sluiting'/></td>
                                            </tr>
                                            <tr class="dinsdag">
                                                <td>Dinsdag</td>
                                                <td class="tijd"><xsl:value-of select='dinsdag/@open'/> - <xsl:value-of select='dinsdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="woensdag">
                                                <td>Woensdag</td>
                                                <td class="tijd"><xsl:value-of select='woensdag/@open'/> - <xsl:value-of select='woensdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="donderdag">
                                                <td>Donderdag</td>
                                                <td class="tijd"><xsl:value-of select='donderdag/@open'/> - <xsl:value-of select='donderdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="vrijdag">
                                                <td>Vrijdag</td>
                                                <td class="tijd"><xsl:value-of select='vrijdag/@open'/> - <xsl:value-of select='vrijdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zaterdag">
                                                <td>Zaterdag</td>
                                                <td class="tijd"><xsl:value-of select='zaterdag/@open'/> - <xsl:value-of select='zaterdag/@sluiting'/></td>
                                            </tr>
                                            <tr class="zondag">
                                                <td>Zondag</td>
                                                <td class="tijd"><xsl:value-of select='zondag/@open'/> - <xsl:value-of select='zondag/@sluiting'/></td>
                                            </tr>
                                        </xsl:for-each>
                                    </table>
                                </div>
                            </div>
                            <div class="showroom">
                                <h2>Showroom</h2>
                                <xsl:for-each select="showroom/autos/nieuw">
                                    <div class="nieuw">
                                        <xsl:for-each select="fotos">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="concat('../',foto/bestandsLocatie, 'auto', (floor(math:random()*29) mod 10), '.jpg')"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="alt">
                                                    <xsl:value-of select="foto/alt"/>
                                                </xsl:attribute>
                                            </img>
                                        </xsl:for-each>
                                        <li><xsl:value-of select='kenteken'/></li>
                                        <li><xsl:value-of select='type'/></li>
                                        <li><xsl:value-of select='merk'/></li>
                                        <li><xsl:value-of select='bouwjaar'/></li>
                                        <li><xsl:value-of select='brandstof'/></li>
                                        <li><xsl:value-of select='datumEindAPK'/></li>
                                        <li>&#8364;<xsl:value-of select='prijs'/></li>
                                    </div>
                                </xsl:for-each>
                                <xsl:for-each select="showroom/autos/occasions">
                                    <div class="occasionshow">
                                        <xsl:for-each select="fotos">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="concat('../',foto/bestandsLocatie, 'auto', (floor(math:random()*29) mod 10), '.jpg')"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="alt">
                                                    <xsl:value-of select="foto/alt"/>
                                                </xsl:attribute>
                                            </img>
                                        </xsl:for-each>
                                        <li><xsl:value-of select='kenteken'/></li>
                                        <li><xsl:value-of select='type'/></li>
                                        <li><xsl:value-of select='merk'/></li>
                                        <li><xsl:value-of select='bouwjaar'/></li>
                                        <li><xsl:value-of select='brandstof'/></li>
                                        <li><xsl:value-of select='datumEindAPK'/></li>
                                        <li>&#8364;<xsl:value-of select='prijs'/></li>
                                    </div>
                                </xsl:for-each>
                                <xsl:for-each select="showroom/autos/huur">
                                    <div class="huur">
                                        <xsl:for-each select="fotos">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="concat('../',foto/bestandsLocatie, 'auto', (floor(math:random()*29) mod 10), '.jpg')"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="alt">
                                                    <xsl:value-of select="foto/alt"/>
                                                </xsl:attribute>
                                            </img>
                                        </xsl:for-each>
                                        <li><xsl:value-of select='kenteken'/></li>
                                        <li><xsl:value-of select='type'/></li>
                                        <li><xsl:value-of select='merk'/></li>
                                        <li><xsl:value-of select='bouwjaar'/></li>
                                        <li><xsl:value-of select='brandstof'/></li>
                                        <li><xsl:value-of select='datumEindAPK'/></li>
                                        <li>&#8364;<xsl:value-of select='prijs'/></li>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>