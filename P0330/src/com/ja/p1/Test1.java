package com.ja.p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test1
 */
@WebServlet("/Test1") // URL에 Test1쓰면 실행된다.
public class Test1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test1() { // 생성자
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	// 아주 중요한 API가 오버라이딩
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // 어떠한 정보를 담아서 호출
		// TODO Auto-generated method stub
//		System.out.println("안녕하세요??!!!!!");
    	// response.getWriter().println("hellow~~~~"); // getWriter - PrintWrite : 웹브라우저 쪽으로 출력하게 해주는 메소드 및 클래스. 
		// 저장하는 순간 컴파일, 톰캣으로 복사, 다시 서버로 리로딩
		PrintWriter out = response.getWriter(); // out : response객체에 있는 Writer를 뽑아옴.
    	out.println("<!DOCTYPE html>");
    	// 동적으로 html 코드를 만들겠다.
    	out.println("<html>");
    	out.println("<head><meta charset = 'utf-8'></head>");
    	out.println("<body>");
    	
    	int count = (int)(Math.random()*20);
    	for(int i = 0 ; i < count ; i++) {
    		out.println("hellow~~~<br>"); // 동적으로
    	}
    	out.println("<a href = './test2'>test2</a>");
    	// 웹브라우저 입장에서는 localhost:8181/P0330이 현재 위치임
    	// 웹브라우저 입장에서는 error가 아님, test2에 해당하는 servlet을 안만들었기 때문에
    	// => HTTP 상태 404 – 찾을 수 없음
    	
    	out.println("</body>");
    	out.println("</html>");
	} // 문자열이 web브라우저에서 네트워크 통신을 전달

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
