package com.cn.ssm.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cn.ssm.dao.UsersDao;
import com.cn.ssm.domain.Users;
@Component("userService")
public class UsersServiceImpl implements UsersService{
	@Resource
	private UsersDao usersDao;
	
	public Users getUserById(int userId) {
		
		return this.usersDao.selectByPrimaryKey(userId);
	}

	public List<Users> getAllUsers() {
		return this.usersDao.selectAllUsers();
		
	}

	public boolean delteteUser(int id) {
		if(usersDao.deleteByPrimaryKey(id)==1){
		return true;
		}
		return false;
	}

	public boolean addUser(Users users) {
		if(usersDao.insert(users)==1){
			return true;
		}
		return false;
		
	}

	public boolean updateUser(Users user) {
		if(usersDao.updateByPrimaryKey(user)==1){
			return true;
		}
		return false;
	}

}
