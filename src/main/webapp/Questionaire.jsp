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
        <div class="question" id="questionHead">
        	<div class="questionAni" id="question1" style="display:block"> ${question["qst1"]}</div>
		 	<div class="questionAni" id="question2" style="display:none">${question["qst2"]}</div>
		 	<div class="questionAni" id="question3" style="display:none">${question["qst3"]}</div>
		 	<div class="questionAni" id="question4" style="display:none">${question["qst4"]}</div>
		 	<div class="questionAni" id="question5" style="display:none">${question["qst5"]}</div>
        </div>
        <div id="choices">
	        <div class="choiceCon" id="choice1" style="display:block">
	        	<div class="choice" id="choiceA1" onclick="correctAns('A','${answer['ans1']}','1')">
	        	${choice["choice1"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB1" onclick="correctAns('B','${answer['ans1']}','1')">
	        	${choice["choice1"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC1" onclick="correctAns('C','${answer['ans1']}','1')">
	        	${choice["choice1"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD1" onclick="correctAns('D','${answer['ans1']}','1')">
	        	${choice["choice1"]["D"]}
	        	</div>
	         </div>
	         <div class="choiceCon" id="choice2" style="display:none">	
	        	<div class="choice" id="choiceA2" onclick="correctAns('A','${answer['ans2']}','2')">
	        	${choice["choice2"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB2" onclick="correctAns('B','${answer['ans2']}','2')">
	        	${choice["choice2"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC2" onclick="correctAns('C','${answer['ans2']}','2')">
	        	${choice["choice2"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD2" onclick="correctAns('D','${answer['ans2']}','2')">
	        	${choice["choice2"]["D"]}
	        	</div>
	        </div>
	         <div class="choiceCon" id="choice3" style="display:none">	
	        	<div class="choice" id="choiceA3" onclick="correctAns('A','${answer['ans3']}','3')">
	        	${choice["choice3"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB3" onclick="correctAns('B','${answer['ans3']}','3')">
	        	${choice["choice3"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC3" onclick="correctAns('C','${answer['ans3']}','3')">
	        	${choice["choice3"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD3" onclick="correctAns('D','${answer['ans3']}','3')">
	        	${choice["choice3"]["D"]}
	        	</div>
	        </div>
	         <div class="choiceCon" id="choice4" style="display:none">	
	        	<div class="choice" id="choiceA4" onclick="correctAns('A','${answer['ans4']}','4')">
	        	${choice["choice4"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB4" onclick="correctAns('B','${answer['ans4']}','4')">
	        	${choice["choice4"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC4" onclick="correctAns('C','${answer['ans4']}','4')">
	        	${choice["choice4"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD4" onclick="correctAns('D','${answer['ans4']}','4')">
	        	${choice["choice4"]["D"]}
	        	</div>
	        </div>
	         <div class="choiceCon" id="choice5" style="display:none">	
	        	<div class="choice" id="choiceA5" onclick="correctAns('A','${answer['ans5']}','5')">
	        	${choice["choice5"]["A"]}
	        	</div>
	        	<div class="choice" id="choiceB5" onclick="correctAns('B','${answer['ans5']}','5')">
	        	${choice["choice5"]["B"]}
	        	</div>
	        	<div class="choice" id="choiceC5" onclick="correctAns('C','${answer['ans5']}','5')">
	        	${choice["choice5"]["C"]}
	        	</div>
	        	<div class="choice" id="choiceD5" onclick="correctAns('D','${answer['ans5']}','5')">
	        	${choice["choice5"]["D"]}
	        	</div>
	       </div>
		</div>
		
		<div id="quizSummary">
				Congratulations ${person}!
				Your score is 100
		</div>
	    <div id="navigator">

       		<div id="checkerMessage">
       		
       		</div>
       		<div class="navButton" id="next" onClick="nextQuestion()">
       		Next
       		</div>
         		
       	</div>
       	
       	<div class="submit">
       		<form action="Result">
       		 	<input type="hidden" id="ans1" name="ans" value="ofdska">
       		 	<input type="hidden" id="ans2" name="ans" value="ofdska">
       		 	<input type="hidden" id="ans3" name="ans" value="ofdska">
       		 	<input type="hidden" id="ans4" name="ans" value="ofdska">
       		 	<input type="hidden" id="ans5" name="ans" value="ofdska">
       			<input type="submit" id="submitButtonQuestionnaire" value="SAVE">
       		</form>
       	</div>
        
    </div>
</body>
</html>