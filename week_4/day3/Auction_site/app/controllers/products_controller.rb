class ProductsController < ApplicationController

	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all
	end
end
