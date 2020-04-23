<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- rewrite 시킬 것임. -->
<%
	request.setCharacterEncoding("utf-8");
	String b_no = request.getParameter("b_no"); // 변수 선언
	// 쿼리 만들고 delete 수행
	
	String sql = String.format("DELETE FROM FB_Board WHERE b_no = %s", b_no); // sql문 선언
	// query가 문자로 만들어 질 것.
	
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
	
	stm.executeUpdate(sql); // sql문 호출
	
	
	stm.close();
	conn.close(); // 내부적으로 자원을 생성하는 것들은 close를 해줘야한다.
	// getConnection으로 어디에 접속할 것인지
	
	// connection이 정상적으로 종료되면 자동적으로 commit을 수행
	
	response.sendRedirect("./main_page.jsp");
	// html코드가 날라가는 것이 아닌 다시호출하라는 형태
%>
