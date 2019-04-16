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
        <link href="CSS/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <a href="header.jsp"></a>
        <jsp:include page="menu.jsp" />

        <title>Add New Anime</title>
    </head>
    <body>
        <script src="https://www.w3schools.com/lib/w3.js"></script>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
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
    </body>
</html>
