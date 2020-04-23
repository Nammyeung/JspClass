<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
	//DB 연동....(SELECT)
	String sql = String.format("SELECT * FROM FB_Member WHERE m_id = '%s' AND m_pw = '%s'",id,pw);
	System.out.println("실행될 쿼리 : " + sql);

	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	
	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery(sql);
	
	//로직 처리 시작....
	boolean isSuccess = true;
	
	if(rs.next()){
		//로그인 성공인 경우...
		isSuccess = true;
		
		String no = rs.getString("m_no");		
		session.setAttribute("sessionNo", no);
		
		String nick = rs.getString("m_nick");
		session.setAttribute("sessionNick", nick);
		
	}else{
		//로그인 실패...
		isSuccess = false;
		
	}
	
	//로직 처리 끝....
	
	rs.close();
	stm.close();
	conn.close();
	
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(isSuccess){
		out.println("로그인 성공<br>");
		out.println("<a href='./main_page.jsp'>메인 페이지로...</a><br>");
	}else{
		out.println("아이디 혹은 비밀 번호를 확인해 주세요...<br>");
		out.println("<a href='./login_page.jsp'>로그인 페이지로...</a><br>");
		
	}
%>


</body>
</html>
















