<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="resources/css/styles.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/script.js" />"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="percentBar()">
	${ans}
	<div class="mainCon">
		<div class="title">	
			Quiz Summary & Statistics
		</div>
		<div id="dataCon">
			<div id="participantsInfo">
				<div class="infoTag">
					Name:  <span class="elValue">${name}</span>
				</div>
				<div class="infoTag">
					Educational Attainment:  <span class="elValue">${education}</span>
				</div>
				<div class="infoTag">
					Chosen Subject:  <span class="elValue">${subject}</span>
				</div>
				<div class="infoTag">
					 Score:  <span class="elValue">${score}</span>
				</div>
			</div>
			<div id="tableQuestion">
				<div class="flexOuter">
					<div class="questionSummary summaryHead head">Question</div>
					<div class="answerSummary summaryHead head">Answer</div>
					<div class="resultSummary summaryHead head">Result</div>
					<div class="statsSummary summaryHead head" >Statistics</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow odd">${question["qst1"]}</div>
					<div class="answerSummary summaryRow odd">${answer["ans1Text"]}</div>
					<div class="resultSummary summaryRow odd">${result[1]}</div>
					<div class="statsSummary summaryRow odd">	
						<div class="percentageBarOuter">
							<div class="percentageBarInner">
							</div>
							<div class="percentageText">
								<span id="percent1">75%</span> got it right
							</div>
						</div>
					</div>
				</div>
				
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow even">${question["qst2"]}</div>
					<div class="answerSummary summaryRow even">${answer["ans2Text"]}</div>
					<div class="resultSummary summaryRow even">${result[2]}</div>
					<div class="statsSummary summaryRow even">Statistics</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow odd">${question["qst3"]}</div>
					<div class="answerSummary summaryRow odd">${answer["ans3Text"]}</div>
					<div class="resultSummary summaryRow odd">${result[3]}</div>
					<div class="statsSummary summaryRow odd">Statistics</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow even">${question["qst4"]}</div>
					<div class="answerSummary summaryRow even">${answer["ans4Text"]}</div>
					<div class="resultSummary summaryRow even">${result[4]}</div>
					<div class="statsSummary summaryRow even">Statistics</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow odd">${question["qst5"]}</div>
					<div class="answerSummary summaryRow odd">${answer["ans5Text"]}</div>
					<div class="resultSummary summaryRow odd">${result[5]}</div>
					<div class="statsSummary summaryRow odd">Statistics</div>
				</div>
			</div>
			<div class=othersCon>
				<div class="leftHalf">
					<div class=try>
						You might wanna try:
					</div>
					<div class="subjectsTry" id="oneTry">
						<div class="subjectName">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="twoTry">
						<div class="subjectName">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="threeTry">
						<div class="subjectName">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="fourTry">
						<div class="subjectName">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
				</div>
				<div class="rightHalf">
					<div class=leaderBoardtable>
					Leader Board
					</div>
					<div class="flexOuter">
						<div class=" headMini borderLeft">Subject</div>
						<div class=" headMini">Name</div>
						<div class=" headMini">Score</div>
						<div class=" headMini borderRight" >Date</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
					<div class="even flexOuter borderBottom">
						<div class=" headMini summaryRowMini borderLeft">History</div>
						<div class=" headMini summaryRowMini">Angelo</div>
						<div class=" headMini summaryRowMini">100</div>
						<div class=" headMini summaryRowMini borderRight">19-4-2023</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
</body>
</html>