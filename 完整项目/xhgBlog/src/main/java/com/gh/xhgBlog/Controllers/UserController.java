package com.gh.xhgBlog.Controllers;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.gh.xhgBlog.pojo.Article;
import com.gh.xhgBlog.pojo.User;
import com.gh.xhgBlog.service.ArticleService;
import com.gh.xhgBlog.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	
	
	// 首页
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}
	
	
		
	
	// 跳转注册页面
	@RequestMapping(value="/ToRegister")
	public String ToRegister() {
		return "register";
	}
	
	// 跳转登录页面
	@RequestMapping(value="/ToLogin")
	public String ToLogin() {
		return "login";
	}
	
	// 用户注册
	@RequestMapping(value="/register")
	public String register(HttpServletRequest request,Model model,User user) {
		userService.insert(user);
		return "index";
	}
	
	// 去修改用户页面
	@RequestMapping(value="/ToUpdate")
	public String ToUpdate() {
		return "update";
	}
	
	
	// 修改用户
	@RequestMapping(value="/update")
	public String update(HttpServletRequest request,Model model,Integer id) {
		userService.findUser(id);
		User user = new User();
		userService.updateUser(user);
		return null;
	}
	
	// 删除用户
	@RequestMapping(value="/delete")
	public String delete(HttpServletRequest request,Model model,Integer id) {
		userService.deleteByPrimaryKey(id);
		return null;
	}
	
}
