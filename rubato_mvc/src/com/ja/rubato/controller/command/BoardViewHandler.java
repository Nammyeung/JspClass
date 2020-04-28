package com.ja.rubato.controller.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.rubato.controller.model.BoardDao;
import com.ja.rubato.controller.model.CommentDao;
import com.ja.rubato.controller.model.MemberDao;
import com.ja.rubato.controller.vo.BoardVo;
import com.ja.rubato.controller.vo.CommentVo;
import com.ja.rubato.controller.vo.ContentDataVo;
import com.ja.rubato.controller.vo.MemberVo;

public class BoardViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		int b_no = Integer.parseInt(request.getParameter("b_no"));
//		parameter는 int가 아닌 무조건 String으로 받는다(ㅍ로토콜 규정)
		
		com.ja.rubato.controller.vo.BoardVo boardVo = new com.ja.rubato.controller.model.BoardDao().selectByNo(b_no);
		
		
		com.ja.rubato.controller.vo.MemberVo memberVo = new com.ja.rubato.controller.model.MemberDao().selectByNo(boardVo.getM_no());
				
		
		com.ja.rubato.controller.vo.ContentDataVo contentDataVo = new com.ja.rubato.controller.vo.ContentDataVo(memberVo, boardVo);
		
		
		request.setAttribute("contentDataVo", contentDataVo);
		
		
		return "/WEB-INF/view/board_view.jsp";
	}

}
