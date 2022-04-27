package com.scit.starbucks.dao;

import java.util.ArrayList;

import com.scit.starbucks.drinkvo.CustomInfoVO;
import com.scit.starbucks.drinkvo.DrinkSizeVO;
import com.scit.starbucks.drinkvo.DrinkVO;

public interface DrinkMapper {
	
	public ArrayList<DrinkVO> drinkSelectList();

	public ArrayList<DrinkVO> drinkContentSelectList(String drinkName);

	public ArrayList<DrinkSizeVO> drinkSizeList();

	public ArrayList<CustomInfoVO> customList();
	
}
