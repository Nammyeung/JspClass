<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String sessionNick = (String)session.getAttribute("sessionNick");
	// getAttribute를 이용해 sessionNick을 뽑아옴.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	
</style>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="./write_content_process.jsp" method = "post">
		작성자 : <%=sessionNick %> <br> <!-- 소스보기 깔끔하게 만듬. -->
		제목 : <input type = "text" name = "title"><br>
		내용 : <br>	
		<!-- 내용은 여러 줄을 쓰게끔 만듬 -->
		<textarea rows = "7" cols = "40" name = "content"></textarea><br>
		<input type="submit" value="작성 완료">
	</form>	
</body>
</html>