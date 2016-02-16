class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
		# render json: sandwiches.name
	end


end
