<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- servlet을 쓴다고 가정하고 쓰고있는 것. -->
<%
	ArrayList<String> list = new ArrayList<String>();
	list.add("안녕하세요1");
	list.add("안녕하세요2");
	list.add("안녕하세요3");
	list.add("안녕하세요4");
	list.add("안녕하세요5");
	
	request.setAttribute("titles", list);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	
	<c:forEach items="${titles }" var = "title" varStatus="xx">
	<!-- 상태를 담는 변수 -->
		${title } : ${xx.index + 1}<br>
		<!-- 한바퀴 돌 때 마다 index를 출력 -->
		<!-- index마다 서식을 주고 싶을 때 사용 -->
	</c:forEach>
	
	<!-- count : 1,2,3,4,5 -->
	<!-- step : 1개가 있다는 가정하에 2씩 건너뛰면서 받음 -->
	
</body>
</html>