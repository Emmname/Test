/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.User;
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
public class UserDaoTest {
    private UserDao userDao;
    public UserDaoTest() {
        userDao = new UserDao("animetest");
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
     * Test of getUserByUsernamePassword method, of class UserDao.
     */
    @Test
    public void testGetUserByUsernamePassword() {
        System.out.println("getUserByUsernamePassword");
        String username = "12345678";
        String password = "12345678";
        User expResult = new User(10,"12345678","1234578@gmail.com","12345678",0);
        User result = userDao.getUserByUsernamePassword(username, password);
        assertEquals(expResult, result);
        

    }

    /**
     * Test of registerUser method, of class UserDao.
     */
    @Test
    public void testRegisterUser() {
        System.out.println("registerUser");
        String username = "2345678";
        String password = "2345678";
        String email = "2345678@gmail.com";
  
        int result = userDao.registerUser(username, password, email);
        assertTrue(result>10);
        

    }

    /**
     * Test of updateUserStatus method, of class UserDao.
     */
    @Test
    public void testUpdateUserStatus() {
        System.out.println("updateUserStatus");
        int userId = 10;
        int Status = 1;
        User expResult = new User(5,"12345678","12345678@gmail.com","12345678",0);
        int result = userDao.updateUserStatus(userId, Status);
        assertEquals(expResult, result);
        
        
    }



    /**
     * Test of getUserById method, of class UserDao.
     */
     @Test
    public void testGetUserById() {
        System.out.println("getUserById");
        int userId = 10;
        User expResult = new User(10,"12345678","1234578@gmail.com","12345678",0);
        User result = userDao.getUserById(userId);
        assertEquals(expResult, result);

    }

    /**
     * Test of getUserByEmail method, of class UserDao.
     */
     @Test
    public void testGetUserByEmail() {
        System.out.println("getUserByEmail");
        String email = "12345678@gmail.com";
        User expResult =  new User(10,"12345678","1234578@gmail.com","12345678",0);
        User result = userDao.getUserByEmail(email);
        assertEquals(expResult, result);

    }
    
}
