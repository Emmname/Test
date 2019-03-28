<%-- 
    Document   : header
    Created on : Mar 21, 2019, 8:21:19 PM
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>
<%@page import="Dtos.User"%>
<!-- header -->
<form action="Servlet" method="post">
    <header class="header-default">


        <%
            User user = (User) session.getAttribute("loggedInUser");
            if (user != null) {
        %>


        <%
        } else {
            String sessionExpired = "You must be logged in to use this service";
            session.setAttribute("sessionExpired", sessionExpired);
            response.sendRedirect("login.jsp");

        %>  

        <%            }
        %>     
        
        <!--  search bar -->

        <div class="wrap">
            <div class="search">                                    
                <input name="anime_name" size=30 type="text" class="searchTerm" placeholder="Search Anime " autocomplete="off">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search"> </i>
                    <input type="hidden" name="action" value="searchAnimebyWords"  />
                </button>                                        
            </div>
        </div>
        <!-- /.search bar -->

        <!-- Navigation -->
        <nav class="navbar navbar-default">
            <ul class="nav navbar-nav navbar-right">
                <!-- menu bar -->
                <li class="list">
                    <a class="page-scroll" href="#Genre">Anime</a>
                    <ul class="nav dropdown">
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Action#">Action</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Adventure">Adventure</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Comedy">Drama</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Horror">Horror</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Fantasy">Fantasy</a></li>
                    </ul>
                </li>

                <li class="list">
                    <a class="page-scroll" href="">Charts</a>
                    <ul class="nav dropdown">
                        <li>
                            <a href="mostPopularAnime.jsp">Top Anime</a>
                        </li>
                        <li>
                            <a href="#">New Update</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a class="page-scroll" href="contactpage.jsp">About Us</a>
                </li>

                <li class="list">
                    <%
                        if (user != null) {
                    %>

                    <a class="page-scroll" href=""><%=user.getUsername()%></a>
                    
                    <ul class="nav dropdown">
                        <li>
                            <a href="profile.jsp">My Profile</a>
                        </li>
                        <li>
                            <a href="favourites.jsp">My Favorites</a>
                        </li>   
                    </ul>                     
                    <%
                    } else {
                    %>
                    <li class="list">
                        <%
                        
                    %>
                    <a class="page-scroll" href="account.jsp">Account</a>
                    <ul class="nav dropdown">
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="register.jsp">Register</a></li>
                    </ul>
                </li>
                    <%
                        }

                    %>

                </li>
            </ul>

            <div class="container">
                <div class="logo">
                    <a class=" page-scroll logo" href="#page-top">
                        <img  src="images/logo.png" alt="website logo">
                    </a>
                </div>

            </div>
                    
        </nav>

    </header>

</form>


<!-- /. end header -->
