<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서정보</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%!String greeting = "도서 정보";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BookRepository bookDao = BookRepository.getInstance();
		Book book = bookDao.getBookId(id);
	 %>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3><%="["+book.getCategory()+"] " + book.getName()%></h3>
				<p><%=book.getDescription()%>
				<p><b>도서코드</b> : <%=book.getBookId()%></p>
				<p><b>출판사</b> : <%=book.getPublisher()%></p>
				<p><b>저자</b> : <%=book.getAuthor()%></p>
				<p><b>재고수</b> : <%=book.getUnitsInStock()%></p>
				<p><b>총 페이지수</b> : <%=book.getTotalPages()%></p>
				<p><b>출판일</b> : <%=book.getReleaseDate()%></p>
				<h3><%=book.getUnitPrice()%>원</h3>
				
				<p><a href="#" class="btn btn-primary">도서 주문</a>
				<a href="./books.jsp" class="btn btn-secondary">상품 목록</a>
				</p>
			</div>
		</div>		
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>