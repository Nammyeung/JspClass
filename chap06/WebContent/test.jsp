<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요
	
<%
	//int a = 10;
	int a = 0; //웹브라우저 입장에서는 exception이 아니다. 
	
/* 	예외

	org.apache.jasper.JasperException: 행 [15]에서 [/test.jsp]을(를) 처리하는 중 예외 발생 */
	
	
/* 근본 원인 (root cause)

	java.lang.ArithmeticException: / by zero
		org.apache.jsp.test_jsp._jspService(test_jsp.java:122)
		org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:71)
		javax.servlet.http.HttpServlet.service(HttpServlet.java:741)
		org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:476)
		org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:386)
		org.apache.jasper.servlet.JspServlet.service(JspServlet.java:330)
		javax.servlet.http.HttpServlet.service(HttpServlet.java:741)
		org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52) */
		
/* 에러 타입 별 에러 페이지 지정

* web.xml 파일에서 설정 */

	int b = 10/a;
	out.println(b);


	/* HTTP 상태 404 – 찾을 수 없음 => 예외 처리로 어떻게 이쁘게 처리할건가?*/
	
%>
</body>
</html>