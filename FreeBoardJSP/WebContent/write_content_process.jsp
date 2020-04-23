<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String member_no = (String)session.getAttribute("sessionNo");
	
	String sql = String.format("INSERT INTO FB_Board VALUES(FB_Board_seq.nextval,%s,'%s','%s',SYSDATE)",member_no,title,content);

	//test code
	System.out.println("실행될 쿼리 : " + sql);
	
	//DB 연동....
	//클래스 동적 로드...
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//DB 연결...
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	
	
	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();	
			
	response.sendRedirect("./main_page.jsp");
%>    









