﻿<?xml version="1.0"?>
<!---->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
      <html>
          <head>
              <meta charset="utf-8" />
              <title>Garage!</title>
              <!--Styles-->
              <style>
                  div.header{
                  width: 100%;
                  border-style: solid;
                  text-align:center;
                  }
                  div.garageName {
                  width: 100%;
                  border-style: solid;
                  text-align: center;
                  }
                  div.container {
                  width: 100%;
                  height: 800px;
                  }
                  div.content {
                  width: 99%;
                  height: 50%;
                  margin: auto;
                  }
                  div.adres {
                  width: 33%;
                  border-style: solid;
                  float:left;
                  height: 100%;
                  margin: auto;
                  }
                  div.contactgegevens {
                  width: 33%;
                  border-style: solid;
                  float: left;
                  height: 100%;
                  margin: auto;
                  }
                  div.afbeelding {
                  width: 33%;
                  border-style: solid;
                  float: left;
                  height: 100%;
                  margin: auto;
                  }
                  div.faciliteiten {
                  width: 34%;
                  border-style: solid;
                  float: left;
                  height: 100%;
                  margin: auto;
                  }
                  div.openingstijden {
                  width: 33%;
                  border-style: solid;
                  float: left;
                  height: 100%;
                  margin: auto;
                  }
                  div.winkel {
                  width: 32%;

                  float: left;
                  height: 50%;
                  margin: auto;
                  }
                  div.werkplaats {
                  width: 32%;

                  float: left;
                  height: 50%;
                  margin: auto;
                  }
                  div.showroomdiv {
                  width: 32%;

                  float: left;
                  height: 50%;
                  margin: auto;
                  }
                  div.showroom {
                  width: 32%;
                  border-style: solid;
                  float: left;
                  height: 100%;
                  margin: auto;
                  }
                  div.pomp {
                  width: 32%;
                  float: left;
                  height: 50%;
                  margin: auto;
                  }

                  div.was {
                  width: 32%;
                  float: left;
                  height: 50%;
                  margin: auto;
                  }
                  div.footer {
                  width: 100%;
                  border-style: solid;
                  text-align: center;
                  }
                  li{
                  list-style: none;
                  }
                  h3{
                  text-align:center;
                  }
                  h2 {
                  text-align: center;
                  }
                  img.garageFoto{
                  width: 49%;
                  float:left;
                  }
                  img.keurmerkFoto {
                  width: 49%;
                  float: left;
                  }
                  img.medewerker1 {
                  width: 33%;
                  float: left;
                  }
                  img.medewerker2 {
                  width: 33%;
                  float: left;
                  }
                  img.medewerker3 {
                  width: 33%;
                  float: left;
                  }
                  div.nieuw {
                  width: 33%;
                  float: left;
                  }
                  div.occasionshow {
                  width: 33%;
                  float: left;
                  }
                  div.huur {
                  width: 33%;
                  float: left;
                  }
                  table.contactTabel{
                  width:90%;
                  text-align:center;
                  }
              </style>
          </head>
          <body>
              <div class="container">

                  <div class="header">
                      <h1>Welkom Bij Garage $Garage</h1>
                      <h2>Totale hoeveelheid garages: <xsl:value-of select="count(garages/garage)"/></h2>
                  </div>


                  <div class="garageName">
                      <h2>GarageNaam Hier</h2>
                  </div>

                  <div class="content">

                      <div class="adres">
                          <h2>Adres</h2>
                          <ul>
                              <li class="straat">Berendslaan</li>
                              <li class="nummer">89</li>
                              <li class="postcode">7826 UP</li>
                              <li class="plaats">Emmen</li>
                              <li class="provincie">Drenthe</li>
                          </ul>
                      </div>

                      <div class="contactgegevens">
                          <h2>Contact</h2>

                          <table class="contactTabel">
                              <tr class="tel">
                                  <td>Tel.</td>
                                  <td class="tel">0591-827735</td>
                              </tr>
                              <tr class="email">
                                  <td>Mail</td>
                                  <td class="email">info@garageschuurman.nl</td>
                              </tr>
                              <tr class="site">
                                  <td>site</td>
                                  <td class="site">http://www.garageschuurman.nl</td>
                              </tr>
                              <tr class="omschrijving">
                                  <td>Omschrijving</td>
                                  <td class="omschrijving">Edwin Schuurman beheert sinds 1974 garage Het Schuurtje.</td>
                              </tr>
                              <tr class="route">
                                  <td>Route</td>
                                  <td class="route">https://www.google.nl/maps/dir/''/garage+Het+Schuurtje/</td>
                              </tr>
                          </table>

                      </div>

                      <div class="afbeelding">
                          <h2>Afbeeldingen</h2>
                          <img class="garageFoto" src="bestandslocatieFotoGarage" alt="alt" />
                          <img class="keurmerkFoto" src="bestandslocatieFotoKeurmerk" alt="alt" />

                          <div class="medewerkers">
                              <img class="medewerker1" src="bestandslocatiemedewerker1" alt="alt" />
                              <img class="medewerker2" src="bestandslocatiemedewerker2" alt="alt" />
                              <img class="medewerker3" src="bestandslocatiemedewerker3" alt="alt" />
                          </div>

                      </div>

                      <div class="faciliteiten">
                          <h2>Faciliteiten</h2>

                          <div class="pomp">
                              <h3>Pomp</h3>
                              <img class="pomp" src="pomp" alt="alt" />
                              <ul class="brandstof">
                                  <li>type</li>
                                  <li>type</li>
                                  <li>type</li>
                              </ul>
                          </div>

                          <div class="was">
                              <h3>Was</h3>
                              <img class="was" src="was" alt="alt" />
                              <ul class="wasbox">
                                  <li>aantal</li>
                              </ul>
                              <ul class="wasstraat">
                                  <li>aantal</li>
                              </ul>
                          </div>

                          <div class="winkel">
                              <h3>Winkel</h3>
                              <img class="winkel" src="winkel" alt="alt" />
                              <ul class="assortiment">
                                  <li>item</li>
                                  <li>item</li>
                                  <li>item</li>
                                  <li>item</li>
                                  <li>item</li>
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
                                  <tr class="maandag">
                                      <td>Maandag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="dinsdag">
                                      <td>Dinsdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="woensdag">
                                      <td>Woensdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="donderdag">
                                      <td>Donderdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="vrijdag">
                                      <td>Vrijdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zaterdag">
                                      <td>Zaterdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zondag">
                                      <td>Zondag</td>
                                      <td class="tijd"></td>
                                  </tr>
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
                                  <tr class="maandag">
                                      <td>Maandag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="dinsdag">
                                      <td>Dinsdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="woensdag">
                                      <td>Woensdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="donderdag">
                                      <td>Donderdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="vrijdag">
                                      <td>Vrijdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zaterdag">
                                      <td>Zaterdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zondag">
                                      <td>Zondag</td>
                                      <td class="tijd"></td>
                                  </tr>
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
                                  <tr class="maandag">
                                      <td>Maandag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="dinsdag">
                                      <td>Dinsdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="woensdag">
                                      <td>Woensdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="donderdag">
                                      <td>Donderdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="vrijdag">
                                      <td>Vrijdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zaterdag">
                                      <td>Zaterdag</td>
                                      <td class="tijd"></td>
                                  </tr>
                                  <tr class="zondag">
                                      <td>Zondag</td>
                                      <td class="tijd"></td>
                                  </tr>
                              </table>

                          </div>

                      </div>

                      <div class="showroom">
                          <h2>Showroom</h2>

                          <div class="nieuw">
                              <img class="nieuw" src="nieuw" alt="alt" />
                          </div>

                          <div class="occasionshow">
                              <img class="occasion" src="nieuw" alt="alt" />
                          </div>

                          <div class="huur">
                              <img class="huur" src="nieuw" alt="alt" />
                          </div>

                      </div>

                      <div class="footer">
                          <h3>Footer</h3>
                      </div>



                  </div>

              </div>

          </body>
      </html>

  </xsl:template>

</xsl:stylesheet>