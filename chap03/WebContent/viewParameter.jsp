<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
/* post 방식에만 한글을 받을 때 해당 API 사용. */
%>
<!DOCTYPE html>
<html>
<!-- ****************77page********************* -->
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<%= request.getParameter("name") %><br>
<%= request.getParameter("address") %><br>
<%= request.getParameter("pet") %><br> <!-- 한 개 값만 받음 -->

<br>
두개 값 이상 받기......
<br>
<%
	String[] pets = request.getParameterValues("pet");
	for(String pet : pets){
		out.println(pet + "<br>");
	}
%>
<br>
Enum 객체 사용하기 <br>

<%
	Enumeration<String> names = request.getParameterNames();
	
	while(names.hasMoreElements()) /* rs.next()와 비슷 */
	{ // names.nextElement();  names.hasMoreElements() + names.nextElement() = rs.next();
		String name = names.nextElement();
		String value = request.getParameter(name);	
	out.println(name + ":" + value + "<br>");
	
	}

%>

<br>
MAP 객체 사용하기...
<!-- MAP : 키와 값의 쌍으로 이루어진 자료구조 -->
<%
	Map<String, String[]> map = request.getParameterMap(); // 내부가 map이기 때문에 getParameterKey를 하면 값이 나옴.
	// Key의 타입 : String, Value의 타입 String[]
	String [] values = map.get("address");
	// put & get
%>


</body>
</html>