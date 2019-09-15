package com.gh.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gh.entity.User;
import com.gh.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	public UserService userService;
	
	
	    //进入登录页面
		@RequestMapping(value="/register")
		public String register() {
			return "register";
		}
		  //进入注册页面
		@RequestMapping(value="/login")
		public String login() {
			return "login";
		}
		
		//验证登录
		@ResponseBody
		@RequestMapping(value="/checkLogin")
		public Map<String, String> checkLogin(String user_name,String password,HttpSession session) {
			Map<String, String> resultMap = new HashMap<String,String>();
			try {
				User user = userService.findByUserName(user_name);
				if(user != null) {
					if(password.equals(user.getPassword())) {
						session.setAttribute("user", user);
						resultMap.put("message", "ok");
					}else {
						resultMap.put("message", "密码错误！");
					}
				}else {
					resultMap.put("message", "用户不存在！");
				}
			} catch (Exception e) {
				resultMap.put("message", "用户名或密码错误！");
				e.printStackTrace();
			}
			return resultMap;
		}
		
		//退出
		@RequestMapping(value="/loginOut")
		public String loginOut(HttpSession session) {
			session.invalidate();
			return "redirect:/user/login";
		}
		
		//验证注册用户信息
		@ResponseBody
		@RequestMapping(value="/insert")
		public Map<String, String> insert(User user) {
			Map<String, String> resultMap = new HashMap<String,String>();
			try {
				User isExistuUser = userService.findByUserName(user.getUser_name());
				if(isExistuUser == null) {
					resultMap.put("message", "ok");
					userService.insert(user);
				}else {
					resultMap.put("message", "用户名已存在！");
				}
			} catch (Exception e) {
				resultMap.put("message", "输入信息有误，请重新输入！");
				e.printStackTrace();
			}
			return resultMap;
		}
	
	//查找全部用户
	@RequestMapping(value="/list")
	public String list(HttpServletRequest request,HttpServletResponse response,Model model) {
		List<User> list = userService.findAllUser();
		model.addAttribute("list",list);
		return "list";
	}
	
	   //删除用户
		@RequestMapping(value="/delete")
		public String delete(HttpServletRequest request,HttpServletResponse response,Model model,Integer id) {
			userService.deleteByPrimaryKey(id);
			List<User> list = userService.findAllUser();
			model.addAttribute("list",list);
			return "list";
		}
		
		 //修改用户
		@RequestMapping(value="/update")
		public String update(HttpServletRequest request,HttpServletResponse response,Model model,User user) {
			userService.updateUser(user);
			List<User> list = userService.findAllUser();
			model.addAttribute("list",list);
			return "list";
		}

}
