<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>햄버거 조회하기</h1>
	<table border="1">
	<thead>
	<tr>
		<th>이름</th>
		<th>가격</th>
		<th>설명</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="hamburger" items="${hamburgers}">
			<tr>
				<td>${hamburgers.hname}</td>
				<td>${hamburgers.hprice}</td>
				<td>${hamburgers.hdescription}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	
	
	<h2>햄버거 추가하기</h2>
	<form action="/addBurger" method="post">
		이름 : <input type="text" name="hname" />
		가격 : <input type="text" name="hprice" />
		설명 : <input type="text" name="hdescription" />
		버튼 : <input type="submit" value="햄버거 저장하기" />
	</form>

</body>
</html>