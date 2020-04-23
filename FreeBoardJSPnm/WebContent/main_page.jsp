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
		width : 600px;
		height : 800px;
		border : 1px solid black;
		margin : 30px auto;	
	}
	
</style>
</head>
<body>
	
<div id = "wrapper">
<h1>게시판</h1>
<br>
			
	<%
			String sessionNick = (String)session.getAttribute("sessionNick"); // 값을 뽑아오려고 시도
			// 세션 저장공간에서 키로된 값을 뽑아와라
			// 타입 캐스팅을 해야함						
			
			if(sessionNick == null) {
				out.println("비회원으로 접근하였습니다.");
				out.println("<a href = './login_page.jsp'>로그인 페이지로</a>");
			}else{
				out.println(sessionNick + "님 환영합니다.");
				out.println("<a href='./logout_process.jsp'>로그 아웃</a>");
			}
			
	%>
	
<br>
		<!-- 내용 테이블... -->
		<!-- <a href="./write_content_page.jsp">글쓰기</a> -->
		<%-- 	<%
			} // Parentheses가 넘나들 수 있음 
		%> --%>
		<!-- 회원 + 비회원 로그인 버튼 나타남 -->
		<!-- 내용을 보는 것 : 회원 + 비회원 // 글쓰기는 회원만가능 -->
<br>
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
			out.print("<td><a href = 'read_content_page.jsp?b_no="+b_no+"'>" + b_title + "</a></td>");
			// ?b_no=3 : 링크로 값을 넘기는 중요한 방식
			// 웹프로그램은 데이터베이스와 밀접하게 연결 => primary key를 다루는 것이 핵심
			out.print("<td>" + m_nick + "</td>");
			out.print("</tr>");
			out.println();
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