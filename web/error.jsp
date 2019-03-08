<%-- 
    Document   : error
    Created on : Feb 7, 2019, 4:25:32 AM
    Author     : Emma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/home.css" rel="stylesheet" type="text/css"/>
        <title>Error</title>
    </head>
    <body>
        <h1>Error Page</h1>
        <%
            Object msg = session.getAttribute("errorMessage");
            String error = (String) msg;
            if(error != null){
            // Display the message
%>

        <div> <%=error%> </div>
        <%
            }
            session.removeAttribute("errorMessage");
%> 
<a href="home.jsp">Go Home</a>
        <!-- footer -->
        
    </body>
</html>
