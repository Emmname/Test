<%-- 
    Document   : addAnime
    Created on : 28-Mar-2019, 09:33:24
    Author     : D00188619
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <jsp:include page="view/header.jsp" />       

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
 <%
            User user = (User) session.getAttribute("loggedInUser");
            int userid = user.getStatus();
            if(user != null && userid == 2){
        %>
            <h1> <%=user.getUsername()%>'s </h1>
            
          <div>
              <form action = "Servlet" method="post" name="addAnime">
                  <table>
                      <tr>
                          <td>Anime Name</td><td><input type="text" name="anime_name" </td>
                      </tr>
                      <tr>
                          <td>Release Date</td><td><input type="date" name="release_date" </td>
                      </tr>
                      <tr>
                          <td>Animator</td><td><input type="text" name="animator" </td>
                      </tr>
                      <tr>
                          <td>imageUrl</td><td><input type="text" name="imageUrl" </td>
                      </tr>
                  </table>
                  <input type="hidden" name ="action" value="addAnime" />
                <input type="submit" value="Save" />
              </form>
          </div>
              <%
            }
        %>
                    </div>
                </div>	
            </div>
        </section>
        <!-- /.container -->

        <jsp:include page="view/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/theme-scripts.js"></script>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
    </body>
</html>
