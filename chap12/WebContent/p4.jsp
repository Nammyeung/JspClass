<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- core의 핵심 태그 : if, foreach -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="xxx" value="안녕하세요"></c:set>
	<!-- 페이지가 포워딩되기 전까지 남아있을 것 => pageContext -->
	<c:remove var="xxx" scope = "page"/>
	<!-- remove안의 scope : 특정 공간만 삭제함. -->
	<!-- 싹 다 지워짐. -->
	${xxx }<br>
		
	
	<!-- pageContext가 아닌 session에 저장하고 싶다. -->
	
	<c:set var="xxx" value="안녕하세요" scope="session"></c:set>
	
</body>
</html>