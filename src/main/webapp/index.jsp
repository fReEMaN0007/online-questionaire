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
        				<select class="formElements" type="select" id="education">
        					<option value="elementary">Elementary</option>
        					<option value="highschool">High School</option>
        					<option value="seniorhigh">Senior High</option>
        					<option value="college">College</option>
        					<option value="vocational">Vocational</option>
        				</select>
        				<label class="formElements" for="subject">Subject:</label>
        				<select class="formElements" type="select" id="subject">
        					<option value="history">History</option>
        					<option value="english">English</option>
        					<option value="science">Science</option>
        					<option value="math">Math</option>
        					<option value="logic">Logic</option>
        				</select>
        				<input class="formElements" type="submit" id="submitButton">
        			</form>
        		</div>
        	</div>
        
        </div>
    </div>
</body>
</html>
