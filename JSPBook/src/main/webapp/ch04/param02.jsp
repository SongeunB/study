<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션태그</h3>
	<jsp:include page="param02_data.jsp">
		<jsp:param value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시간")%>' name="title"/>
		<jsp:param value="<%=Calendar.getInstance().getTime()%>" name="date"/>
	</jsp:include>
	<p>JSP
</body>
</html>