package com.survey.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.survey.dao.SurveyDao;
import com.survey.model.LeadingPerson;
import com.survey.model.Percentage;
import com.survey.model.Person;
import com.survey.model.Question;
import com.survey.model.Result;


@Controller
public class LogINController {

	
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("com/survey/controller/applicationContext.xml");
	Question questions = context.getBean(com.survey.model.Question.class);
	Person person = context.getBean(com.survey.model.Person.class);
	Result result =  context.getBean(com.survey.model.Result.class);
	SurveyDao dao =  context.getBean(com.survey.dao.SurveyDao.class);
	String subject;         
	HashMap<String, List<LeadingPerson>> leadingPersons = new HashMap<String, List<LeadingPerson>>();
	
	@RequestMapping("/question1")
	public ModelAndView qst1(@RequestParam("name")String name, @RequestParam("education")String education, @RequestParam("subject")String subject) {
		this.subject=subject;
		person.setName(name);
		person.setEducation(education);
		person.setSubject(subject);
		System.out.println(person.toString());
		return questions.insertData(1,subject,person.getName());
	}
	@RequestMapping("/Result")
	public  ModelAndView result(@RequestParam("score")String score,@RequestParam("ans1")String ans1,@RequestParam("ans2")String ans2,@RequestParam("ans3")String ans3,@RequestParam("ans4")String ans4,@RequestParam("ans5")String ans5) {
			System.out.println(person.getName());  
			person.setScore(Integer.valueOf(score));
			
			String[] resultAns = new String[6];
			resultAns[1]=ans1;
			resultAns[2]=ans2;
			resultAns[3]=ans3;
			resultAns[4]=ans4;
			resultAns[5]=ans5;
//		TODO DONE
//		DB CONNECTION HERE!!
//		insert person to DB!!
		    String status=dao.saveEmployee(person);  
		    System.out.println(status); 
			
			String status2 = dao.insertStats(resultAns, person.getSubject_id());
			
			HashMap<String,List<Percentage>> listofPercentage = new HashMap<String,List<Percentage>>();
			listofPercentage = dao.getStats();
			leadingPersons.put("subject1", dao.getLeaders("1"));
			leadingPersons.put("subject2", dao.getLeaders("2"));
			leadingPersons.put("subject3", dao.getLeaders("3"));
			leadingPersons.put("subject4", dao.getLeaders("4"));
			leadingPersons.put("subject5", dao.getLeaders("5"));
			
			
			System.out.println(status2);
		
		return result.showResult(person, questions, resultAns,leadingPersons,listofPercentage);
		
	}
	@RequestMapping("/question3")
	public void qst3() {
	
	}
	@RequestMapping("/question4")
	public void qst4() {
		
	}
	@RequestMapping("/question5")
	public void qst5() {
		
	}
	@RequestMapping("/LogInPage")
	public void nextP() {
		
	}
	
	
}
