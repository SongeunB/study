<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<h1>파일목록</h1>
<table border="1" width="600">
	<tr>
		<th>번호</th><th>작성자</th><th>제목</th><th>파일명</th><th>삭제</th><th>수정</th><th>다운로드</th>
	</tr>
<c:forEach var="vo" items="${list }">
	<tr>
		<td>${vo.filenum }</td>
		<td>${vo.writer }</td>
		<td><a href="${cp }/file/detail?filenum=${vo.filenum }">${vo.title }</a></td>
		<td>${vo.orgfilename }</td>
		<td><a href="${cp }/file/delete?filenum=${vo.filenum }">삭제</a></td>
		<td><a href="${cp }/file/update?filenum=${vo.filenum }">수정</a></td>
		<td><a href="${cp }/file/download?filenum=${vo.filenum }">다운로드</a></td>
	</tr>
</c:forEach>
</table>
</body>
</html>