<%@page import="test.vo.FileinfoVo"%>
<%@page import="java.io.File"%>
<%@page import="test.dao.FileinfoDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/insertOk</title>
</head>
<body>
<%
	/*public MultipartRequest(javax.servlet.http.HttpServletRequest request,
                        java.lang.String saveDirectory,
                        int maxPostSize,
                        java.lang.String encoding,
                        FileRenamePolicy policy)
                 throws java.io.IOException
	*/
	//1.파일업로드
	String saveDir=application.getRealPath("/upload");
	out.print("업로드경로"+saveDir+"<br>");
	MultipartRequest mr=new MultipartRequest(
		request, //request객체
		saveDir, //저장할 디렉토리
		1024*1024*5, //최대 업로드 가능한 크기 (바이트단위)
		"utf-8", //인코딩방식
		new DefaultFileRenamePolicy() //동일한 파일명이 존재할 시 이를 처리할 객체
	);
	String writer=mr.getParameter("writer");
	String title=mr.getParameter("title");
	String content=mr.getParameter("content");
	String orgFileName=mr.getOriginalFileName("file1"); //전송된파일명
	String saveFileName=mr.getFilesystemName("file1"); //저장된파일명
	//File f=mr.getFile("file1");
	File f=new File(saveDir+"\\"+saveFileName); //업로드된 파일정보를 갖는 객체
	
	//2. 업로드된 파일정보 DB에 저장하기
	//FileinfoDao클래스를 만들어서 db에 해당정보를 저장해보세요.
	FileinfoVo vo=new FileinfoVo(1,writer,title,content,orgFileName,saveFileName,f.length());
	FileinfoDao dao=new FileinfoDao();
	int n=dao.insert(vo);
	if(n>0) {
		out.print("<h1>데이터베이스 저장 성공</h1>");
	}else {
		out.print("<h1>데이터베이스 저장 실패</h1>");
	}
	
%>
<h1>파일 업로드 완료!</h1>
작성자: <%=writer %><br>
title: <%=title %><br>
content: <%=content %><br>
전송된파일명: <%=orgFileName %><br>
저장된파일명: <%=saveFileName %><br>
</body>
</html>