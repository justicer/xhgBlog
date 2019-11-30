package com.gh.xhgBlog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gh.xhgBlog.dao.UserDao;
import com.gh.xhgBlog.pojo.User;
import com.gh.xhgBlog.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
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
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
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
	public User findByUserName(String name) {
		// TODO Auto-generated method stub
		return userDao.findByUserName(name);
	}

	@Override
	public List<User> likeQueryUser(String userInfo) {
		// TODO Auto-generated method stub
		return userDao.likeQueryUser(userInfo);
	}

}
