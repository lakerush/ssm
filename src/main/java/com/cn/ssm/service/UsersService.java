package com.cn.ssm.service;
import java.util.List;

import com.cn.ssm.domain.Users;

public interface UsersService {
	 public Users getUserById(int userId); 
	 public List<Users> getAllUsers();
	 public boolean   delteteUser(int id);
	 public boolean addUser(Users users);
	 public boolean updateUser(Users user);
}
