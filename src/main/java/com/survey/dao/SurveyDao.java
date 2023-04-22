package com.survey.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;

import org.springframework.jdbc.core.RowMapper;

import com.survey.model.LeadingPerson;
import com.survey.model.Percentage;
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

	public List<LeadingPerson> getLeaders(String subject_id){ 
		
	    String query="select * from person left join subject on subject.id=person.subject_id where subject_id="+subject_id+" order by score DESC LIMIT 10";  
	    
	    return jdbcTemplate.query(query,new RowMapper<LeadingPerson>(){
	    	@Override
	    	public LeadingPerson mapRow(ResultSet rs, int rowNumber) throws SQLException{
	    		LeadingPerson leadingPerson = new LeadingPerson();
	    		leadingPerson.setName(rs.getString("name"));
	    		leadingPerson.setSubject(rs.getString("subject"));
	    		leadingPerson.setScore(rs.getInt("score"));
	    		leadingPerson.setDate(rs.getDate("date"));
	 
	    		return leadingPerson;
	    	}
	    });
	}
	public HashMap<String,List<Percentage>> getStats(){ 
		
		
		String[] queryList= new String[6];  
				queryList[1]="select * from subject1;";
				queryList[2]="select * from subject2;";  
				queryList[3]="select * from subject3;";  
				queryList[4]="select * from subject4;";  
				queryList[5]="select * from subject5;";  
				
				
				System.out.println(queryList[1] + " Query DAO");
	  
	    
	    HashMap<String,List<Percentage>> listOfPercentage = new  HashMap<String,List<Percentage>>();
	    
	    for(int x=1;x<=5;x++) {
	    
	    listOfPercentage.put("subject"+x, 
	     jdbcTemplate.query(queryList[x],new RowMapper<Percentage>(){
					    	@Override
					    	public Percentage mapRow(ResultSet rs, int rowNumber) throws SQLException{
					    		Percentage percentageQuestion = new Percentage();
					    		percentageQuestion.setQst1(rs.getBoolean("qst1"));
					    		percentageQuestion.setQst2(rs.getBoolean("qst2"));
					    		percentageQuestion.setQst3(rs.getBoolean("qst3"));
					    		percentageQuestion.setQst4(rs.getBoolean("qst4"));
					    		percentageQuestion.setQst5(rs.getBoolean("qst5"));
					    		return percentageQuestion;
					    		}
					     	}
					     )
	    			);
	    }
	    return listOfPercentage;
	}
	
	

}