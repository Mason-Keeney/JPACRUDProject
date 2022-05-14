package com.skilldistillery.jpadailyproject.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.LocalDate;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class DailyJournalTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private DailyJournal entry;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPADailyProject");
	}
	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		entry = em.find(DailyJournal.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		entry = null;
	}

	@Test
	@DisplayName("DailyJournal book_name maps correctly")
	void testDailyJournalBookName() {
		assertNotNull(entry);
		assertEquals("The Inner Life of Cats", entry.getBookName());
	}
	
	@Test
	@DisplayName("DailyJournal maps correctly")
	void testDailyJournalMapping() {
		assertNotNull(entry);
		LocalDate testDate = LocalDate.of(2022, 5, 9);
		assertEquals(testDate, entry.getDate());
		assertEquals("1-14", entry.getPagesRead());
		assertEquals("Meow meow meow meow (I was just dictating)", entry.getReadingSummary());
		assertEquals(8, entry.getWeight());
		assertEquals("walk", entry.getWorkoutOutside());
		assertEquals(46, entry.getWorkoutOutsideDuration());
		assertEquals("fight with brother", entry.getWorkout());
		assertEquals(180, entry.getWorkoutDuration());
	}
	
	@Test
	@DisplayName("DailyJournal photo maps correctly")
	void testDailyJournalPhoto(){
		assertNotNull(entry);
		assertTrue(!entry.getPhoto().isEmpty());
		assertEquals("photos/image0.jpeg", entry.getPhoto());
	}
	

}
