<%-- 
    Document   : home
    Created on : Mar 21, 2019, 8:21:35 PM
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>

<%@page import="Daos.MessageDao"%>
<%@page import="Dtos.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.Anime"%>
<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">

        <!-- page content -->
        <meta name="Description" content="Anime Steaming Online">
        <meta name="Author" content="Emmine Anime">
        <title>Emmine Anime - Popular Animes Streaming Online</title>

        <!-- Bootstrap ,CSS & Fonts -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/animeInfo.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>
    <body>

        <!-------------------------- header  menu ---------------------------->
        <jsp:include page="view/header.jsp" />


        <!-------------------------- body content ---------------------------->             

        <!-- container -->
        <section class="wrapper style1">
            <div class="inner">
                <header class="align-center">
                    <%
                        session=request.getSession();
                        int animeID=Integer.parseInt(request.getParameter("aID"));
                        session.setAttribute("aID", animeID);
                        String animeName=request.getParameter("anime");
                        AnimeDao aDao = new AnimeDao("anime");
                        Anime anime= aDao.getAnimeById(animeID);
                    
                    %>
                    <h2><%=anime.getAnimename()%></h2>
                </header>
                <div class="video">
                    <div class="video-wrapper">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/<%=anime.getVideoUrl()%>" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <p class="caption">
                        This anime is animated by <%=anime.getAnimator()%> and was released on <%=anime.getReleasedate()%></p> 
                    <section>
                    To add this Anime to your Favorites click the heart
                    <form action="Servlet" method="post" name="addFavourite">
                <button name="Heart" type="text" class="heart"/>
                <input type="hidden" name ="action" value="addFavourite" />
                    </form>
                </section>
                </div>
                 
            </div>
                    
        </section>
             
                 <%
            User user = (User) session.getAttribute("loggedInUser");
            
        %>
        <table>
            <tr>
                    <th>Message ID</th>      
                    <th>Message Title</th>
                    <th>Message Context</th>
                    <th>Message Who Left</th>
                </tr>
        </table>
        
        
        <%
          ArrayList<Message> messages = new ArrayList<>();
          MessageDao mDao = new MessageDao("anime");
         
          for(int i =0; i<mDao.getMsgByAnimeId(animeID).size(); i++){
                Message m = mDao.getMsgByAnimeId(animeID).get(i);
                messages.add(m);
              }
            

        %>
        
        <%
            if(messages.size() > 0)
            {
        %>       
             <table>
                
                <%
                    for(Message m: messages)
                    {
                %>
                
                <tr>
                    
                    <td><%=m.getMessage_id()%></td>
                    <td><%=m.getTitle()%></td>
                    <td><%=m.getContext()%></td>
                    <td><%=m.getWholeft()%></td>
                    
                </tr>
                
                <%
                    }
                }
                else{
                    System.out.println("can't get message");

                }

            %> 
             </table>


    <!-------------------------- footer section ---------------------------->
    

    <!-- Bootstrap core JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/SmoothScroll.js"></script>
    <script src="js/theme-scripts.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="subpage_js/jquery.min.js" type="text/javascript"></script>
    <script src="subpage_js/jquery.scrolly.min.js" type="text/javascript"></script>
    <script src="subpage_js/main.js" type="text/javascript"></script>
    <script src="subpage_js/skel.min.js" type="text/javascript"></script>
    <script src="subpage_js/util.js" type="text/javascript"></script>
    <jsp:include page="view/footer.jsp" />
    
</body>
</html>
