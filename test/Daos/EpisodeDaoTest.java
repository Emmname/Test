/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Episode;
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
public class EpisodeDaoTest {
    private EpisodeDao episodeDao;
    public EpisodeDaoTest() {
         episodeDao = new EpisodeDao("animeTest");
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
     * Test of getEpisodeByAnimeId method, of class EpisodeDao.
     */
    @Test
    public void testGetEpisodeByAnimeId() {
        System.out.println("getEpisodeByAnimeId");
        int animeId = 3;
         ArrayList<Episode> eList = new ArrayList<Episode>();
         Episode e = new Episode(1,2,11,"Hagane no renkinjutsushi (Fullmetal Alchemist)",null);
         eList.add(e);
        ArrayList<Episode> expResult = eList;
        ArrayList<Episode> result = episodeDao.getEpisodeByAnimeId(animeId);
        assertEquals(expResult, result);

    }
    
}
