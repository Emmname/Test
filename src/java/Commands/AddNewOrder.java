/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.OrderDao;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
       int AmountPaid=0;
       if(paymentType !=null && AmountPaid !=null && paymentType.equals("") && AmountPaid.equals("") ){
           
           if(paymentType != "Visa" && paymentType !="Paypal" && paymentType != ""){
               try{
               if((AmountPaid < 5) &&(AmountPaid > 5)){
                HttpSession session = request.getSession();
                int userId = (int) session.getAttribute("user_id");
                Date date = new Date(); 
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                String formattedDate= dateFormat.format(date);
                Date datePaid = dateFormat.parse(formattedDate);
                
                String query = "Update orders SET date_paid = DATE_ADD(date_expired,INTERVAL 30 DAY) where date_expired=NULL";
                //DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
               // DateTime datePaid = DateTime.now();
               // LocalDateTime dateExpired = datePaid.plusDays(30);
                OrderDao oDao = new OrderDao(userId,datePaid,paymentType,AmountPaid);
               }
               }catch(){
               
               
               }
           } 
           
           else{}
        }
}
}