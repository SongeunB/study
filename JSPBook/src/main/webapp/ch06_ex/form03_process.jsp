<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
<p>선택한 과일<br>
<%
	request.setCharacterEncoding("UTF-8");

	String[] paramValues= request.getParameterValues("fruits");
	for(String param:paramValues) {
		out.print(param+" ");		
	}
%>
</body>
</html>