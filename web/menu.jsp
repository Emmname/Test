<%-- 
    Document   : menu
    Created on : 31-Jan-2019, 10:56:13
    Author     : D00195567
--%>

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
      <a href="">Storage</a>
      <ul class="children sub-menu">
        <li>
          <a href="#">Top Anime</a>
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
            <a href="#"></a>
        </li>
        <li>
          <a href="#"></a>
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
      <a href="">User</a>
      <ul class="children sub-menu">
        <li>
          <a href="#">Log In</a>
        </li>
        <li>
          <a href="#">Register</a>
        </li>
        <li>
          <a href="#">Forget Password</a>
        </li>
        <li>
          <a href="#">our-team</a>
        </li>
        <li>
          <a href="#">worker-detail</a>
        </li>
      </ul>
    </li>
  </ul>
                <input type="hidden" name ="action" value="searchAnimeByGenre" />
                </form>
</nav>
    </head>
    
</html>
