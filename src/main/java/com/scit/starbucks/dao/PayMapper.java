package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.scit.starbucks.payvo.PayVO;

public interface PayMapper 

{

	ArrayList<PayVO> paySelectList(String userID);

	ArrayList<PayVO> paySelectList();

	int payInsertList(int paytoOrderID);

	int payCompleteDelete(int paytoOrderID);

	int payInsertFromCart(@Param("orderID")String paytoOrderID,@Param("cartID")String paytoCartID);

	int payCompleteDeleteCart(String paytoCartID);

	int updateStarpointnum();

	
}
