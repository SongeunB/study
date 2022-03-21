<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.ArrayList"%>
<%@	page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서목록</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%!String greeting = "도서 목록";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<%
				BookRepository bookDao = BookRepository.getInstance();
				ArrayList<Book> listOfBooks = bookDao.getAllBooks();
				for (Book b:listOfBooks) {
			%>
			<div class="col-md-10">
				<h4><%="["+b.getCategory()+"] " + b.getName()%></h4>
				<br>
				<p><%=b.getDescription()%>
				<p><%=b.getAuthor() + " | " + b.getPublisher() + " | " + b.getUnitPrice() + "원"%>
			</div>
			<div class="col-md-2">
				<p><a href="./book.jsp?id=<%=b.getBookId()%>" class="btn btn-secondary">상세 정보 &raquo;</a></p>
			</div>
			<hr>
			<%
				}
			%>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>