package com.skilldistillery.jpadailyproject.data;

import java.util.List;

import com.skilldistillery.jpadailyproject.entities.DailyJournal;

public interface JournalDAO {

	public DailyJournal findById(int id);
	public DailyJournal addJournal(DailyJournal journal);
	public List<DailyJournal> findAll();
	public DailyJournal updateJournal(DailyJournal journal);
	public boolean destroyJournal(DailyJournal journal);
}
