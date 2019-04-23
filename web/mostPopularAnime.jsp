<%-- 
    Document   : mostPopularAnime
    Created on : 21-Feb-2019, 09:45:25
    Author     : D00195567
--%>

<%@page import="Dtos.User"%>
<%@page import="Dtos.Rating"%>
<%@page import="Daos.AnimeDao"%>
<%@page import="Daos.RatingDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/favourite.css" rel="stylesheet">
         <jsp:include page="view/header.jsp" />  
        <title>Most popular Animes</title>
    </head>
     <script src="https://www.w3schools.com/lib/w3.js"></script>
    <body>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        %>
        <table id="myTable">
            <tr>
                    
                    <th>ID</th>
                    <th>Name</th>
                    <th>Animator</th>
                    <th>Release Date</th>
                    <th onclick="w3.sortHTML('#myTable', '.item','td:nth-child(5)')"style="cursor:pointer"> Rating</th>
                    <th>Picture</th>
                    <th> Add to your Favorites</th>
                </tr>
              
                
                <%
                    
                session =  request.getSession();
                ArrayList<Anime> animes = new ArrayList<>();
                AnimeDao aDao = new AnimeDao("anime");
                RatingDao rDao = new RatingDao("anime");
                String message=(String)session.getAttribute("FavouriteMessage");
                double rating=0;
                for(int i=0; i<aDao.getAllAnimes().size();i++){
                    rating=rDao.getAverageRating(aDao.getAllAnimes().get(i).getAnime_id());
                    animes.add(aDao.getAllAnimes().get(i));
                }
          Rating resultAnime = (Rating)session.getAttribute("animeRatings");
            if(resultAnime != null){}
              
if(message!=null){
        %>
        
        <p><%=message%></p>
                <%}%>
        <%
            if(animes.size() > 0)
            {
        %>       
             
                
                <%
                    for(Anime a: animes)
                    {
                        session.setAttribute("Anime_ID", a.getAnime_id());
                    
                        
                %>
                
                <tr class="item">
                    
                    <td><%=a.getAnime_id()%></td>
                    <td><a href="animeInfo.jsp?anime=<%=a.getAnimename()%>&aID=<%=a.getAnime_id()%>"><%=a.getAnimename()%></td>
                    <td><%=a.getAnimator()%></td>
                    <td><%=a.getReleasedate()%></td>
                    <td><%=rDao.getAverageRating(a.getAnime_id())%></td>
                    <td><img src="images/<%=a.getImageUrl()%>" height="260" width="100"><td>
                    <form action="Servlet" method="post" name="addFavourite">
                <td><button name="Heart" type="text" class="heart" value="<%=a.getAnime_id()%>"/></td> 
                <input type="hidden" name ="action" value="addFavourite" />
                    </form>
                </tr>
                <a href="animeVideo.jsp?anime=<%=a.getAnimename()%>">
                <%
                    
                    }
                }
            
            }
            else{
                String sessionExpired = "You must be logged in to use this service";
                session.setAttribute("sessionExpired", sessionExpired);
                response.sendRedirect("login.jsp");
            }
        %>
           
             </table>
                
                  <jsp:include page="view/footer.jsp" />
    </body>
</html>
