package com.dzh.ssm.service;

import com.dzh.ssm.entity.Dz_User;

public interface UserService {
	public Dz_User getUserById(int userId);  
	
    int saveUser(String userName);

    
}

