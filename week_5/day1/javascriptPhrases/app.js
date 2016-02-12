var phrases = [
	"may the force be with you",
	"today's not the day",
	"say hello to my little friend",
	"release the kraken",
	"don't answer a question with a question"
];


var random0to4 = Math.round(Math.random()*4);
var randomPhrase = phrases[random0to4]

$(document).ready(function() {

refreshRandomPhrase();

	$(".js-refresh-button").on("click", function () {
		refreshRandomPhrase();
	});



// these bracket things go with the document.ready 
// on line 13 so that all these funcitons only get run 
// once the page had loaded fully
}); 

function refreshRandomPhrase(){
	var random0to4 = Math.round(Math.random()*4);
	var randomPhrase = phrases[random0to4]
	console.log(randomPhrase)
	$(".js-phrase-heading").text(randomPhrase);
}
