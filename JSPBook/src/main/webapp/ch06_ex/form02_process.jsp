<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	Enumeration paraNames= request.getParameterNames();
	while(paraNames.hasMoreElements()) {
		String name = (String) paraNames.nextElement();
		out.print("<p>"+name+" : ");
		String paramValue = request.getParameter(name);
		out.print(paramValue+"\n");		
	}
%>

</body>
</html>