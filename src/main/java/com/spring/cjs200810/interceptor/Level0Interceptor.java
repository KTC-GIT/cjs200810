package com.spring.cjs200810.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Level0Interceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		int level = session.getAttribute("level")==null?99:(int)session.getAttribute("level");
		
		if(level>0) {
			RequestDispatcher rd = request.getRequestDispatcher("/msg/level0");
			rd.forward(request, response);
		}
		
		return true;
	}
}
