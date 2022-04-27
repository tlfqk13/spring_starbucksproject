package com.scit.starbucks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.ordervo.CartVO;
import com.scit.starbucks.ordervo.OrderVO;
import com.scit.starbucks.payvo.PayVO;
import com.scit.starbucks.service.CartService;
import com.scit.starbucks.service.OrderService;
import com.scit.starbucks.service.PayService;

import java.util.ArrayList;
import java.util.Random;


@Controller
public class orderController 
{

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private PayService payService;

	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/drink/orderInsertList",method=RequestMethod.GET)
	public String OrderInsertList(OrderVO ovo, Model model,HttpServletRequest request)
	{	
		String price=Integer.toString(ovo.getProductQuantity()*4800);
		ovo.setPrice(price);
		int orderInsertList=orderService.orderInsertList(ovo);
		ArrayList<OrderVO> payList_test=orderService.orderPayList();
		model.addAttribute("payList",payList_test);
		if(orderInsertList!=0)
		{
			System.out.println("주문 인서트 완료");
		}
		else
		{
			System.out.println("주문 인서트 실패");
		}
		return "drink/payList";
	}
	
	@RequestMapping(value="/drink/cartInOrderInsertList",method=RequestMethod.POST)
	public String cartInOrderInsertList(OrderVO ovo, Model model,HttpServletRequest request)
	{	
		String[] selection=request.getParameterValues("checkListID");
		String select=selection[0];
		String insert[]=select.split(",");
		
		CartVO members = new CartVO();
		int cartSelectLength=0;
		for(int i=0;i<insert.length;i++)
		{
			int a=Integer.parseInt(insert[i]);
			cartSelectLength=insert.length;
			ArrayList<CartVO> cartList=cartService.cartSelectListCheckBox(a);
			for(int j=0;j<cartList.size();j++) 
			{
				System.out.println("-------------------------------");
				System.out.println(members=cartList.get(j));
				
				System.out.println(members.getProductName());
				ovo.setProductName(members.getProductName());
				
				System.out.println(members.getDrinksizeID());
				
				if(members.getDrinksizeID().contains("Tall")) 
				{
					members.setDrinksizeID("1");
				}
				else if(members.getDrinksizeID().contains("Grande")) 
				{
					members.setDrinksizeID("2");
				}
				else if(members.getDrinksizeID().contains("Venti")) 
				{
					members.setDrinksizeID("3");
				}
				
				System.out.println("아 뭐가 오류냐고 --> " + members.getDrinksizeID());
				ovo.setDrinksizeID(members.getDrinksizeID());
				
				System.out.println(members.getPrice());
				ovo.setPrice(members.getPrice());
				
				System.out.println(members.getCustomInfoID());
				ovo.setCustomInfoID(1);
				
				// 유저아이디 세션으로 받아오면 그때 수정해야함 
				System.out.println(members.getUserID());
				ovo.setUserID("son");
				
				System.out.println(members.getCartID());
				ovo.setCartID(members.getCartID());
				
				System.out.println("-------------------------------");
				int orderInsertList=orderService.cartInOrderInsertList(ovo);
				
				if(orderInsertList!=0)
				{
					System.out.println("주문 인서트 완료");
				}
				else
				{
					System.out.println("주문 인서트 실패");
				}				
			}

		}


		ArrayList<OrderVO> orderList=orderService.orderSelectListFromCart(cartSelectLength);
		model.addAttribute("orderList",orderList);
		return "drink/orderInsertList";
	}
	
	@RequestMapping(value="drink/orderList",method=RequestMethod.GET)
	public String OrderList(Model model)
	{
		ArrayList<OrderVO> orderList=orderService.orderSelectList();
		model.addAttribute("orderList",orderList);
		if(orderList!=null) {
			System.out.println("조회 성공");
		}
		return "drink/orderList";
	}
	
	@RequestMapping(value="/drink/payList", method=RequestMethod.GET)
	public String OrderPayList(Model model)
	{
		System.out.println("가장 최근 주문꺼 올리기");
		ArrayList<OrderVO> orderPayList=orderService.orderPayList();
		model.addAttribute("orderPayList",orderPayList);
		if(orderPayList!=null)
		{
			System.out.println("결제 페이지에서 보여줄 주문 조회 성공");
		}
		for(int i=0;i<orderPayList.size();i++)
		{
			System.out.println(orderPayList.get(i));
		}
		return "drink/payList";
	}
}
