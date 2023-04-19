package com.survey.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;

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
public String insertStats(String[] ans, int subject_id) {
		String table = "";
		System.out.println(subject_id+"fdsafdsafdsa");
		System.out.println(ans[1]);
		switch(subject_id) {
		case 1 :table = "subject1";
		break;
		case 2 :table = "subject2";
		break;
		case 3 :table = "subject3";
		break;
		case 4 :table = "subject4";
		break;
		case 5 :table = "subject5";
		break;
		}
		
		
		for(int x = 1;x<=5;x++) {
			if ( ans[x].equals("correct") ) {
				ans[x] = "true"; 
			}
			else {ans[x] = "false";}					
		}
		String query="insert into "+table+"(qst1,qst2,qst3,qst4,qst5) values("+ans[1]+","+ans[2]+","+ans[3]+","+ans[4]+","+ans[5]+")";
	
		return String.valueOf(jdbcTemplate.update(query)) + "Added to DB_"+table+"!";  
	}

	public Boolean getLeaders(Person person){ 
		
	    String query="select * from person where subject_id="+person.getSubject_id()+" order by score";  
	    return jdbcTemplate.execute(query,new PreparedStatementCallback<Boolean>(){  
	    @Override  
	    
	    public Boolean doInPreparedStatement(PreparedStatement ps)  
	            throws SQLException, DataAccessException {  
	  
	              
	        return ps.execute();  
	              
	    	}  
	    });  
	}  

}