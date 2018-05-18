﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:math="http://exslt.org/math"
                extension-element-prefixes="math">
    <!--test-->


    <xsl:template match="/">

        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Garage Bootstrap Template</title>
                <meta name="description" content=""/>

                <meta name="author" content="Web Domus Italia"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" type="text/css" href="frontend2/source/bootstrap-3.3.6-dist/css/bootstrap.css"/>
                <link rel="stylesheet" type="text/css" href="frontend2/source/font-awesome-4.5.0/css/font-awesome.css"/>
                <link rel="stylesheet" type="text/css" href="frontend2/style/slider.css"/>
                <link rel="stylesheet" type="text/css" href="frontend2/style/mystyle.css"/>
            </head>

            <body>


                <!-- Header -->
                <div class="allcontain"/>
                <center><h1>Aantal garages: <xsl:value-of select="count(garages/garage)"/></h1></center>
                <xsl:for-each select="garages/garage">
                    <div class="header">
                        <ul class="socialicon">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                        <ul class="givusacall">
                            <h1><xsl:value-of select="@naam"/></h1>
                        </ul>
                    </div>

                    <div class="container">

                        <!-- ____________________Keurmerken ______________________________-->
                        <div class="feturedsection">
                            <h1 class="text-center"><span class="bdots"></span>K E U R<span class="carstxt">M E R K E N</span></h1>
                        </div>

                        <!--Voor elke auto: PATTERN VAN MAKEN VOOR IEDER TYPE Keurmerk-->
                        <div class="feturedimage">
                            <div class="row firstrow">
                                <div class="col-lg-6 costumcol colborder2">
                                    <div class="row costumrow">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                                            <img src="frontend2/image/RDW.png" alt="RDW"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                                            <div class="featurecontant">
                                                <h1>RDW</h1><br/>
                                                <p>RDW Gecertificeerd</p>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <br/>
                            <br/>

                            <!--Openingstijden-->


                            <div class="row">
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/garage.jpg" alt="garage" width="50%"/>
                                        <h3>Openingstijden Werkplaats</h3>
                                    </center>
                                    <div class="table-responsive">
                                        <table class='table'>
                                            <xsl:for-each select="werkplaats">
                                                <xsl:apply-templates select="openingstijden"/>
                                            </xsl:for-each>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/showroom.jpg" alt="garage" width="50%"/>
                                        <h3>Openingstijden Showroom</h3>
                                    </center>
                                    <div class="table-responsive">
                                        <table class='table'>
                                            <xsl:for-each select="showroom">
                                                <xsl:apply-templates select="openingstijden"/>
                                            </xsl:for-each>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/shop.jpg" alt="garage" width="50%"/>
                                        <h3>Openingstijden Winkel</h3>
                                    </center>
                                    <div class="table-responsive">
                                        <table class='table'>
                                            <xsl:for-each select="faciliteiten/winkel">
                                                <xsl:apply-templates select="openingstijden"/>
                                            </xsl:for-each>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- ____________________Huur Auto's ______________________________-->
                        <div class="feturedsection">
                            <h1 class="text-center"><span class="bdots"></span>H U U R<span class="carstxt">A U T O ' S</span></h1>
                        </div>

                        <!--Voor elke auto: PATTERN VAN MAKEN VOOR IEDER TYPE AUTO-->
                        <xsl:for-each select="werkplaats">
                            <xsl:apply-templates select="autos"/>
                        </xsl:for-each>

                        <!-- ____________________Occasions ______________________________-->

                        <div class="feturedsection">
                            <h1 class="text-center"><span class="bdots"></span>O C C A S I O N S<span class="carstxt"></span></h1>
                        </div>
                        <!--Voor elke auto-->
                        <div class="feturedimage">
                            <div class="row firstrow">
                                <div class="col-lg-6 costumcol colborder2">
                                    <div class="row costumrow">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                                            <img src="frontend2/image/featurporch1.jpg" alt="porsche1"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                                            <div class="featurecontant">
                                                <h1>Auto Naam</h1>
                                                <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                    sed do eiusmod tempor incididunt </p>
                                                <h2>Price</h2>
                                                <button id="btnRM2">READ MORE</button>
                                                <div id="readmore2">
                                                    <h1>Car Name</h1>
                                                    <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                        sed do eiusmod tempor incididunt <br/>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1 ,
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1<br/></p>
                                                    <button id="btnRL2">READ LESS</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>



                        <!-- ____________________Leen Auto's ______________________________-->

                        <div class="feturedsection">
                            <h1 class="text-center"><span class="bdots"></span>L E E N A U T O ' S<span class="carstxt"></span></h1>
                        </div>
                        <!--Voor elke auto-->
                        <div class="feturedimage">
                            <div class="row firstrow">
                                <div class="col-lg-6 costumcol colborder2">
                                    <div class="row costumrow">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                                            <img src="frontend2/image/featurporch1.jpg" alt="porsche1"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                                            <div class="featurecontant">
                                                <h1>Auto Naam</h1>
                                                <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                    sed do eiusmod tempor incididunt </p>
                                                <h2>Price </h2>
                                                <button id="btnRM2">READ MORE</button>
                                                <div id="readmore2">
                                                    <h1>Car Name</h1>
                                                    <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                        sed do eiusmod tempor incididunt <br/>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1 ,
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1
                                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1<br/></p>
                                                    <button id="btnRL2">READ LESS</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>

                        <!--Faciliteiten, Adres en Contact-->
                        <br/>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/fac.jpg" alt="garage" width="50%"/>
                                        <h3>Faciliteiten</h3>
                                    </center>
                                    <table class='table'>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <th>Pomp</th>
                                            <td></td>
                                            <th>Was</th>
                                            <td></td>
                                            <th>Winkel</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>X</td>
                                            <td></td>
                                            <td>V</td>
                                            <td></td>
                                            <td>V</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/loc.jpg" alt="garage" width="50%"/>
                                        <h3>Adres</h3>
                                    </center>
                                    <table class='table'>
                                        <tr>
                                            <td></td><td>Straat</td><td></td><td><xsl:value-of select="adres/straat"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Nummer</td><td></td><td><xsl:value-of select="adres/nummer"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Plaats</td><td></td><td><xsl:value-of select="adres/plaats"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Postcode</td><td></td><td><xsl:value-of select="adres/postcode"/></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-sm">
                                    <center>
                                        <img src="frontend2/image/contact.jpg" alt="garage" width="50%"/>
                                        <h3>Contact</h3>
                                    </center>
                                    <table class='table'>
                                        <tr>
                                            <td></td><td>Tel.</td><td></td><td><xsl:value-of select="contactGegevens/telefoonnummer"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Mail</td><td></td><td><xsl:value-of select="contactGegevens/email"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Site</td><td></td><td><xsl:value-of select="contactGegevens/website"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Omschrijving</td><td></td><td><xsl:value-of select="contactGegevens/omschrijving"/></td>
                                        </tr>
                                        <tr>
                                            <td></td><td>Route</td><td></td><td><xsl:value-of select="contactGegevens/routebeschrijving"/></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- MedeWerkers ______________________________-->
                        <div class="feturedsection">
                            <h1 class="text-center"><span class="bdots"></span>M E D E<span class="carstxt">W E R K E R S</span></h1>
                        </div>

                        <!--Voor elke auto: PATTERN VAN MAKEN VOOR IEDER TYPE Medewerker-->
                        <div class="feturedimage">
                            <div class="row firstrow">
                                <div class="col-lg-6 costumcol colborder2">
                                    <div class="row costumrow">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                                            <img src="frontend2/image/person.jpg" alt="porsche1"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                                            <div class="featurecontant">
                                                <h1>Janjaap</h1><br/>
                                                <p>Dit is Janjaap</p>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>

                            <br/>
                            <br/>
                            <br/>



                        </div>
                    </div>

                </xsl:for-each>

                <script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
                <script type="text/javascript" src="source/js/isotope.js"></script>
                <script type="text/javascript" src="source/js/myscript.js"></script>
                <script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
                <script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
            </body>


        </html>

    </xsl:template>
    <xsl:template match="openingstijden/*">
        <tr class="text-center">
            <td><xsl:value-of select="local-name()"/></td><td><xsl:value-of select="@open"/> - <xsl:value-of select="@sluiting"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="autos/*">
        <!-- autos hier -->
        <div class="feturedimage">
            <div class="row firstrow">
                <div class="col-lg-6 costumcol colborder2">
                    <div class="row costumrow">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                            <img src="frontend2/image/featurporch1.jpg" alt="porsche1"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                            <div class="featurecontant">
                                <h1>Auto Naam - Test Michiel</h1>
                                <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                    sed do eiusmod tempor incididunt </p>
                                <h2>Price</h2>
                                <button id="btnRM2">READ MORE</button>
                                <div id="readmore2">
                                    <h1>Car Name</h1>
                                    <p>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                        sed do eiusmod tempor incididunt <br/>"Lorem ipsum dolor sit amet, consectetur ,<br/>
                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1 ,
                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1
                                        sed do eiusmod tempor incididunt"Lorem ipsum dolor sit amet, consectetur1<br/></p>
                                    <button id="btnRL2">READ LESS</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>