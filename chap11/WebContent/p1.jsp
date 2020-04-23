<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String title = "안녕하세요";
/* String을 body에 옮기고 싶다. */
	request.setAttribute("xxx", title);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Chapter 11 -->
<!-- Expression Language -->
${xxx }<br>

</body>
</html>