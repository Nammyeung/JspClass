<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
		
	
	
	//DB 연동....(SELECT)
	String sql = String.format("SELECT * FROM FB_Member WHERE m_id = '%s' AND m_pw = '%s'",id,pw);
	// 문자열로 string타입이 두개가 들어가야함.
	System.out.println("실행될 쿼리 : " + sql);
	
	//클래스 동적 로드...
	Class.forName("oracle.jdbc.driver.OracleDriver");
		
	// DB 연결...	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	// 굳이 빼놓으면 불필요하게 메모리가 생성 < 코드 읽기가 편해야한다.

	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	ResultSet rs =	stm.executeQuery(sql);
	// result셋이 나옴.
	
	//로직 처리 시작....
	boolean isSuccess = true;
	
	if(rs.next()){ // 있냐없냐만 판단(if ture => 커서로 판단)
		//로그인 성공인 경우...
		isSuccess = true;
	
		String no = rs.getString("m_no"); // 가장 주요한 primary key를 뽑아옴.
		session.setAttribute("sessionNo", no); // session 변수가 이미 할당
		// 어떤 값이던지 계속 넣을 수 있음.
		// 키, 값(String, object) / object는 모든 클래스의 최상위 객체 - 모든 값이 들어감.(다형성)
		
		String nick = rs.getString("m_nick");
		session.setAttribute("sessionNick", nick);
		
	}else{
		// 로그인 실패
		// select문을 실행했을 때 아무것도 안나오는 경우.
		isSuccess = false;
	}
	
	
	//로직 처리 끝....
	
	rs.close();
	stm.close();
	conn.close(); // 내부적으로 자원을 생성하는 것들은 close를 해줘야한다.
	// getConnection으로 어디에 접속할 것인지
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	
<%
	if(isSuccess){
		out.println("로그인 성공<br>");
		out.println("<a href='./main_page.jsp'>메인 페이지로...</a><br>");
	}else{
		out.println("아이디 혹은 비밀 번호를 확인해 주세요...<br>");
		out.println("<a href='./login_page.jsp'>로그인 페이지로...</a><br>");
	}
		
%>	
	
	
	
</body>
</html>