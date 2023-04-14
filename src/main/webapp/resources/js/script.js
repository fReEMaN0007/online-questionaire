/*
function nextQuestion(){
   		let div = document.createElement('div');
        div.id = 'content';
        div.innerHTML = '${king["ina"]} ${questions["What is?"]["ans1"][0]}';
        document.getElementById("qustionHead").appendChild(div);

}
*/
function nextQuestion(){
	document.getElementById("ans1").value= "angelo";
	document.getElementById("question1").style.display = "none";
	document.getElementById("question2").style.display = "Block";
}