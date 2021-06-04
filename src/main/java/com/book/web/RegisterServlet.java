package com.book.web;

import com.book.pojo.User;
import com.book.service.UserService;
import com.book.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private UserService userService=new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     String code=request.getParameter("code");
     String email=request.getParameter("email");
     if("abcde".equalsIgnoreCase(code)){
            //验证码正确
         if(userService.existUsername(username)){
             System.out.println("用户名["+username+"]已存在");
             request.getRequestDispatcher("/pages/user/regist.html").forward(request,response);

         }
         else {
             userService.registerUser(new User(null,username,password,email));
             request.getRequestDispatcher("/pages/user/regist_success.html").forward(request,response);

         }
     }else {
         //跳回注册页面
         System.out.println("验证码错误["+code+"]错误");
         request.getRequestDispatcher("/pages/user/regist.html").forward(request,response);

     }
    }
}
