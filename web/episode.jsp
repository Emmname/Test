<%-- 
    Document   : episode
    Created on : May 2, 2019, 4:05:24 AM
    Author     : omy
--%>

<%@page import="java.io.File"%>
<%@page import="Commands.DownloadEpisode"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.nio.channels.ReadableByteChannel"%>
<%@page import="java.net.URL"%>
<%@page import="java.nio.channels.Channels"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
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
         <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Download Page</title>
    </head>
    <body>
         <jsp:include page="view/header.jsp" />      
         
        <%
         String url = request.getParameter("EpisodeLink");
         
         
         try{
             
         
                        File file = new File("C:/Users/omy/Desktop/Information.html");
  
                        //Create the file
                        if (file.createNewFile())
                        {
                            System.out.println("File is created!");
                        URL website = new URL("https://drive.google.com/file/d/"+url);

                        ReadableByteChannel rbc = Channels.newChannel(website.openStream());
                        
                        FileOutputStream fos = new FileOutputStream("C:/Users/omy/Desktop/Information.html");
                        fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
         }else {
                            System.out.println("File already exists.");
         }} catch (IOException ex) {
            Logger.getLogger(DownloadEpisode.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    
%>
        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title"> 
                            <h1>Check your desktop for information.html</h1>
                            <a href="home.jsp">Go Home</a>
                        </div>
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
