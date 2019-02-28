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
        <h1>Home</h1>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        %>
            <h1>Welcome, <%=user.getUsername()%></h1>
            <div>
            <p>search</p>
            <form action="Servlet" method="post">
            <table>
                <tr>
                    <td>search Genre</td><td> <input name="genre_name" size=30 type="text" /> </td> 
                </tr>
            </table>
            <input type="submit" value=search /> 
            <input type="hidden" name ="action" value="searchAnimeByGenre" />
        </form>
        </div>
            
        <%
            }
            else{
                String sessionExpired = "Your session has expired, please log in again.";
                session.setAttribute("sessionExpired", sessionExpired);
                response.sendRedirect("login.jsp");
            }
        %>
        
        <a href="Servlet?action=logout">Logout</a>
    </body>
</html>
