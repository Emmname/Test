/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.OrderDao;
import Dtos.Order;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00188619
 */
public class AddNewOrder implements Command {
    
    @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
       String forwardToJsp = null;
       
       String paymentType = request.getParameter("PaymentType");
       String AmountPaid = request.getParameter("AmountPaid");
       int amountP = 0;
       amountP=Integer.parseInt(AmountPaid);
       if(paymentType !=null || AmountPaid !=null || paymentType.equals("")){
           if(paymentType != "Visa" && paymentType !="Paypal" && paymentType != "Google Wallet"){
              try{
               if(amountP==5){
                HttpSession session = request.getSession();
                int userId = (int) session.getAttribute("ID");
                Date date = new Date(); 
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
                String formattedDate= dateFormat.format(date);
                java.sql.Date datePaid = (java.sql.Date) dateFormat.parse(formattedDate);
                
                       
                OrderDao oDao = new OrderDao("anime");
                int newOId = oDao.addOrder(userId, datePaid, paymentType, amountP);
                if(newOId!=-1){
                    forwardToJsp ="PremiumHome.jsp";    
                }else{
                    String errorMessage = "Pay is unsucessful" + "Please <a href='pay.jsp'>go back</a> and try again.";
                    session.setAttribute("errorMessage", errorMessage);
                    forwardToJsp = "error.jsp"; 
                }
               }else{
                   String errorMessage = "You only can pay 5 €";
                   HttpSession session = request.getSession();
                   session.setAttribute("errorMessage", errorMessage);
                    forwardToJsp = "error.jsp";
               }
              }catch( ParseException ex){
                System.out.println("This date should be an integer " + ex.getMessage());
               }
                
        }else{String errorMessage = "You must use these three payment methods ";
                   HttpSession session = request.getSession();
                   session.setAttribute("errorMessage", errorMessage);
                    forwardToJsp = "error.jsp";}
        }else{String errorMessage = "You paymentType and/or AmountPaid was missing";
                   HttpSession session = request.getSession();
                   session.setAttribute("errorMessage", errorMessage);
                    forwardToJsp = "error.jsp";}
       return forwardToJsp;
}
}