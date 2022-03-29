package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	ArrayList<Book> listOfBooks=new ArrayList<Book>();
	private static BookRepository instance= new BookRepository();
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository(){
		Book book1=new Book("B0001","HTML5+CSS",10000);
		book1.setDescription("워드나 PPT 문서를 만들 수 있나요?");
		book1.setCategory("Hello Coding");
		book1.setPublisher("한빛미디어");
		book1.setAuthor("황재호");
		book1.setUnitsInStock(1000);
		book1.setTotalPages(150);
		book1.setReleaseDate("2022.03.01");
		book1.setFileName("P0001.jpg");

		Book book2=new Book("B0002","쉽게 배우는 자바 프로그래밍",27000);
		book2.setDescription("객체 지향의 핵심과 자바의 현대적 기능");
		book2.setCategory("IT모바일");
		book2.setPublisher("한빛미디어");
		book2.setAuthor("우종중");
		book2.setUnitsInStock(900);
		book2.setTotalPages(250);
		book2.setReleaseDate("2021.03.14");
		book2.setFileName("P0002.jpg");

		Book book3=new Book("B0003","스프링4 입문",27000);
		book3.setDescription("스프링은 아키텍쳐를 이해하는게 중요합니다!");
		book3.setCategory("IT모바일");
		book3.setPublisher("한빛미디어");
		book3.setAuthor("하세가와 유이치(권은철)");
		book3.setUnitsInStock(600);
		book3.setTotalPages(300);
		book3.setReleaseDate("2020.12.25");
		book3.setFileName("P0003.jpg");

		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	public Book getBookId(String bookId) {
		Book bookId2 = null;
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookId2 = book;
				break;
			}
		}
		return bookId2;
	}
	public void addBook(Book book){
		listOfBooks.add(book);
	}
}
