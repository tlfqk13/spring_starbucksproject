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
import com.scit.starbucks.service.OrderService;
import com.scit.starbucks.service.PayService;

import java.util.ArrayList;
import java.util.Random;


@Controller
public class payController 
{

	@Autowired
	private PayService payService;
	
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value="/drink/payComplete", method=RequestMethod.GET)
	public String payComplete(PayVO pvo,Model model,OrderVO ovo)
	{
		int paytoOrderID=pvo.getOrderID();
		int payInsertList=payService.payInsertList(paytoOrderID);
		if(payInsertList!=0)
		{
			System.out.println("결제 완료 !!!");
		}
		else
		{
			System.out.println("결제 실패 ");
		}
		return "drink/payComplete";
	}
	
	
@RequestMapping(value="/drink/payCompleteFromCart", method=RequestMethod.GET)
	public String payCompleteFromCart(PayVO pvo,Model model,OrderVO ovo,HttpServletRequest request)
	{
		
		String[] arr=request.getParameterValues("cartID");
		String paytoOrderID=null;
		String paytoCartID=null;
		System.out.println("payCompleteFromCart !! ");
		ArrayList<String> paytoCartIDArr = new ArrayList<String>();
		ArrayList<String> paytoOrderIDArr = new ArrayList<String>();
		for(int i=0;i<arr.length;i++)
		{
			if(i%2==1)
			{
				paytoOrderID=arr[i];
				System.out.println("+orderID+" + paytoOrderID);
				paytoOrderIDArr.add(arr[i]);
			}
			else if(i==0 || i%2==0)
			{
				paytoCartID=arr[i];
				System.out.println("+cartID+"+paytoCartID);
				paytoCartIDArr.add(arr[i]);
			}
		}	
		for(int i=0;i<paytoCartIDArr.size();i++) 
		{
			int payInsertList=payService.payInsertFromCart(paytoOrderIDArr.get(i),paytoCartIDArr.get(i));
			if(payInsertList!=0)
			{
				System.out.println("결제 완료 !!!");
			    int updateStarpointnum = payService.updateStarpointnum();
			}
			else
			{
				System.out.println("결제 실패 ㅠㅠ");
			}
		}
		
		for(int i=0;i<paytoCartIDArr.size();i++)
		{
			int payCompleteDeleteCart=payService.payCompleteDeleteCart(paytoCartIDArr.get(i));
		}
		return "drink/payCompleteFromCart";
	}
}
