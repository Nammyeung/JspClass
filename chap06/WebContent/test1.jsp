<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page errorPage = "/error/viewErrorMessage.jsp" %>    --%> 
<!-- exception 처리를 안한경우 -->
<!-- 근본 원인 (root cause)

java.lang.NullPointerException
	org.apache.jsp.test1_jsp._jspService(test1_jsp.java:124)
	org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:71)
	javax.servlet.http.HttpServlet.service(HttpServlet.java:741)
	org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:476)
	org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:386)
	org.apache.jasper.servlet.JspServlet.service(JspServlet.java:330)
	javax.servlet.http.HttpServlet.service(HttpServlet.java:741)
	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52) -->

<%@ page errorPage = "/error/viewErrorMessage.jsp" %>

<!-- errorPage : error가 발생하면 이 화면을 띄운다. -->
    <!-- *****************page 143******************* -->
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>

name 파라미터 값:
<%= request.getParameter("name").toUpperCase() %>
<!-- nullPointer exception -->
<!-- http://localhost:8181/chap06/test1.jsp?name=aaaaaa의 경우 정상으로 parameter값이 넘어가면서 출력 -->
</body>
</html>