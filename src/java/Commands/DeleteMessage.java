/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;


import Daos.MessageDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class DeleteMessage implements Command{
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
    String forwardToJsp =null;
    
    int message_id=Integer.parseInt(request.getParameter("messageid"));
    if(message_id!=-1){
    MessageDao mDao= new MessageDao("anime");
    mDao.removeMessageByID(0);
    forwardToJsp = "home.jsp";
    }
    return forwardToJsp;
}}
