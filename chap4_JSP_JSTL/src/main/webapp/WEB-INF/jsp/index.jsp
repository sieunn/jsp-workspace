<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 
taglib 태그 라이브러리 (해시태그 같은)
#http://java.sun.com/jsp/jstl/core -> 이름이 기니까 사용할 때 이름 명칭으로 c
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 웹 사이트</title>
</head>
<body>
	<h1>c 구문을 활용한 jstl 사용하기</h1>
	<pre>
	JSTL : JSP Standard Tag Library jsp에서 기본으로 사용하는 태그 라이브러리
	JSP에서 반복문, 조건문, 변수 처리와 같은 것들을 해줄때 작성
	
	[사용방법]
	맨위에 JSTL 주소를 가져와서 사용한다 설정
	< %@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" % >
	<c:set var="이름" value="홍길동"/>
	
	<p>NAME : ${이름}</p>
	
	c:해서 JSTL에 저장된 기능을 가져올 수 있음
	set은 setter의 줄임말로 이름이라는 변수명에 value로 설정한 이름 "홍길동"을 넣겠다 표시
	</pre>
	
	<h3>c 태그 이용해서 if문 설정</h3>
	<pre>
	c 태그를 이용해서 if문을 설정할 때
	c:if test="${테스트 할 조건 작성}"
	c:if 문은 else가 존재하지 않음 오직 if만 사용
	</pre>
	
	<c:set var="age" value="20"/>
	<c:if test="${age>=18}">
		<p>당신은 성인입니다.</p>
	</c:if>
	
	<!-- 나이가 18 미만 일 때 청소년입니다. -->
	<c:if test="${age<18}">
		<p>당신은 청소년입니다.</p>
	</c:if>

</body>
</html>






