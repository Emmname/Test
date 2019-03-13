/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Order;
import java.util.Date;

/**
 *
 * @author D00188619
 */
public interface OrderDaoInterface {
    public int addOrder(int userId, Date datePaid, String paymentType,int AmountPaid);
}
