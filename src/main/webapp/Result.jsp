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
<body onload="percentBar();setTryBox('${subject}');uiColorSelector('${subject}')">
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
							<div class="percentageBarInner" id="percentInner1">
							</div>
							<div class="percentageText">
								<span id="percent1">${qst1Percent}%</span> got it right
							</div>
						</div>
					</div>
				</div>
				
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow even">${question["qst2"]}</div>
					<div class="answerSummary summaryRow even">${answer["ans2Text"]}</div>
					<div class="resultSummary summaryRow even">${result[2]}</div>
					<div class="statsSummary summaryRow even">	
						<div class="percentageBarOuter">
							<div class="percentageBarInner" id="percentInner2">
							</div>
							<div class="percentageText">
								<span id="percent2">${qst2Percent}%</span> got it right
							</div>
						</div>
					</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow odd">${question["qst3"]}</div>
					<div class="answerSummary summaryRow odd">${answer["ans3Text"]}</div>
					<div class="resultSummary summaryRow odd">${result[3]}</div>
					<div class="statsSummary summaryRow odd">	
						<div class="percentageBarOuter">
							<div class="percentageBarInner" id="percentInner3">
							</div>
							<div class="percentageText">
								<span id="percent3">${qst3Percent}%</span> got it right
							</div>
						</div>
					</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow even">${question["qst4"]}</div>
					<div class="answerSummary summaryRow even">${answer["ans4Text"]}</div>
					<div class="resultSummary summaryRow even">${result[4]}</div>
					<div class="statsSummary summaryRow even">	
						<div class="percentageBarOuter">
							<div class="percentageBarInner" id="percentInner4">
							</div>
							<div class="percentageText">
								<span id="percent4">${qst4Percent}%</span> got it right
							</div>
						</div>
					</div>
				</div>
				<div class="odd flexOuter">
					<div class="questionSummary summaryRow odd">${question["qst5"]}</div>
					<div class="answerSummary summaryRow odd">${answer["ans5Text"]}</div>
					<div class="resultSummary summaryRow odd">${result[5]}</div>
					<div class="statsSummary summaryRow odd">	
						<div class="percentageBarOuter">
							<div class="percentageBarInner" id="percentInner5">
							</div>
							<div class="percentageText">
								<span id="percent5">${qst5Percent}%</span> got it right
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class=othersCon>
				<div class="leftHalf">
					<div class=try>
						You might wanna try:
					</div>
					<div class="subjectsTry" id="Try1">
						<div class="subjectName" id="subjectName1">f</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="Try2">
						<div class="subjectName" id="subjectName2">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="Try3">
						<div class="subjectName" id="subjectName3">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
					<div class="subjectsTry" id="Try4">
						<div class="subjectName" id="subjectName4">History</div>
						<div class="difficulty">Easy</div>
						<div class="numberOfQuestions">5 Questions</div>
					</div>
				</div>
				<div class="rightHalf">
					<div class=leaderBoardtable>
					Leader Board
					<div class="subjectTable">${subject}</div>
					</div>
				<!-- 	<div class="flexOuter">
						<div class="buttonTable"><</div>
						<div class="subjectCont">Subject</div>
						<div class="buttonTable">></div>
					</div>
				 -->	
					<div class="flexOuter">
						<div class=" headMini borderLeft">Rank</div>
						<div class=" headMini">Name</div>
						<div class=" headMini">Score</div>
						<div class=" headMini borderRight" >Date</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">1</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top0"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top0"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top0"]["date"]}</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">2</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top1"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top1"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top1"]["date"]}</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">3</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top2"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top2"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top2"]["date"]}</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">4</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top3"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top3"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top3"]["date"]}</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">5</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top4"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top4"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top4"]["date"]}</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">6</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top5"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top5"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top5"]["date"]}</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">7</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top6"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top6"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top6"]["date"]}</div>
					</div>
					<div class="even flexOuter">
						<div class=" headMini summaryRowMini borderLeft">8</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top7"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top7"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top7"]["date"]}</div>
					</div>
					<div class="odd flexOuter">
						<div class=" headMini summaryRowMini borderLeft">9</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top8"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top8"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight">${subject1Leader["top8"]["date"]}</div>
					</div>
					<div class="even flexOuter borderBottom">
						<div class=" headMini summaryRowMini borderLeft">10</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top9"]["name"]}</div>
						<div class=" headMini summaryRowMini">${subject1Leader["top9"]["score"]}</div>
						<div class=" headMini summaryRowMini borderRight ">${subject1Leader["top9"]["date"]}</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
</body>
</html>