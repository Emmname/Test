<%-- 
    Document   : index page (Home page)
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

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

    <body id="page-top" lang="en">
        <!-- header -->

        <header class="header-default">
            <div class="top-left enter">
                <a href="login.jsp">Login</a>
                <a href="register.jsp">Sign in</a> 
            </div>

            <!-- Navigation -->
            <nav class="navbar navbar-default">

                <div class="container">
                    <!-- display navbar fit with smaller screen  -->
                    <div class="navbar-header page-scroll">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">menu</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <!-- logo temp *need to be re-designed.* -->
                        <div class="logo">
                            <a class="navbar-brand page-scroll logo" href="#page-top">
                                <img  src="images/logo.png" alt="website logo">
                            </a>
                        </div>

                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="hidden">
                                <a href="#page-top"></a>
                            </li>
                            <!-- menu bar -->
                            <li class="list">
                                <a class="page-scroll" href="#Genre">Anime</a>
                                <ul class="nav dropdown">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Adventure</a></li>
                                    <li><a href="#">Drama</a></li>
                                    <li><a href="#">Romantic</a></li>
                                    <li><a href="#">Fantacy</a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="page-scroll" href="">News</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="contactpage.jsp">Community</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="home.jsp">Premium</a>
                            </li>
                        </ul>

                    </div>
                    <!-- /.nav bar-collapse all menu bar -->
                </div>
                <!-- /.Navigation -->
            </nav>

        </header>

        <!-- /. end header -->

        <!--  search bar -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <div class="wrap">
                                <div class="search">
                                    <input type="text" class="searchTerm" placeholder="Search Anime ">
                                    <button type="submit" class="searchButton">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!--iframe container-->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">                            
                            <div class="iframe"> <!-- overflow display effect -->
                                <div class="card-container">
                                    <!-- news display card 1 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- /. news display card 1 -->

                                    <!-- news display card 2 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- /. news display card 2 -->

                                    <!-- news display card 3 -->
                                    <figure class="figure-card">
                                        <img src="images/demo/70034222_p0.jpg" alt="News Image 01"/>
                                        <figcaption class="fig-card">
                                            <div class="news-anime">news anime</div>
                                            <div class="news-title">news title</div>
                                        </figcaption>
                                    </figure>
                                    <!-- news display card 3 -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>			
        </section>                
        <!--iframe container-->

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Discover Anime</h2>
                            <p>Anime and manga have had a strong, pervasive and lasting impact on the Japanese culture in particular, and the global culture in general. The characters are a representation of the fantastic, larger-than-life and vibrant world they inhabit.</p>	
                        </div>
                    </div>
                </div>	
            </div>
        </section>		
        <!-- /.container -->

        <!-- back to top icon -->
        <p id="back-top">
            <a href="#top"><i class="fa fa-angle-up"></i></a>
        </p>
        <!-- /. back to top icon -->

        <footer>
            <div class="container text-center">
                <p><a href="#AboutEmmine">About Emmine</a> | 
                    <a href="#Terms">Terms of Use</a> | 
                    <a href="#Privacy">Privacy</a> | 
                    <a href="#Cookie">Cookie Policy</a>
                </p>
                <p>&copy; copyright <a href="#Emmine Anime"><span>Emmine</span> Anime</a></p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/theme-scripts.js"></script>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
    </body>
</html>
