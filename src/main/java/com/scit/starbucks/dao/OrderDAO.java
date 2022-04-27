package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.ordervo.OrderVO;

@Repository
public class OrderDAO 
{
	@Autowired
	private SqlSession session;
	
	public int orderInsertList(OrderVO ovo) 
	{
		int result=0;
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			result=mapper.orderInsertList(ovo);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<OrderVO> orderSelectList() 
	{
		ArrayList<OrderVO> orderList=null;
		
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			orderList=mapper.orderSelectList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return orderList;
	}

	public int cartInOrderInsertList(OrderVO ovo) {
		int result=0;
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			result=mapper.cartInOrderInsertList(ovo);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<OrderVO> orderPayList() 
	{
		ArrayList<OrderVO> orderPayList=null;
		
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			orderPayList=mapper.orderPayList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return orderPayList;
	}

	public ArrayList<OrderVO> paytoOrderSelectList(int paytoOrderID) 
	{
		ArrayList<OrderVO> paytoOrderSelectList=null;
		
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			paytoOrderSelectList=mapper.paytoOrderSelectList(paytoOrderID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return paytoOrderSelectList;
	}

	public int payCompleteDelete(int paytoOrderID) 
	{
		
		int deleteResult=0;
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			deleteResult=mapper.payCompleteDelete(paytoOrderID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return deleteResult;
	}

	public ArrayList<OrderVO> orderSelectListFromCart(int cartListSize) 
	{
		ArrayList<OrderVO> orderSelectListFromCart=null;
		
		try
		{
			OrderMapper mapper=session.getMapper(OrderMapper.class);
			orderSelectListFromCart=mapper.orderSelectListFromCart(cartListSize);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return orderSelectListFromCart;
	}

}
