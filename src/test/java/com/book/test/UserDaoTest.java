package com.book.test;

import com.book.dao.UserDao;
import com.book.dao.impl.UserDaoImpl;
import com.book.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {
    UserDao userDao=new UserDaoImpl();
    @Test
    public void queryUserByUsername() {
       
        if (userDao.queryUserByUsername("mike")==null) {
            System.out.println("用户名可用！");
        }else {
            System.out.println("用户名已存在！");
        }
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        if (        userDao.queryUserByUsernameAndPassword("mike","123") ==null) {
            System.out.println("用户名或密码错误，登录失败！");
        }else {
            System.out.println("登录成功！");
        }

    }

    @Test
    public void saveUser() {
        System.out.println(userDao.saveUser(new User(null,"msd","123","dsada2280@qq.com")));


    }
}