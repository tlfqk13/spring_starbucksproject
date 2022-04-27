package com.scit.starbucks.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.drinkvo.DrinkSizeVO;
import com.scit.starbucks.drinkvo.DrinkVO;
import com.scit.starbucks.service.DrinkService;
import com.scit.starbucks.drinkvo.CustomInfoVO;
@Controller
public class drinkController 
{
	
	@Autowired
	private DrinkService drinkService;
	
	@RequestMapping(value="/drink/drinkList",method=RequestMethod.GET)
	public String drinkSelectLisst(Model model)
	{	
		
		ArrayList<DrinkVO> drinkList=drinkService.drinkSelectList();
		model.addAttribute("drinkList",drinkList);
		
		for(int i=0;i<drinkList.size();i++) 
		{
			System.out.println(drinkList.get(i));
		}
		
		return "drink/drinkList";
		
	}
	
//	@RequestMapping(value="/drink/drinkContentList",method= {RequestMethod.POST,RequestMethod.GET})
//	public String drinkContentSelectList(Model model,HttpServletRequest request)
//	{
//		
//		String drinkID=request.getParameter("drinkID");
//		System.out.println("뭐 눌렀어 : "+drinkID);
//	
//		int sum = Integer.parseInt(drinkID);
//		
//		ArrayList<DrinkVO> drinkContentList=drinkService.drinkContentSelectList(drinkID);
//		System.out.println("drinkC 사이즈 + " + drinkContentList.size());
//		model.addAttribute("drinkContentList",drinkContentList);
//	
//		ArrayList<DrinkSizeVO> drinkSizeList = drinkService.drinkSizeList();
//		model.addAttribute("drinkSizeList", drinkSizeList);
//		for (int i = 0;  i<drinkSizeList.size();i++) 
//		{
//			System.out.println(drinkSizeList.get(i));
//		}
//		
//		//---------------추후 삭제 예정
//		ArrayList<CustomInfoVO> customList = drinkService.customList();
//		model.addAttribute("customList",customList);
//		for (int i = 0;  i<customList.size();i++) 
//		{
//			System.out.println(customList.get(i));
//		}
//		
//		return "drink/drinkContentList";
//		
//	}
	
	@RequestMapping(value="/drink/drinkContentList",method= {RequestMethod.POST,RequestMethod.GET})
	public String drinkContentSelectList(Model model,HttpServletRequest request)
	{
		String drinkID=request.getParameter("drinkID");
		int sum = Integer.parseInt(drinkID);
		
		ArrayList<DrinkVO> drinkContentList=drinkService.drinkContentSelectList(drinkID);
		model.addAttribute("drinkContentList",drinkContentList);
	
		ArrayList<DrinkSizeVO> drinkSizeList = drinkService.drinkSizeList();
		model.addAttribute("drinkSizeList", drinkSizeList);
		
		for (int i = 0;  i<drinkSizeList.size();i++) 
		{
			System.out.println(drinkSizeList.get(i));
		}
		return "drink/drinkContentList";
	}
	
}
