<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String b_no = request.getParameter("b_no");
	
	String sql = String.format("UPDATE FB_Board SET b_title = '%s',b_content = '%s' WHERE b_no = %s",title,content,b_no);
	
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    