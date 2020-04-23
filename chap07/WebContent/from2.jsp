<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* redirect와 비교 */
	String v1 = request.getParameter("v1");
	
	request.setAttribute("test1", "한조");
	/* setAttribute & Forwarding 조합 */	
	
	if(v1 == null || v1.equals("r")){
		response.sendRedirect("./to.jsp");
		/* request 저장공간이 응답할 때 소멸됐고, 다시 요청하니 null이 표출 */
	}else{
%>
<!-- sendRedirect or Forward 사용 -->
<!-- /to.jsp가 실행되는 것은 동일 -->
<!-- sendRedirect 웹브라우저에게 실행시켜달라고 요청(request1)하고 웹 브라우저가 다시 요청(request2) -->
<!-- Forward는 그대로 사용 -->
	<jsp:forward page = "/to.jsp"></jsp:forward>
	
<!-- 참조 : https://doublesprogramming.tistory.com/63 -->	
	
		  
<% 
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>