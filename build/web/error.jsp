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
        
        <!-- footer -->
        
    </body>
</html>
