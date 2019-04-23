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

        <jsp:include page="view/header.jsp" />
        <title>JSP Page</title>
    </head>
    <body>

        <table>
            <tr>
                    <th>message_id</th>      
                    <th>message_title</th>
                    <th>message_context</th>
                    <th>message_wholeft</th>
                </tr>
        </table>
        
        
        <%
          session = request.getSession();
          ArrayList<Message> messages = new ArrayList<>();
          MessageDao mDao = new MessageDao("anime");
          int animeId = (int) session.getAttribute("Anime_ID");
          for(int i =0; i<mDao.getMsgByAnimeId(animeId).size(); i++){
                Message m = mDao.getMsgByAnimeId(animeId).get(i);
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

    </body>
</html>
