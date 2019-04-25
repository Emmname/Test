/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import Dtos.Message;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author user
 */
public class MessageDao extends Dao implements MessageDaoInterface{
    public MessageDao(String dbName){
        super(dbName);
    }
    @Override
     public ArrayList<Message> getAllMsg(){     
         Connection con = null;
         PreparedStatement ps = null;
         ResultSet rs = null;
         ArrayList<Message> messageArry = new ArrayList();
         
         try{
             con = this.getConnection();
             String query = "SELECT * FROM message";
             ps = con.prepareStatement(query);
             rs = ps.executeQuery();
                while(rs.next()){
                   int messageId = rs.getInt("message_id");
                   int userId = rs.getInt("ueser_id");
                   int animeId = rs.getInt("anime_id"); 
                   String title = rs.getString("title");
                   String context = rs.getString("context");
                   String wholeft =  rs.getString("wholeft");
                           
                 Message m = new Message( messageId,userId,animeId,title,context,wholeft);         
                 messageArry.add(m);
                    
                }
         } catch (SQLException e) {
            System.err.println("A problem occurred in getAllMsg() method:\n" + e.getMessage());
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.err.println("A problem occurred when closing down the getAllMsg() method:\n" + e.getMessage());
            }
             return messageArry;
        }
        
}
       @Override 
      public ArrayList<Message> getMsgByAnimeId(int animeId){
         ArrayList<Message> messagesArry = new ArrayList(); 
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
      try{
            con = getConnection();
            
            String query = "Select * from message where anime_id = ?";
            ps= con.prepareStatement(query);
            ps.setInt(1,animeId);
            rs = ps.executeQuery();
            Message m = null;
            while(rs.next()){
            
                m = new Message(rs.getInt("message_id"),rs.getInt("user_id"),rs.getInt("anime_id"),rs.getString("title"),rs.getString("context"),rs.getString("wholeft"));
                messagesArry.add(m);
            }

        }catch(SQLException e) {
            System.out.println("Exception occured in the getMsgByAnimeId() method: " + e.getMessage());
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the getMsgByAnimeId() method: " + e.getMessage());
            }
        }

        return messagesArry;

    }
      
    @Override 
      public ArrayList<Message> getMsgByUserId(int userId){
        ArrayList<Message> messagesArrys = new ArrayList();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
      
      try{
            con = getConnection();
            
            String query = "Select * from message where user_id = ?";
            ps= con.prepareStatement(query);
            ps.setInt(1,userId);
            rs = ps.executeQuery();
            Message e= null;
            
            while(rs.next()){
            
                e = new Message(rs.getInt("message_id"),rs.getInt("user_id"),rs.getInt("anime_id"),rs.getString("title"),rs.getString("context"),rs.getString("wholeft"));
                messagesArrys.add(e);
            }

        }catch(SQLException m) {
            System.out.println("Exception occured in the getMsgByUserId() method: " + m.getMessage());
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException m) {
                System.out.println("Exception occured in the finally section of the getMsgByUserId() method: " + m.getMessage());
            }
        }

        return messagesArrys;

    }
     @Override
    public int addMessage( int userId,int animeId,String title,String context,String wholeft ){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet generatedKeys = null;
        int newId = -1;
        try{
            con = this.getConnection();
            String query = "INSERT INTO message(user_id,anime_id,title,context,wholeft) VALUES(?,?,?,?,?)";
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

            ps.setInt(1, userId);
            ps.setInt(2, animeId);
            ps.setString(3, title);
            ps.setString(4, context);
            ps.setString(5, wholeft);         
            ps.executeUpdate();
            generatedKeys = ps.getGeneratedKeys();
            if (generatedKeys.next()) {
                newId = generatedKeys.getInt(1);
            }
            }catch (SQLException ex) {
                System.out.println("An error occurred in addMessage() " + ex.getMessage());
                 System.err.println("\t"+ex.getMessage());
                 newId = -1;
        }finally {
            try {
                if (generatedKeys != null) {
                    generatedKeys.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.err.println("A problem occurred when closing down the addMessage():\n" + e.getMessage());
            }
        }
        return newId; 
    }
     @Override
    public boolean removeMessageByID(int messageId) {
        Connection con = null;
        PreparedStatement ps = null;
        boolean result = false;
        int rowsAffected = 0;

        con = getConnection();
        String query = "DELETE FROM message WHERE message_id = ? ";

        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, messageId);
            rowsAffected = ps.executeUpdate();
            if (rowsAffected == 1) {
                result = true;
            }
        } catch (SQLException e) {
            System.out.println("Exception occured in the removeMessageByID() method: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the removeMessageByID() method");
                e.getMessage();
            }
        }

        return result;
    }
      }
