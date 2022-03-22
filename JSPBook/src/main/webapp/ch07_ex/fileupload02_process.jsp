<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	DiskFileUpload upload = new DiskFileUpload();
	List files = upload.parseRequest(request);
	Iterator params = files.iterator();
	FileItem item = null;
	File file = null;
	
	while(params.hasNext()){
		item = (FileItem)params.next();
		if(!item.isFormField()){
			String filename = item.getName();
			filename = filename.substring(filename.lastIndexOf("\\")+1);
			file = new File("C:\\2017\\download\\" + filename);
			item.write(file);
		}
	}
%>
<p> 요청 파라미터 이름 : <%= item.getFieldName() %>
<p> 저장 파일 이름 : <%= item.getName() %>
<p> 파일 콘텐츠 유형 : <%= item.getContentType() %>
<p> 파일 크기 : <%= file.length() %>
</body>
</html>