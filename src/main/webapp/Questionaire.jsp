<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="resources/css/styles.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/script.js" />"></script>
<meta charset="ISO-8859-1">
<title>Online Survey</title>
</head>

<body>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%! HashMap<String, HashMap<String,ArrayList<String>>>  questions;%>

		

    <div class="mainCon">
        <div class="title" id="titleHead">
           ${subject}
        </div>
        <div class="question" id="qustionHead">
        	<div class="questionAni" id="question1"> ${king["ina"]}</div>
		 	<div class="questionAni" id="question2" style="display:none">${questions["What is?"]["ans1"][0]}</div>
		    
        </div>
        <div class="choices">
        	<div class="choice" id="choiceA">
        	A.) Manila
        	</div>
        	<div class="choice" id="choiceB">
        	B.) Quezon City
        	</div>
        	<div class="choice" id="choiceC">
        	C.) Pasay
        	</div>
        	<div class="choice" id="choiceD">
        	D.) Cebu
        	</div>
       	</div>
       	<div class="navigator">
       		<div class="navButton" id="back">
       			Back
       		</div>
       		<!--  
       		<a href="LogInPage">
	       		<div class="navButton" id="next">
	       			Next
	       		</div>
       		</a>
       		-->
       		<div class="navButton" id="next" onclick="nextQuestion()">
	       			Next
	       	</div>
       		
       	</div>
       	<div class="submit">
      
       		<form action="LogInPage">
       		 	<input type="hidden" id="ans1" name="ans" value="ofdska">
       			<input type="submit" id="submitButtonQuestionnaire">
       		</form>
       	</div>
        
    </div>
</body>
</html>