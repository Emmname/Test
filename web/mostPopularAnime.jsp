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
        <%@include file="internationalisationHeader.jsp" %>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/favourite.css" rel="stylesheet">
         <jsp:include page="view/header.jsp" />  
        <title><%=dataBundle.getString("popular_title")%></title>
    </head>
     <script src="https://www.w3schools.com/lib/w3.js"></script>
    <body>
        <%
            User user = (User) session.getAttribute("loggedInUser");
             if(user != null){
        %>
        <table id="myTable">
            <tr>
                    
                    <th><%=dataBundle.getString("popular_id")%></th>
                    <th><%=dataBundle.getString("popular_name")%></th>
                    <th><%=dataBundle.getString("popular_animator")%></th>
                    <th><%=dataBundle.getString("popular_releasedate")%></th>
                    <th onclick="w3.sortHTML('#myTable', '.item','td:nth-child(5)')"style="cursor:pointer"><%=dataBundle.getString("popular_rating")%> </th>
                    <th><%=dataBundle.getString("popular_picture")%></th>
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
                   
                </tr>
                <!--<a href="animeVideo.jsp?anime=<%//=a.getAnimename()%>">-->
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
           
        <%if(user.getStatus()==2){%>
        
                <h1> <%=user.getUsername()%>'s </h1>
            
          <div>
              <form action = "Servlet" method="post" name="addAnime">
                  <table>
                      <tr>
                          <td>Anime Name</td><td><input type="text" name="anime_name" </td>
                      </tr>
                      <tr>
                          <td>Release Date</td><td><input type="date" name="release_date" </td>
                      </tr>
                      <tr>
                          <td>Animator</td><td><input type="text" name="animator" </td>
                      </tr>
                      <tr>
                          <td>imageUrl</td><td><input type="text" name="imageUrl" </td>
                      </tr>
                  </table>
                  <input type="hidden" name ="action" value="addAnime" />
                <input type="submit" value="Save" />
              </form>
          </div>
                
                %}%>
             </table>
                
                  <jsp:include page="view/footer.jsp" />
    </body>
</html>
