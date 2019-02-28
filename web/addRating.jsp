<%-- 
    Document   : addRating
    Created on : 10-Feb-2019, 21:12:27
    Author     : Jordan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Rating</title>
    </head>
    <body>
        <h1>Rating</h1>
        
        <form action="Servlet" method="post" name="addRting">
             <input name="Username" required size=20 class="form-control" id="username" type="text" placeholder="Enter Username" /> </td> 
        <select>
            <option value="volvo">Volvo</option>
            <option value="saab">Saab</option>
            <option value="opel">Opel</option>
            <option value="audi">Audi</option>
      </select>
        </form>
    </body>
</html>
