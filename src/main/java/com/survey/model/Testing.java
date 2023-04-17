package com.survey.model;

import java.util.LinkedHashMap;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;

public class Testing {
	
	
	public static ModelAndView main(String[] args) {
		// TODO Auto-generated method stub
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("com/survey/controller/applicationContext.xml");
		Question questions = context.getBean(com.survey.model.Question.class);
		

		System.out.println("fdsafj;dsalfjsdafa");
		return questions.insertData(1, "History");
	}

}
