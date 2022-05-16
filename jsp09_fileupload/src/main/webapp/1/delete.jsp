<%@page import="java.io.File"%>
<%@page import="test.vo.FileinfoVo"%>
<%@page import="test.dao.FileinfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/delete</title>
</head>
<body>
<%
	int filenum=Integer.parseInt(request.getParameter("filenum"));
	FileinfoDao dao=new FileinfoDao();
	FileinfoVo vo=dao.select(filenum);
	String saveDir=application.getRealPath("/upload");
	if(vo.getSavefilename()!=null) {
		File f=new File(saveDir+"\\"+vo.getSavefilename());
		f.delete();
	}
	int n=dao.delete(filenum);
	if(n>0) {
		response.sendRedirect("list.jsp");
	}else {
		out.print("<h1>삭제실패</h1>");
	}
%>
<a href="list.jsp">리스트로 돌아가기</a>
</body>
</html>