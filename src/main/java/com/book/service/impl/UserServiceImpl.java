package com.book.service.impl;

import com.book.dao.UserDao;
import com.book.dao.impl.UserDaoImpl;
import com.book.pojo.User;
import com.book.service.UserService;

public class UserServiceImpl implements UserService {
private UserDao userDao=new UserDaoImpl();
    @Override
    public void registerUser(User user) {
    userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());

    }

    @Override
    public boolean existUsername(String username) {
// 用户名不在数据库 用户名可用
        if(userDao.queryUserByUsername(username)==null){
            return false;
        }
        else {
            return true ;
        }

    }
}
