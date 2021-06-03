package com.book.test;

import com.book.pojo.User;
import com.book.service.UserService;
import com.book.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {
UserService userService=new UserServiceImpl();

    @Test
    public void registerUser() {
        userService.registerUser(new User(null,"bbj18","9999","bbj168@qq.com"));

    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null,"mike","123",null)));
    }

    @Test
    public void existUsername() {
        if(userService.existUsername("mike")){
            System.out.println("用户名已存在");
        }
        else {
            System.out.println("用户名可用");
        }
    }
}