$(document).ready(function(){
	$(".js-ingredient-to-add").on("click", function(event){
		var $ingredientId = $(event.currentTarget).data("ingredient");
		var $sandwichId = $(".js-sandwich-id").data("sandwich-id");
		var $name = $(event.currentTarget).data("ingredient-name");
		addIngredient($sandwichId, $ingredientId, $name);	
	});

});

function addIngredient(sandwich, ingredient, name){
	$.ajax({
		type: "POST",
		data: {ingredient_id: ingredient},
		url: `/api/sandwiches/${sandwich}/ingredients/add`,
		success: function(response){
			

			var html = `
			<li>
			${name}
			</li>
			`
		$(".js-ingredient-list").append(html);	

			

		},
		error: function(){}
	});
}