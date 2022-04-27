package com.scit.starbucks.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.mygradevo.MyGradeVO;
import com.scit.starbucks.service.MyGradeService;

@Controller
public class myGradeController 
{
	@Autowired
	private MyGradeService myGradeService;
	
	@RequestMapping(value="/myGradeList",method=RequestMethod.GET)
	public String MyGradeSelectList(Model model)
	{
		System.out.println("내 등급 조회 ");
		ArrayList<MyGradeVO> myGradeList=myGradeService.myGradeSelectList();
		model.addAttribute("myGradeList",myGradeList);
		
		for(int i=0;i<myGradeList.size();i++)
		{
			System.out.println(myGradeList.get(i));
		}
		
		return "myGradeList";
	}
	
	
}
