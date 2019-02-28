/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Genre;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class GenreDao extends Dao implements GenreDaoInterface {
     public GenreDao(String databaseName) {
        super(databaseName);
    }
     
     @Override
     public int getGenreId(String genreName){
 
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int genreId = 0;
        
        
        try{
            con = getConnection();
            
            String query = "Select genre_id from genre where genre_name LIKE?";
            ps = con.prepareStatement(query);
            ps.setString(1, "%"+ genreName +"%");
            rs = ps.executeQuery();
            while(rs.next()){
                genreId=rs.getInt("genre_id");
                
            }
        }catch (SQLException e) {
            System.out.println("Exception occured in the getGenreId**() method: " + e.getMessage());
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
                System.out.println("Exception occured in the finally section of the getGenreId() method: " + e.getMessage());
            }
        }

        return genreId;
        
        }

     
     
     @Override
     public int getNumberOfGenreIds(String genreName){
 
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int genreIds = 0;
        
        
        try{
            con = getConnection();
            
            String query = "Select Count(genre_id) as total from genre where genre_name LIKE?";
            ps = con.prepareStatement(query);
            ps.setString(1, "%"+ genreName +"%");
            rs = ps.executeQuery();
            while(rs.next()){
                genreIds=rs.getInt("total");
                
            }
        }catch (SQLException e) {
            System.out.println("Exception occured in the getGenreId**() method: " + e.getMessage());
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
                System.out.println("Exception occured in the finally section of the getGenreId() method: " + e.getMessage());
            }
        }

        return genreIds;
        
        }
     }

