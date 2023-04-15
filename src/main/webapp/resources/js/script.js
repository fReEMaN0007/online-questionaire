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
	question[6]=document.getElementById("question6");
	
	choice[1]=document.getElementById("choice1")
	choice[2]=document.getElementById("choice2");
	choice[3]=document.getElementById("choice3");
	choice[4]=document.getElementById("choice4")
	choice[5]=document.getElementById("choice5");
	choice[6]=document.getElementById("choice6");
	
	
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
	