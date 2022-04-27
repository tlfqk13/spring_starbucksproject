package com.scit.starbucks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.UserDAO;
import com.scit.starbucks.uservo.StarbucksUserVO;

@Service
public class UserService 
{
	@Autowired
	private UserDAO userDao;

	public int insertUser(StarbucksUserVO user) 
	{
		int result=userDao.insertUser(user);
		return result;
	}

	public StarbucksUserVO loginUser(StarbucksUserVO user) 
	{
		StarbucksUserVO loginUser=userDao.loginUser(user);
		return loginUser;
	}
}
