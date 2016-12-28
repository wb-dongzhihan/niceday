package com.dzh.ssm.dao;

import javax.annotation.Resource;

import com.dzh.ssm.entity.Dz_User;
@Resource
public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Dz_User record);

    int insertSelective(Dz_User record);

    Dz_User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dz_User record);

    int updateByPrimaryKey(Dz_User record);
}