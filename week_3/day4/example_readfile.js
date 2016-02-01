var fs = require("fs")

fs.readFile("../trello_clone/index.html", "utf8", function(error, contents){ 
	if (error !== null){
		console.log("this is the error");
		console.log(error.message);
	} 
	else {
		console.log(contents.length);
		var htmlLines = contents.split("\n")
		console.log(htmlLines);
		}
	});