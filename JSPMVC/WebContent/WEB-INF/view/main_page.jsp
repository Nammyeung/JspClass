<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test = "${!empty sessionUserInfo}"> <!-- 로그인한 사용자 -->
		${sessionUserInfo.m_nick }님 환영합니다.<a href = "./logout_process.do">로그아웃</a><br>
	</c:when>
	<c:otherwise>
		비회원으로 접근하였습니다. <a href = "./login_page.do">로그인</a><br>
	</c:otherwise>
</c:choose>


<h1>게시판 제목 리스트</h1>


<table border="1">
	<tr><td>글번호</td><td>제목</td><td>작성자</td><td>작성일</td></tr>
	<c:forEach items = "${contentList }" var = "data"> <!-- data 키로 pageContext에 setAttribute함. -->
		<tr>
			<td>${data.boardVo.b_no }</td>
			<td><a href = "./read_content_page.do?b_no=${data.boardVo.b_no }">${data.boardVo.b_title }</a></td>
			<!-- 링크로 파라미터를 넘기는 방법 : ?(물음표) -->
			<!-- 4가지의 저장 공간에 getAttribute -->
			<!-- data - pageContext.getAttribute, object.getboardVo 호출 -->
			<td>${data.memberVo.m_nick }</td>
			<td>${data.boardVo.b_writedate }</td>
		</tr>	
	</c:forEach>	
</table>

<br>

<c:if test="${!empty sessionUserInfo }">
	<a href = "./write_content_page.do">글쓰기</a>
</c:if>




</body>
</html>