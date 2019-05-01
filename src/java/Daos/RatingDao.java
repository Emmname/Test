/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Daos.Dao;
import Daos.Dao;
import Dtos.Rating;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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

    
    /**
     * Adds a rating to an anime
     * @param anime_id   The anime id of the user is trying to add a rating to
     * @param ratingNumber   The rating number given by the user currently logged in we are looking for
     * @param user_id   The user id of the user currently logged in we are looking for
     * @return  A new ratingId.
     * If the new Id is -1, appropriate message will be returned.
     */
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
        } 
        
        catch (SQLException ex) {
            System.out.println("Error occured when trying to add a rating in the addRating(int anime_id,int ratingNumber, int user_id) method " + ex.getMessage());
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
    
    /**
     * Gets the average of the ratings for a given anime
     * @param anime_id  The anime id 
     * @return  A double that is the average of the rating for that one anime.
     * If no anime matches the animeId, appropriate message will be returned.
     */
    @Override
    public double getAverageRating(int anime_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        double average=0;
        
        try {
            con = this.getConnection();
            
            String query = " SELECT AVG(ratingNumber) as average from rating where anime_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, anime_id);
            rs=ps.executeQuery();
            while(rs.next()){
                 average=rs.getDouble("average");
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
    
    /**
     * Gets the anime Ids that is rated by a given rating id
     * @param ratingId  The rating id of the user currently logged in we are looking for
     * @return An arraylist of integers containing the animeIds that are rated by the rating Id
     * If none matches the ratingId, appropriate message will be returned.
     */
    @Override
     public ArrayList<Integer> getAnimeIdByRatingId(int ratingId){
           Connection con = null;
           PreparedStatement ps = null;
           ResultSet rs = null;
           
           ArrayList<Integer> animeId = new ArrayList();
           
           try{
               con = getConnection();
               String query = "Select anime_id from rating where rating_id=?";
               ps = con.prepareStatement(query);
               ps.setInt(1, ratingId);
               rs = ps.executeQuery();
               
               while(rs.next()){
                   int Id = rs.getInt("anime_id");
                   
                   animeId.add(Id);
               }
           
           
           }catch (SQLException e) {
            System.out.println("Exception occured in the getAnimeIdByRatingId() method: " + e.getMessage());
        } finally {
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
                System.out.println("Exception occured in the finally section of the getAnimeIdByRatingId() method: " + e.getMessage());
            }
        }

        return animeId;
           
}
     
     /**
     * Returns the number of rating Ids in the database
     * @return a number that is the number of rating ids in the database
     */

    @Override
    public int getNumberOfRatingIds() {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int ratingIds = 0;
        
        
        try{
            con = getConnection();
            
            String query = "Select Count(rating_id) as total from rating ";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                ratingIds=rs.getInt("total");
                
            }
        }catch (SQLException e) {
            System.out.println("Exception occured in the getNumberOfGenreIds() method: " + e.getMessage());
        } finally {
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
                System.out.println("Exception occured in the finally section of the getNumberOfGenreIds() method: " + e.getMessage());
            }
        }

        return ratingIds;
        
    }

    
    /**
     * Checks if that user already added a rating to that anime.
     * @param user_id The user id of the user currently logged in we are looking for
     * @param anime_id The Id of the anime we are trying to add a rating to.
     * @return True if it was found or false otherwise
     */
    @Override
    public boolean checkRatingUser(int user_id, int anime_id) {
        Connection con = null;
           PreparedStatement ps = null;
           ResultSet rs = null;
           boolean checked=true;
           
           try{
               con = getConnection();
               String query = "Select rating_id from rating where user_id=? and anime_id=?";
               ps = con.prepareStatement(query);
               ps.setInt(1, user_id);
               ps.setInt(2, anime_id);
               rs = ps.executeQuery();
               
               while(rs.next()){
                   checked=false;
                   
               }
           
           
           }catch (SQLException e) {
            System.out.println("Exception occured in the checkRatingUser(int user_id, int anime_id) method: " + e.getMessage());
        } finally {
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
                System.out.println("Exception occured in the finally section of the checkRatingUser(int user_id, int anime_id) method: " + e.getMessage());
            }
        }

        return checked;
    }
    /**
     * Returns the amount of ratings for that anime
     * @param anime_id The Id of the anime we are trying to get the rating from.
     * @return number of ids
     */
    @Override
    public int getNumberOfRatingIdsForAnime(int anime_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int ratingIds = 0;
        
        
        try{
            con = getConnection();
            
            String query = "Select Count(rating_id) as total from rating where anime_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1,anime_id);
            rs = ps.executeQuery();
            while(rs.next()){
                ratingIds=rs.getInt("total");
                
            }
        }catch (SQLException e) {
            System.out.println("Exception occured in the getNumberOfRatingIdsForAnime() method: " + e.getMessage());
        } finally {
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
                System.out.println("Exception occured in the finally section of the getNumberOfRatingIdsForAnime() method: " + e.getMessage());
            }
        }

        return ratingIds;
        
    }
    }
