/*
function nextQuestion(){
   		let div = document.createElement('div');
        div.id = 'content';
        div.innerHTML = '${king["ina"]} ${questions["What is?"]["ans1"][0]}';
        document.getElementById("qustionHead").appendChild(div);

}
*/
var counter = 0;
function nextQuestion(){
	
	var question = [];
	var choice = [];
	var x=0;

	question[1]=document.getElementById("question1")
	question[2]=document.getElementById("question2");
	question[3]=document.getElementById("question3");
	question[4]=document.getElementById("question4")
	question[5]=document.getElementById("question5");

	
	choice[1]=document.getElementById("choice1")
	choice[2]=document.getElementById("choice2");
	choice[3]=document.getElementById("choice3");
	choice[4]=document.getElementById("choice4")
	choice[5]=document.getElementById("choice5");

	
	
	if(question[5].style.display=="block"){
		document.getElementById("questionHead").style.display="none";
		document.getElementById("choices").style.display="none";
		document.getElementById("quizSummary").style.display="block";
		document.getElementById("navigator").style.display= "none";
		document.getElementById("submitButtonQuestionnaire").style.display= "block";
		document.getElementById("quizSummary").style.display= "block";
		document.getElementById("spacer").style.display= "block";
		document.getElementById("submit").style.display = "block";
		document.getElementById("scoreVar").innerHTML = score;
		
		if(score == 0){
			document.getElementById("congrats").innerHTML = "I'm sorry ";
		}
		else{
			document.getElementById("congrats").innerHTML = "Congratulations ";
		}
	}
	
	else{
		
	for(let i=1;i<=5;i++){
			if(question[i].style.display=="block"){
				question[i].style.display = "none";
				choice[i].style.display = "none";
				question[i+1].style.display = "block";
				choice[i+1].style.display = "block";
				break;	
			}
		}
	}
	
	document.getElementById("navigator").style.display= "none";
	}
	var score=0;
	
function correctAns(ans,corretAns,qst){
		document.getElementById("navigator").style.display= "block";
		
		
	if(ans==corretAns){
		document.getElementById("choice"+corretAns+qst).style.backgroundColor= "green";
		document.getElementById("choice"+corretAns+qst).style.color= "white";
		document.getElementById("checkerMessage").innerHTML= "Correct!";
		document.getElementById("checkerMessage").style.backgroundColor= "green";
		document.getElementById("ans"+qst).value="correct";
		score=score +1;
		document.getElementById("score").value = score;
		
	
	}
	else{
		document.getElementById("choice"+ans+qst).style.backgroundColor= "maroon";
		document.getElementById("choice"+ans+qst).style.color= "white";
		document.getElementById("choice"+corretAns+qst).style.backgroundColor= "green";
		document.getElementById("choice"+corretAns+qst).style.color= "white";
		document.getElementById("checkerMessage").innerHTML= "Wrong!";
		document.getElementById("checkerMessage").style.backgroundColor= "maroon";
		document.getElementById("score").value = score;
	}

}
function percentBar(){
	var percent1= document.getElementById("percent1").innerHTML;
	var percent2= document.getElementById("percent2").innerHTML;
	var percent3= document.getElementById("percent3").innerHTML;
	var percent4= document.getElementById("percent4").innerHTML;
	var percent5= document.getElementById("percent5").innerHTML;

	document.documentElement.style.setProperty('--percentWidth1', percent1);
	document.documentElement.style.setProperty('--percentWidth2', percent2);
	document.documentElement.style.setProperty('--percentWidth3', percent3);
	document.documentElement.style.setProperty('--percentWidth4', percent4);
	document.documentElement.style.setProperty('--percentWidth5', percent5);


}
function uiColorSelector(sub){
	var subject=sub;

	if(subject.match("History")){
			document.documentElement.style.setProperty('--uiColor', getComputedStyle(document.documentElement).getPropertyValue('--subject1Color'));
			document.documentElement.style.setProperty('--hoverColor', getComputedStyle(document.documentElement).getPropertyValue('--hover1Color'));
	}
	else if(subject.match("English")){
			document.documentElement.style.setProperty('--uiColor', getComputedStyle(document.documentElement).getPropertyValue('--subject2Color'));
			document.documentElement.style.setProperty('--hoverColor', getComputedStyle(document.documentElement).getPropertyValue('--hover2Color'));
	}
	else if(subject.match("Math")){
			document.documentElement.style.setProperty('--uiColor', getComputedStyle(document.documentElement).getPropertyValue('--subject3Color'));
			document.documentElement.style.setProperty('--hoverColor', getComputedStyle(document.documentElement).getPropertyValue('--hover3Color'));
	}
	else if(subject.match("Logic")){
			document.documentElement.style.setProperty('--uiColor', getComputedStyle(document.documentElement).getPropertyValue('--subject4Color'));
			document.documentElement.style.setProperty('--hoverColor', getComputedStyle(document.documentElement).getPropertyValue('--hover4Color'));
	}
	else if(subject.match("Science")){
			document.documentElement.style.setProperty('--uiColor', getComputedStyle(document.documentElement).getPropertyValue('--subject5Color'));
			document.documentElement.style.setProperty('--hoverColor', getComputedStyle(document.documentElement).getPropertyValue('--hover5Color'));
	}
	else{}
}

function setTryBox(subject){
	const subjects = ["History","English","Science","Math","Logic"];
	var y=1;
	var sub=subject;

	
	for(let x=0;x<5;x++){
	
		if(sub.match(subjects[x])){

		}
		else{
			if(subjects[x].match("History")){
				document.getElementById("Try"+y).style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue('--subject1Color');
				document.getElementById("subjectName"+y).innerHTML = "History";
			}
			else if(subjects[x].match("English")){
				document.getElementById("Try"+y).style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue('--subject2Color');
				document.getElementById("subjectName"+y).innerHTML = "English";
			}
			else if(subjects[x].match("Math")){
				document.getElementById("Try"+y).style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue('--subject3Color');
				document.getElementById("subjectName"+y).innerHTML = "Math";
			}
			else if(subjects[x].match("Logic")){
				document.getElementById("Try"+y).style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue('--subject4Color');
				document.getElementById("subjectName"+y).innerHTML = "Logic";
			}
			else if(subjects[x].match("Science")){
				document.getElementById("Try"+y).style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue('--subject5Color');
				document.getElementById("subjectName"+y).innerHTML = "Science";
			}
			y++;	
		}
	}
	
}
function tryAnother(number, name, education){
	var subject;
	switch (number){
		case 1 : subject=document.getElementById("subjectName1").innerHTML;
		break;
		case 2 : subject=document.getElementById("subjectName2").innerHTML;
		break;
		case 3 : subject=document.getElementById("subjectName3").innerHTML;
		break;
		case 4 : subject=document.getElementById("subjectName4").innerHTML;
		break;	
	}
	 window.location = "question1?name="+name+"&education="+education+"&subject="+subject+"";
}
