/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

import java.sql.Date;

/**
 *
 * @author D00188619
 */
public class Order {
    private int order_id;
    private int user_id;
    private Date date_paid;
    private Date date_expired;
    private String PaymentType;
    private String AmountPaid;

    public Order() {
        order_id=-1;
        date_paid =null;
        date_expired=null;
        PaymentType= null;
        AmountPaid=null;
    }
        
    

    public Order(int order_id, int user_id, Date date_paid, Date date_expired, String PaymentType, String AmountPaid) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.date_paid = date_paid;
        this.date_expired = date_expired;
        this.PaymentType = PaymentType;
        this.AmountPaid = AmountPaid;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Date getDate_paid() {
        return date_paid;
    }

    public void setDate_paid(Date date_paid) {
        this.date_paid = date_paid;
    }

    public Date getDate_expired() {
        return date_expired;
    }

    public void setDate_expired(Date date_expired) {
        this.date_expired = date_expired;
    }

    public String getPaymentType() {
        return PaymentType;
    }

    public void setPaymentType(String PaymentType) {
        this.PaymentType = PaymentType;
    }

    public String getAmountPaid() {
        return AmountPaid;
    }

    public void setAmountPaid(String AmountPaid) {
        this.AmountPaid = AmountPaid;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + this.order_id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Order other = (Order) obj;
        if (this.order_id != other.order_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", user_id=" + user_id + ", date_paid=" + date_paid + ", date_expired=" + date_expired + ", PaymentType=" + PaymentType + ", AmountPaid=" + AmountPaid + '}';
    }
    
    
}
