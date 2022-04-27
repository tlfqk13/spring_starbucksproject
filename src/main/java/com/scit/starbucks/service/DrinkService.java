package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.DrinkDAO;
import com.scit.starbucks.drinkvo.CustomInfoVO;
import com.scit.starbucks.drinkvo.DrinkSizeVO;
import com.scit.starbucks.drinkvo.DrinkVO;

@Service
public class DrinkService 
{
	
	@Autowired
	private DrinkDAO drinkDao;
	
	public ArrayList<DrinkVO> drinkSelectList()
	{
		return drinkDao.drinkSelectList();
	}

	public ArrayList<DrinkVO> drinkContentSelectList(String drinkName) 
	{	
	
		return drinkDao.drinkContentSelectList(drinkName);
	}

	public ArrayList<DrinkSizeVO> drinkSizeList() 
	{
		return drinkDao.drinkSizeList();
	}

	public ArrayList<CustomInfoVO> customList() 
	{
		return drinkDao.customList();
	}
}
