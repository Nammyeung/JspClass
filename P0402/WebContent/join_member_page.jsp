<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String sessionNick1 = (String) session.getAttribute("sessionNick");

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
	<h1>회원가입</h1>
	<!-- 
		get : (1) URL에 정보 노출..., (2) 중요한 장점이 될 수 있음, (3) 값의 크기 한계 존재 (4) 한글 처리 까다로움 (URLEncoder) (5) select 용도
		post : (1) URL에 정보 노출X..., (2) 값의 크기 한계 존재x(post의 장점) (3) 자기가 어떤 인코딩으로 보내는지를 알려줌 (4) 한글 처리  쉬움. (5) input 용도
	 -->
	 <!-- 코드화, 암호화를 의미한다. 한자어 표현으로 부호화(符號化)라고도 말한다. 반대말은 디코딩(decoding).
		    문자가 깨졌을 때, 음악이나 동영상을 휴대기기에 넣으려 할 때 종종 마주하게 되는 단어이다. -->
	<form action = "./join_member_process.jsp" method = "get">
	<!-- method = "get" : URL에 id,pw,nick,phone 내용 포함 -->
	<!-- method = "post" : URL에 id,pw,nick,phone 내용 x(헤더에 숨겨서 넘김) -->
	
		ID : <input type = "text" name = "id1"><br>
		<!-- 이름 지정이 반드시 되어 있어야 날라감 -->
		PW : <input type = "password" name = "pw1"><br>
		NICK : <input type = "text" name = "nick"><br>
		Phone : <input type = "text" name = "phone"><br>
		<input type = "submit" value = "회원가입">
		<!-- form이 두 개 이상이면 각각의 submit이 존재해야함. => form 당 1 submit -->
	</form>
	
</body>
</html>