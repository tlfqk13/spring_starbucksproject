package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.ordervo.CartVO;

@Repository
public class CartDAO 
{
	@Autowired
	private SqlSession session;
	
	public ArrayList<CartVO> cartSelectList() 
	{
		ArrayList<CartVO> cartList=null;
		
		try
		{
			CartMapper mapper=session.getMapper(CartMapper.class);
			cartList=mapper.cartSelectList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cartList;
	}

	public int cartInsertList(CartVO vo) 
	{
		int result=0;
		try
		{
			CartMapper mapper=session.getMapper(CartMapper.class);
			result=mapper.cartInsertList(vo);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<CartVO> cartSelectListCheckBox(int a) 
	{
		ArrayList<CartVO> cartList=null;
		
		try
		{
			CartMapper mapper=session.getMapper(CartMapper.class);
			cartList=mapper.cartSelectListCheckBox(a);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cartList;
	}

}
