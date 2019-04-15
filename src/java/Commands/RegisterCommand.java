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
 * @author user
 */
public class RegisterCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
            String forwardToJsp = null;
            
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");
            String password2=request.getParameter("Password2");
            String email = request.getParameter("Email");
            
            if(username !=null && password !=null && email!=null && password2 !=null && !username.equals("")&&!password.equals("")&&!email.equals("")&&!password2.equals("")){
                if(password.equalsIgnoreCase(password2) && password.length()>=8){
                UserDao uDao = new UserDao("anime");
                int newId = uDao.registerUser(username, password, email);
            if(newId!=-1){
               User u = uDao.getUserByUsernamePassword(username, password);
               HttpSession session = request.getSession();
               session.setAttribute("ID", u.getUser_id());
               session.setAttribute("successMessage", "AccountCreatedsuccessfully");
               session.setAttribute("loggedInUser", u);
               
               
               forwardToJsp="home.jsp";
            }
            }
            
            else{
             
                String errorMessage = "Passwords Dont match and password must be atleast 8 characters";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
            }
        }
            else{
    
            String errorMessage = "All Fields must be filled in";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
            return forwardToJsp;
    }
    }
    

