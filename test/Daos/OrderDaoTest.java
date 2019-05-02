/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Order;
import java.sql.Date;
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
public class OrderDaoTest {
    private OrderDao orderDao;
    public OrderDaoTest() {
        orderDao = new OrderDao("animetest");
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
     * Test of addOrder method, of class OrderDao.
     */
//    @Test
//    public void testAddOrder() {
//       System.out.println("addOrder");
//        int userId = 1;
//        Date date = new Date(23-10-2015);
//        Date datePaid = date;
//        String paymentType = "visa";
//        int AmountPaid = 5;
//        Order expResult = new Order(4,1, (java.sql.Date) datePaid,null,"visa",5);
//        int result = orderDao.addOrder(userId, datePaid, paymentType, AmountPaid);
//        assertEquals(expResult, result);
//    }
    
}
