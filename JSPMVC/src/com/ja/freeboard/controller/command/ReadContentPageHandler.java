package com.ja.freeboard.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ja.freeboard.model.*;
import com.ja.freeboard.vo.*;


public class ReadContentPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int b_no = Integer.parseInt(request.getParameter("b_no"));
//		parameter는 int가 아닌 무조건 String으로 받는다(ㅍ로토콜 규정)
		
		BoardVo boardVo = new BoardDao().selectByNo(b_no);
		
		
		MemberVo memberVo = new MemberDao().selectByNo(boardVo.getM_no());
		
		
		ContentDataVo contentDataVo = new ContentDataVo(memberVo, boardVo);
		
		
		request.setAttribute("contentDataVo", contentDataVo);
		
		
		return "/WEB-INF/view/read_content_page.jsp";
	}
	
	

}
