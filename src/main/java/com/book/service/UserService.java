package com.book.service;
import com.book.pojo.User;

public interface UserService {
/**
 * 注册用户
 * @param user
 * @return null 说明登录失败
 */
   public void registerUser(User user);
/**
 *登录
 * @param user
 * @return
 */
public User login(User user);
/**
 * 检查用户名是否存在
 * @param username
 * @return true表示用户存在 返回false表示用户名可用
 */
public boolean existUsername(String username);


}
