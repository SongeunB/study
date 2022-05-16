<%@page import="java.util.ArrayList"%>
<%@page import="test.vo.FileinfoVo"%>
<%@page import="test.dao.FileinfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/list2</title>
<style type="text/css">
	td img {width:200px; height: 200px;}
</style>
</head>
<body>
<table border="1" width="1000">
	<tr>
		<th>글번호</th><th>작성자</th><th>제목</th><th>파일</th>
	</tr>
<%
	FileinfoDao dao=new FileinfoDao();
	ArrayList<FileinfoVo> list=dao.selectAll();
	for(FileinfoVo vo:list){
%>
	<tr>
		<th><%=vo.getFilenum() %></th>
		<th><%=vo.getWriter() %></th>
		<th><%=vo.getTitle() %></th>
		<th><img src="../upload/<%=vo.getSavefilename()%>"></th>
	</tr>
<%		
	}
%>
</table>
<a href="main.jsp">메인페이지</a>
</body>
</html>