/**
 * 
 */
package com.bwie.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 */
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	//去登录页面
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping("/toLogin")
	public String toLogin(HttpServletRequest request){
		
		request.getSession().invalidate();
		
		return "login";
	}
	
	//欢迎界面
	@RequestMapping("/toWelcome")
	public String toWelcome(){
		return "welcome";
	}
	//Miss页面
	@RequestMapping("toMissSession")
	public String toMiss(Model model, HttpServletRequest request){
		
		String info1 = (String) request.getAttribute("info1");
		model.addAttribute("info1", info1);
		
		return "missSession";
	}
	//去权限不够页面
	@RequestMapping("toHoldBack")
	public String toHoldBack(){
		return "error";
	}
}
