<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
/* 책 71page */
	/* 클래스의 멤버로 등록 */
	public int multiply(int a, int b) {
		int c = a * b;
		return c;
}
/* *************multiply 메소드를 여기에 선언을 한 후************* */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수값의 곱</title>
</head>
<body>
<!-- 스크립트릿 -->

10 * 25 = <%= multiply(10, 25) %>
<!-- *************multiply 함수를 여기에서 사용************ -->
</body>
<!-- 이 코드는 자바 코드로 변환된다 => jsp : 자바코드로 변환되지 위한 스트립트 문법 -->
</html>
