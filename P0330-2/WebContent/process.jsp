<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>     
    
<%	
	request.setCharacterEncoding("utf-8"); // 한글로 변환시켜라, request : 웹 브라우저에서 jsp 페이지로 전달되는 정보의 모임
	String content = request.getParameter("content"); // getParameter : 날라온값 
	// getAttribute vs getParameter
	
	//*******************************데이터베이스 연동코드****************************
	String query = "INSERT INTO Test_0330 VALUES('"+content+"',SYSDATE)";
	
	System.out.println("실행될 쿼리 : " + query);

	//DB연동 API..., 오라클 데이터베이스와 연결(자바는 어떤(오라클 등등) DB인지 모른다.)
	Class.forName("oracle.jdbc.driver.OracleDriver"); /* OracleDriver 클래스를 한 번 로드시켜야 함. */
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; /* 접속 위치, 내 컴퓨터의 오라클 서버에 접속하겠다. xe : 오라클 데이터베이스 이름*/
	// 내 컴퓨터에 있는 xe 데이터베이스에 접속하겠다.
	Connection conn = DriverManager.getConnection(url, "SCOTT", "TIGER");
	// Connection이라는 클래스가 리턴
	Statement stm = conn.createStatement(); // 접속을 하고, 하나의 실행과 관련된 처리를 하는 statement
	stm.executeUpdate(query); // 데이터베이스로 sql문자열이 날라가서 실행
	//insert, delete, update 사용
	// 접속, 실행
	stm.close();	
	conn.close();

	/* JSP를 이용하여 데이터베이스를 연결하는 것에는 몇 가지 방법이 있다. 
	이번 포스팅에서는 가장 기본적인 방법인 JDBC를 이용하여 오라클과 연동하고 사용하는 방법을 알아보도록 하겠다. 
	우선, JSP 정확히는 자바 파일로 데이터베이스를 연동하기 위해서는 오라클용 JDBC 라이브러리를 사용해야 한다. 
	이것에 대한 내용은 JAVA 포스팅을 참고하면 된다. 
	기본적인 환경 구축(오라클 설치, JDBC 연동 등)은 되어있다고 생각하고 데이터베이스를 연결하고 CRUD(Create, Retrieve, Update, Delete) 작업을 하는 방법에 대해서 알아보자.
	
	오라클 연동 순서
	
	 JSP나 JAVA를 이용하여 데이터베이스를 연동하기 위해서는 정해진 순서에 따라 코딩을 실시하여야 하여야 하며 과정은 아래의 같다.
	
	 구분					과정 및 사용 클래스(인터페이스)
	 1					JDBC 드라이버 로딩
	 					Class.forName("JDBC 클래스");
	 2					DB 연결(접속) / Connection 객체 생성
	 					Connection / DriverManager.getConnection("url", "id", "passwd");
	 3					PreparedStaement 객체 생성
	 					.prepareStatement("sql");
	 4					Query 실행
	 					insert, delete, update -> .executeUpdate() // int 리턴
	 5					DB 연결 해제(연결과정과 반대)
	 					.close() 
	 */
						
	 
	
/* 참조 : https://m.blog.naver.com/PostView.nhn?blogId=heartflow89&logNo=221008307886&proxyReferer=https%3A%2F%2Fwww.google.com%2F */	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력 완료!!!!!!!!
<a href="./content_list.jsp">내용 보기</a>
<!-- list를 모두 출력 -->



</body>
</html>
