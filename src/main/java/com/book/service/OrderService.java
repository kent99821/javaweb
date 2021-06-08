package com.book.service;

import com.book.pojo.Cart;

public interface OrderService {
    public String createOrder(Cart cart, Integer userId);
}

