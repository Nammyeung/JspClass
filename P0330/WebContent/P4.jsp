<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요<br>

<%
	String value1 = request.getParameter("aaa"); /* 키를 넣으면 값이 나오는 구조 - 키 : "aaa"*/
	out.print(value1);
	String value2 = request.getParameter("bbb");
	// 서버쪽에서 받아서 표출을 할 수 있음.	
%>

<%= value2 %>
</body>
</html>