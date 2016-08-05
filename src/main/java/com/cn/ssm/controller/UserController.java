package com.cn.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.ssm.domain.Users;
import com.cn.ssm.service.UsersService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UsersService userservice;
	List<Users> userlist;
	 @RequestMapping("/showUser")  
	    public String toIndex(HttpServletRequest request,Model model){  
		 userlist=this.userservice.getAllUsers();
		 model.addAttribute("users", userlist);
		 return "showUser";
	    }
	 
	@RequestMapping("/deleteUser/{id}")
		public String deleteUser(Model model,@PathVariable("id") int id){
		if(userservice.delteteUser(id)){
			userlist=this.userservice.getAllUsers();
			model.addAttribute("users", userlist);
			return "showUser";
		}
		return null;
	}
	@RequestMapping("/toAddUser")
	public String toAddUser(){
		return "addUser";
	}
	@RequestMapping("/addUser")
	public String addUser(@ModelAttribute("users") Users users,Model model){
		if(userservice.addUser(users)){
			userlist=this.userservice.getAllUsers();
			model.addAttribute("users", userlist);
			return "showUser";
		}
		return null;
	}
	@RequestMapping("/toUpdateUser/{id}")
	public String toUpdateUser(Model model,@PathVariable("id") int id){
		Users user=userservice.getUserById(id);
		model.addAttribute("user",user);
		return "updateUser";
	}
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("users") Users users,Model model){
		if(userservice.updateUser(users)){
			userlist=this.userservice.getAllUsers();
			model.addAttribute("users", userlist);
			return "showUser";
		}
		return null;
	}
}
