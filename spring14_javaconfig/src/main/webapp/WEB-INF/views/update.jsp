<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<h1>게시글 수정하기</h1>
<form method="post" action="${pageContext.request.contextPath }/board/update">
	글번호<br>
	<input type="text" name="num" value="${vo.num }" readonly="readonly"><br>
	작성자<br>
	<input type="text" name="writer" value="${vo.writer }"><br>
	제목<br>
	<input type="text" name="title" value="${vo.title }"><br>
	작성날짜<br>
	<input type="text" name="regdate" value="${vo.regdate }"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content">${vo.content }</textarea><br>
	<input type="submit" value="수정"><br>
</form>
</body>
</html>