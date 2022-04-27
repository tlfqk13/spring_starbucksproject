package com.scit.starbucks.dao;

import com.scit.starbucks.uservo.StarbucksUserVO;

public interface UserMapper 
{
	//회원가입
	public int insertUser(StarbucksUserVO user);
	
	//로그인
	public StarbucksUserVO loginUser(StarbucksUserVO user);
	
}
