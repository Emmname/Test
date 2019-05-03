/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.GenreAnime;
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
        genreanimeDao = new GenreAnimeDao("animetest");
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
        int genreId = 4;
        ArrayList<Integer> aList = new ArrayList<Integer>(); 
        aList.add(6);
        aList.add(10);
        ArrayList<Integer> expResult = aList;
        ArrayList<Integer> result = genreanimeDao.getAnimeIdBygenreId(genreId);
        assertEquals(expResult, result);

    }
    
}
