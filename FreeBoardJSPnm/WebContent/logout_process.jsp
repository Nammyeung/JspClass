<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	session.invalidate(); // 로그아웃을 위한 세션 정보를 다 날려버림
	
	response.sendRedirect("./main_page.jsp"); // 다른 URL로 다시 이동
	//redirects and forwarding
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
	
	
	
</body>
</html>