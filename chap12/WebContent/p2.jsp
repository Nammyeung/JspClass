<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %><!-- url : 세번째 것 선택 -->

 
<%
	session.setAttribute("sessionNick", "한조"); // 나중에는 setAttribute안에 new를 생성하는 방식으로 복잡하게 들어갈 예정.
%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 목표 if문을 통해서 session에서 값을 뽑아왔서 확인 -->
	
	<!-- taglib을 import해 if문을 html 형태로 작성 -->
	<!-- 띄어쓰기에 유의할 것 -->
	<c:if test="${!empty sessionNick}">
		${sessionNick }님 환영 합니다.<br>
	</c:if>
	
	<c:if test="${empty sessionNick}">
		비회원으로 접근하였습니다.<br>
	</c:if>
	
	<c:choose>
		<c:when test="${!empty sessionNick }">
		<!-- test안에는 문자열 true, false가 들어감 -->
			${sessionNick }님 환영합니다.<br>
		</c:when>
		<!-- 다음 when 체크 -> 다음 when 체크 -> 다음 when 체크 -> 다음 when 체크-->	
		<c:otherwise>
			비회원으로 접근하였습니다.<br>
		</c:otherwise>
	
	
	</c:choose>
	
	
<!-- 문자열 값이 true 냐 false 냐 -->
</body>
</html>