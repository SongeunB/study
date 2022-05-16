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
<h1>글목록</h1>
<table border="1" width="500">
	<tr>
		<th>글번호</th><th>작성자</th><th>제목</th><th>작성일</th><th>삭제</th><th>수정</th>
	</tr>
<c:forEach var="vo" items="${list }">
	<tr>
		<td>${vo.num }</td>
		<td>${vo.writer }</td>
		<td><a href="${cp }/board/detail?num=${vo.num }">${vo.title }</a></td>
		<td>${vo.regdate }</td>
		<td><a href="${cp }/board/delete?num=${vo.num }">삭제</a></td>
		<td><a href="${cp }/board/update?num=${vo.num }">수정</a></td>
	</tr>
</c:forEach>
</table>
<div>
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==param.pageNum }">
				<a href="${cp }/board/list?pageNum=${i}&field=${field}&keyword=${keyword}"><span style="color:blue">${i }</span></a>
			</c:when>
			<c:otherwise>
				<a href="${cp }/board/list?pageNum=${i}&field=${field}&keyword=${keyword}"><span style="color:gray">${i }</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
<!-- 검색 -->
<div>
	<form method="post" action="${cp }/board/list">
		<select name="field">
			<option value="writer" <c:if test="${field=='writer'}">selected</c:if>>작성자</option>
			<option value="title" <c:if test="${field=='title'}">selected</c:if>>제목</option>
			<option value="content" <c:if test="${field=='content'}">selected</c:if>>내용</option>
		</select>
		<input type="text" name="keyword" value="${keyword }">
		<input type="submit" value="검색">
	</form>
</div>
<a href="${cp }/board/list">전체글보기</a>
</body>
</html>