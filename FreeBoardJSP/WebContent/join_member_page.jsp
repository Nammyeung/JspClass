<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입</h1>
	<!-- 
		get : URL에 정보 노출... , 값의 크기 한계 존재 , 한글 처리 까다로움 (URLEncoder)
		post : URL에 정보 노출X... , 값의 크기 한계 존재X , 한글 처리 쉬움
	 -->
	
	
	<form action="./join_member_process.jsp" method="post">
		ID : <input type="text" name="id"><br>
		PW : <input type="password" name="pw"><br>
		NICK : <input type="text" name="nick"><br>
		Phone : <input type="text" name="phone"><br>
		<input type="submit" value="회원 가입">
	</form>


</body>
</html>









