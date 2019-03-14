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
        userDao = new UserDao("anime1");
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
        String username = "12345";
        String password = "12345";
        User expResult = new User(5,"12345","12345@qq.com","12345",2);
        User result = userDao.getUserByUsernamePassword(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of registerUser method, of class UserDao.
     */
    @Test
    public void testRegisterUser() {
        System.out.println("registerUser");
        String username = "123456";
        String password = "123456";
        String email = "123456@gmail.com";
  
        int result = userDao.registerUser(username, password, email);
        assertTrue(result>5);
        // TODO review the generated test code and remove the default call to fail.

    }

    /**
     * Test of updateUserStatus method, of class UserDao.
     */
    @Test
    public void testUpdateUserStatus() {
        System.out.println("updateUserStatus");
        int userId = 5;
        int Status = 1;
        User expResult = new User(5,"12345","12345@qq.com","12345",2);
        int result = userDao.updateUserStatus(userId, Status);
        assertEquals(expResult, result);
        
        
    }

    /**
     * Test of getSaltByUsername method, of class UserDao.
     */
    @Test
    public void testGetSaltByUsername() {
        System.out.println("getSaltByUsername");
        String username = "12345";
        byte[] expResult = null;
        byte[] result = userDao.getSaltByUsername(username);
        assertArrayEquals(expResult, result);

    }
    
}
