class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
		# render json: sandwiches.name
	end


	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients.all
	end




end
