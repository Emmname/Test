/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author user
 */
public class FavouriteDaoTest {
    private FavouriteDao favouriteDao;
    public FavouriteDaoTest() {
        favouriteDao = new  FavouriteDao("animetest");
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getFavourites method, of class FavouriteDao.
     */
    
    @Test
    public void testGetFavourites() {
        System.out.println("getFavourites");
        int user_id = 1;
        ArrayList<Integer> iList = new ArrayList<Integer>();
        iList.add(5);
      
        ArrayList<Integer> expResult = iList;
        ArrayList<Integer> result = favouriteDao.getFavourites(user_id);
        assertEquals(expResult, result);
    }

    /**
     * Test of addFavourite method, of class FavouriteDao.
     */
    @Test
    public void testAddFavourite() {
         System.out.println("addFavourite");
        int user_id = 2;
        int anime_id = 3;
        int result = favouriteDao.addFavourite(user_id, anime_id);
        assertTrue( result>2);

    }

    /**
     * Test of getAnimeIdByFavouriteId method, of class FavouriteDao.
     */
    @Test
    public void testGetAnimeIdByFavouriteId() {
        System.out.println("getAnimeIdByFavouriteId");
        int favouriteId = 1;
        ArrayList<Integer> expResult = favouriteDao.getAnimeIdByFavouriteId(favouriteId);
        ArrayList<Integer> result = favouriteDao.getAnimeIdByFavouriteId(favouriteId);
        assertEquals(expResult, result);
    }

    /**
     * Test of checkExist method, of class FavouriteDao.
     */
    @Test
    public void testCheckExist() {
         System.out.println("checkExist");
        int user_id = 1;
        int anime_id = 5;
        boolean expResult = false;
        boolean result = favouriteDao.checkExist(user_id, anime_id);
        assertEquals(expResult, result);
    }
    
}
