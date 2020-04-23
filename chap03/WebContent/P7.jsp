<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	
<% 	
 	String str = request.getParameter("value");

	str = URLDecoder.decode(str);
	// 경우에 따라서는 decoding을 해줘야한다.
	// 한글을 표출하는데 문제가 발생하는 경우에 사용할 일이 있음.

	System.out.println(str);
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= str %>
	<!-- get방식은 몇몇 브라우저에서는 문제를 일으킬 수 있음(영어, 숫자 => no problem, 중국어, 일본어, 한국어 의 경우) -->
</body>
</html>