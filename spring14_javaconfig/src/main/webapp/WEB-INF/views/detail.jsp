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
<h1>글목록</h1>
<table border="1" width="500">
	<tr>
		<th>글번호</th>
		<td>${vo.num }</td>
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
		<th>작성일</th>
		<td>${vo.regdate }</td>
	</tr>
	<tr>	
		<th>조회수</th>
		<td>${vo.hit }</td>
	</tr>
	<tr>	
		<th>내용</th>
		<td><div style="width:400px; height:200px">${vo.content }</div></td>
	</tr>
	<tr>	
		<td>이전글</td>
		<td><a href="${cp }/board/detail?num=${voB.num }">${voB.title }</a></td>
	</tr>
	<tr>	
		<td>다음글</td>
		<td><a href="${cp }/board/detail?num=${voA.num }">${voA.title }</a></td>
	</tr>
</table>
<a href="${cp }/board/list">전체글보기</a>
</body>
</html>