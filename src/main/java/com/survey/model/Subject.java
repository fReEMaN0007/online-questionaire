package com.survey.model;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.servlet.ModelAndView;

public class Subject {
	String subject;
	HashMap<String, HashMap<String,ArrayList<String>>>  questions;
	
	
	public Subject(String subject, HashMap<String, HashMap<String, ArrayList<String>>> questions) {
		super();
		this.subject = subject;
		this.questions = questions;
	}
	
	public ModelAndView insertData(int questionNumber) {
		ModelAndView mv = new ModelAndView();
		System.out.println("GUMANA NAMAN TO");
		
		mv.addObject("subject",subject);
		mv.addObject("question",questions.get("What is?").get("ans1").get(0));
		mv.setViewName("Questionaire.jsp");
		
		return mv;
		
	}

	
	
}
