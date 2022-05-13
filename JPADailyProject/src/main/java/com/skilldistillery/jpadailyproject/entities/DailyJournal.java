package com.skilldistillery.jpadailyproject.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="daily_journal")
public class DailyJournal {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	@Column(name="book_name")
	private String bookName;

//	Constructors
	public DailyJournal() {
	}

//	Get/Set
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	

//Methods
	@Override
	public String toString() {
		return "DailyJournal [id=" + id + ", bookName=" + bookName + "]";
	}

}
