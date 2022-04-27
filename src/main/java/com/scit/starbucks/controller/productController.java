package com.scit.starbucks.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.productvo.ProductVO;
import com.scit.starbucks.service.ProductService;

@Controller
public class productController {
	@Autowired
	private ProductService service;
	
	
	@RequestMapping (value = "/category/categoryList", method = RequestMethod.GET)
	public String categoryForm(Model model) {
		ArrayList<ProductVO> list = service.drinkCategoryList();
		model.addAttribute("list", list);
		return "category/categoryList";
	}
	
	
}
