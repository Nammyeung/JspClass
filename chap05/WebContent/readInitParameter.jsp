<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "chap05.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
<%
	// (1)번 방법 - 유지보수가 매우 어려움(최악)
	// String user = "SCOTT";
	// String pw = "TIGER";
	
	// (2)번 방법 - java만 가지고 한다면 좋은 코드. but, 
	//String user = DBUserinfo.user;
	//String pw = DBUserinfo.pw; // static의 비밀번호만 바꾸면 모두 변경가능. => 유지보수를 위한 코드
	// 프로그래머들은 설정파일을 먼저 본다. => 설정코드들을 몰아두면 보기에 편하다.
	
	
			
			
	String user = application.getInitParameter("db_user");	
	String pw = application.getInitParameter("db_pw");
			
	
	//..DB 연동코드....

	
%>
</body>
<!-- web.xml : 프로그램을 가동시킬 때 설정파일 -->
</html>