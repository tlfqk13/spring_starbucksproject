package com.scit.starbucks.dao;

import java.util.ArrayList;

import com.scit.starbucks.ordervo.CartVO;

public interface CartMapper {

	ArrayList<CartVO> cartSelectList();

	int cartInsertList(CartVO vo);

	ArrayList<CartVO> cartSelectListCheckBox(int a);

}
