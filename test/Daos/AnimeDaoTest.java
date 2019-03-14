/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import java.util.ArrayList;
import java.sql.Date;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author D00188619
 */
public class AnimeDaoTest {
        private AnimeDao animeDao;
    public AnimeDaoTest() {
        animeDao = new AnimeDao("anime1");
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
     * Test of getAnimebyWords method, of class AnimeDao.
     */
    @Test
    public void testGetAnimebyWords() {
        System.out.println("getAnimebyWords");
        String animeName = "one";
        Date date = new Date(2015-10-05);
        Anime a1 = new Anime(1,"One Punch Man",date,"Tomohiro Suzuki","One Punch Man.jpg");
        ArrayList<Anime> expResult = new ArrayList();
        expResult.add(a1);
        ArrayList<Anime> result = animeDao.getAnimebyWords(animeName);
        assertEquals(expResult, result);

    }

    /**
     * Test of getAnimeById method, of class AnimeDao.
     */
    @Test
    public void testGetAnimeById() {
        System.out.println("getAnimeById");
        int animeId = 1;
        Date date = new Date(2015-10-05);
        Anime expResult = new Anime(1,"One Punch Man",date,"Tomohiro Suzuki","One Punch Man.jpg");
        Anime result = animeDao.getAnimeById(animeId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }


    
}
