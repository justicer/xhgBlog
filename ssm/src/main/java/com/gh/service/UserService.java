package com.gh.service;

import java.util.List;
import com.gh.entity.User;

public interface UserService {

List<User> findAllUser();
	
	User findUser(Integer id);
	
	void updateUser(User user);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(User user);

	User findByUserName(String user_name);

	List<User> likQueryUser(String userInfo);
	
}
