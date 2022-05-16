<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="test.vo.FileinfoVo"%>
<%@page import="test.dao.FileinfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/updateOk</title>
</head>
<body>
<%
	String saveDir=application.getRealPath("/upload");
	MultipartRequest mr=new MultipartRequest(
			request,
			saveDir,
			1024*1024*5,
			"utf-8",
			new DefaultFileRenamePolicy()
			);	
	int filenum=Integer.parseInt(mr.getParameter("filenum")); //request객체가 아닌mr객체로 파라미터 받아와야함
	String writer=mr.getParameter("writer");
	String title=mr.getParameter("title");
	String content=mr.getParameter("content");
	String orgFileName=mr.getOriginalFileName("file1"); 
	String saveFileName=mr.getFilesystemName("file1");
	
	FileinfoDao dao=new FileinfoDao();
	FileinfoVo vo=dao.select(filenum);
	if(vo.getSavefilename()!=null) {
		File f=new File(saveDir+"\\"+vo.getSavefilename());
		f.delete();
	}else {
		out.print("수정할파일이 존재하지 않습니다.");
	}
	
	File f1=new File(saveDir+"\\"+saveFileName);
	FileinfoVo vo1=new FileinfoVo(filenum,writer,title,content,orgFileName,saveFileName,f1.length());
	int n=dao.update(vo1);
	if(n>0) {
		response.sendRedirect("list.jsp");
	}else {
		out.print("<h1>데이터베이스 수정 실패</h1>");
	}
%>
<a href="list.jsp">리스트로 돌아가기</a>
</body>
</html>