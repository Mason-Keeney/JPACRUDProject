package com.skilldistillery.jpadailyproject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpadailyproject.data.JournalDAO;

@Controller
public class JournalController {
	@Autowired
	private JournalDAO jdao;
	
	@RequestMapping(path={"/", "index.do"})
	public String index(Model model) {
		model.addAttribute("journal", jdao.findById(1));
		return "index";
	}
	
}
