package com.survey.model;

import org.springframework.web.servlet.ModelAndView;

public class Result {

	ModelAndView mv = new ModelAndView();	

	
	public ModelAndView showResult(Person person, Question qst, String[] result) {
		
		mv.addObject("name",person.getName());
		mv.addObject("education",person.getEducation());
		mv.addObject("subject",person.getSubject());
		mv.addObject("score",person.getScore());
		mv.addObject("result",result);
		mv.addObject("answer",qst.questioinPackage.get(person.getSubject()).get("answer"));
		mv.addObject("question",qst.questioinPackage.get(person.getSubject()).get("question"));
		
		
		
		mv.setViewName("Result.jsp");
		return mv;
	}
}
