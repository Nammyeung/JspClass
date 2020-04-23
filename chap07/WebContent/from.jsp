<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  
<jsp:foward> 액션 태그를 실행하면
생성했던 출력 결과는 모두 제거된다. 
--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>from.jsp의 제목</title>
</head>
<body>

이 페이지는 from.jsp가 생성한 것입니다.
<!-- 버퍼가 존재하기 때문에 기존에 있던 버퍼를 삭제하고 to.jsp의 값이 들어간다. -->
<!-- from.jsp에 해당하는 내용이 아무것도 나오지 않음 -->
<jsp:forward page="/to.jsp" />
<!-- 사이에 요소들이 있는 tag. but, 코드를 간결하게 하기 위해 상위 방법을 이용할 수도 있다. -->


</body>
</html>