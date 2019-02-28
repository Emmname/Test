/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author D00188619
 */
public class GenreAnimeDao extends Dao implements GenreAnimeDaoInterface{
     public GenreAnimeDao(String dbName){
        super(dbName);
    }
     
    @Override
       public ArrayList<Integer> getAnimeIdBygenreId(int genreId){
           Connection con = null;
           PreparedStatement ps = null;
           ResultSet rs = null;
           
           ArrayList<Integer> animeId = new ArrayList();
           
           try{
               con = getConnection();
               String query = "Select anime_id from genreanime where genre_id=?";
               ps = con.prepareStatement(query);
               ps.setInt(1, genreId);
               rs = ps.executeQuery();
               
               while(rs.next()){
                   int Id = rs.getInt("anime_id");
                   
                   animeId.add(Id);
               }
           
           
           }catch (SQLException e) {
            System.out.println("Exception occured in the getAnimeIdBygenreId() method: " + e.getMessage());
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
                System.out.println("Exception occured in the finally section of the getAnimeIdBygenreId() method: " + e.getMessage());
            }
        }

        return animeId;
           
}
}
