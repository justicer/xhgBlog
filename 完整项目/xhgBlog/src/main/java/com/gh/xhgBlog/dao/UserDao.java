package com.gh.xhgBlog.dao;

import java.util.List;
import com.gh.xhgBlog.pojo.User;

public interface UserDao {

	List<User> findAllUser();
	
	User findUser(Integer id);
	
	void updateUser(User user);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(User user);

	User findByUserName(String user_name);

	List<User> likeQueryUser(String userInfo);
	
}
