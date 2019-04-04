/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.UserDao;
import Dtos.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author omy
 */
public class viewUserProfileCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
         String forwardToJsp="";
        
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        
        try{
            //get user by id
            UserDao userDao = new UserDao("anime");
            User user1 = userDao.getUserById(user_id);
            
            HttpSession session = request.getSession();
            session.setAttribute("userProfile", user1);
            
            //forward to user profile page.
            forwardToJsp = "userProfile.jsp";
        }catch(NumberFormatException e) {
            //error message display in error page
            HttpSession session = request.getSession();            
            session.setAttribute("errorMessage", "Current user id is not found.  ");
            forwardToJsp = "error.jsp";            
        }
        return forwardToJsp;
    }
    
}
