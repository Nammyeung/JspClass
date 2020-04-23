<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("nick", "한조");
	request.setAttribute("xxx", 1);
/* login이 됐다라는 가정하에 진행. */

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${nick} 님 환영합니다.<br>
	
	${empty id }<br>
	<!-- 4가지 저장공간에서 id를 뽑아오려고 함 => 있으면 true || 없으면 false -->
	${!empty id }<br>
	
	<!-- ** 주의 : 순수 자바문법 아님. equals를 사용하지 않기 때문에(결과적으로는 equals를 사용하지만) -->
	${sessionNick == writer && aaa == bb}<br>
	<!-- writer : 트레이서 // 뽑아온 값하고 비교해 봤더니 어떤가-->
	
	${xxx + 4}<br>
	<!-- 어느정도의 연산은 가능하다 -->
	<!-- mvc모델에서는 출력만 하고 연산은 controller(조작)에서 수행하기 때문에 여기서 작업을 할 필요가 없다. -->
	
	
</body>
</html>