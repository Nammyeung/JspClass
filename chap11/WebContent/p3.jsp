<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "chap11.*" %>
<%@ page import = "java.util.*" %>
<%
	STData data1 = new STData("한조",90);
	STData data2 = new STData("트레이서",70);
/* STData 참조변수 , 새로운 인스턴스 생성 */
/* servlet에서 값을 만들고 포워딩을 시킬 것임 */
/* 다형성? : 오버로딩, 오러라이딩*/
		
	HashMap<String, STData> map = 
		new HashMap<String, STData>();

	map.put("s1", data1);
	map.put("s2", data2);
		
	map.get("s1"); // value가 봅힘(data1)
	
	
	request.setAttribute("student", map);
	/* request.setAttribute("s2", data2);  */

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${student.s1.name }<br>
	<!-- (1) 네가지 저장공간에서 뽑으려고 함 (2) 뽑혔으면 map인지 아닌지 판단 (3) get.s1 수행 -->
	<!-- map이라서 getter가 없다. -->
	<!-- 해쉬맵이면 키값, 아니면 변수명을 바로 입력 -->
	${student.s1.score }<br>
	<!-- qqq.test => 문법적인 내용 getTest인 경우 다음과 같이 작성-->
	<!-- toString (모든 클래스는 Object를 상속받고 있고, toString이 모든 메소드에 존재, return타입이 메소드에서 호출, 클래스명@해쉬값 호출 -->
	${s2.score }<br>
	<!-- exception 발생 -->
	
	${aaa.bbb.ccc.ddd.eee }<br>
	<!-- (1) 일반적으로 request에서 뽑아옴 (2) map인지 아닌지 판단 (3)-1 map이 아니면 toString 호출 (3)-2 map이면 map으로 접근 -->
	
	<!-- ArrayList는 반복문을 돌리는 것이 핵심 => jstl을 활용(표준 태그 라이브러리) -->
	<!-- [Chapter 11의 핵심적인 내용] -->
	
</body>
</html>