package com.skilldistillery.jpadailyproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DailyJournalAppApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(DailyJournalAppApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(DailyJournalAppApplication.class, args);
	}

}
