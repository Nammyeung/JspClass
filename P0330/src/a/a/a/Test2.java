package a.a.a;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test2
 */
@WebServlet("/test2") // 호출할 test2 작성
public class Test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Servlet : 어떤 명령어가 날라왔을 때 실행될 클래스
		// 순수하게 자바 코드 => 웹브라우저로 날릴 코드를 작성 => 어려움 => JSP 기원(jsp도 하나의 Servlet) => html안에 java코드.
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		
		
		out.println("</head>");
		out.println("<body>");
		out.println("test2~~~ content");


		out.println("</body>");
		
		out.println("</html>");
		
		
		
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
