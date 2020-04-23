<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrapper{
		width: 600px;
		height : 800px;
		border : 1px solid black;
		margin: 30px auto;
	}
</style>

</head>
<body>

	<div id="wrapper">
		<h1>게시판</h1>
		<br>
		<%
			String sessionNick = (String)session.getAttribute("sessionNick");
			
			if(sessionNick == null){
				out.println("비회원으로 접근하였습니다.");
				out.println("<a href='./login_page.jsp'>로그인 페이지로...</a>");
			}else{
				out.println(sessionNick + "님 환영합니다.");
				out.println("<a href='./logout_process.jsp'>로그 아웃</a>");
			}
		
		%>
	
		<br>
		<!-- 내용 테이블... -->
		<table border="1">
			<tr><td>글 번호</td><td>제목</td><td>작성자</td></tr>
<%
	String sql = "SELECT * FROM FB_Board,FB_Member WHERE FB_Board.m_no = FB_Member.m_no ORDER BY FB_Board.b_no DESC";

	//DB 연동....(SELECT)
	System.out.println("실행될 쿼리 : " + sql);
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "SCOTT";
	String dbPW = "TIGER";
	
	Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPW);
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery(sql);
	
	//로직 처리 시작....
	while(rs.next()){
		
		String b_no = rs.getString("b_no");
		String b_title = rs.getString("b_title");
		String m_nick = rs.getString("m_nick");
		
		
		out.print("<tr>");
		out.print("<td>" + b_no + "</td>");
		out.print("<td>" + b_title + "</td>");
		out.print("<td>" + m_nick + "</td>");
		out.print("</tr>");
	}
	
	//로직 처리 끝....
	
	rs.close();
	stm.close();
	conn.close();
		

%>			
		</table>
		
		<br>
		
		<%
			if(sessionNick != null){
				out.println("<a href='./write_content_page.jsp'>글쓰기</a>");	
			}
		%>
		
	
	</div>

</body>
</html>











