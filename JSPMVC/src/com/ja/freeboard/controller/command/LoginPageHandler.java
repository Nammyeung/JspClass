package com.ja.freeboard.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginPageHandler implements CommandHandler{
	
	public String process(HttpServletRequest request, 
			HttpServletResponse response) {
				
		
		return "/WEB-INF/view/login_page.jsp"; // login_page.do가 실행되면 controller가 받아서 실행 jsp를 포워딩해서 실행
//		return "redirect:/main_page.jsp";
//		"/WEB-INF/view/login_page.jsp" => 내부에서 포워딩을 통해 접근
	}
	
}
