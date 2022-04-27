package com.scit.starbucks.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.starbucks.productvo.ProductVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession session;
	
	public ArrayList<ProductVO> drinkCategoryList(){
		ArrayList<ProductVO> drinkCategory = null;
		try {
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			drinkCategory = mapper.drinkCategoryList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return drinkCategory;
	}
}
