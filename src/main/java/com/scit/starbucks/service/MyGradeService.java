package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.MyGradeDAO;
import com.scit.starbucks.mygradevo.MyGradeVO;

@Service
public class MyGradeService 
{
	@Autowired
	private MyGradeDAO myGradeDao;

	public ArrayList<MyGradeVO> myGradeSelectList() 
	{
		return myGradeDao.myGradeSelectList();
	}
}
