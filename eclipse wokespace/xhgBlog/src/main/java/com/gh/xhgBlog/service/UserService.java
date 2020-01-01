package com.gh.xhgBlog.service;

import java.util.List;

import com.gh.xhgBlog.pojo.User;


public interface UserService {
	List<User> findAllUser();
	
	User findUser(Integer id);
	
	void updateUser(User user);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(User user);

	User findByUserName(String user_name);

	List<User> likeQueryUser(String userInfo);
}
