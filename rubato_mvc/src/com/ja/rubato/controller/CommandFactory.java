package com.ja.rubato.controller;

import java.util.HashMap;
import com.ja.rubato.controller.command.*;

// factory : 찍어내는 것이 핵심
public class CommandFactory {
	// 어떤 것을 뽑아올 때 마다 new를 하겠다.
//	Hash맵을 생성해서 Command들을 관리
	
	private HashMap<String, CommandHandler> commandMap;
//	정보의 은닉
	public CommandFactory() {
		commandMap = new HashMap<String, CommandHandler>();
		
		commandMap.put("/index.do", new IndexPageHandler());
		commandMap.put("/login_process.do", new LoginProcessHandler());
		commandMap.put("/join_member_page.do", new JoinMemberPageHandler());
		commandMap.put("/join_member_process.do", new JoinMemberProcessHandler());
		commandMap.put("/board_list.do", new BoardListHandler());
		commandMap.put("/board_view.do", new BoardViewHandler());
		commandMap.put("/board_write.do", new BoardWriteHandler());
		commandMap.put("/write_process.do", new WriteContentProcessHandler());
		commandMap.put("/write_process.do", new WriteContentProcessHandler());
		
		
		
		
		
		
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