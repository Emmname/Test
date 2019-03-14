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
public class GenreDaoTest {
        private GenreDao genreDao;
    public GenreDaoTest() {
        genreDao = new GenreDao("anime1");
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
     * Test of getGenreId method, of class GenreDao.
     */
    @Test
    public void testGetGenreId() {
        System.out.println("getGenreId");
        String genreName = "Action";
        int expResult = 4;
        int result = genreDao.getGenreId(genreName);
        assertEquals(expResult, result);

    }

    /**
     * Test of getNumberOfGenreIds method, of class GenreDao.
     */
    @Test
    public void testGetNumberOfGenreIds() {
        System.out.println("getNumberOfGenreIds");
        String genreName = "Action";
        int expResult = 1;
        int result = genreDao.getNumberOfGenreIds(genreName);
        assertEquals(expResult, result);

    }
    
}
