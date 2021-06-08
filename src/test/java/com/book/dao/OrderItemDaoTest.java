package com.book.dao;

import com.book.dao.impl.OrderItemDaoImpl;
import com.book.pojo.OrderItem;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderItemDaoTest {

    @Test
    public void saveOrderItem() {
        OrderItemDao orderItemDao = new OrderItemDaoImpl();

        orderItemDao.saveOrderItem(new OrderItem(null,"java从入门到精通", 1,new BigDecimal(100),new BigDecimal(100),"1234567891"));
        orderItemDao.saveOrderItem(new OrderItem(null,"javaScript从入门到精通", 2,new BigDecimal(100),new BigDecimal(200),"1234567891"));
        orderItemDao.saveOrderItem(new OrderItem(null,"Netty入门", 1,new BigDecimal(100),new BigDecimal(100),"1234567891"));

    }
}