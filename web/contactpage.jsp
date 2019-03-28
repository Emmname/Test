<%-- 
    Document   : index
    Created on : Mar 13, 2019, 11:53:23 AM
    Author     : omy
--%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="Description context">
        <meta name="author" content="Emmine Team">
        <link rel="icon" href="favicon.ico">
        <title>Emmine Anime - Popular Animes Streaming Online</title>
        <!-- Bootstrap ,CSS & Fonts -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <!-- header -->
        <header class="header-default">
            <!-- Navigation -->
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- display nav bar as a  -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <a class="navbar-brand page-scroll logo" href="#page-top"><img  src="images/logo.png" alt="website logo"></a>
                    </div>
                    
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <li class="list">
                            <a class="page-scroll" href="#Genre">Anime</a>
                            <ul class="nav dropdown">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Adventure</a></li>
                                <li><a href="#">Drama</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Storage">News</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Community">Community</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#account">Account</a>
                        </li>
                    </ul>
                </div>
                <!-- /.nav bar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        </header>
        
        <!-- end header -->

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>About Anime</h2>
                            <p>Anime and manga have had a strong, pervasive and lasting impact on the Japanese culture in particular, 
                                and the global culture in general. The characters are a representation of the fantastic, 
                                larger-than-life and vibrant world they inhabit.</p>	
                        </div>
                    </div>
                </div>	
            </div>

        </section>		
        
        <!-- /.container -->
        <section id="contact">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Contact Us</h2>
                            <p>If you have some Questions or need Help, please Contact Us.</p>
                        </div>
                            
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <form name="sentMessage" id="contactForm" novalidate="">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Your Name *" id="name" required="" data-validation-required-message="Please enter your name.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Your Email *" id="email" required="" data-validation-required-message="Please enter your email address.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" placeholder="Your Message *" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div>
                                    <button type="submit" class="btn">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <p id="back-top">
            <a href="#top"><i class="fa fa-angle-up"></i></a>
        </p>
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
