<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("v1", "안녕하세요"); // key = String / value = Object
	// 페이지가 실행될 떄 생성
	request.setAttribute("v1", "반갑습니다"); // 실행될 때 생성, 종료할 때 소멸
	session.setAttribute("v1", "잘부탁드려요"); // 최초 접속을 할 때 생성, 종료할 때 소멸
	application.setAttribute("v1", "브리기테...");
	// 네가지 저장공간에 모두 setAttribute가 가능
	// getParameter : 날라온 정보를 저장 vs setAttribute : 원하는 저장공간에 값을 넣겠다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=pageContext.getAttribute("v1") %><br> <!-- 키로 호출 -->
	<%=request.getAttribute("v1") %><br>
	<%=session.getAttribute("v1") %><br>
	<%=application.getAttribute("v1") %><br>
	<!-- mvc 모델 구현 : (1) request 저장공간 이해 (2) forwarding 이해 -->
</body>
<!-- **Redirect와 Forwarding의 차이 참조 : https://doublesprogramming.tistory.com/63 -->
</html>