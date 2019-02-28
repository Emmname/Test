/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Daos.Dao;
import Daos.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jordan
 */
public class RatingDao extends Dao implements RatingDaoInterface{
    
    public RatingDao(String databaseName)
    {
        super(databaseName);
    }

    @Override
    public int addRating(int anime_id,int ratingNumber, int user_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet gk = null;
        int newId = -1;
        
        try{
             con = this.getConnection();
             
            String query = "INSERT INTO rating(user_id,anime_id,ratingNumber) VALUES (?,?,?)";
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            ps.setInt(1, user_id);
            ps.setInt(2, anime_id);
            ps.setInt(3, ratingNumber);
            
            gk = ps.getGeneratedKeys();
            
            if(gk.next())
            {
                newId = gk.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RatingDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally 
        {
             try 
            {
                if(gk != null){
                    gk.close();
                }
                if (ps != null) 
                {
                    ps.close();
                }
                if (con != null) 
                {
                    freeConnection(con);
                }
            } 
            catch (SQLException e) 
            {
                System.err.println("A problem occurred when closing down the  borrowBook(int book_id,int member_id,String date,String due) method:\n" + e.getMessage());
            }
        }
        return newId;
    }

    @Override
    public int getAverageRating(int anime_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int average=0;
        
        try {
            con = this.getConnection();
            
            String query = " SELECT AVG(ratingNumber) as average where anime_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, anime_id);
            rs=ps.executeQuery();
            if(rs.next()){
                 average=rs.getInt("average");
            }
        }
            
      catch (SQLException ex) {
            System.out.println("A problem occurred while attempting to get the average of an anime in getAverageRating(int anime_id)");
            System.out.println("Error: " + ex.getMessage());
        }
        finally{
            if(rs != null){
                try {
                    rs.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the resultset in the getAverageRating(int anime_id)() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(ps != null){
                try {
                    ps.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the prepared statement in the getAverageRating(int anime_id)() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(con != null){
                freeConnection(con);
            }
        }
    return average;
}
}