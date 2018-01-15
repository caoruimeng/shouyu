package cn.rmhfh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.rmhfh.entity.User;


@Controller
public class UserController {

	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}
	
	
	@RequestMapping("user_login")
	public String login(HttpSession session,User user){
		if("rmhfh".equals(user.getUsername()) && "rmhfh".equals(user.getPassword())){
			session.setAttribute("admin_user", user);
			return "redirect:/admin/stove/detail";
		}
		return "redirect:/login";
	}
	
}
