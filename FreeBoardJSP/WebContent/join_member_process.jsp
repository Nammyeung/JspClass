<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String phone = request.getParameter("phone");
	
	//String sql = "INSERT INTO FB_Member VALUES(FB_Member_seq.nextval,'"+id+"','"+pw+"','"+nick+"','"+phone+"',SYSDATE)";
	String sql = String.format("INSERT INTO FB_Member VALUES(FB_Member_seq.nextval,'%s','%s','%s','%s',SYSDATE)",id,pw,nick,phone);

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
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원 가입을 ㅊㅋ 드립니다.<br>
<a href="./login_page.jsp">로그인 페이지로...</a>
</body>
</html>









