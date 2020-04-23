<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- HTML로 넘길 코드 작성 -->
	<form action = "./P4.jsp" method = "post"> 
	<!-- get : 링크에 값을 날려줌(키/값 키/값 혹은 post(헤더쪽에 숨겨서 날려줌) 방식 -->
	<!-- 버튼을 클릭하면 어디로 어떤 명령어를 전달할지 수행할 행동 -->
		ID : <input type="text" name = "aaa"><br>
		PW : <input type = "password" name = "bbb"><br>
		<!-- 값을 넘기는데 URL에 노출이 되지 않게 하는 방법이 없을까 -->
		<!-- ID, PW 공간 생성 -->
		<input type = "submit" value = "전송">
		<!-- 전송 버튼 생성 -->
	</form>	


</body>
</html>

