package com.gh.service;

import java.util.List;
import java.util.Map;

import com.gh.entity.User;

public interface UserService {

List<User> findAllUser();
	
	User findUser(Integer id);
	
	User updateUser(User user);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(User user);

	User findByUserName(String user_name);
	
}
