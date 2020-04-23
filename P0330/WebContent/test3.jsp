<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <!--안나오는 부분-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요............<br>
	<!-- 자바 코드를 쓸 수 있는 명령어 --> 
	<% 
		int count = (int)(Math.random()*20);
		for(int i = 0 ; i < count ; i++) {
			out.print("안녕하세요~~~");	
    	}
	/* 해당 코드가 실행되는 주체 : Server, 서블릿 코드(자바 코드)로 변환 */		
	%>
</body>
</html>