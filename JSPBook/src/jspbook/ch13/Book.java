package jspbook.ch13;

public class Book {
	private String title;
	private String auther;
	private int price;
	private String publisher;
	
	public Book() {
		this.title = "";
		this.auther = "";
		this.price = 0;
		this.publisher = "";
	}

	public Book(String title, String auther, int price, String publisher) {
		this.title = title;
		this.auther = auther;
		this.price = price;
		this.publisher = publisher;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuther() {
		return auther;
	}

	public void setAuther(String auther) {
		this.auther = auther;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	
	
	
}
