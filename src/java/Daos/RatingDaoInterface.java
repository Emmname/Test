/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Rating;
import java.util.ArrayList;

/**
 *
 * @author Jordan
 */
public interface RatingDaoInterface {
    public int addRating(int anime_id,int ratingNumber, int user_id);
    public double getAverageRating(int anime_id);
    public ArrayList<Integer> getAnimeIdByRatingId(int ratingId);
    public int getNumberOfRatingIds();
    public boolean checkRatingUser(int user_id, int anime_id);
}
