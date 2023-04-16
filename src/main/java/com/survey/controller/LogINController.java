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
	Person person = context.getBean(com.survey.model.Person.class);
	Result result =  context.getBean(com.survey.model.Result.class);
	
	String subject;
	
	
	@RequestMapping("/question1")
	public ModelAndView qst1(@RequestParam("name")String name, @RequestParam("education")String education, @RequestParam("subject")String subject) {
		this.subject=subject;
		person.setName(name);
		person.setEducation(education);
		person.setSubject(subject);
		System.out.println(person.toString());
		return questions.insertData(1,subject);
	}
	@RequestMapping("/Result")
	public  ModelAndView result(@RequestParam("ans")String ans) {
		System.out.println(person.getName());
		//TODO
		//DB CONNECTION HERE!!
		//insert person to DB!!
		
		return result.showResult(person.getName()+person.getEducation());
		
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
	public void nextP() {
		
	}
	
	
}
