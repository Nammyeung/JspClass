<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로그인</h1>
	<form action="./login_process.do" method = "post">
		ID : <input type = "text" name = "m_id"><br>
		PW : <input type = "password" name = "m_pw"><br>
		<input type = "submit" value = "로그인"><br>
		<a href="./join_member_page.do">회원가입</a>
	</form>
<!-- WEB-INF밑에 있는 것은 접속이 안되도록 설정 -->

</body>
</html>

<!-- Restart 는 stop 후 start 를 한 과정에 해주는 일입니다.

그래서 완전히 웹서버를 종료했다가 다시 실행하는 방식이고 reload는 설정 파일만 다시 불러들인다고 알고 있습니다.
속도에 차이가 있습니다. 성능이 빵빵한 서버에서는 큰 차이를 느끼지 못하지만 사양이 간당간당한 저 사양 서버에서는 시간 차이가 꽤 납니다.

비유를 하자면 restart 는 웹사이트 화면을 갱신할 때 브라우저를 완전히 껐다가 새로 실행하는 느낌이고 reload는 F5를 눌러 새로 고침하는 느낌 아닐까요? -->
