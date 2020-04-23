<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 별로 안씀 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브</title>
</head>
<body>
<%
	int number = 10; // 메소드 내부의 지역변수
%>

<!-- 설정과 관련된 코드처럼 include가 들어감 -->
<%@ include file = "/includee.jspf" %>
<!-- 확장자명 무관 => jspf로 붙여주는 것이 관례 -->
<!-- 아예 포함시켜서 변환 -->
공통변수 DATAFOLDER = "<%= dataFolder %>"
</body>
</html>