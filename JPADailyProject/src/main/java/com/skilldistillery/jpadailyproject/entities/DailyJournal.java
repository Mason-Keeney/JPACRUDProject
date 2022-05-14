package com.skilldistillery.jpadailyproject.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daily_journal")
public class DailyJournal {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDate date;
	@Column(name = "book_name")
	private String bookName;
	@Column(name = "pages_read")
	private String pagesRead;
	@Column(name = "reading_summary")
	private String readingSummary;
	private Integer weight;
	@Column(name = "workout_outside")
	private String workoutOutside;
	@Column(name = "workout_outside_duration")
	private Integer workoutOutsideDuration;
	private String workout;
	@Column(name = "workout_duration")
	private Integer workoutDuration;
	@Column(name = "drank_water")
	private Boolean drankWater;

//	Constructors

	public DailyJournal() {
	}

	public DailyJournal(LocalDate date, String bookName, String pagesRead, String readingSummary, Integer weight,
			String workoutOutside, Integer workoutOutsideDuration, String workout, Integer workoutDuration,
			Boolean drankWater) {
		this.date = date;
		this.bookName = bookName;
		this.pagesRead = pagesRead;
		this.readingSummary = readingSummary;
		this.weight = weight;
		this.workoutOutside = workoutOutside;
		this.workoutOutsideDuration = workoutOutsideDuration;
		this.workout = workout;
		this.workoutDuration = workoutDuration;
		this.drankWater = drankWater;
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

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getPagesRead() {
		return pagesRead;
	}

	public void setPagesRead(String pagesRead) {
		this.pagesRead = pagesRead;
	}

	public String getReadingSummary() {
		return readingSummary;
	}

	public void setReadingSummary(String readingSummary) {
		this.readingSummary = readingSummary;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public String getWorkoutOutside() {
		return workoutOutside;
	}

	public void setWorkoutOutside(String workoutOutside) {
		this.workoutOutside = workoutOutside;
	}

	public Integer getWorkoutOutsideDuration() {
		return workoutOutsideDuration;
	}

	public void setWorkoutOutsideDuration(Integer workoutOutsideDuration) {
		this.workoutOutsideDuration = workoutOutsideDuration;
	}

	public String getWorkout() {
		return workout;
	}

	public void setWorkout(String workout) {
		this.workout = workout;
	}

	public Integer getWorkoutDuration() {
		return workoutDuration;
	}

	public void setWorkoutDuration(Integer workoutDuration) {
		this.workoutDuration = workoutDuration;
	}

	public Boolean getDrankWater() {
		return drankWater;
	}

	public void setDrankWater(Boolean drankWater) {
		this.drankWater = drankWater;
	}

	// Methods

	@Override
	public String toString() {
		return "DailyJournal [id=" + id + ", date=" + date + ", bookName=" + bookName + ", pagesRead=" + pagesRead
				+ ", readingSummary=" + readingSummary + ", weight=" + weight + ", workoutOutside=" + workoutOutside
				+ ", workoutOutsideDuration=" + workoutOutsideDuration + ", workout=" + workout + ", workoutDuration="
				+ workoutDuration + ", drankWater=" + drankWater + "]";
	}

}
