<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8"); // 한글 처리하는 이상 무조건 해당 코드가 들어가야함.
	String b_no = request.getParameter("b_no"); // 키로 값을 뽑는 형태(Hash_map 형태)
	// getAttribute를 이용해 sessionNick을 뽑아옴.
	
	String sql = String.format("SELECT * FROM FB_Board b, FB_Member m WHERE b.m_no = m.m_no AND b.b_no = %s",b_no); 
	// 누구기준에서 문자인가 : sql기준에서는 숫자, 자바기준에서는 문자
	
	
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
	rs.next(); // 결과적으로 안쓸 API
	// 작성자 , 내용, 작성일
	String title = rs.getString("b_title"); // 지역변수들
	String content = rs.getString("b_content"); // 지역변수들
	String nick = rs.getString("m_nick"); // 지역변수들
	// 데이터베이스와 연동했을 때는 변수명을 칼럼명과 비슷하게 작성하는 것을 추천
	
	
	// 세션에 있는 이름은 로그인할 작성자
	
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
	<h2>글 수정</h2>
	<form action="./update_content_process.jsp" method="post"> <!-- form 태그에 무조건 입력 양식만 있어야 되는 건 아니다 => 하나로 묶겠다. -->
		작성자 : <%=nick %>
		제목 : <input name = "title" type = "text" value = "<%=title%>"> <!-- jsp기준에서는 ""가 출력해야하는 문자 -->
		내용 : <br>
		<textarea name = "content" rows="7" cols="40"><%=content %></textarea>
		<br>
		<input type = "hidden" name = "b_no" value = "<%=b_no%>"> <!-- 웹 브라우저에게 문자열을 던짐 -->
		<input type = "submit" value = "수정"> <!-- value = 버튼 이름 -->
	</form>
	
		
</body>
</html>

