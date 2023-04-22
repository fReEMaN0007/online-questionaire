package com.survey.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;

public class Result {

	ModelAndView mv = new ModelAndView();
	List<LeadingPerson> subject1Leaders;
	
	ArrayList<HashMap<String,String>> listofTopData = new ArrayList<HashMap<String,String>> ();
	HashMap<String, HashMap<String,String>> listofTop = new HashMap<String, HashMap<String,String>>();
	HashMap<String,List<Percentage>> listofPercentage = new HashMap<String,List<Percentage>>();
	
	public ModelAndView showResult(Person person, Question qst, String[] result, HashMap<String,List<LeadingPerson>> LeadingPerons,	HashMap<String,List<Percentage>> listofPercentage) {
		switch(person.getSubject()) {
		case "History":	subject1Leaders = LeadingPerons.get("subject1");
		break;
		case "English": subject1Leaders = LeadingPerons.get("subject2");
		break;
		case "Science": subject1Leaders = LeadingPerons.get("subject3");
		break;
		case "Math": subject1Leaders = LeadingPerons.get("subject4");
		break;
		case "Logic": subject1Leaders = LeadingPerons.get("subject5");
		break;
		}
	
		
		
		for (int x=1;x<=10;x++) {
			listofTopData.add(new HashMap<String,String>());
			
		}
		System.out.println("SIZE"+subject1Leaders.size());
		int size = subject1Leaders.size();
		//no. of loops depends the size of the list!
		for(int x=0;x<size;x++) {
			listofTopData.get(x).put("name", subject1Leaders.get(x).getName());
			listofTopData.get(x).put("score", String.valueOf(subject1Leaders.get(x).getScore()));
			listofTopData.get(x).put("subject", subject1Leaders.get(x).getSubject());
			listofTopData.get(x).put("date", String.valueOf( subject1Leaders.get(x).getDate()));
		}
		//10x
		for(int x=0;x<10;x++) {
			listofTop.put("top"+(x), listofTopData.get(x));
		}
		
		this.listofPercentage = listofPercentage;
		String subjectList="";
		if(person.getSubject().equals("History")) {
			subjectList = "subject1";
		}
		else if(person.getSubject().equals("English")) {
			subjectList = "subject2";
		}
		else if(person.getSubject().equals("Science")) {
			subjectList = "subject3";
		}
		else if(person.getSubject().equals("Math")) {
			subjectList = "subject4";
		}
		else if(person.getSubject().equals("Logic")) {
			subjectList = "subject5";
		}
		else {}
		
		
		List<Percentage> subjectPercentage = listofPercentage.get(subjectList);
		
		
		double totalNumberofAnswer=subjectPercentage.size();
		double correctAnswerqst1=0;
		double correctAnswerqst2=0;
		double correctAnswerqst3=0;
		double correctAnswerqst4=0;
		double correctAnswerqst5=0;
		
		for(int x=0;x<totalNumberofAnswer;x++) {
			if(subjectPercentage.get(x).getQst1() == true) {
			correctAnswerqst1+=1;
			}
			if(subjectPercentage.get(x).getQst2() == true) {
				correctAnswerqst2+=1;
				}
			if(subjectPercentage.get(x).getQst3() == true) {
				correctAnswerqst3+=1;
				}
			if(subjectPercentage.get(x).getQst4() == true) {
				correctAnswerqst4+=1;
				}
			if(subjectPercentage.get(x).getQst5() == true) {
				correctAnswerqst5+=1;
				}
		}
		
		
		double percentagaQst1 = roundoff(correctAnswerqst1, totalNumberofAnswer);
		double percentagaQst2 = roundoff(correctAnswerqst2, totalNumberofAnswer);
		double percentagaQst3 = roundoff(correctAnswerqst3, totalNumberofAnswer);
		double percentagaQst4 = roundoff(correctAnswerqst4, totalNumberofAnswer);
		double percentagaQst5 = roundoff(correctAnswerqst5, totalNumberofAnswer);
	
		
		
		
		
		
		mv.addObject("name",person.getName());
		mv.addObject("education",person.getEducation());
		mv.addObject("subject",person.getSubject());
		mv.addObject("score",person.getScore());
		mv.addObject("result",result);
		mv.addObject("answer",qst.questioinPackage.get(person.getSubject()).get("answer"));
		mv.addObject("question",qst.questioinPackage.get(person.getSubject()).get("question"));
		mv.addObject("subject1Leader",listofTop);
		mv.addObject("qst1Percent",percentagaQst1);
		mv.addObject("qst2Percent",percentagaQst2);
		mv.addObject("qst3Percent",percentagaQst3);
		mv.addObject("qst4Percent",percentagaQst4);
		mv.addObject("qst5Percent",percentagaQst5);
	
		
		mv.setViewName("Result.jsp");
		return mv;
	}
	
	public double roundoff(double d1, double d2) {
		
		double percentage = (d1/d2)*100;
		percentage = Math.round(percentage * 100.0) / 100.0;	
		
		return percentage;
	}
}
