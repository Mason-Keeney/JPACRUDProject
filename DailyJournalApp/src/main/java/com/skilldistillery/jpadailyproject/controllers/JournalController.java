package com.skilldistillery.jpadailyproject.controllers;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpadailyproject.data.JournalDAO;
import com.skilldistillery.jpadailyproject.entities.DailyJournal;

@Controller
public class JournalController {
	@Autowired
	private JournalDAO jdao;

	@RequestMapping(path = { "/", "index.do" })
	public String index(Model model) {
		List<DailyJournal> journals = jdao.findAll();
		model.addAttribute("journals", journals);
		return "index";
	}

	@RequestMapping(path = "showJournal.do")
	public String showJournal(@RequestParam("journalid") int journalid, Model model, RedirectAttributes redir) {
		DailyJournal journal = jdao.findById(journalid);
		String view = "redirect:indexRedirect.do";

		if (journal != null) {
			model.addAttribute("journal", journal);
			view = "views/showJournal";
		} else {
			String message = "Unable to locate journal entry";
			redir.addFlashAttribute("message", message);
		}
		return view;
	}

	@RequestMapping(path = "showJournalRedirect.do")
	public String showJournalRedirect() {

		return "views/showJournal";
	}

	@RequestMapping(path = "addJournal.do", method = RequestMethod.GET)
	public String addJournal() {

		return "views/addJournal";
	}

	@RequestMapping(path = "addJournal.do", method = RequestMethod.POST)
	public String addJournalpost(DailyJournal journal, RedirectAttributes redir) {
		journal.setDate(LocalDate.now());
		journal = jdao.addJournal(journal);
		redir.addFlashAttribute("journal", journal);
		return "redirect:showJournalRedirect.do";
	}

	@RequestMapping(path = "updateJournal.do", method = RequestMethod.GET)
	public String updateJournal(@RequestParam("id") int id, Model model) {
		DailyJournal journal = jdao.findById(id);
		model.addAttribute("journal", journal);
		return "views/updateJournal";
	}

	@RequestMapping(path = "updateJournal.do", method = RequestMethod.POST)
	public String updateJournalPost(DailyJournal journal, RedirectAttributes redir) {
		journal = jdao.updateJournal(journal);
		redir.addFlashAttribute("journal", journal);
		return "redirect:showJournalRedirect.do";
	}

	@RequestMapping(path = "deleteJournal.do", method = RequestMethod.GET)
	public String deleteJournal(int id, Model model) {
		DailyJournal journal = jdao.findById(id);
		model.addAttribute("journal", journal);
		return "views/deleteWarn";
	}

	@RequestMapping(path = "deleteJournal.do", method = RequestMethod.POST)
	public String deleteJournalPost(int id, RedirectAttributes redir) {
		DailyJournal journal = jdao.findById(id);
		boolean deleted = false;
		String information = "Unable to delete";
		if (journal != null) {
			deleted = jdao.destroyJournal(journal);
			if (deleted) {
				information = "Successfully deleted entry from: " + journal.getDate();
			}
		}

		redir.addFlashAttribute("message", information);
		return "redirect:index.do";
	}

	@RequestMapping("next.do")
	public String nextEntry(int id, RedirectAttributes redir) {
		List<DailyJournal> journals = jdao.findAll();
		DailyJournal journal = null;
		for (DailyJournal dailyJournal : journals) {
			if (dailyJournal.getId() <= id) {
				continue;
			} else if (dailyJournal.getId() > id) {
				journal = dailyJournal;
				redir.addFlashAttribute("journal", journal);
				break;
			}

		}
		if (journal == null) {
			journal = jdao.findById(id);
			redir.addFlashAttribute("journal", journal);
		}
		return "redirect:showJournalRedirect.do";
	}

	@RequestMapping("previous.do")
	public String previousEntry(int id, RedirectAttributes redir) {
		List<DailyJournal> journals = jdao.findAll();
		DailyJournal journal = null;
		for (DailyJournal dailyJournal : journals) {
			if(dailyJournal.getId() < id) {
				journal = dailyJournal;
				redir.addFlashAttribute("journal", journal);
			}
		}
		
		if(journal == null) {
			journal = jdao.findById(id);
			redir.addFlashAttribute("journal", journal);
		}
		
		return "redirect:showJournalRedirect.do";
	}

}
