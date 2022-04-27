package com.scit.starbucks.dao;

import java.util.ArrayList;

import com.scit.starbucks.ordervo.OrderVO;

public interface OrderMapper {

	int orderInsertList(OrderVO ovo);

	ArrayList<OrderVO> orderSelectList();

	int cartInOrderInsertList(OrderVO ovo);

	ArrayList<OrderVO> orderPayList();

	ArrayList<OrderVO> paytoOrderSelectList(int paytoOrderID);

	int payCompleteDelete(int paytoOrderID);

	ArrayList<OrderVO> orderSelectListFromCart(int cartListSize);

}
