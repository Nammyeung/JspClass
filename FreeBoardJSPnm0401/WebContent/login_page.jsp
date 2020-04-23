<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrapper{
		width : 600px;
		height : 400px;
		border : 1px solid black;
		margin : 40px auto;
		/* id : 요소의 id(요소에 접근하기 위한) vs name : 파라미터로서 서버에 전달할 때 사용하는 이름 */	
	}
</style>
</head>
<body>
	<div id = "wrapper">
		<h1>로그인</h1>
		<form action="./login_process.jsp" method="post">
		<!-- post 방식 : url에 패스워드 노출 방지 -->
			ID : <input type = "test" name = "id"><br>
			PW : <input type = "password" name = "pw"><br>
			<input type = "submit" value = "로그인">
		</form>
		
		<a href = "./join_member_page.jsp">회원 가입</a>
		<!-- 문자열로 된 이름들이 틀리지 않도록 주의할 것, ./join_member_page.jsp (Ctrl + c 활용) -->
		<!-- 회원 가입을 눌렀을 때 어디로 이동할 것인가? -->
		
	</div>
	
	
	
	
	
</body>
</html>