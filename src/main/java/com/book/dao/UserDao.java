package com.book.dao;
import com.book.pojo.User;
public interface UserDao {

    //  根据用户名查询用户信息
    //  如果返回null 这说明没有这个用户

    public User queryUserByUsername(String username);

    //    根据用户名和密码查询
    //  如果返回null 这说明用户或密码错误
    public User queryUserByUsernameAndPassword(String username,String password);

    //  保存用户信息 返回-1表示保存失败

    public int saveUser(User user);

}
