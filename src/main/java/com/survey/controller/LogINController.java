package com.survey.controller;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.survey.model.Person;
import com.survey.model.Question;
import com.survey.model.Result;


@Controller
public class LogINController {

	
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("com/survey/controller/applicationContext.xml");
	Question questions = context.getBean(com.survey.model.Question.class);
	//Person person = context.getBean(com.survey.model.Person.class);
	Result rs = new Result();
	
	String subject;
	
	
	@RequestMapping("/question1")
	public ModelAndView qst1(@RequestParam("name")String name, @RequestParam("education")String education, @RequestParam("subject")String subject) {
		//person.setName(name);
		//person.setEducation(education);
		this.subject=subject;
		return questions.insertData(1,subject);
	}
	@RequestMapping("/question2")
	public  void qst2() {
		questions.insertData(2, subject);
	}
	@RequestMapping("/question3")
	public void qst3() {
		questions.insertData(3,subject);
	}
	@RequestMapping("/question4")
	public void qst4() {
		questions.insertData(4,subject);
	}
	@RequestMapping("/question5")
	public void qst5() {
		questions.insertData(5,subject);
	}
	@RequestMapping("/LogInPage")
	public ModelAndView nextP(@RequestParam("ans")String ans) {
		
		return rs.showResult(ans);
	}
	
	
}
