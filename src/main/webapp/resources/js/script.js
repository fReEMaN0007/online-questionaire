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
function correctAns(ans,corretAns,qst){
		document.getElementById("navigator").style.display= "block";
		
	if(ans==corretAns){
		document.getElementById("choice"+corretAns+qst).style.backgroundColor= "#00ff1e";
		document.getElementById("choice"+corretAns+qst).style.color= "blue";
		document.getElementById("checkerMessage").innerHTML= "Correct!";
		document.getElementById("checkerMessage").style.backgroundColor= "#00ff1e";
	}
	else{
		document.getElementById("choice"+ans+qst).style.backgroundColor= "red";
		document.getElementById("choice"+corretAns+qst).style.backgroundColor= "#00ff1e";
		document.getElementById("choice"+corretAns+qst).style.color= "blue";
		document.getElementById("checkerMessage").innerHTML= "Wrong!";
		document.getElementById("checkerMessage").style.backgroundColor= "red";
	}

}


	