package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.drinkvo.CustomInfoVO;
import com.scit.starbucks.drinkvo.DrinkSizeVO;
import com.scit.starbucks.drinkvo.DrinkVO;

@Repository
public class DrinkDAO 
{
	
	@Autowired
	private SqlSession session;
	
	public ArrayList<DrinkVO> drinkSelectList()
	{
		ArrayList<DrinkVO> drinkList=null;
		
		try
		{
			DrinkMapper mapper=session.getMapper(DrinkMapper.class);
			drinkList=mapper.drinkSelectList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return drinkList;
		
	}

	public ArrayList<DrinkVO> drinkContentSelectList(String drinkName) 
	{
		ArrayList<DrinkVO> drinkContentList=null;
		try
		{
			DrinkMapper mapper=session.getMapper(DrinkMapper.class);
			drinkContentList=mapper.drinkContentSelectList(drinkName);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return drinkContentList;
	}

	public ArrayList<DrinkSizeVO> drinkSizeList() 
	{
		ArrayList<DrinkSizeVO> listDrinkSize = null;
		try {
			DrinkMapper mapper = session.getMapper(DrinkMapper.class);
			listDrinkSize = mapper.drinkSizeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listDrinkSize;
	}

	public ArrayList<CustomInfoVO> customList() 
	{
		ArrayList<CustomInfoVO> customList = null;
		try {
			DrinkMapper mapper = session.getMapper(DrinkMapper.class);
			customList = mapper.customList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customList;
	}
}
