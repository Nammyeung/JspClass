<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 사용</title>
</head>
<body>
<%
	java.util.Calendar cal = java.util.Calendar.getInstance();
	/* import를 안하고 바로 api를 쓰는 경우 */
%>
오늘은
	<%= cal.get(java.util.Calendar.YEAR)%> 년
	<%= cal.get(java.util.Calendar.MONTH) + 1 %> 월
	<%= cal.get(java.util.Calendar.DATE)%> 일


</body>
</html>