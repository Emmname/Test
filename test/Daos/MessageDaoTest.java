/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Message;
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
public class MessageDaoTest {
    private MessageDao messageDao;
    public MessageDaoTest() {
        messageDao = new MessageDao("animetest");
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
     * Test of getMsgByAnimeId method, of class MessageDao.
     */
    @Test
    public void testGetMsgByAnimeId() {
        System.out.println("getMsgByAnimeId");
        int animeId = 6;
        Message m = new Message(1,10,6,"the first message","i like it","");
        ArrayList<Message> mlist= new ArrayList<Message>();
        mlist.add(m);
        ArrayList<Message> expResult = mlist;
        ArrayList<Message> result = messageDao.getMsgByAnimeId(animeId);
        assertEquals(expResult, result);

    }

    /**
     * Test of getMsgByUserId method, of class MessageDao.
     */
    @Test
    public void testGetMsgByUserId() {
        System.out.println("getMsgByUserId");
        int userId = 10;
         Message m = new Message(1,10,6,"the first message","i like it","");
         ArrayList<Message> mlist= new ArrayList<Message>();
         mlist.add(m);
        ArrayList<Message> expResult = mlist;
        ArrayList<Message> result = messageDao.getMsgByUserId(userId);
        assertEquals(expResult, result);

    }

    /**
     * Test of addMessage method, of class MessageDao.
     */
    @Test
    public void testAddMessage() {
        System.out.println("addMessage");
        int userId = 9;
        int animeId = 2;
        String title = "The new title";
        String context = "It is nice";
        String wholeft = "hugh";
        int expResult = 3;
        int result = messageDao.addMessage(userId, animeId, title, context, wholeft);
        assertEquals(expResult, result);

    }

    /**
     * Test of removeMessageByID method, of class MessageDao.
     */
    @Test
    public void testRemoveMessageByID() {
        System.out.println("removeMessageByID");
        int messageId = 3;
        boolean expResult = true;
        boolean result = messageDao.removeMessageByID(messageId);
        assertEquals(expResult, result);

    }
    
}
