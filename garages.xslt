<?xml version="1.0"?>
<!--https://naarvoren.nl/artikel/introductie_tot_xsl_t/-->
<!---->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
        <title></title>
      </head>
      <body>
        <div class="container">

          <div class="header">
            <h1>Welkom Bij De Garage $Garage</h1>
          </div>

          <div class="garageName">
            <h2>
              <xsl:value-of select="naam"/>
            </h2>
          </div>

          <div class="content">

            <div class="adres">
              <h2>Adres</h2>
              <ul>
                <xsl:for-each select="garages/garage" >
                  <li class="straat">
                    <xsl:value-of select="straat"/>
                  </li>
                  <li class="nummer">
                    <xsl:value-of select="nummer"/>
                  </li>
                  <li class="postcode">
                    <xsl:value-of select="postcode"/>
                  </li>
                  <li class="plaats">
                    <xsl:value-of select="plaats"/>
                  </li>
                  <li class="provincie">
                    <xsl:value-of select="provincie"/>
                  </li>
                </xsl:for-each>
              </ul>
            </div>

            <div class="contactgegevens">
              <h2>Contact</h2>
              <ul>
                <xsl:for-each select="garages/garage" >
                  <li class="tel">
                    <xsl:value-of select="telefoonnummer"/>
                  </li>
                  <li class="email">
                    <xsl:value-of select="email"/>
                  </li>
                  <li class="site">
                    <xsl:value-of select="website"/>
                  </li>
                  <li class="omschrijving">
                    <xsl:value-of select="omschrijving"/>
                  </li>
                  <li class="route">
                    <xsl:value-of select="routebeschrijving"/>
                  </li>
                </xsl:for-each>
              </ul>
            </div>

            <div class="afbeelding">
              <h2>Afbeeldingen</h2>
              <xsl:for-each select="garages/garage" >
                <img class="garageFoto" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
                <img class="keurmerkFoto" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
              </xsl:for-each>

              <div class="medewerkers">
                <xsl:for-each select="garages/medewerker" >
                  <img class="medewerker1" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
                  <img class="medewerker2" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
                  <img class="medewerker3" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
                </xsl:for-each>
              </div>

            </div>

            <div class="faciliteiten">
              <h2>Faciliteiten</h2>

              <div class="pomp">
                <img class="pomp" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
                <ul class="brandstof">
                  <xsl:for-each select="garages/pomp" >
                    <li>
                      <xsl:value-of select="@brandstofType"/>
                    </li>
                    <li>
                      <xsl:value-of select="@brandstofType"/>
                    </li>
                    <li>
                      <xsl:value-of select="@brandstofType"/>
                    </li>
                  </xsl:for-each>
                </ul>
              </div>

              <div class="was">
                <img class="was" src="was" alt="alt" />
                <ul class="wasbox">
                  <li>
                    <xsl:value-of select="@aantal"/>
                  </li>
                </ul>
                <ul class="wasstraat">
                  <li>
                    <xsl:value-of select="@aantal"/>
                  </li>
                </ul>
              </div>

              <div class="winkel">
                <img class="winkel" src="winkel" alt="alt" />
                <ul class="assortiment">
                  <li>
                    <xsl:value-of select="levensmiddelen"/>
                  </li>
                  <li>
                    <xsl:value-of select="rookwaar"/>
                  </li>
                  <li>
                    <xsl:value-of select="tijdschriften"/>
                  </li>
                  <li>
                    <xsl:value-of select="autoAccesoires"/>
                  </li>
                </ul>
              </div>

            </div>

            <div class="openingstijden">
              <h2>Openingstijden</h2>

              <!--winkel-->
              <div class="winkel">

                <table class="winkel">
                  <tr>
                    <th class="dag">
                      Dag
                    </th>
                    <th class="tijd">
                      Tijd
                    </th>
                  </tr>
                  <tr class="maandag">
                    <td>Maandag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="dinsdag">
                    <td>Dinsdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="woensdag">
                    <td>Woensdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="donderdag">
                    <td>Donderdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="vrijdag">
                    <td>Vrijdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zaterdag">
                    <td>Zaterdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zondag">
                    <td>Zondag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                </table>
              </div>
              <!--werkplaats-->
              <div class="werkplaats">

                <table class="werkplaats">
                  <tr>
                    <th class="dag">
                      Dag
                    </th>
                    <th class="tijd">
                      Tijd
                    </th>
                  </tr>
                  <tr class="maandag">
                    <td>Maandag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="dinsdag">
                    <td>Dinsdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="woensdag">
                    <td>Woensdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="donderdag">
                    <td>Donderdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="vrijdag">
                    <td>Vrijdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zaterdag">
                    <td>Zaterdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zondag">
                    <td>Zondag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                </table>

              </div>
              <!--showroom-->
              <div class="showroom">

                <table class="showroom">
                  <tr>
                    <th class="dag">
                      Dag
                    </th>
                    <th class="tijd">
                      Tijd
                    </th>
                  </tr>
                  <tr class="maandag">
                    <td>Maandag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="dinsdag">
                    <td>Dinsdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="woensdag">
                    <td>Woensdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="donderdag">
                    <td>Donderdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="vrijdag">
                    <td>Vrijdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zaterdag">
                    <td>Zaterdag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                  <tr class="zondag">
                    <td>Zondag</td>
                    <td class="tijd">
                      <xsl:value-of select="@open"/>
                      <xsl:value-of select="@sluiting"/>
                    </td>
                  </tr>
                </table>

              </div>

            </div>

            <div class="showroom">
              <h2>Showroom</h2>

              <div class="nieuw">
                <img class="nieuw" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>"/>
              </div>

              <div class="occasiom">
                <img class="occasion" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
              </div>

              <div class="huur">
                <img class="huur" src=""></img><xsl:value-of select='bestandsLocatie'/>" alt="<xsl:value-of select='alt'/>" />
              </div>

            </div>


          </div>

        </div>

      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>