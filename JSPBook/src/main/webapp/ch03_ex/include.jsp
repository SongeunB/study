<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%@ page import="java.util.Date" %>
	현재 날짜: <%= new Date() %>
</body>
</html>