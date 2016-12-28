package com.dzh.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.dzh.ssm.dao.UserDao;
import com.dzh.ssm.entity.Dz_User;
import com.dzh.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	@Override
	public Dz_User getUserById(int userId) {
		return userDao.selectByPrimaryKey(userId);
	}

	@Override
	public int saveUser(String userName) {
		if(StringUtils.isEmpty(userName)){
			return 0;

		}
		java.util.Random random=new java.util.Random();// 定义随机类
		int id=random.nextInt(10000000);
		Dz_User record = new Dz_User();
		record.setId(id);
		record.setUserName(userName);
		int result=random.nextInt(100);
		record.setAge(result);
		record.setPassword(random.nextInt(100)+"");
		return userDao.insert(record);
	}

}
