package com.scit.starbucks.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.starbucks.service.UserService;
import com.scit.starbucks.uservo.StarbucksUserVO;

@Controller
public class userController 
{	
	@Autowired
	private UserService userservice;
	
	@RequestMapping(value="/member/signIn")
	public String join()
	{
		return "member/signIn";
	}
	
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String join(StarbucksUserVO user)
	{
		int result=userservice.insertUser(user);
		
		return "redirect:";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(StarbucksUserVO user,Model model,HttpSession session)
	{
		StarbucksUserVO loginUser=userservice.loginUser(user);
		String message="";
		if(loginUser==null)
		{
			message="로그인 할 수 없습니다";
			model.addAttribute("message", message);
			return "member/login";
		}
		else
		{
			session.setAttribute("loginID",loginUser.getUserID());
			session.setAttribute("loginName",loginUser.getUserName());
			session.setAttribute("loginNickName",loginUser.getUserNickName());
			return "redirect:/";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/";
	}
}
