package com.scit.starbucks.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scit.starbucks.dao.ProductDAO;
import com.scit.starbucks.productvo.ProductVO;

@Service
public class ProductService {
	@Autowired
	private ProductDAO productDao;
	
	
	public ArrayList<ProductVO> drinkCategoryList(){
		return productDao.drinkCategoryList();
	}

}
