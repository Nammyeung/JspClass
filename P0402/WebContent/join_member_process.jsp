<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String sessionNick1 = (String) session.getAttribute("sessionNick");

%>
<% 
	request.setCharacterEncoding("utf-8"); // euc-kr 인코딩으로 날라와도 utf-8로 바꿈
	String id1 = request.getParameter("id1");
	String pw1 = request.getParameter("pw1");
	String nick = request.getParameter("nick");
	String phone = request.getParameter("phone");
	// 보내는쪽과 받는쪽 name(ex - id)가  일치해야함.(주의)
	
	// String sql = "INSERT INTO FB_Member VALUES(FB_Member_seq.nextval,'"+id+"', '"+pw+"','"+nick+"','"+phone+"', SYSDATE)";
	String sql1 = String.format("INSERT INTO FB_Member VALUES(FB_Member_seq.nextval, '%s', '%s', '%s', '%s', SYSDATE)", id1, pw1, nick, phone);
	// String.format API 활용 : %s로 문자열을 받아서 뒤의 변수를 받는다.
	// INSERT문을  세미콜론 빼고 복사

	// TEST CODE
	System.out.println("실행될 쿼리 : " + sql1); // 비즈니스 로직이 아니다.(로그찍는 용도)
	// 개발자들은 로그를 굉장히 많이 찍는다. -> 데이터가 어떻게 움직이는지 알아야 하기 때문에
	
	//DB 연동....
	//클래스 동적 로드...
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// DB 연결...	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	// 굳이 빼놓으면 불필요하게 메모리가 생성 < 코드 읽기가 편해야한다.
	
	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	
	stm.executeUpdate(sql1);
	
	stm.close();
	conn.close(); // 내부적으로 자원을 생성하는 것들은 close를 해줘야한다.
	// getConnection으로 어디에 접속할 것인지
	
%>
<!-- 코드가 변환될 때 SQL사용 API를 넣겠다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

회원가입을 ㅊㅋ드립니다.<br>
<a href = "./index.jsp">로그인 페이지로...</a>	
	
</body>
</html>