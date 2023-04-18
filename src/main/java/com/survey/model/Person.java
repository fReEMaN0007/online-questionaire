package com.survey.model;

import java.util.HashMap;

public class Person {
	String name;
	String education;
	String subject;
	int score;
	HashMap<String, Integer> id;
	int education_id;
	int subject_id;
	
	Person(HashMap<String, Integer> id){
		super();
		this.id=id;
	}
	

	public int getEducation_id() {
		return education_id;
	}


	public void setEducation_id(int education_id) {
		this.education_id = education_id;
	}


	public int getSubject_id() {
		return subject_id;
	}


	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
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
		setSubject_id(id.get(subject));
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		if(name=="") {
			this.name="Unknown";
		}
	
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
		setEducation_id(id.get(education));
	}


	@Override
	public String toString() {
		return "Person [name=" + name + ", education=" + education + ", subject=" + subject + ", score=" + score
				+ ", id=" + id + ", education_id=" + education_id + ", subject_id=" + subject_id + "]";
	}
	
	
	
	
}
