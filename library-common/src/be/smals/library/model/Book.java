package be.smals.library.model;

import java.util.Date;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="book_t")
@Cacheable(true)
//@DiscriminatorValue("B")
public class Book extends Title {
	@Column(unique=true, length=13)
	private String isbn;
	
	private int pages;
	
	public Book() {
		super();
	}

	
	public Book(long id, String name, String author, Date publishedAt) {
		super(id, name, author, publishedAt);
	}


	public Book(long id, String name, String author, Date publishedAt, String isbn, int pages) {
		super(id, name, author, publishedAt);
		this.isbn = isbn;
		this.pages = pages;
	}


	public String getIsbn() {
		return isbn;
	}


	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}


	public int getPages() {
		return pages;
	}


	public void setPages(int pages) {
		this.pages = pages;
	}
	
	
	@Override
	public String toString() {
		return "Book [id=" + this.id + ", name=" + name + "]";
	}
	

}
