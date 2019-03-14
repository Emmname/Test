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
public class GenreAnimeDaoTest {
        private GenreAnimeDao genreanimeDao;
    public GenreAnimeDaoTest() {
        genreanimeDao = new GenreAnimeDao("anime1");
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
     * Test of getAnimeIdBygenreId method, of class GenreAnimeDao.
     */
    @Test
    public void testGetAnimeIdBygenreId() {
        System.out.println("getAnimeIdBygenreId");
        int genreId = 1;
        ArrayList<Integer> expResult = genreanimeDao.getAnimeIdBygenreId(genreId);
        ArrayList<Integer> result = genreanimeDao.getAnimeIdBygenreId(genreId);
        assertEquals(expResult, result);

    }
    
}
