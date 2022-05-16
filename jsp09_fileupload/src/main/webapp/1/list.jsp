<%@page import="java.util.ArrayList"%>
<%@page import="test.vo.FileinfoVo"%>
<%@page import="test.dao.FileinfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/list</title>
</head>
<body>
<table border="1" width="1000">
	<tr>
		<th>글번호</th><th>작성자</th><th>제목</th><th>내용</th><th>파일이름</th>
		<th>파일크기</th><th>삭제</th><th>수정</th><th>다운로드</th>
	</tr>
<%
	FileinfoDao dao=new FileinfoDao();
	ArrayList<FileinfoVo> list=dao.selectAll();
	for(int i=0;i<list.size();i++) { //for(FileinfoVo vo:list)
		FileinfoVo vo=list.get(i);
%>
	<tr>
		<th><%=vo.getFilenum() %></th>
		<th><%=vo.getWriter() %></th>
		<th><%=vo.getTitle() %></th>
		<th><%=vo.getContent() %></th>
		<th><%=vo.getOrgfilename() %></th>
		<th><%=vo.getFilesize() %> bytes</th>
		<th><a href="delete.jsp?filenum=<%=vo.getFilenum()%>">삭제</a></th>
		<th><a href="updateform.jsp?filenum=<%=vo.getFilenum()%>">수정</a></th>
		<th><a href="../filedownload?filenum=<%=vo.getFilenum()%>">다운로드</a></th>
	</tr>
<%		
	}
%>
</table>
<a href="main.jsp">메인페이지</a>
</body>
</html>