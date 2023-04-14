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
        <div class="title">
           ${subject}
        </div>
        <div class="question">
       	  ${question}
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
       		<div class="navButton" id="next">
       			Next
       		</div>
       	</div>
       	<div class="submit">
       		Submit
       	</div>
        
    </div>
</body>
</html>