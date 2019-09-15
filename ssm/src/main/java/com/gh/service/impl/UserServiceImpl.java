package com.gh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gh.dao.UserDao;
import com.gh.entity.User;
import com.gh.service.UserService;

@Service
public class UserServiceImpl  implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return userDao.findAllUser();
	}

	@Override
	public User findUser(Integer id) {
		// TODO Auto-generated method stub
		return userDao.findUser(id);
	}

	@Override
	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user);
	}

	@Override
	public void deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		userDao.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(User user) {
		// TODO Auto-generated method stub
		userDao.insert(user);
	}

	@Override
	public User findByUserName(String user_name) {
		// TODO Auto-generated method stub
		return userDao.findByUserName(user_name);
	}


}
