package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.payvo.PayVO;

@Repository
public class PayDAO 
{

	@Autowired
	private SqlSession session;
	
	public ArrayList<PayVO> paySelectList(String userID) 
	{	
		
		ArrayList<PayVO> payList=null;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			payList=mapper.paySelectList(userID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return payList;
	}

	public ArrayList<PayVO> paySelectList() 
	{
		
		ArrayList<PayVO> payList=null;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			payList=mapper.paySelectList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return payList;
	}

	public int payInsertList(int paytoOrderID) 
	{
		int result=0;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			result=mapper.payInsertList(paytoOrderID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public int payInsertFromCart(String paytoOrderID, String paytoCartID) 
	{
		int result=0;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			result=mapper.payInsertFromCart(paytoOrderID,paytoCartID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public int payCompleteDeleteCart(String paytoCartID)
	{
		int deleteResult=0;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			deleteResult=mapper.payCompleteDeleteCart(paytoCartID);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return deleteResult;
	}

	public int updateStarpointnum()
	{
		int updateStarpointnum=0;
		try
		{
			PayMapper mapper=session.getMapper(PayMapper.class);
			updateStarpointnum=mapper.updateStarpointnum();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return updateStarpointnum;
	}
}
