<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판</title>
<script language = "JavaScript" src = "members.js" ></script>
</head>
<body>
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
				<li><a href="main.jsp">메인</a></li>
				<li><a href="board.jsp">게시판</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href="#" class = "dropdown-toggle"
						data-toggle="dropdown" role = "button" aria-haspopup = "true"
						aria-expanded="false">접속하기<span class = "caret"><</span></a>
						<ul class = "dropdown-menu">
							<li class = "active"><a href = "login.jsp">로그인</a></li>
							<li><a href = "join.jsp">회원가입</a></li>
						</ul>
				</li>			
			</ul>
		</div>
	</nav>	
	<div class = "container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class = "jumbotron" style = "padding-top: 20px;">
				<form method = "post" action = "loginGo.jsp">
					<h3 style = "text-align: center;">회원가입 화면</h3>
					<div class = "form-group">
						<input type = "text" class = "form-control" placeholder = "아이디" name = "id" maxlength = "20">
					</div>
					<div class = "form-group">
						<input type = "password" class = "form-control" placeholder = "비밀번호" name = "pw" maxlength = "20">
					</div>
					<div class = "form-group">
						<input type = "password" class = "form-control" placeholder = "비밀번호확인" name = "pw_check" maxlength = "20">
					</div>
					<div class = "form-group">
						<input type = "password" class = "form-control" placeholder = "이름" name = "name" maxlength = "20">
					</div>
					<div class = "form-group">
						<input type = "password" class = "form-control" placeholder = "이메일" name = "eMail" maxlength = "20">
					</div>
					<div class = "form-group">
						<input type = "password" class = "form-control" placeholder = "주소" name = "address" maxlength = "50">
					</div>
					<input type = "button" class = "btn btn-primary form-control" value = "회원가입" onclick = "infoConfirm()">
				</form>
			</div>
		<div class="col-lg-4"></div>
	</div>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>

</body>
</html>

<!-- https://rwd337.tistory.com/39?category=650715 -->