package com.survey.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.survey.model.Person;

public class SurveyDao {
	private JdbcTemplate jdbcTemplate;


	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public int saveEmployee(Person person){  
	
	    String query="insert into employee values("+e.getName()+","+e.getEducation()+","+e.getSubject()+","+e.get+")";  
	    return jdbcTemplate.update(query);  
	}  
	public int updateEmployee(Employee e){  
	    String query="update employee set   
	    name='"+e.getName()+"',salary='"+e.getSalary()+"' where id='"+e.getId()+"' ";  
	    return jdbcTemplate.update(query);  
	}  
	public int deleteEmployee(Employee e){  
	    String query="delete from employee where id='"+e.getId()+"' ";  
	    return jdbcTemplate.update(query);  
	}  

}