$(document).ready(function(){
	$(".js-show-characters").on("click", function (){
		fetchCharacters();
	});
	$(".js-add-character").on("click", function (event) {
		publishCharacter();
	});





function fetchCharacters() {
	$.ajax({
	url: "https://ironhack-characters.herokuapp.com/characters",

	success: function (response){
		console.log("Everything worked okay");


		displayCharacters(response);


	},


	error: function(){
		console.log("oops didn't work");
	}
	});
}

// --------------------------------------------------

function displayCharacters (characters){

	characters.forEach(function (char){
	

		var html = `
		<li>
		<h2> ${char.name} </h2>
		<p> ${char.id} </p>
		<p> ${char.occupation} </p>
		<p> ${char.weapon} </p>
		</li>
		`;

		$(".js-characters-list").append(html);
	
		});
}

function publishCharacter(){
	event.preventDefault();
	console.log("banana")
	var theName = $(".js-char-name").val();
	var theOccupation = $(".js-char-occupation").val();
	var theWeapon = $(".js-char-weapon").val();
	var newCharacter = {
		name: theName,
		occupation: theOccupation,
		weapon: theWeapon
	};

	$.ajax({
		type:"POST",
		
		url:"https://ironhack-characters.herokuapp.com/characters",

		data: newCharacter,

		success: function () {
			alert("Character added successfully");

		},

		error: function() {
			alert("something went wrong, character not added.");

		}

	});
}












});






