<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
	// 			키(String), 값(String)
	response.addCookie(cookie);
	// 웹브라우저 쪽으로 응답하겠다.
	
	Cookie cookie2 = new Cookie("v1", "qqqq");
	// 			키(String), 값(String)
	response.addCookie(cookie2);
	// 웹브라우저 쪽으로 응답하겠다.
	// 계속 넣으면 클라이언트가 저장
	
	Cookie cookie4 = new Cookie("name", "dddd");
	// 			키(String), 값(String)
	cookie4.setMaxAge(60); // int형, 60으로 주면
	/* 몇초가 지나야 쿠키를 삭제할 것인가 */
	response.addCookie(cookie4);
	// *****************로그인은 쿠키로 하면 안됌********************
	// f12에 계정정보가 찍히기 때문에 보안상으로 매우 취약
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>

<%= cookie.getName() %> 쿠키의 값 = " <%= cookie.getValue() %>"

</body>
</html>