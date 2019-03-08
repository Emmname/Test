/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import Dtos.Favourite;
import java.util.ArrayList;

/**
 *
 * @author D00195567
 */
public interface FavouriteDaoInterface {
    public ArrayList<Integer> getFavourites(int user_id);
    public int addFavourite(int user_id, int anime_id);
    public boolean checkExist(int user_id, int anime_id);
    public ArrayList<Integer> getAnimeIdByFavouriteId(int favouriteId);
}
