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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        
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
                        <td>Search </td><td> <input name="anime_name" size=30 type="text" /> </td> 
                    </tr>
                </table>
                <input type="submit" value="Search" /> 
                <input type="hidden" name ="action" value="searchAnimebyWords" />
            </form>
        </div>
            
        <p class="text-center"><a href="Pay.jsp" id="signup" >Pay</a></p>
            
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
