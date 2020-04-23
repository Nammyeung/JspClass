<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder"%>
<!-- String을 넣으면 String이 나온다. -->
<%
 	String str = "안녕하세요";
	/* UTF-8에 해당하는 문자가 나옴. */
	str = URLEncoder.encode(str); 
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "./P7.jsp?value=<%=str%>">클릭</a>
	<!-- <a href = "./P7.jsp?value=%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94">클릭</a> -->
</body>
</html>