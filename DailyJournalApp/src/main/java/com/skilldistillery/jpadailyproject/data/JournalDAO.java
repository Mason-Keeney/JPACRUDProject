package com.skilldistillery.jpadailyproject.data;

import java.util.List;

import com.skilldistillery.jpadailyproject.entities.DailyJournal;

public interface JournalDAO {

	public DailyJournal findById(int id);
	public List<DailyJournal> findAll();
}
