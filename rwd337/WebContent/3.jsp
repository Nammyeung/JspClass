<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판</title>
</head>
<body>
<%String id = null;
		if(session.getAttribute("id") != null){
			id = (String)session.getAttribute("id");
		}			
%>
	<nav class = "navbar navbar-default">
		<div class = "navbar-header">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle=:collapse data-target = "#bs-example-navbar-collapse-1" 
				aria-expanded = "false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>
			</button>
			<a class = "navbar-brand" href = "main.jsp">JSP 게시판 웹</a>
		</div>
		<div class = "collapse navbar-collapse" id = "bs="#bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="boardList.do">게시판</a></li>
			</ul>
			<%
				if(id == null) {
			%>
			<ul class = "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href="#" class = "dropdown-toggle"
						data-toggle="dropdown" role = "button" aria-haspopup = "true"
						aria-expanded="false">접속하기<span class = "caret"><</span></a>
						<ul class = "dropdown-menu">
							<li><a href = "login.jsp">로그인</a></li>
							<li><a href = "join.jsp">회원가입</a></li>
						</ul>
				</li>			
			</ul>
			<%
				} else {
			%>
		<ul class = "nav navbar-nav navbar-right">
			<li class = "dropdown">
				<a href = "#" class = "dropdown-toggle"
					data-toggle="dropdown" role = "button" aria-haspopup = "true"
					aria-expanded="false">회원관리<span class = "caret"></span></a>
					<ul class = "dropdown-menu">
						<li><a href = "logout.jsp">로그아웃</a></li>
						<li><a href = "modify.jsp">회원정보수정</a></li>
					
					</ul>
			</li>
		</ul>
		
		<%
			}
		%>
		</div>
	</nav>
	
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	
</body>
</html>