<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie [] arr = request.getCookies(); /* 쿠키의 배열 형태 */
	/* 단점 : 어떤 값을 찾는다고 할 때 배열을 탐색해야 한다. */
	// 배열로 싹 다 받은 상태에서 반복문을 돌려 호출 
	// addCookie를 하지 않았는데 나온다.
	// 쿠키가 없을 때 null값이 날라옴.
	if(arr != null){
	for(Cookie c : arr) {
		out.print(c.getName() + "=" + c.getValue());
		out.print("<br>");
	}
	// cookie는 웹브라우저 상에서 값이 변한다.
	}
	
%>









</body>
</html>









