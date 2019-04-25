/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.MessageDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author D00188619
 */
public class AddMessage implements Command{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;
        
        String title = request.getParameter("title");
        String context = request.getParameter("context");
        String wholeft = request.getParameter("wholeft");
        
        if(title !=null && context !=null && wholeft !=null && !title.equals("") && !context.equals("")&& !wholeft.equals("")){
             MessageDao mDao = new MessageDao("anime");
                HttpSession session = request.getSession();
                int userId = (int) session.getAttribute("ID");
                int animeId = (int) session.getAttribute("aID");
                int newMId = mDao.addMessage(userId, animeId, title, context, wholeft);
                
                  if(newMId!=-1){
                    forwardToJsp ="home.jsp";    
                }
                else{
                    String errorMessage = "Message is unsucessful to add" + "Please <a href='addMessage.jsp'>go back</a> and try again.";
                    session.setAttribute("errorMessage", errorMessage);
                    forwardToJsp = "error.jsp"; 
                }

        }else{
    
            String errorMessage = "All Fields must be filled in";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
     return forwardToJsp;
    }
}
