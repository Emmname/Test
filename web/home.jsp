<%-- 
    Document   : home
    Created on : Mar 21, 2019, 8:21:35 PM
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">

        <!-- page content -->
        <meta name="Description" content="Anime Steaming Online">
        <meta name="Author" content="Emmine Anime">
        <title>Emmine Anime - Popular Animes Streaming Online</title>

        <!-- Bootstrap ,CSS & Fonts -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

        <!-------------------------- header  menu ---------------------------->
        <jsp:include page="view/header.jsp" />


        <!-------------------------- body content ---------------------------->             
        <!--iframe container-->  
        <section class="slider">
            <div class="slide-container">                
                <input type="radio" id="s1" name="images"  checked />
                <input type="radio" id="s2" name="images"  />
                <input type="radio" id="s3" name="images"  />
                <input type="radio" id="s4" name="images"  />

                <div class="slide-img" id="img1">
                    <img src="images/demo/banner_huzuki.jpg" alt="Anime 01"/>

                    <label for="s4" class="pre"><span></span></label>
                    <label for="s2" class="nxt"><span></span></label>
                </div>

                <div class="slide-img" id="img2">
                    <img src="images/demo/banner_huzuki_event.jpg" alt="Anime 02"/>

                    <label for="s1" class="pre"><span></span></label>
                    <label for="s3" class="nxt"><span></span></label>
                </div>

                <div class="slide-img" id="img3">
                    <img src="images/demo/img-banner1.jpg" alt="Anime 03"/>

                    <label for="s2" class="pre"><span></span></label>
                    <label for="s4" class="nxt"><span></span></label>
                </div>

                <div class="slide-img" id="img4">
                    <img src="images/demo/66697332_p0_master1200.jpg" alt="Anime 04"/>

                    <label for="s3" class="pre"><span></span></label>
                    <label for="s1" class="nxt"><span></span></label>
                </div>

                <div class="slide-nav">
                    <label class="dots" id="dot1" for="s1"></label>
                    <label class="dots" id="dot2" for="s2"></label>
                    <label class="dots" id="dot3" for="s3"></label>
                    <label class="dots" id="dot4" for="s4"></label>
                </div>

            </div>
        </section>
        <!-- /end overflow display effect -->            
        <!--iframe container-->

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2>Discover Anime</h2>
                        <p>Anime and manga have had a strong, pervasive and lasting impact 
                            on the Japanese culture in particular, and the global culture 
                            in general. The characters are a representation of the 
                            fantastic, larger-than-life and vibrant world they inhabit.</p>	
                    </div>
                </div>	
            </div>
        </section>		
        <!-- /.container -->
        
                <section class="wrapper ">
            <div class="inner">
                <header class="align-center">
                    <h2>This Season's Lineup</h2>
                    <p>See new and continuing simulcast titles for this season! 
                        You can also check out the release calendar for specific dates.</p>
                </header>

                <!-- 3 Column Video Section -->
                <div class="flex flex-3">
                    <div class="video col">
                        <div class="image fit">
                            <img src="images/JoJo's Bizarre Adventure.jpg" alt="" />
                            <div class="arrow">
                                <div class="icon fa-play"></div>
                            </div>
                        </div>
                        <p class="caption">
                            JoJo's Bizarre Adventure tells the story of the Joestar family, 
                            a family whose various members discover they are destined to take 
                            down supernatural foes using unique powers that they possess. 
                        </p>
                        <a href="index.jsp" class="link"><span>Read More</span></a>
                    </div>
                    <div class="video col">
                        <div class="image fit">
                            <img src="images/BORUTO NARUTO NEXT GENERATIONS.jpg" alt="" />
                            <div class="arrow">
                                <div class="icon fa-play"></div>
                            </div>
                        </div>
                        <p class="caption">
                            Boruto originated from Shueisha's proposal to Kishimoto on making 
                            a sequel to Naruto. 
                            Boruto originated from Shueisha's proposal to Kishimoto on making 
                            a sequel to Naruto. 
                        </p>
                        <a href="index.jsp" class="link"><span>Read More</span></a>
                    </div>
                    <div class="video col">
                        <div class="image fit">
                            <img src="images/Demon Slayer Kimetsu no Yaiba.jpg" alt="" />
                            <div class="arrow">
                                <div class="icon fa-play"></div>
                            </div>
                        </div>
                        <p class="caption">
                            Tanjiro Kamado is a kindhearted, intelligent boy who lives with his
                            family and makes money by selling charcoal. Everything changes when 
                            his family is attacked and slaughtered by demons (oni).
                        </p>
                        <a href="index.jsp" class="link"><span>Read More</span></a>
                    </div>
                </div>
            </div>
        </section>



        <!-------------------------- footer section ---------------------------->
        <jsp:include page="view/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/theme-scripts.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="subpage_js/jquery.min.js" type="text/javascript"></script>
        <script src="subpage_js/jquery.scrolly.min.js" type="text/javascript"></script>
        <script src="subpage_js/main.js" type="text/javascript"></script>
        <script src="subpage_js/skel.min.js" type="text/javascript"></script>
        <script src="subpage_js/util.js" type="text/javascript"></script>

    </body>
</html>
