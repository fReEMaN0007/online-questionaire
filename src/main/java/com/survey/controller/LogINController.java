package com.survey.controller;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.survey.model.Subject;


@Controller
public class LogINController {

	
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("com/survey/controller/applicationContext.xml");
	Subject subj = context.getBean(com.survey.model.Subject.class);
	
	@RequestMapping("/question1")
	public ModelAndView qst1() {
	
		return subj.insertData(1);
	}
	@RequestMapping("/question2")
	public  void qst2() {
		subj.insertData(2);
		
	}
	@RequestMapping("/question3")
	public void qst3() {
		subj.insertData(3);
	}
	@RequestMapping("/question4")
	public void qst4() {
		subj.insertData(4);
	}
	@RequestMapping("/question5")
	public void qst5() {
		subj.insertData(5);
	}
	
	
}
