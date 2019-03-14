/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

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
public class RatingDaoTest {
    private RatingDao ratingDao;
    public RatingDaoTest() {
        ratingDao = new RatingDao("anime1");
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
     * Test of addRating method, of class RatingDao.
     */
    @Test
    public void testAddRating() {
        System.out.println("addRating");
        int anime_id = 1;
        int ratingNumber = 1;
        int user_id = 5;
        int result = ratingDao.addRating(anime_id, ratingNumber, user_id);
        assertTrue( result>15);

    }

    /**
     * Test of getAverageRating method, of class RatingDao.
     */
    @Test
    public void testGetAverageRating() {
        System.out.println("getAverageRating");
        int anime_id = 4;
        double expResult = 4.5;
        double result = ratingDao.getAverageRating(anime_id);
        assertEquals(expResult, result, 0.0);

    }

 

    /**
     * Test of getNumberOfRatingIds method, of class RatingDao.
     */
    @Test
    public void testGetNumberOfRatingIds() {
        System.out.println("getNumberOfRatingIds");
        RatingDao instance = null;
        int expResult = 15;
        int result = ratingDao.getNumberOfRatingIds();
        assertEquals(expResult, result);

    }

    /**
     * Test of checkRatingUser method, of class RatingDao.
     */
    @Test
    public void testCheckRatingUser() {
        System.out.println("checkRatingUser");
        int user_id = 1;
        int anime_id = 4;
        boolean expResult = false;
        boolean result = ratingDao.checkRatingUser(user_id, anime_id);

    }
    
}
