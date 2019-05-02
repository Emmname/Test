<%-- 
    Document   : getAnimeByWords
    Created on : 2019-3-11, 21:17:36
    Author     : user
--%>

<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="java.util.ArrayList"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=dataBundle.getString("search_title")%></title>
    </head>
    <body>
        <table id="myTable">
            <tr>
                    
                    <th><%=dataBundle.getString("search_id")%></th>
                    <th><%=dataBundle.getString("search_name")%></th>
                    <th><%=dataBundle.getString("search_animator")%></th>
                    <th><%=dataBundle.getString("search_releasedate")%></th>
                    <th><%=dataBundle.getString("search_picture")%></th>
                </tr>
        </table>
        
        <%
           Object resultAnime = session.getAttribute("Animes");
           if(resultAnime != null){
               ArrayList<Anime> animes = (ArrayList<Anime>) resultAnime;
        %>

        <%
        if(animes.size() >0){
        %>
        <table id="myTable">
            <%
            for(Anime a: animes)
            {
                        
            %>
            
            <tr class="item">
                    
                 <td><%=a.getAnime_id()%></td>
                 <td><a href="animeVideo.jsp?anime=<%=a.getAnimename()%>&aID=<%=a.getAnime_id()%>"><%=a.getAnimename()%></td>
                 <td><%=a.getAnimator()%></td>
                 <td><%=a.getReleasedate()%></td>
                 <td><img src="images/<%=a.getImageUrl() %>" alt="<%=a.getImageUrl() %>" height="260" width="200"></td>
            </tr>
                 <%
                    }
                }
            %>
             </table>
             <%
                session.removeAttribute("animes");
        }  else
        {
        %>
        
        <p>Search Problem</p>
         
<%
         }

        %>
        <a href="home.jsp"><%=dataBundle.getString("search_back")%></a>
       
    </body>
</html>
