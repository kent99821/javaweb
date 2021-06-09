package com.book.dao.impl;
import com.book.dao.UserDao;
import com.book.pojo.User;

public class UserDaoImpl extends BaseDao implements UserDao{


    @Override
    public User queryUserByUsername(String username) {
     String sql="select `id`,`username`,`password`,`email` from user where username=?";
     return queryForOne(User.class,sql,username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql="select `id`,`username`,`password`,`email` from user where username=? and password=?";

        return queryForOne(User.class,sql,username,password);

    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into user(`id`,`username`,`password`,`email`)values(?,?,?,?)";
        return update(sql,user.getId(),user.getUsername(),user.getPassword(),user.getEmail());
    }

}
