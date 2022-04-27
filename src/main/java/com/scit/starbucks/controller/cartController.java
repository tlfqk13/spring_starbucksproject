package com.scit.starbucks.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.drinkvo.DrinkVO;
import com.scit.starbucks.ordervo.CartVO;
import com.scit.starbucks.service.CartService;

@Controller
public class cartController 
{
	
	@Autowired 	
	private CartService cartService;
	
	@RequestMapping(value="/drink/cartInsertList",method=RequestMethod.GET)
	public String CartInsetList(CartVO vo,DrinkVO dvo, Model model,HttpServletRequest request)
	{   
		String priceTest=request.getParameter("drinkPrice");
		int price = Integer.parseInt(priceTest);
		String totalPrice=Integer.toString(vo.getProductQuantity()*price);
		vo.setUserID("son");
		vo.setPrice(totalPrice);
		vo.setCustomInfoID(1);
		int cartInsertList=cartService.cartInsertList(vo);
		
		if(cartInsertList!=0)
		{
			System.out.println("장바구니 인서트 완료");
		}
		else
		{
			System.out.println("장바구니 인서트 실패");
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/drink/cartList",method=RequestMethod.GET)
	public String CartList(Model model)
	{
		ArrayList<CartVO> cartList=cartService.cartSelectList();
		model.addAttribute("cartList",cartList);
		for(int i=0;i<cartList.size();i++)
		{
			System.out.println(cartList.get(i));
		}
		return "drink/cartList";
	}

}
