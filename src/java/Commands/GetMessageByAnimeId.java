/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.MessageDao;
import Dtos.Message;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00188619
 */
public class GetMessageByAnimeId implements Command {
    @Override 
    public String execute(HttpServletRequest request, HttpServletResponse response) {
            String forwardToJsp="";
            
            HttpSession session = request.getSession();
//            int anime_id=(int) session.getAttribute("Anime_ID");
            String anime_id = request.getParameter("Watch");
            int animeId=Integer.parseInt(anime_id);
            
            MessageDao mDao = new MessageDao("anime");
            if(animeId != -1){
                
            ArrayList<Message> m = mDao.getMsgByAnimeId(animeId);
            session.setAttribute("Message", m);
            
             forwardToJsp = "animeVideo.jsp";
            }
              else{
            String errorMessage = "The animeId don't find.";
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
            
            return forwardToJsp;
    }
}
