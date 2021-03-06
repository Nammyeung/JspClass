<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

main.jsp에서 생성한 내용.
<!-- 상대 주소, 절대 주소 사용 가능 -->
<jsp:include page="sub.jsp" flush="false" />
<!-- sub로 갔다가 돌아옴 like 메소드 호출 / flush = "false"는 default-->
include 이후의 내용.

<!-- main.jsp에서 생성한 내용.
상대 주소, 절대 주소 사용 가능

<h1>sub.jsp 내용....</h1>
   

include 이후의 내용. -->


<!-- 다음 페이지
HTML 기초 지식
최초 작성일 2014-06-09 최종 수정일 2015-01-27
이번 시간에는...
HTML 기초 과정을 시작하기 위해 필요한 기본 지식을 다룹니다. 기본적인 태그의 명칭 요소(엘리먼트)와 속성(어트리뷰트)를 소개하고, 
절대 주소와 상대 주소를 통해서 어떻게 URL 주소를 표현하는지 img 태그와 a 태그와 함께 살펴 봅니다

요소와 속성
전에 소개에서 다뤘던 태그 종류에 대해 다시 한 번 살펴 보겠습니다.

일단 태그에는 '<tag>ABC</tag>'와 같이 '열리는 태그', '닫히는 태그'로 이루어진 태그가 있고요, 
'<br />'와 같이 '스스로 닫는 태그'가 있었습니다. 이와 같이 '스스로 닫는 태그'는 안에 담을 내용이 없기 때문 이라는 것도 말씀 드렸고요.

이러한 '스스로 닫는 태그'들 중에는 img태그도 있습니다. 바로 이미지를 넣는 태그입니다. 스스로 닫는 태그이기 때문에 다음과 같이 적습니다.

 <img />
그런데 이 내용 만으로는 어떤 이미지인지 알 수가 없습니다. 여러분의 이미지 주소를 명시해 줘야 합니다. 다음의 코드와 같이 말이죠.

 <img src="http://webberstudy.com/attach/html-1/sample.png" alt="샘플 이미지" />
위의 코드를 보시면 img태그 안에 'src=""' 형식으로 추가되었음을 알 수 있습니다. 이것을 우리는 '속성'이라고 부릅니다. 그리고 img는 '요소'라고 합니다. 
다시 말해 위 코드는 img 요소에 src 속성을 추가한 것이라고 보면 됩니다. src 속성 옆에는 alt 속성이 들어가 있고요. 
alt 속성은 이미지가 로딩되지 않았을 때 나오는 대체 텍스트로 다음에 더 자세히 다루겠습니다. 
이 '요소'와 '속성'은 각각 영어로 '엘리먼트(Element)'와 '어트리뷰트(Attribute)'라고도 많이 불립니다만, 이 강의에서는 '요소'와 '속성'으로 통칭하겠습니다.

앞으로는 태그라는 용어보다는 요소와 속성을 사용하게 될 것이니 이 둘은 꼭 알아두시기 바랍니다. 요소와 속성을 정리하면 다음과 같습니다.

 <요소 속성="속성값" /> 또는
<요소 속성="속성값">요소 내용</요소>
그럼 방금 img 요소를 살짝 살펴보았으니, 이번엔 a 요소를 알려드리겠습니다.

이 a 요소는 바로 페이지를 이동하는 링크 역할을 합니다. HTML의 약자의 'Hyper Text'가 바로 a 요소라 할 수 있고, 그만큼 웹에서 빠질 수 없는 요소입니다. a 요소는 다음과 같이 적습니다.

 <a href="http://webberstudy.com">웨버스터디 홈으로 가기</a>

a 요소에서 href 속성에 원하는 주소를 적어주면 a 요소가 감싸는 텍스트를 클릭 시에 해당 주소로 이동합니다. 여기서 'href' 속성은 'Hyper Reference'를 줄여 만든 것입니다. 
'다른 차원에 대한 참조' 정도로 이해하시면 될 거 같고요. 아까 img 요소의 'src' 속성은 'Source'의 줄임 말 입니다. 말 그대로 소스로 이해하시면 됩니다. 
종종 이 두 가지 속성을 헷갈릴 때가 있는데, 잘 기억하시기 바랍니다.


 
절대 주소, 상대 주소
앞의 a 요소나 img 요소를 소개시켜 드릴 때, 해당 속성들에 해당하는 주소들을 적었습니다. 'http://webb......' 이런 식으로 말이죠. 이번에는 이 주소들에 대해 알아 보도록 하죠.

주소에는 두 가지 종류가 있습니다. 바로 절대 주소와 상대 주소입니다.

절대 주소는 앞서 img, a 요소에 적었던 방식입니다. 'http://'부터 시작해서 (또는 'https://') 전체의 주소를 다 적는 방식입니다.

그에 비해 상대 주소는 해당 파일을 기준으로 주소를 찾는 것 입니다. 예를 들어 지난 강의 중에 'CSS 시작하기' 강의에서 html과 css파일을 연결하기 위해서 link 요소를 넣었던 것을 기억하십니까?

 <link href="abc.css" type="text/css" rel="stylesheet" />
저기 link 요소에서 href 속성의 값을 보시면 그냥 파일명만 적혀있는 것을 확인할 수 있습니다. 이러한 방식이 상대 주소이고, css파일과 html파일이 같은 폴더 안에 있다는 뜻 입니다.

만약 해당 파일이 하위 폴더에 있다면 속성값은 "폴더/abc.css"와 같이 들어갑니다. 또한 해당 파일이 현재 파일보다 상위에 있다면 "../abc.css"와 같이 작성됩니다. 
그리고 속성값을 '/'로 시작해서 적는다면 가장 최상위폴더에서부터 시작을 합니다.

만약 현재 파일이 'webberstudy.com/test/sample.html' 이고 주소 값을 '/others/logo.png'라 적는다면 이는 'webberstudy.com/others/logo.png'와 같은 의미입니다. 
상대 주소에 대해서는 다음의 그림을 참고해 주세요.

  폴더와 파일을 구조화 시킨 모습 'main.html' 파일이 다른 파일을 연결할 때 사용되는 상대주소 예시입니다.

 
절대 주소, 상대 주소의 특징
이러한 절대 주소와 상대 주소에는 어떠한 장점과 단점이 있을까요?

일단 절대주소는 주소를 길게 써야 하기 때문에 작성하는데 불편함이 있습니다. 하지만 현재 파일의 위치에 영향을 받지 않기 때문에 현재 파일의 위치가 변해도 전혀 문제가 없습니다.

예를 들어, 현재 파일이 'site.com/test/sample/apple.html' 과 같이 위치해 있고, 이 파일은 상대경로 '../style.css'를 참조한다고 합시다. ('site.com/test/style.css' 가 되겠죠.) 
그런데 만약 이 'apple.html' 파일을 상위 폴더인 'test'폴더로 옮긴다고 하면, ('site.com/test/apple.html' 으로 옮기는 것입니다.) 
html 파일 내에 '../style.css'는 더 이상 'site.com/test/style.css'가 아닌 'site.com/'에서 'style.css'파일을 찾게 되는 것이고, 의도치 않은 오류가 발생하게 되는 것입니다.

상대 주소가 이러한 단점을 가지고 있긴 하지만 절대 주소에 비해 간결하게 작성 할 수 가 있습니다. 이러한 간결함은 문서를 작성할 때 절대 무시하지 못할 부분인 것은 확실하고요.

상대 주소의 단점을 보완하는 대안으로 '/'으로 시작하는 주소로 적는 것도 좋은 방법입니다. (예: '/test/style.css') 앞의 도메인은 적지 않기 때문에 글자수가 줄어들게 되고, 
최상위 폴더를 기준으로 하기 때문에 현재파일의 위치가 바뀌어도 문제가 되지 않습니다. 
다만, 여러분의 PC에서 작업을 하실 때에 최상위 폴더의 위치가 정말 하드디스크의 최상위를 가리키게 되기 때문에 PC에서 확인 할 때는 무리가 있습니다.

어느 방식이 나을 것도 없고, 반드시 한가지만 선택해서 작성해야 하는 것도 아닙니다. 여러분이 편한 방식으로 상황에 맞춰 사용하시면 됩니다. -->

</body>
</html>