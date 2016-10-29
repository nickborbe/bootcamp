// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function() {
	console.log("Rendering pokemon: #" + this.id);

	var self = this;

	$.ajax({
		url: "/api/pokemon/" + this.id,
		success: function (response){
			self.info = response;
			console.log("Pokemon info:");
			console.log(self.info);


			$(".js-pokemon-name").text(self.info.name);
			$(".js-pokemon-id").text(self.info.pkdx_id);
			$(".js-pokemon-height").text(self.info.height);
			$(".js-pokemon-weight").text(self.info.weight);

			$(".js-pokemon-hp").text(self.info.hp);
			$(".js-pokemon-attack").text(self.info.attack);
			$(".js-pokemon-defense").text(self.info.defense);
			$(".js-pokemon-sp-attack").text(self.info.sp_atk);
			$(".js-pokemon-sp-defense").text(self.info.sp_def);
			$(".js-pokemon-speed").text(self.info.speed);


//---------compare the line below to nizar's code later
			$(".js-pokemon-evolutions").data(pkdx_id);

			var types = self.info.types
			var pkm_types = []
			types.forEach(function(type){
				pkm_types.push(type.name);
			});
				pkm_types = pkm_types.join(", ");

			$(".js-pokemon-type").text(pkm_types);

			$(".js-pokemon-modal").modal("show");

			$(".js-pokemon-image").prop("src", "")

			self.getImage(self.id);

			var descriptions = response.descriptions
			var descArray = []
			descriptions.forEach(function(desc){
				var theUri = desc.resource_uri
				var uriBegin = theUri.slice(0, 20);
				var descId = theUri.slice(20, theUri.length)
				descArray.push(descId);
			});

			descArray = descArray.sort(function(a, b){return b-a});
			var descID = descArray[0];

			self.getDescription(descID)
			
		},
		error: function(){
			alert("Couldn't get the details for pokemon" + this.id)
		}
	});
	
};
PokemonApp.Pokemon.prototype.getDescription = function(descriptionID){
	$.ajax({
		url: "/api/v1/description/" + descriptionID,
		success: function(response){
			console.log("Hello", response)
			var theDescription = response.description
			$(".js-pokemon-description").text(theDescription)
		},
		error: function(){
			alert("sorry, didn't work")
		}
	});
}

PokemonApp.Pokemon.prototype.getImage = function(id){
	$.ajax({
		url: "/api/v1/sprite/" + (parseInt(id) + 1),

		success: function(response){
			console.log(response);
			var imgUri = response.image
			console.log(imgUri)
			$(".js-pokemon-image").prop("src", "http://pokeapi.co" + imgUri)

		}, 
		error: function(){
			alert("something went very wrong")
		}
	});
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};
///------------------------------------------------------------
$(document).on("ready", function(){
	$(".js-show-pokemon").on("click", function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");
		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});