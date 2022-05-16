<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2/insertOk</title>
</head>
<body>
<%
	String path=application.getRealPath("/upload");
	out.print(path+"<br>");
	MultipartRequest mr=new MultipartRequest(
			request,
			path,
			1024*1024*5, //5mb 개당크기가 아닌 총 크기
			"utf-8",
			new DefaultFileRenamePolicy()
			);
%>
<h1>파일 업로드 완료!</h1>
<%
	Enumeration<String> em=mr.getFileNames(); //iterator와 비슷함
	while(em.hasMoreElements()) {
		String file=em.nextElement(); //전송된 파일의 파라미터이름 얻어오기
		out.print(file+"<br>");
		String orgfilename=mr.getOriginalFileName(file);
		String savefilename=mr.getFilesystemName(file);
		out.print("전송된 파일명:"+orgfilename+"<br>");
		out.print("저장된 파일명:"+savefilename+"<br>");
	}

%>
</body>
</html>