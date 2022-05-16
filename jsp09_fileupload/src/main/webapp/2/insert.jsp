<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2/insert</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	String snum=request.getParameter("num");
	int num=0;
	if(writer==null) { 
		writer="";
		title="";
		content="";
	}
	if(snum!=null) num=Integer.parseInt(snum);
%>
<body>
<form method="post" action="insert.jsp">
	작성자<br>
	<input type="text" name="writer" value="<%=writer %>"><br>
	제목<br>
	<input type="text" name="title" value="<%=title %>"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"><%=content %></textarea><br>
	첨부파일갯수
	<input type="text" name="num" value="<%=num %>">
	<input type="submit" value="확인">
</form>
<form method="post" action="insertOk.jsp" enctype="multipart/form-data">
	<input type="hidden" name="writter" value="<%=writer %>">
	<input type="hidden" name="title" value="<%=title %>">
	<input type="hidden" name="content" value="<%=content %>">
<%
	for(int i=1;i<=num;i++) {
%>		
	첨부파일<%=i %> <input type="file" name="file<%=i %>"><br>	
<%		
	}
%>
	<input type="submit" value="전송">
</form>
</body>
</html>


