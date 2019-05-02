<%-- 
    Document   : favourites
    Created on : 08-Mar-2019, 19:51:03
    Author     : balogunk
--%>

<%@page import="Daos.FavouriteDao"%>
<%@page import="Dtos.Favourite"%>
<%@page import="Daos.RatingDao"%>
<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="internationalisationHeader.jsp" %>
         <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/favourite.css" rel="stylesheet">
         <jsp:include page="view/header.jsp" />  
        <title><%=dataBundle.getString("popular_title")%></title>
    </head>
     <script src="https://www.w3schools.com/lib/w3.js"></script>
        <%
            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        %>
            <h1> <%=user.getUsername()%>'s Favorites</h1>
            
     
        <table id="myTable">
            <tr>
                    
                    <th>ID</th>
                    <th>Name</th>
                    <th>Animator</th>
                    <th>Release Date</th>
                    <th onclick="w3.sortHTML('#myTable', '.item','td:nth-child(5)')"style="cursor:pointer"> Rating</th>
                    <th> Add to your Favorites</th>
                </tr>
              
                
                <%
                session =  request.getSession();
                int user_id=(int)session.getAttribute("ID");
                ArrayList<Anime> animes = new ArrayList<>();
                AnimeDao aDao = new AnimeDao("anime");
                RatingDao rDao = new RatingDao("anime");
                FavouriteDao fDao =  new FavouriteDao("anime");
                ArrayList<Integer> animeIDs = new ArrayList();
                double rating=0;
                for(int i=0; i<fDao.getFavourites(user_id).size();i++){
                     animeIDs.add(fDao.getFavourites(user_id).get(i));
                        rating=rDao.getAverageRating(animeIDs.get(i));
                    if((animeIDs != null && (!animeIDs.isEmpty()))){
                        
                    
                    }
                }
                        for(int animeId : animeIDs){
                     
                     Anime a = aDao.getAnimeById(animeId);
                     animes.add(a);

                        }
                    
                  
                    
                
          Favourite resultAnime = (Favourite)session.getAttribute("Favourites");
            if(resultAnime != null){}
              

        %>
        
        
        <%
                if(animes.size() > 0)
                {
        %>       
             
                
                <%
                    for(Anime a: animes)
                    {
                        
                    
                %>
                
                <tr class="item">
                    
                    <td><%=a.getAnime_id()%></td>
                    <td><a href="animeInfo.jsp?anime=<%=a.getAnimename()%>&aID=<%=a.getAnime_id()%>"><%=a.getAnimename()%></td>
                    <td><%=a.getAnimator()%></td>
                    <td><%=a.getReleasedate()%></td>
                    <td><%=rDao.getAverageRating(a.getAnime_id())%></td>
                    <td><img src="images/<%=a.getImageUrl()%>" height="260" width="100"><td>
                   
                </tr>
                
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
          
    </body>
</html>
