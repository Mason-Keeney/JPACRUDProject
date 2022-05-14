package com.skilldistillery.jpadailyproject.data;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadailyproject.entities.DailyJournal;

@Service
@Transactional
public class JournalDAOImpl implements JournalDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public DailyJournal findById(int id) {
		return em.find(DailyJournal.class, id);
	}

	@Override
	public List<DailyJournal> findAll() {
		String jpql = "SELECT dj FROM DailyJournal dj";
		return em.createQuery(jpql, DailyJournal.class).getResultList();
	}
	
	@Override
	public DailyJournal addJournal(DailyJournal journal) {
		em.persist(journal);
		return journal;
		
	}

	@Override
	public DailyJournal updateJournal(DailyJournal journal) {
		
		DailyJournal managed = em.find(DailyJournal.class, journal.getId());
		
		managed.setBookName(journal.getBookName());
		managed.setDrankWater(journal.getDrankWater());
		managed.setPagesRead(journal.getPagesRead());
		managed.setReadingSummary(journal.getReadingSummary());
		managed.setWeight(journal.getWeight());
		managed.setWorkout(journal.getWorkout());
		managed.setWorkoutDuration(journal.getWorkoutDuration());
		managed.setWorkoutOutside(journal.getWorkoutOutside());
		managed.setWorkoutOutsideDuration(journal.getWorkoutOutsideDuration());
		
		return managed;
		
	}

	@Override
	public boolean destroyJournal(DailyJournal journal) {
		em.remove(journal);
		return !em.contains(journal);
		
	}

	@Override
	public DailyJournal findByDate(LocalDateTime date) {
		String jpql = "SELECT dj FROM daily_journal WHERE dj.date = :date";
		try {
			DailyJournal journal = em.createQuery(jpql, DailyJournal.class).setParameter("date", date).getSingleResult();
			
		} catch(NoResultException e ){
			
		}
		
		return null;
	}

}
