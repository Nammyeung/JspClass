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

public class BoardListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArrayList<ContentDataVo> contentList = 
				new ArrayList<ContentDataVo>();
//		ArrayList<CommentVo> commentList = new CommentDao().selectAll();
//		memberVo와 ContentVo를 묶는다.
		
		ArrayList<BoardVo> boardList = new BoardDao().selectAll();
		
		MemberDao memberDao = new MemberDao();
		
		CommentDao commentDao = new CommentDao();
		
		for(BoardVo boardVo : boardList) {
//			글쓴 사람의 번호에 해당하는 사용자 정보
			MemberVo memberVo =
					memberDao.selectByNo(boardVo.getM_no());
//			글쓴의의 번호를 받음 Hashmap or 객체
//			객체는 그 때 그 때 다시 만들어야 함.
			
			ContentDataVo contentDataVo = new ContentDataVo(memberVo, boardVo);
			
//			ContentDataVo contentDataVo =
//					new ContentDataVo(memberVo, boardVo);			
			
			
//			들을 하나로 엮어서 생성
			contentList.add(contentDataVo);
//			반복문이 돌 때마다 content리스트의 데이터들이 들어옴.
		}
		request.setAttribute("contentList",  contentList); // jsp에서 사용하기 위함
//			contentList라는 이름으로 받아옴
//		request.setAttribute("contentList", contentList)를 끄집어 내서 표현을 할 예정.
		request.getSession().setAttribute("contentList", contentList);
		
		
		return "/WEB-INF/view/board_list.jsp";
	}

}
