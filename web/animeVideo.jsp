<%-- 
    Document   : animeVideo
    Created on : 2019-4-10, 20:54:52
    Author     : user
--%>

<%@page import="Dtos.Anime"%>
<%@page import="Daos.MessageDao"%>
<%@page import="Dtos.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                    <th>message_id</th>    
                    <th>message_title</th>
                    <th>message_context</th>
                    <th>messzge_wholeft</th>
                </tr>
        </table>
        
        
        <%
          session = request.getSession();
          ArrayList<Message> messages = new ArrayList<>();
          MessageDao mDao = new MessageDao("anime");
          Anime anime = (Anime) session.getAttribute("Anime_ID");
          for(int i =0; i<mDao.getMsgByAnimeId(anime.getAnime_id()).size(); i++){
                Message m = mDao.getMsgByAnimeId(anime.getAnime_id()).get(i);
                messages.add(m);
              }
            
         Object resultAnime = session.getAttribute("message");
            if(resultAnime != null){}
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
            %>
        https://www.jianshu.com/p/00bbdcd8d698
    </body>
</html>
