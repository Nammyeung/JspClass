<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("sessionNick", "한조");
/* 가정 : 로그인이 성공해서 닉네임이 세션안에 들어가 있는 상태이다. */
    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nick = 
		(String)session.getAttribute("sessionNick");

	if(nick == null){
		out.println("비회원으로 접근하였습니다");
	}else{
		out.println(nick + "님 환영합니다.");
	}
/* 코드가 간단해서 이렇게 썼지만 태그를 활용해서 쓸 수 있도록 하겠다. => out없이??? */
/* if문과 for문이 지저분하다? */

%>




<!-- 구글링 => tomcat => taglibs => 밑의 4가지를 다 다운받음(jar files) => c 드라이브의 libs 폴더를 생성하여 넣고 WebContent의 lib에 복붙할 것-->
<!-- jar 압축 다 풀어보면 class파일임 => 프로그램을 실행하는 => 위험 -->

</body>
</html>