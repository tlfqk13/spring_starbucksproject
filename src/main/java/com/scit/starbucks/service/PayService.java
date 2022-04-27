package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.PayDAO;
import com.scit.starbucks.payvo.PayVO;

@Service
public class PayService 
{
	@Autowired
	private PayDAO payDao;

	public ArrayList<PayVO> paySelectList(String userID) 
	{
		return payDao.paySelectList(userID);
	}

	public ArrayList<PayVO> paySelectList() 
	{
		return payDao.paySelectList();
	}

	public int payInsertList(int paytoOrderID) 
	{
		return payDao.payInsertList(paytoOrderID);
	}

	public int payInsertFromCart(String paytoOrderID, String paytoCartID) {
		return payDao.payInsertFromCart(paytoOrderID,paytoCartID);
	}

	public int payCompleteDeleteCart(String paytoCartID)
	{
		return payDao.payCompleteDeleteCart(paytoCartID);
	}

	public int updateStarpointnum() {
		return payDao.updateStarpointnum();
	}
}
