<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileupdate</title>
</head>
<body>
<h1>파일업데이트</h1>
<form method="post" action="${cp }/file/update" enctype="multipart/form-data">
	번호<br>
	<input type="text" name="filenum" value="${vo.filenum }" readonly="readonly"><br>
	작성자<br>
	<input type="text" name="writer" value="${vo.writer }"><br>
	제목<br>
	<input type="text" name="title" value="${vo.title }"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"> ${vo.content }</textarea><br>
	현재첨부파일 ${vo.orgfilename }<br>
	새첨부파일<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="수정"><br>
</form>
</body>
</html>