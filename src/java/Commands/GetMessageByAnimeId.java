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
            int anime_id=(int) session.getAttribute("Anime_ID");
            
            int animeId=0;
            MessageDao mDao = new MessageDao("anime");
            if(anime_id != -1){
                
            ArrayList<Message> m = mDao.getMsgByAnimeId(animeId);
            session.setAttribute("Message", m);
            
             forwardToJsp = " animeViedo.jsp";

            }
              else{
            String errorMessage = "The animeId don't find.";
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
            
            return forwardToJsp;
    }
}
