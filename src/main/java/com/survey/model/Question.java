package com.survey.model;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.servlet.ModelAndView;

public class Question {
	String subject;
	HashMap<String, HashMap<String,ArrayList<String>>>  questions;
	HashMap<String,String> king = new HashMap<String,String>();
	
	
	public Question(String subject, HashMap<String, HashMap<String, ArrayList<String>>> questions) {
		super();
		this.subject = subject;
		this.questions = questions;

		
	}
	
	public ModelAndView insertData(int questionNumber, String subject) {
		ModelAndView mv = new ModelAndView();
		king.put("ina", "one");
		mv.addObject("subject",subject);
		mv.addObject("question",subject);
		
		mv.addObject("king",king);
		mv.addObject("questions",questions);
		
		mv.addObject("question",questions.get("What is?").get("ans1").get(0));
		mv.setViewName("Questionaire.jsp");
		
		return mv;
		
	}

	
	
}
