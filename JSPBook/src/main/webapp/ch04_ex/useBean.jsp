<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
    <h4>구구단 출력하기</h4>
    <jsp:useBean id="gugu" class="ch04_ex.com.dao.GuGuDan"/>
	<%
		for(int i=1;i<=9;i++){
			out.println(5+"*"+(i)+"="+gugu.process(5,i)+"<br>");
		}
	%>
</body>
</html>
