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
        <link href="css/comment.css" rel="stylesheet">
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
                        <div class="HeartText">
                            <p>To add this Anime to your Favorites click the heart.</p>
                    </div>
                        <form action="Servlet" method="post" name="addFavourite">
                <button name="Heart" type="text" class="heart"/>
                <input type="hidden" name ="action" value="addFavourite" />
                    </form>
                </section>
                </div>
                 
            </div>
                    
        </section>
             
 

        
        
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
                    <div class="box">

	<div class="comments-section">

		<div class="row">

			<div class="comment-post">

				<div class="col-xs-2"><img src="http://i63.tinypic.com/2ypkhte.jpg"/></div>
				<div class="col-xs-9">
					<p><span class="comment-author"><%=m.getWholeft()%></span><span class="comment-time">30 minutes ago</span></p>
                                        <p class="comment-content"><%=m.getTitle()%></p>
                                       <p class="comment-content"><%=m.getContext()%></p>
				</div>
			</div>
		</div>
	</div>
</div>
        
                </tr>
                
                <%
                    }
                }
                else{
                    System.out.println("can't get message");

                }

            %> 
             </table>
            <p id="demo"></p>

<script>
    <%
        if(anime.getAnime_id()==1){
           %>
               var check=true;
               
               
   var countDownDate = new Date("May 2, 2019 15:37:25").getTime();       
                var startDate  = countDownDate ;
               
        <%}else if (anime.getAnime_id()==2){%>
    var countDownDate = new Date("May 30, 2019 15:37:25").getTime();                
        <%}else if (anime.getAnime_id()==3){%>
    var countDownDate = new Date("May 18, 2019 15:37:25").getTime();               
        <%}else if (anime.getAnime_id()==4){%>
    var countDownDate = new Date("May 17, 2019 15:37:25").getTime();              
        <%}else if (anime.getAnime_id()==5){%>
    var countDownDate = new Date("May 16, 2019 15:37:25").getTime();                
        <%}else if (anime.getAnime_id()==6){%>
    var countDownDate = new Date("May 15, 2019 15:37:25").getTime();                
        <%}else if (anime.getAnime_id()==7){%>
    var countDownDate = new Date("May 18, 2019 15:37:25").getTime();               
        <%}else if (anime.getAnime_id()==8){%>
    var countDownDate = new Date("May 14, 2019 15:37:25").getTime();                
        <%}else if (anime.getAnime_id()==9){%>
    var countDownDate = new Date("May 13, 2019 15:37:25").getTime();                
        <%}else if (anime.getAnime_id()==10){%>
    var countDownDate = new Date("May 12, 2019 15:37:25").getTime();       
 <%}%>

var x = setInterval(function() {

  var now = new Date().getTime();

  var distance = countDownDate - now;

  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);


  document.getElementById("demo").innerHTML = days + "days " + hours + "hours "
  + minutes + "min " + seconds + "s ";


  if (distance < 0) {
      
      countDownDate = date.toString(Date.parse(startDate)+604800000);
      return countDownDate;
  }
}, 1000);

</script>
   <%
            User user = (User) session.getAttribute("loggedInUser");
             if (user != null) {
        %>  
 <form action="Servlet" method="post" name="addMessage">
                        <div class="comment-add">
				<div class="col-xs-12">
                                    
                                    Comment Title：<input type = "text" name = "title"/>
                                    Comment Context：<textarea type = "text" name = "context"></textarea>
                                    <input type = "hidden" name = "wholeft" value="<%=user.getUsername()%>"/>
				</div>
			</div>
                       
                        
                <input type="hidden" name ="action" value="addMessage" />
                <input class="btn btn-default pull-right" type="submit" value="click"></a>
                      
               
</form>
      <%} %>           
        


      
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
