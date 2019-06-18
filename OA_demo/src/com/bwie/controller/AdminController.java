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
	
	//ȥ��¼ҳ��
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping("/toLogin")
	public String toLogin(HttpServletRequest request){
		
		request.getSession().invalidate();
		
		return "login";
	}
	
	//��ӭ����
	@RequestMapping("/toWelcome")
	public String toWelcome(){
		return "welcome";
	}
	//Missҳ��
	@RequestMapping("toMissSession")
	public String toMiss(Model model, HttpServletRequest request){
		
		String info1 = (String) request.getAttribute("info1");
		model.addAttribute("info1", info1);
		
		return "missSession";
	}
	//ȥȨ�޲���ҳ��
	@RequestMapping("toHoldBack")
	public String toHoldBack(){
		return "error";
	}
}
