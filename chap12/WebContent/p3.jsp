<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- prefix는 항상 c여야함. -->    
    
<%@ page import = "java.util.*" %>
<%
	ArrayList<String> list = new ArrayList<String>();

	list.add("안녕하세요1");
	list.add("안녕하세요2");
	list.add("안녕하세요3");
	list.add("안녕하세요4");
	list.add("안녕하세요5");
	
	request.setAttribute("titleList", list);
	/* titleList를 키로, list를 값으로 */
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 배열 형태는 반복문을 돌려야만 의미가 잇음 Arraylist도 마찬가지 -->
	<c:forEach items="${titleList }" var="xx">
	<!-- titleList로 list에 있는 값을 뽑아와서 xx라는 이름으로 -->
		${xx }<br>
	<!-- pageContext에 xx라는 이름으로 넣는다(자동으로, 간접적으로 이용) -->
	</c:forEach>
</body>
</html>