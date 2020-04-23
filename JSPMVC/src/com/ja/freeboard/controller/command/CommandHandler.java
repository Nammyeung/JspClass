package com.ja.freeboard.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
	
	public String process(HttpServletRequest request, 
			HttpServletResponse response);
// 인터페이스 : 상속, 다형성, 오버라이드
}
