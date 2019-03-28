<%-- 
    Document   : menu
    Created on : 28-Mar-2019, 09:42:29
    Author     : D00195567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                                </ul>
                            </li>
                            <li>
                                <a class="page-scroll" href="#Storage">News</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="#Community">Community</a>
                            </li>
                            <li class="list">
                                <a class="page-scroll" href="#account">Account</a>
                                <ul class="nav dropdown">
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="register.jsp">Register</a></li>
                                    <li><a href="Pay.jsp">Upgrade to premium</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav bar-collapse all menu bar -->
                </div>
                <!-- /.Navigation -->
                
                <section>
                    <div class="search-wrap">
                        <div class="search-text">
                            
                        </div>
                        <div class="search-button">
                            
                        </div>
                    </div>
                </section>
            </nav>
    </head>
    
</html>
