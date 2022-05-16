<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileupload</title>
</head>
<body>
<h1>파일업로드</h1>
<form method="post" action="${cp }/file/upload" enctype="multipart/form-data">
	작성자<br>
	<input type="text" name="writer"><br>
	제목<br>
	<input type="text" name="title"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"></textarea><br>
	첨부파일<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="등록"><br>
</form>
</body>
</html>