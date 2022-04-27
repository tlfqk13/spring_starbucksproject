package com.scit.starbucks.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.uservo.StarbucksUserVO;

@Repository
public class UserDAO 
{
	
	@Autowired
	private SqlSession session;
	
	public int insertUser(StarbucksUserVO user) 
	{	
		int result=0;
		try 
		{
			UserMapper mapper=session.getMapper(UserMapper.class);
			result=mapper.insertUser(user);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	public StarbucksUserVO loginUser(StarbucksUserVO user) 
	{
		UserMapper mapper=session.getMapper(UserMapper.class);
		StarbucksUserVO loginUser=null;
		
		try
		{
			loginUser=mapper.loginUser(user);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return loginUser;
	}

}
