<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:forEach 활용해서 for문 생성하기</title>
</head>
<body>
	<h1>c:forEach 활용해서 for문 생성하기</h1>
	<!-- 
	EL/JSTL
	EL : <c:set var="fruits" value="${['APPLE','BANANA','CHERRY'] }"/>
	JSTL : 배열을 < % 에 담아서 사용해야함 
	 -->
	<!--  %를 이용해서 자바 배열 선언 -->
	<%
	String[] fruits = {"APPLE","BANANA","CHERRY"};
	pageContext.setAttribute("fruits", fruits);
	%>
	<!--
	pageContext : 페이지 내에서 변수명에 담긴 내용을 전체적으로 사용할 수 있도록 가지고 있는 기능 
	set 저장하기 ("저장할이름",저장할변수명);
	  -->
	  <ul>
	  	<c:forEach var="fruit" items="${fruits}">
	  		<li>${fruits}</li>
	  	</c:forEach>
	  </ul>
	
</body>
</html>