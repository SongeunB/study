<%@page import="test.vo.FileinfoVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.dao.FileinfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/updateform</title>
</head>
<body>
<%
	int filenum=Integer.parseInt(request.getParameter("filenum"));
	FileinfoDao dao=new FileinfoDao();
	FileinfoVo vo=dao.select(filenum);
%>
<form method="post" action="updateOk.jsp" enctype="multipart/form-data">
	파일번호<br>
	<input type="text" name="filenum" value="<%=vo.getFilenum() %>" readonly="readonly"><br>
	작성자<br>
	<input type="text" name="writer" value="<%=vo.getWriter() %>"><br>
	제목<br>
	<input type="text" name="title" value="<%=vo.getTitle() %>"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"><%=vo.getContent() %></textarea><br>
	첨부파일<br>
	기존파일 <%=vo.getOrgfilename() %><br>
	<input type="file" name="file1"><br>
	<input type="submit" value="수정">
</form>
</body>
</html>