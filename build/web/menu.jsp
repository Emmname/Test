<%-- 
    Document   : menu
    Created on : 31-Jan-2019, 10:56:13
    Author     : D00195567
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="CSS/menu.css" rel="stylesheet" type="text/css"/>
        <div class="wrapper">
            
        <nav class="navigation">
            <form action="Servlet" method="post">
  <ul>
    <li class="active">
      <a href="home.jsp">Home</a>
    </li>
    <li>
      <a href="#">Genre</a>
      <ul class="children sub-menu">
        <li>
            <a href="searchAnimeByGenre.jsp?genre_name=Action">Action</a>
        </li>
        <li>
          <a href="searchAnimeByGenre.jsp?genre_name=Adventure">Adventure</a>
        </li>
        <li>
          <a href="searchAnimeByGenre.jsp?genre_name=Comedy">Comedy</a>
        </li>
        <li>
          <a href="searchAnimeByGenre.jsp?genre_name=Fantasy">Fantasy</a>
        </li>
        <li>
          <a href="searchAnimeByGenre.jsp?genre_name=Horror">Horror</a>
        </li>
      </ul>
    </li>
    <li>
      <a href="">Charts</a>
      <ul class="children sub-menu">
        <li>
          <a href="mostPopularAnime.jsp">Top Anime</a>
        </li>
        <li>
          <a href="#">Recently Update</a>
        </li>

      </ul>
    </li>
    <li>
      <a href="">Premium</a>
      <ul class="children sub-menu">
        <li>
            <a href="#">Upgrade Account</a>
        </li>
        
      </ul>
    </li>
     <li>
      <a href="">Community</a>
      <ul class="children sub-menu">
        <li>
            <a href="#">Evaluate</a>
        </li>
      </ul>
    </li>
    <li>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        %>
            
      <a href=""><%=user.getUsername()%></a>
      <%}%>
      <ul class="children sub-menu">
        <li>
          <a href="#">My Profile</a>
        </li>
        <li>
          <a href="favourites.jsp">My Favorites</a>
        </li>
        
        <li>
          <a href="#">our-team</a>
        </li>
        
      </ul>
    </li>
  </ul>
                <input type="hidden" name ="action" value="searchAnimeByGenre" />
                </form>
</nav>
    </head>
    
</html>
