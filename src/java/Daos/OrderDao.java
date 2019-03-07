/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;

/**
 *
 * @author D00188619
 */
public class OrderDao extends Dao implements OrderDaoInterface {
     public OrderDao(String databaseName) {
        super(databaseName);
    }
     @Override 
     public int addOrder(int userId, Date datePaid, Date dateExpired, String paymentType,int AmountPaid){
        Connection conn = null;
        PreparedStatement ps = null; 
        ResultSet generatedKeys = null;
        int newId = -1;
        try{
            conn = this.getConnection();
            
            String query = "INSERT INTO orders(user_id,date_paid,PaymentType,AmountPaid) VALUES (?, ?, ?, ?)";
             ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        
             ps.setInt(1, userId);
             ps.setDate(2, datePaid);
             ps.setString(3, paymentType);
             ps.setInt(4, AmountPaid);
             
             ps.executeUpdate();
             
             generatedKeys = ps.getGeneratedKeys();
             if(generatedKeys.next())
             {
                 newId = generatedKeys.getInt(1);
             
             } 
        }catch (SQLException e) 
        {
            System.err.println("\tA problem occurred during the addOrder method:");
            System.err.println("\t"+e.getMessage());
            newId = -1;
        }finally 
        {
            try 
            {
                if(generatedKeys != null){
                    generatedKeys.close();
                }
                if (ps != null) 
                {
                    ps.close();
                }
                if (conn != null) 
                {
                    freeConnection(conn);
                }
            } 
            catch (SQLException e) 
            {
                System.err.println("A problem occurred when closing down the addOrder method:\n" + e.getMessage());
            }
        }
        return newId; 
     
     
     
     }
}
