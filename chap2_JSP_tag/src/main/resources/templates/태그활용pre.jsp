<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 태그 활용 실습</title>
</head>
<body>
	<%
	for (int i=1; i<5; i++){%>
		<p><%=i %></p>
	<%}
	%>

</body>
</html>