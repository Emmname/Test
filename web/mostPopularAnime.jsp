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
        <link href="CSS/Favourite.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <a href="header.jsp"></a>
        <jsp:include page="menu.jsp" />
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
                    <th> Add to your Favorites</th>
                </tr>
              
                
                <%
                session =  request.getSession();
                ArrayList<Anime> animes = new ArrayList<>();
                AnimeDao aDao = new AnimeDao("anime");
                RatingDao rDao = new RatingDao("anime");
                double rating=0;
                double first=0;
                double second=0;
                double third=0;
                double fourth=0;
                double fifth=0;
                for(int i=0; i<aDao.getAllAnimes().size();i++){
                    rating=rDao.getAverageRating(aDao.getAllAnimes().get(i).getAnime_id());
                   
                    if(rating>first){
                        
                        animes.add(aDao.getAllAnimes().get(i));
                        first=rating;
                    }
                    else if(rating>second){
                        animes.add(aDao.getAllAnimes().get(i));
                        second=rating;
                    }
                    else if(rating>third){
                        animes.add(aDao.getAllAnimes().get(i));
                        third=rating;
                    }
                    else if(rating>fourth){
                        animes.add(aDao.getAllAnimes().get(i));
                        fourth=rating;
                    }
                    else if(rating>fifth){
                        animes.add(aDao.getAllAnimes().get(i));
                        fifth=rating;
                    }
                    
                }
          Rating resultAnime = (Rating)session.getAttribute("animeRatings");
            if(resultAnime != null){}
              

        %>
        
        
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
                    <td><%=a.getAnimename()%></td>
                    <td><%=a.getAnimator()%></td>
                    <td><%=a.getReleasedate()%></td>
                    <td><%=rDao.getAverageRating(a.getAnime_id())%></td>
                    <form action="Servlet" method="post" name="addFavourite">
                <td><button name="" type="text" class="heart"/></td> 
                    
                <input type="hidden" name ="action" value="addFavourite" />
                    </form>
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
