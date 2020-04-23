package com.ja.rubato.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ja.rubato.controller.CommandFactory;
import com.ja.rubato.controller.command.CommandHandler;


/**
 * Servlet implementation class ControllerUsingURI
 */
//@WebServlet("*.do")
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	private CommandFactory commandFactory;
	
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingURI() {
        super();
        // TODO Auto-generated constructor stub
        commandFactory = new CommandFactory();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("넘어온 명령어 : " + request.getRequestURI());
		
		String command = request.getRequestURI();
		command = command.substring(request.getContextPath().length()); // substring(beginIndex) : 매우중요, beginIndex부터 자르겠다.
		
		System.out.println("명령어 : " + command);
		
		CommandHandler handler = commandFactory.getCommandHandler(command);
		
		String view = null;
		
		if(handler != null) {
			view = handler.process(request, response);
		}else {
			System.out.println("[경고]명령어에 매핑된 객체가 없습니다.");
		}
		
		if(view != null) {
			if(view.startsWith("redirect:")) { // 문자열로 시작하느냐 안하느냐, return타입이 true or false
				view = view.substring("redirect:".length());// "redirect:" : String 타입.
				response.sendRedirect(view);
			}else {
				RequestDispatcher dispatcher =  request.getRequestDispatcher(view); // redirect가 없는 aaa.jsp가 들어옴.
				dispatcher.forward(request, response);
			}
			
			
			}
		
		
		if(command.contentEquals("/login.do")) {
			
		} else if(command.contentEquals("/main.do")) {
			
			// MVC 모델에서 바라는 규격은 아님
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}