<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<%-- <%@ page errorPage = "/error/viewErrorMessage.jsp" %>    --%> 
<!-- exception이 발생할 만한 모든 페이지에 해당 코드를 넣는것은 너무 불편하다. -->
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
<%-- 
<%@ page errorPage = "/error/viewErrorMessage.jsp" %> --%>

<!-- errorPage : error가 발생하면 이 화면을 띄운다. -->
    <!-- *****************page 143******************* -->
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>
에러가 발생했습니다. 잠시 후 다시 시도해 주세요~~
이런 코드 :
<%
		out.println(exception.getMessage());
		// exception.getMessage() : exception 내용 출력

%>
<!-- nullPointer exception -->
<!-- http://localhost:8181/chap06/test1.jsp?name=aaaaaa의 경우 정상으로 parameter값이 넘어가면서 출력 -->
</body>
</html>