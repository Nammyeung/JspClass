package t.t.t;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QQQ
 */
//@WebServlet("/qqqqs")
public class QQQ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static final String dbUser = "SCOTT";
	private static final String dbPW = "TIGER";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QQQ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("qqqqqq");
//		세션 객체를 받아와야 쓸 수 있음. 상위 파라미터(request)로 받은 값을 씀.(예 - request.)
		
//		String dbUser = "SCOTT";
//		String dbPW = "TIGER";
		String dbuser = this.getInitParameter("dbUser");
		String dbPW = this.getInitParameter("dbPW");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
