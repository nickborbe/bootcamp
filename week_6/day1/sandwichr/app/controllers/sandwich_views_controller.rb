class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
		# render json: sandwiches.name
	end


	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients.all
	end

	def add_ingredient
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients.all
		@all_ingredients = Ingredient.all
	end



end
