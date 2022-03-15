<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.lang.Math" %>
	<h3>현재날짜: <%= new Date() %> <br>
		5의 제곱: <%= Math.pow(5,2) %> </h3>
</body>
</html>