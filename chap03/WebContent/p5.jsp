<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- **************76 page************** -->
<meta charset="UTF-8">
<title>폼 생성</title>
</head>
<body>

<form action = "/chap03/viewParameter.jsp" method = "get">
<!-- <form action = "/chap03/viewParameter.jsp" method = "get"> -->
<!-- <form action = "./chap03/viewParameter.jsp" method = "get"> -->
<!-- <form action = "http://localhost:8181/chap03/viewParameter.jsp" method = "get"> -->
<!-- action의 초기 부분 (1) / 와 (2) ./의 차이 -->
<!-- (1) 절대 경로 vs (2) 상대 경로 -->
<!-- 상대경로를 이용했을 때 누구 기준에서의 상대 경로인지 잘 고려해야함. -->
<!-- get 방식 vs post 방식 -->
이름 : <input type = "text" name = "name" size = "10"> <br>
주소 : <input type = "text" name = "address" size = "30"> <br> 
<!-- 주목 : input에는 name이 다 붙어있다. checkbox에는 동일한 name이 붙어있다. -->
좋아하는 동물:
      <input type = "checkbox" name = "pet" value = "dog">강아지 
      <!-- selectbox, checkbox, radiobutton은 value를 반드시 지정해줘야 함, 체크가 된 것만 날라감 -->
 	  <input type = "checkbox" name = "pet" value = "cat">고양이
	  <input type = "checkbox" name = "pet" value = "pig">돼지
<br>
<input type = "submit" value = "전송"> <br>
</form>
</body>
<!-- 자동으로 서버가동, 웹브라우저가 이클립스를 활용해 명령어를 표출 -->
<!-- 와이어 샤크 
와이어샤크(Wireshark)는 자유 및 오픈 소스 패킷 분석 프로그램이다. 
네트워크의 문제, 분석, 소프트웨어 및 통신 프로토콜 개발, 교육에 쓰인다. 
원래 이름은 Ethereal이었으나 2006년 5월에 상표 문제로 말미암아 와이어샤크로 이름을 바꾸었다.
와이어샤크는 크로스 플랫폼으로, Qt 위젯 툴킷을 이용하여 사용자 인터페이스를 제공하며, 
pcap을 이용하여 패킷을 포획한다. 
리눅스, 맥 OS X, BSD, 솔라리스를 포함한 다양한 유닉스 계열 운영 체제와 마이크로소프트 윈도에서 동작한다. 
GUI가 없는 터미널 기반 버전인 티샤크(TShark)도 제공한다. 
와이어샤크, 또 TShark와 같은 프로그램과 함께 배포되는 여러 프로그램들은 자유 소프트웨어로, 
GNU 일반 공중 사용 허가서의 조건으로 공개된다. -->
</html>






