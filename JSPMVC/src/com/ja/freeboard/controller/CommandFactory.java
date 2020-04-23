package com.ja.freeboard.controller;

import java.util.*;
import com.ja.freeboard.controller.command.*;
// factory : 찍어내는 것이 핵심
public class CommandFactory {
	// 어떤 것을 뽑아올 때 마다 new를 하겠다.
//	Hash맵을 생성해서 Command들을 관리
	
	private HashMap<String, CommandHandler> commandMap;
//	정보의 은닉
	public CommandFactory() {
		commandMap = new HashMap<String, CommandHandler>();
		
		commandMap.put("/login_page.do", new LoginPageHandler());
//	commandFactory를 만들 때 생성.
		commandMap.put("/join_member_page.do", new JoinMemberPageHandler());
		commandMap.put("/join_member_process.do", new JoinMemberProcessHandler());
		commandMap.put("/login_process.do", new LoginProcessHandler());
		commandMap.put("/main_page.do", new MainPageHandler());
		commandMap.put("/logout_process.do", new LogoutProcessHandler());
//		ex) main_page.do를 호출하면 MainPageHandler를 실행(생성)할 수 있다.
		commandMap.put("/write_content_page.do", new WriteContentPageHandler());
		commandMap.put("/write_content_process.do", new WriteContentProcessHandler());
		commandMap.put("/read_content_page.do", new ReadContentPageHandler());
		commandMap.put("/delete_content_process.do", new DeleteContentProcessHandler());
		commandMap.put("/update_content_page.do", new UpdateContentPageHandler());
		commandMap.put("/update_content_process.do", new UpdateContentProcessHandler());
		
		commandMap.put("/", new MainPageHandler());
//	이쪽이 중요
//	request객체 => getAttribute
	}
	
	public CommandHandler getCommandHandler(String command) {
		
//		if(command.contentEquals("/login_page.do")) {
//			return new LoginPageHandler();
//		
	
		return commandMap.get(command);
		
		
	}
		
		
		
		
}
	
