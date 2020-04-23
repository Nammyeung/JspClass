package com.ja.freeboard.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.freeboard.model.MemberDao;
import com.ja.freeboard.vo.MemberVo;

public class LoginProcessHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");

//		POST방식 > GET방식
//		참조 : https://mommoo.tistory.com/60
		
		MemberVo memberVo = 
				new MemberDao().selectByIdAndPw(m_id, m_pw);
		
		if(memberVo != null) {
			//로그인 성공...
			request.getSession().setAttribute("sessionUserInfo", memberVo);
//			session저장공간의 주소값			
			
			return "redirect:./main_page.do"; // ./ : /JSPMVC0420/main_page.do
//			return "/WEB-INF/view/main_page.jsp";
		}else {
			//로그인 실패...
			return "/WEB-INF/view/login_fail.jsp";
		}
		
//	name page로 redirect
		
		
		
//		return null;
	}
	

}
