<%@page import="chap08.STData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	chap08.STData st1 = new STData();
	// EL, jstl이 나오면 상위 코드는 필요 없어짐.

%>      
    
<<jsp:useBean id="xx" class="chap08.STData"></jsp:useBean>
<!-- Bean : 콩 => 하나의 인스턴스(Spring에서 Bean이 중요함) -->
<!-- 아예 안쓸것임 -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>