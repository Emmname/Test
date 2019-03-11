<%-- 
    Document   : home
    Created on : 27-Jan-2019, 23:00:31
    Author     : Jordan
--%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="menu.jsp" />
        <title>Home</title>
    </head>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        %>
            <h1>Welcome, <%=user.getUsername()%></h1>
            <div>
            <form action="Servlet" method="post">
            <table>
                <tr>
                    <td>Search Anime</td><td> <input name="genre_name" size=30 type="text" /> </td> 
                </tr>
            </table>
            <input type="submit" value=Go! /> 
            <input type="hidden" name ="action" value="searchAnimeByGenre" />
        </form>
        </div>
            
        <%
            }
            else{
                String sessionExpired = "You must be logged in to use this service";
                session.setAttribute("sessionExpired", sessionExpired);
                response.sendRedirect("login.jsp");
            }
        %>
        
        <a href="Servlet?action=logout">Logout</a>
    </body>
</html>
