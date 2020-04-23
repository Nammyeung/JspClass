<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 포워딩이 됐다는 가정하에 진행 */
	/* pageContext, request, session, application*/
	pageContext.setAttribute("xxx", "p");
	request.setAttribute("xxx", "r");
	session.setAttribute("xxx", "s");
	application.setAttribute("xxx", "a"); 
	/* 위에 3개 모두 주석 => s가 나온다. 
			서버를 강제로 종료하지 않은 상태
			session 저장공간에 있는 값이 사라지지 않았다.
	*/
/* 4가지 저장공간 => 각각 다른 Hashmap 저장공간에 저장 */
/* xxx : 똑같은 구조 */
/* 접근에 순서가 있다.
(1) page 저장곤간 
(2) request 저장공간 */



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${aaa }<br>
${xxx }<br>

${pageScope.xxx }<br> <!-- 아무것도 안나옴 -->
${requestScope.xxx }<br> <!-- 값이 나옴 -->
${sessionScope.xxx }<br>
${applicationScope.xxx }<br>
<!-- 각각의 저장공간에서 xxx를 뽑아오겠다. -->

</body>
</html>