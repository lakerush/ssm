package com.cn.ssm.dao;


import java.util.List;

import com.cn.ssm.domain.Users;

public interface UsersDao {
    int deleteByPrimaryKey(int userid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(int userid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    List selectAllUsers();
}