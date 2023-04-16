package com.survey.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.survey.model.Person;

public class SurveyDao {
	private JdbcTemplate jdbcTemplate;


	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public String saveEmployee(Person person){  
	
	    String query="insert into person (name,education_id,subject_id,score,date) values('"+person.getName()+"',"+person.getEducation_id()+","+person.getSubject_id()+","+person.getScore()+",CURDATE())";  
	    return String.valueOf(jdbcTemplate.update(query)) + "Added to DB!";  
	}
	/* NO NEED TO IMPLEMENT THE UPDATE AND DELETE, RIGHT NOW!
	public int updateEmployee(Person person){  
	    String query="update employee set name="+person.getName()+",education="+person.getEducation_id()+"where id="+e.getId()+" ";  
	    return jdbcTemplate.update(query);  
	}  
	public int deleteEmployee(Employee e){  
	    String query="delete from employee where id='"+e.getId()+"' ";  
	    return jdbcTemplate.update(query);  
	}  
	*/

}