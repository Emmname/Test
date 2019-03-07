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
            String email = request.getParameter("Email");
            
            if(username !=null && password !=null && email!=null && !username.equals("")&&!password.equals("")&&!email.equals("")){
                UserDao uDao = new UserDao("anime");
                int newId = uDao.registerUser(username, password, email);
            if(newId!=-1){
               User u = uDao.getUserByUsernamePassword(username, password);
               HttpSession session = request.getSession();
               session.setAttribute("successMessage", "AccountCreatedsuccessfully");
               session.setAttribute("loggedInUser", u);
               
               
               forwardToJsp="home.jsp";
            }
            else{
             
                String errorMessage = "registerError1";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
            }
        }
            else{
    
            String errorMessage = "registerError2";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
            return forwardToJsp;
    }
    }
    

