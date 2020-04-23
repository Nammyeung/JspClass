<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 및 서버정보</title>
</head>
<body>

*클라이언트IP = <%= request.getRemoteAddr() %> <br>
<!-- 클라이언트의 ip주소가 필요할 때 -->
요청정보길이 = <%= request.getContentLength() %> <br>
*요청정보 인코딩 = <%= request.getCharacterEncoding() %> <br>
<!-- utf-8을 여기다 적어줬던 걸로 기억 -->
요청정보 컨텐츠타입 = <%= request.getContentType() %> <br>
요청정보 프로토콜 = <%= request.getProtocol() %> <br>
요청정보 전송방식 = <%= request.getMethod() %> <br>
*요청 URI = <%= request.getRequestURI() %> <br>
<!-- /chap03/p5.jsp -->
*컨텍스트 경로 = <%= request.getContextPath() %> <br>
<!-- 프로젝트의 이름 -->
서버 이름 = <%= request.getServerName() %> <br>
<!-- localhost -->
서버 포트 = <%= request.getServerPort() %> <br>
<!-- 8181 -->
</body>
<!-- 이 코드는 자바 코드로 변환된다 => jsp : 자바코드로 변환되지 위한 스트립트 문법 -->
</html>
