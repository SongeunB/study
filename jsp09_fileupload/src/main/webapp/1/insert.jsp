<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1/insert</title>
</head>
<body>
<!-- <파일 업로드시 form에 아래의 속성을 꼭 설정해야함> 
	method="post"
	enctype="multipart/form-data"
-->
<form method="post" action="insertOk.jsp" enctype="multipart/form-data">
	작성자<br>
	<input type="text" name="writer"><br>
	제목<br>
	<input type="text" name="title"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"></textarea><br>
	첨부파일
	<input type="file" name="file1"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>