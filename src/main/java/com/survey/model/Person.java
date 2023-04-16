package com.survey.model;

public class Person {
	String name;
	String education;
	String subject;
	int score;
	
	int education_id;
	int subject_id;
	
	public int getEducation_id() {
		
		switch(education_id) {
		case "elementary" :
			education_id=1;
		
		break;
		
		}
		
		return education_id;
	}

	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + ", education=" + education + ", subject=" + subject + ", score=" + score + "]";
	}
	
	
	
}
