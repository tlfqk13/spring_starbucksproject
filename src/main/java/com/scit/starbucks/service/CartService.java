package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.CartDAO;
import com.scit.starbucks.ordervo.CartVO;

@Service
public class CartService 
{
	@Autowired
	private CartDAO cartDao;
	
	public ArrayList<CartVO> cartSelectList() 
	{
		return cartDao.cartSelectList();
	}

	public int cartInsertList(CartVO vo) 
	{
		return cartDao.cartInsertList(vo);
	}

	public ArrayList<CartVO> cartSelectListCheckBox(int a) 
	{
		return cartDao.cartSelectListCheckBox(a);
	}
}
