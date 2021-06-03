package com.book.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import com.book.utils.JdbcUtils;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDao {
//    使用DBUtils 操作数据库
    private QueryRunner queryRunner=new QueryRunner();
//    update用来执行insert/update/delete语句
//    返回-1表示影响的行数
    public int update(String sql,Object ... args){
        Connection connection=JdbcUtils.getConnection();
        try {
           return queryRunner.update(connection,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
        return  -1;
    }
//    查询返回一个javaBean的sql语句
//    type:返回的对象类型
//    sql:sql语句
//    args：sql对应的参数值
//    返回的对象泛型
    public <T> T queryForone(Class<T> type,String sql,Object ... args){
        Connection con=JdbcUtils.getConnection();
        try {
            return queryRunner.query(con,sql,new BeanHandler<T>(type),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(con);
        }
        return  null;
    }
    //    查询返回多个javaBean的sql语句
//    type:返回的对象类型
//    sql:sql语句
//    args：sql对应的参数值
//    返回的对象泛型
    public <T>List<T> queryForList(Class<T> type,String sql,Object ... args){
        Connection con=JdbcUtils.getConnection();
        try {
            return queryRunner.query(con,sql,new BeanListHandler<T>(type),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(con);
        }
        return  null;
    }
    //    查询返回一行一列的sql语句
//    sql:sql语句
//    args：sql对应的参数值
//    返回的对象泛型
public Object queryForSingleValue(String sql,Object ... args){
        Connection conn=JdbcUtils.getConnection();
    try {
       return queryRunner.query(conn,sql,new ScalarHandler(),args);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }finally {
        JdbcUtils.close(conn);
    }
    return null;
}
}
