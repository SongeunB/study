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
		book1.setDescription("���峪 PPT ������ ���� �� �ֳ���?");
		book1.setCategory("Hello Coding");
		book1.setPublisher("�Ѻ��̵��");
		book1.setAuthor("Ȳ��ȣ");
		book1.setUnitsInStock(1000);
		book1.setTotalPages(150);
		book1.setReleaseDate("2022.03.01");
		book1.setFileName("P0001.jpg");

		Book book2=new Book("B0002","���� ���� �ڹ� ���α׷���",27000);
		book2.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ���");
		book2.setCategory("IT�����");
		book2.setPublisher("�Ѻ��̵��");
		book2.setAuthor("������");
		book2.setUnitsInStock(900);
		book2.setTotalPages(250);
		book2.setReleaseDate("2021.03.14");
		book2.setFileName("P0002.jpg");

		Book book3=new Book("B0003","������4 �Թ�",27000);
		book3.setDescription("�������� ��Ű���ĸ� �����ϴ°� �߿��մϴ�!");
		book3.setCategory("IT�����");
		book3.setPublisher("�Ѻ��̵��");
		book3.setAuthor("�ϼ����� ����ġ(����ö)");
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
