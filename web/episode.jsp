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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download Page</title>
    </head>
    <body>
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
        <h1>Check your desktop for information.html</h1>
    </body>
</html>
