<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file upload</title>
</head>
<body>

<%
	MultipartRequest multi = new MultipartRequest(request,
			"C:\\2017\\download", 10*1024*1024, "UTF-8", 
			new DefaultFileRenamePolicy());
	
	String name = (String)multi.getFileNames().nextElement();
%>

<p> 요청 파라미터 이름 :  <%= name %>
<p> 실제 파일 이름 : <%= multi.getOriginalFileName(name) %>
<p> 저장 파일 이름 : <%= multi.getFilesystemName(name) %>
<p> 파일 콘텐츠 유형 : <%= multi.getContentType(name) %>
<p> 파일 크기 : <%= name.length() %>
</body>
</html>