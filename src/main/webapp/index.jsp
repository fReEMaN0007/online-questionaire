<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<link href="<c:url value="resources/css/styles.css" />" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Online Survey</title>
</head>

<body>
    <div class="mainCon">
        <div class="login">
        	<div class="panels" id="leftPanel">
        		Online Questionnaire
        		<div class="created">
            		Created Using:
        		</div>
        	</div>
        	
        	<div class="panels" id="rightPanel">
        		<div class="formCon">
        			<form action="question1">
        				<label class="formElements" for="name">Name:</label>
        				<input class="formElements" type="text" id="name" name="name">
        				<label class="formElements" for="education">Educational Attainment:</label>
        				<select class="formElements" type="select" id="education" name="education">
        					<option name="Elementary" value="Elementary">Elementary</option>
        					<option name="High School" value="High School">High School</option>
        					<option name="Senior High" value="Senior High">Senior High</option>
        					<option name="College" value="College">College</option>
        					<option name="Vocational" value="Vocational">Vocational</option>
        				</select>
        				<label class="formElements" for="subject">Subject:</label>
        				<select class="formElements" type="select" id="subject" name="subject">
        					<option name="History" value="History">History</option>
        					<option name="English" value="English">English</option>
        					<option name="Science" value="Science">Science</option>
        					<option name="Math" value="Math">Math</option>
        					<option name="Logic" value="Logic">Logic</option>
        				</select>
        				<input class="formElements" type="submit" id="submitButton" >
        			</form> 
        		</div>
        	</div>
        
        </div>
    </div>
</body>
</html>
