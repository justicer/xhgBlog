package com.gh.dao;

import java.util.List;

import com.gh.entity.User;

public interface UserDao {

	List<User> findAllUser();
	
	User findUser(Integer id);
	
	User updateUser(User user);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(User user);
	
}
