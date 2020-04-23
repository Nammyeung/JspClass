<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=pageContext.getAttribute("v1") %><br> <!-- 키로 호출 -->
	<!-- **************null********************* -->
	<%=request.getAttribute("v1") %><br>
	<!-- **************null********************* -->
	<%=session.getAttribute("v1") %><br>
	<!-- **************chrome에서 edge로 브라우져를 옮겼을 경우 null********************* -->
	<%=application.getAttribute("v1") %><br>
</body>
</html>