if (window.PokemonApp === undefined) {
	window.PokemonApp = {};
}

PokemonApp.init = function() {
	// 3rd party setup code here
	console.log("Pokemon App Online Yay Computers!")
};

//---------------------------------------------------

$(document).on("ready", function(){
	PokemonApp.init();
});