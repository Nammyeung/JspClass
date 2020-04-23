<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8"); // 한글 처리하는 이상 무조건 해당 코드가 들어가야함.
	String b_no = request.getParameter("b_no"); // 키로 값을 뽑는 형태(Hash_map 형태)
	// getAttribute를 이용해 sessionNick을 뽑아옴.
	
	String sql = String.format("SELECT * FROM FB_Board,FB_Member WHERE FB_Member.m_no = FB_Board.m_no AND FB_Board.b_no = %s",b_no); 
	// 누구기준에서 문자인가 : sql기준에서는 숫자, 자바기준에서는 문자
	
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
	rs.next(); // 결과적으로 안쓸 API
	// 작성자 , 내용, 작성일
	String title = rs.getString("b_title"); // 지역변수들
	String content = rs.getString("b_content"); // 지역변수들
	String nick = rs.getString("m_nick"); // 지역변수들
	String writedate = rs.getString("b_writedate"); // 지역변수들
	// 데이터베이스와 연동했을 때는 변수명을 칼럼명과 비슷하게 작성하는 것을 추천
	//<form id="f1" action="./write_content_process.jsp" method="post">
	//<input type="hidden" value="하하하바보들...." name ="title">
	//<input type="hidden" value="하하하바보들...." anme = "content">
	
	
	
	String writerNo = rs.getString("m_no"); // 출력할 때 쓰는 용도는 아니다.
	
	
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
<!-- 여기까지는 지역변수들이 살아있음. -->
	<h2>게시글 보기</h2>
	작성자 : <%= nick %><br>
	<!-- out.print(nick) -->
	작성일 : <%= writedate %><br>
	제목 : <%= title %>
	내용 : <br>
	<!-- 내용은 여러줄이 나와야 함 -->
	<%= content %>
	
	<br><br>
	<a href = "./main_page.jsp">목록으로</a>
	
<%
	String sessionNo = (String)session.getAttribute("sessionNo"); // 이 키로 하면 값이 뽑혀나옴, 없으면 null값 나옴
	// setAttribute : 키 - String 값 - Object , 반대의 경우 타입캐스팅
	// 키는 스트링으로 입력을 하지만 다형성을 위해 Object자료형으로 저장해 놓는다.
	
	if(sessionNo != null && sessionNo.equals(writerNo)){ // sessionNo로 로그인을 했고 writerNo와 동일하면 삭제버튼 활성화
	// &&의 경우 처음이 false면 뒤는 건너뛴다. => nullpointer exception이 발생 안함
	// ||의 경우 처음이 true면 뒤는 건너뛴다.
	// 최적화가 잘 되어있는 코드를 이해해야함.
		out.println("<a href ='./delete_content_process.jsp?b_no="+b_no+"'>삭제</a>");
	
		out.println("<a href ='./update_content_page.jsp?b_no="+b_no+"'>수정</a>"); // 외부 : html 내부 : java코드
	// ./delete_content_process.jsp?b_no= "" 다음에 ++ 안에 b_no(변수) 
			
	}
	

%>	
	
	
		
</body>
</html>

