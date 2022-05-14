package com.skilldistillery.jpadailyproject.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

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
		assertEquals("When the Brain Can't Hear", entry.getBookName());
	}
	
	@Test
	@DisplayName("DailyJournal maps correctly")
	void testDailyJournalMapping() {
		assertNotNull(entry);
		LocalDate testDate = LocalDate.of(2022, 04, 29);
		assertEquals(testDate, entry.getDate());
		assertEquals("1-14", entry.getPagesRead());
		assertNull(entry.getReadingSummary());
		assertEquals(207, entry.getWeight());
		assertEquals("walk", entry.getWorkoutOutside());
		assertEquals(46, entry.getWorkoutOutsideDuration());
		assertEquals("Eliptical", entry.getWorkout());
		assertEquals(60, entry.getWorkoutDuration());
	}
	

}
