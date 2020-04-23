<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	/* getParameter : 넘어온 값을 받는다 */
	String content = request.getParameter("title");
	String member_no = (String)session.getAttribute("sessionNo");

	String sql = String.format("INSERT INTO FB_Board VALUES(FB_Board_seq.nextval,'%s','%s','%s',SYSDATE)",member_no,title,content);
	/* database기준에서는 숫자이지만 자바에서는 숫자로 입력받은 것이 문자인 상황 */
	// String.format API 활용 : %s로 문자열을 받아서 뒤의 변수를 받는다.
	// INSERT문을  세미콜론 빼고 복사

	// TEST CODE
	System.out.println("실행될 쿼리 : " + sql); // 비즈니스 로직이 아니다.(로그찍는 용도)
	// 개발자들은 로그를 굉장히 많이 찍는다. -> 데이터가 어떻게 움직이는지 알아야 하기 때문에
	
	//DB 연동....
	//클래스 동적 로드...
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// DB 연결...	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	// 굳이 빼놓으면 불필요하게 메모리가 생성 < 코드 읽기가 편해야한다.
	
	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close(); // 내부적으로 자원을 생성하는 것들은 close를 해줘야한다.
	// getConnection으로 어디에 접속할 것인지
	
	response.sendRedirect("./main_page.jsp");
%>
