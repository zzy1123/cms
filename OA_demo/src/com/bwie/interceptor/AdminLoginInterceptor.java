
package com.bwie.interceptor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**  
* <p>Title: AdminLoginInterceptor.java</p>  
* <p>Description:方法拦截器 </p>  
* <p>Copyright: Copyright (c) 2018</p>  
* <p>Company: www.Resource.com</p>  
*/  
public class AdminLoginInterceptor extends HandlerInterceptorAdapter{
	
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 
			throws Exception{
		 
		 String requestURI = request.getRequestURI();
		 String substring = requestURI.substring(9);
		 
		 Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("user");
		 
		 List<String> list = new ArrayList<String>();
		 
		 if(map != null){
			 
			 String str = map.get("privillege").toString();
			 String[] split = str.split(",");
			 
			 for (int i = 0; i < split.length; i++) {
				list.add(split[i]);
			 }
			 
			 if(list.contains(substring)){
				 return true; 
			 }else{
				request.getRequestDispatcher("/admin/toHoldBack").forward(request, response);
				return false;
			 }
		 
		 }else{
			 request.setAttribute("info1", "用户已过期");
			 request.getRequestDispatcher("/admin/toMissSession").forward(request, response);
			 
			 return false;
		 }
	 }
	 
	 
}
