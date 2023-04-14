package com.survey.model;

import org.springframework.web.servlet.ModelAndView;

public class Result {

	ModelAndView mv = new ModelAndView();	
	
	public ModelAndView showResult(String ans) {
		
		mv.addObject("ans",ans);
		mv.setViewName("Result.jsp");
		return mv;
	}
}
