<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 데이터베이스에 있는 것 만큼만 갖고와서 반복문을 돌려 출력 -->
내용 리스트 : <br>

<% 
	String query = "Select * FROM Test_0330"; // 문자열에 세미콜론 들어가면 안됨. (예 - Select * FROM Test_0330;)
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; /* 접속 위치, 내 컴퓨터의 오라클 서버에 접속하겠다. xe : 오라클 데이터베이스 이름*/
	// 내 컴퓨터에 있는 xe 데이터베이스에 접속하겠다.
	Connection conn = DriverManager.getConnection(url, "SCOTT", "TIGER");
	// Connection이라는 클래스가 리턴
	Statement stm = conn.createStatement(); // 접속을 하고, 하나의 실행과 관련된 처리를 하는 statement
	
	ResultSet rs = stm.executeQuery(query);
	
	
	//rs.next();  행을 next하며 차례로 호출함.
	while(rs.next()){
		String content = rs.getString("t_content");
		String date = rs.getString("t_write_date");
		
		out.println("내용 : " + content + ",작성일 : " + date);
		out.println("<br>");
		
	}

%>
<a href = "./input.jsp">글 입력</a>

</body>
</html>