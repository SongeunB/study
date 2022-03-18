<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션태그</h3>
	<jsp:forward page="param01_data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%=java.net.URLEncoder.encode("관리자")%>' name="name"/>
	</jsp:forward>
	<p>JSP
</body>
</html>