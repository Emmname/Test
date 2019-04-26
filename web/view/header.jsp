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
        %>

        <!-- Navigation -->
        <nav>
            <ul>
                <li>
                    <!--  search bar -->
                    <div class="search">                                    
                        <input name="anime_name" type="text" class="searchTerm" placeholder="Search Anime " autocomplete="off">
                        <button type="submit" class="searchButton">
                            <i class="fa fa-search"> </i>
                            <input type="hidden" name="action" value="searchAnimebyWords"  />
                        </button>                                        
                    </div>
                    <!-- /.search bar -->   
                </li>
                
                <!-- menu bar -->
                <li>
                    <a href="#Genre">Anime</a>
                    <ul class="">
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Action#">Action</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Adventure">Adventure</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Comedy">Drama</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Horror">Horror</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Fantasy">Fantasy</a></li>
                    </ul>
                </li>

                <li >
                    <a href="">Charts</a>
                    <ul>
                        <li>
                            <a href="mostPopularAnime.jsp">Top Anime</a>
                        </li>
                        <li>
                            <a href="newUpdate.jsp">New Update</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="contactpage.jsp">About Us</a>
                </li>

                <li>
                    <%
                        if (user != null) {
                    %>

                    <a><%=user.getUsername()%></a>

                    <ul>
                        <li>
                            <a href="userProfile.jsp">My Profile</a>
                        </li>
                        <li>
                            <a href="favourites.jsp">My Favorites</a>
                        </li>
                        <li><a href="login.jsp">Logout</a></li>
                    </ul>                     
                    <%
                    } else {
                        String sessionExpired = "You must be logged in to use this service";
                        session.setAttribute("sessionExpired", sessionExpired);
                        response.sendRedirect("login.jsp");
                    %>
                <li>
                    <a href="account.jsp">Account</a>
                    <ul>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="register.jsp">Register</a></li>
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
        </nav>
                    <div class="container">
            <div class="logo">
                <a class=" page-scroll logo" href="#page-top">
                    
                </a>
            </div>
        </div>


    </header>

</form>


<!-- /. end header -->
