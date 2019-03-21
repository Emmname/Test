<%-- 
    Document   : login
    Created on : 27-Jan-2019, 22:58:33
    Author     : Jordan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../src/java/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Login</title>
    </head>
    <body>
        <div class="container">
        <div class="row">
		<div class="col-md-5 mx-auto">
		<div id="first">
		<div class="myform form ">
		<div class="logo mb-3">
		<div class="col-md-12 text-center">
        <h1>Login</h1>
        
         <%
                String sessionExpired = (String) session.getAttribute("sessionExpired");
                if(sessionExpired != null){
                    out.println("<b>" + sessionExpired + "</b>");
                    session.removeAttribute("sessionExpired");
                }
            %>
                </div>
                </div>
            <form action="Servlet" method="post" name="login">
                <div class="form-group">
                    
                    <label for="exampleInputEmail1">Username</label>
                        <input name="Username" required size=20 class="form-control" id="email" type="text" placeholder="Enter username" />  
                </div>
                  <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input name="Password" required size=10 type="password" id="password"  class="form-control" placeholder="Enter Password"/> 
                   </div>
                <div class="col-md-12 text-center ">
                     <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                 </div>
                
                 </div>
                <div class="form-group">
                   <p class="text-center">Don't have account? <a href="register.jsp" id="signup">Sign up here</a></p>
                </div>
                <input type="hidden" name ="action" value="login" />
            </form>
                </div>
            </div>
          </div>
	</div>
        
    </body>
</html>
