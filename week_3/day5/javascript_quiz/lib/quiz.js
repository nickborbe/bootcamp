var read = require('read');

var Quiz = function(questionsArray) {
	this.questionsArray = questionsArray
	this.i = 0
	this.currentQuestion = this.questionsArray[this.i]
};


Quiz.prototype.questionManager = function() {
	if (this.i < this.questionsArray.length){
		var options = {
	prompt: "Question" + (this.i + 1) + ":" + this.currentQuestion.question + "?"		
		}

	read(options, this.checkAnswer.bind(this));
} else {
	console.log("You made it.  Yeah, Geography!")
	}
}







Quiz.prototype.checkAnswer = function(error, userAnswer) {
	if (error) {
		console.log(error.message);
	}else if(userAnswer === this.currentQuestion.answer) {
		this.i++;
		this.currentQuestion = this.questionsArray[this.i]
		console.log("That is correct! Woot Woot!");
		this.questionManager();
	} else {
		console.log("that is incorrect, try again.");
		this.questionManager();
		}
	}









module.exports = Quiz;
