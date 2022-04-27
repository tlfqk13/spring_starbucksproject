package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.mygradevo.MyGradeVO;
import com.scit.starbucks.ordervo.CartVO;

@Repository
public class MyGradeDAO 
{
	@Autowired
	private SqlSession session;

	public ArrayList<MyGradeVO> myGradeSelectList() 
	{
		ArrayList<MyGradeVO> myGradeSelectList=null;
		
		try
		{
			MyGradeMapper mapper=session.getMapper(MyGradeMapper.class);
			myGradeSelectList=mapper.myGradeSelectList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return myGradeSelectList;
	}
}
