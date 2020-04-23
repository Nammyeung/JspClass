<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-10까지의 합</title>
</head>
<body>
<!-- 스크립트릿 -->
<%
	int sum = 0;
	for(int i = 1 ; i <= 10 ; i++) {
	sum = sum + i;
	}
%>
1부터 10까지의 합은 <%= sum %> 입니다.
</body>
<!-- 이 코드는 자바 코드로 변환된다 => jsp : 자바코드로 변환되지 위한 스트립트 문법 -->
</html>
