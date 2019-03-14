<%-- 
    Document   : register
    Created on : 4-Feb-2019, 20:18:33
    Author     : ruihu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dtos.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../src/java/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Register</title>
    </head>
    <body>
            <div class="container">
        <div class="row">
		<div class="col-md-5 mx-auto">
		<div id="first">

		<div class="logo mb-3">
		<div class="col-md-12 text-center">
         <h1>Register</h1>
         
                    </div>
                </div>
             <form action="Servlet" method="post" name="register">
                 <div class="form-group">
                    
                    <label for="exampleInputUsername">User Name</label>
                        <input name="Username" required size=20 class="form-control" id="username" type="text" placeholder="Enter Username" /> </td> 
                </div>
                 <div class="form-group">                  
                    <label for="exampleInputEmail1">Email </label>
                        <input name="Email" required size=20 class="form-control" id="email" type="email" placeholder="Enter email" /> </td> 
                </div>
                 <div class="form-group">
                        <label for="exampleInputPassword">Password</label>
                        <input name="Password" required size=10  class="form-control" id="password"  type="password" placeholder="Enter Password"/> </td> 
                   </div>
                 <div class="form-group">
                        <label for="exampleInputPassword">Retype Password</label>
                        <input name="Matching" required size=10  class="form-control" id="password"  type="password" placeholder="Enter Password"/> </td> 
                   </div>
                    
                  
                <div class="col-md-12 text-center ">
                    <button type="submit"  class=" btn btn-block mybtn btn-primary tx-tfm" >Register</button>
                 </div>
                <div class="form-group">
                   <p class="text-center"><a href="login.jsp" id="signup" >Back login</a></p>
                </div>
 
                
                 <input type="hidden" name ="action" value="register" />
        </form>           
            </div>
            </div>
          </div>
	</div>

    
       
    </body>
</html>
