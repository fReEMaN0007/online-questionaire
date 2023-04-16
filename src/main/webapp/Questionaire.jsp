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
        	<div class="questionAni" id="question1" style="display:block"> ${question["qst1"]}</div>
		 	<div class="questionAni" id="question2" style="display:none">${question["qst2"]}</div>
		 	<div class="questionAni" id="question3" style="display:none">${question["qst3"]}</div>
		 	<div class="questionAni" id="question4" style="display:none">${question["qst4"]}</div>
		 	<div class="questionAni" id="question5" style="display:none">${question["qst5"]}</div>
        </div>
        <div class="choices">
	        <div id="choice1" style="display:block">
	        	<div class="choice" id="choiceA">
	        	${choice["choice1"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB">
	        	${choice["choice1"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC">
	        	${choice["choice1"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD">
	        	${choice["choice1"]["D"]}
	        	</div>
	        </div>	
	        <div id="choice2" style="display:none">
	        	<div class="choice" id="choiceA">
	        	${choice["choice2"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB">
	        	${choice["choice2"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC">
	        	${choice["choice2"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD">
	        	${choice["choice2"]["D"]}
	        	</div>
	        </div>
	        <div id="choice3" style="display:none">
	        	<div class="choice" id="choiceA">
	        	${choice["choice3"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB">
	        	${choice["choice3"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC">
	        	${choice["choice3"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD">
	        	${choice["choice3"]["D"]}
	        	</div>
	        </div>
	        <div id="choice4" style="display:none">
	        	<div class="choice" id="choiceA">
	        	${choice["choice4"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB">
	        	${choice["choice4"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC">
	        	${choice["choice4"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD">
	        	${choice["choice4"]["D"]}
	        	</div>
	        </div>
	        <div id="choice5" style="display:none">
	        	<div class="choice" id="choiceA">
	        	${choice["choice5"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB">
	        	${choice["choice5"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC">
	        	${choice["choice5"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD">
	        	${choice["choice5"]["D"]}
	        	</div>
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
      
       		<form action="Result">
       		 	<input type="hidden" id="ans1" name="ans" value="ofdska">
       			<input type="submit" id="submitButtonQuestionnaire">
       		</form>
       	</div>
        
    </div>
</body>
</html>