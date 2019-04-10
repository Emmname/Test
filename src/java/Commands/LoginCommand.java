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
 * @author Jordan
 */
public class LoginCommand implements Command{
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;
        
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        
        if(username != null && password != null && !username.equals("") && !password.equals(""))
        {
            UserDao uDao = new UserDao("anime");
            User u = uDao.getUserByUsernamePassword(username, password);
            if(u!= null){
                HttpSession session = request.getSession();
                session.setAttribute("loggedInUser", u);
                session.setAttribute("ID", u.getUser_id());
                session.setAttribute("Status", u.getStatus());
                forwardToJsp = "home.jsp";
            }
            else{
                String errorMessage = "No user found matching those details."
                        + "Please <a href='login.jsp'>go back</a> and try again.";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
            }
        }
        else{
            String errorMessage = "Your username and/or password was missing. Please <a href='login.jsp'>go back</a> and try again.";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
        return forwardToJsp;
    }
}
