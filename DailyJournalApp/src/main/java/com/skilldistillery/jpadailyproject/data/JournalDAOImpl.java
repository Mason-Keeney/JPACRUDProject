package com.skilldistillery.jpadailyproject.data;

import java.util.List;

import javax.persistence.EntityManager;
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
		String jpql = "FIND dj FROM DailyJournal dj";
		return em.createQuery(jpql, DailyJournal.class).getResultList();
	}

}
