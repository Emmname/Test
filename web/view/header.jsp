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
        <%--<%@include file="internationalisationHeader.jsp" %>--%>
    
     
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
                    
                    <a href="#Genre"><%--<%=dataBundle.getString("menu_first")%>--%>Anime</a>
                    <ul class="">
                        
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Action#"><%--<%=dataBundle.getString("genre_action")%>--%>Action</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Adventure"><%--<%=dataBundle.getString("genre_adventure")%>--%>Adventure</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Comedy"><%--<%=dataBundle.getString("genre_drama")%>--%>Drama</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Horror"><%--<%=dataBundle.getString("genre_horror")%>--%>Horror</a></li>
                        <li><a href="searchAnimeByGenre.jsp?genre_name=Fantasy"><%--<%=dataBundle.getString("genre_fantasy")%>--%>Fantasy</a></li>
                    </ul>
                </li>

                <li >
                    <a href=""><%--<%=dataBundle.getString("menu_second")%>--%>Charts</a>
                    <ul>
                        <li>
                            <a href="mostPopularAnime.jsp"><%--<%=dataBundle.getString("genre_top")%>--%>Top Anime</a>
                        </li>
                        <li>
                            <a href="newUpdate.jsp"><%--<%=dataBundle.getString("genre_new")%>--%>New Update</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="contactpage.jsp"><%--<%=dataBundle.getString("menu_third")%>--%>About Us</a>
                </li>

                <li>
                    <%
                        if (user != null) {
                    %>

                    <a><%=user.getUsername()%></a>

                    <ul>
                        <li>
                            <a href="userProfile.jsp"><%--<%=dataBundle.getString("menu_profile")%>--%>My Profile</a>
                        </li>
                        <li>
                            <a href="favourites.jsp"><%--<%=dataBundle.getString("menu_favorite")%>--%>My Favorites</a>
                        </li>
                        <li><a href="Servlet?action=logout"><%--<%=dataBundle.getString("menu_lougout")%>--%>Logout</a></li> 
                    </ul>                     
                    <%
                    } else {
                        String sessionExpired = "You must be logged in to use this service";
                        session.setAttribute("sessionExpired", sessionExpired);
                        response.sendRedirect("login.jsp");
                    %>
                <li>
                    <a href="account.jsp"><%--<%=dataBundle.getString("menu_account")%>--%>Account</a>
                    <ul>
                        <li><a href="login.jsp"><%--<%=dataBundle.getString("menu_login")%>--%>Login</a></li>
                        <li><a href="register.jsp"><%--<%=dataBundle.getString("menu_register")%>--%>Register</a></li>
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
