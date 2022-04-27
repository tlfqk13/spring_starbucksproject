package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.OrderDAO;
import com.scit.starbucks.ordervo.OrderVO;

@Service
public class OrderService 
{
	@Autowired
	private OrderDAO orderDao;
	
	public ArrayList<OrderVO> orderSelectList() 
	{
		// TODO Auto-generated method stub
		return orderDao.orderSelectList();
	}
	
	public int orderInsertList(OrderVO ovo) 
	{
		return orderDao.orderInsertList(ovo);
	}

	public int cartInOrderInsertList(OrderVO ovo)
	{
		return orderDao.cartInOrderInsertList(ovo);
	}

	public ArrayList<OrderVO> orderPayList() 
	{
		return orderDao.orderPayList();
	}

	//이거 오버로딩 되려나 나중에 test해보기
	public ArrayList<OrderVO> paytoOrderSelectList(int paytoOrderID) 
	{
		return orderDao.paytoOrderSelectList(paytoOrderID);
	}

	public int payCompleteDelete(int paytoOrderID) 
	{
		return orderDao.payCompleteDelete(paytoOrderID);
	}

	public ArrayList<OrderVO> orderSelectListFromCart() 
	{
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<OrderVO> orderSelectListFromCart(int cartListSize) 
	{
		return orderDao.orderSelectListFromCart(cartListSize);
	}


}
