package com.survey.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import org.springframework.web.servlet.ModelAndView;

public class Question {
	String subject;
	HashMap<String, HashMap<String,ArrayList<String>>>  questions;
	LinkedHashMap<String, LinkedHashMap<String, Object>> questioinPackage;
	
	
//	public Question(String subject, HashMap<String, HashMap<String, ArrayList<String>>> questions) {
	public Question(LinkedHashMap<String, LinkedHashMap<String, Object>> questioinPackage) {
		super();
	
		this.questioinPackage = questioinPackage;

		
	}
	
	public ModelAndView insertData(int questionNumber, String subject, String name) {
		ModelAndView mv = new ModelAndView();
		
		

		mv.addObject("subject",subject);
		mv.addObject("name",name);
		mv.addObject("question",questioinPackage.get(subject).get("question"));
		mv.addObject("choice",questioinPackage.get(subject).get("choice"));
		mv.addObject("answer",questioinPackage.get(subject).get("answer"));
		
	
		mv.setViewName("Questionaire.jsp");
		
		return mv;
		
	}

	
	
}
