<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<h1>글상세보기</h1>
<table border="1" width="500">
	<tr>
		<th>글번호</th>
		<td>${vo.filenum }</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${vo.writer }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${vo.title }</td>
	</tr>
	<tr>	
		<th>내용</th>
		<td><div style="width:400px; height:200px">${vo.content }</div></td>
	</tr>
	<tr>	
		<td>첨부파일</td>
		<td><img src="${cp }/resources/upload/${vo.savefilename}"></td>
</table>
<a href="${cp }/file/list">전체보기</a>
</body>
</html>