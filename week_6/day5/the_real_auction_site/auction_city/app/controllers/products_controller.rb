class ProductsController < ApplicationController

	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all
	end


	def show
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.find(params[:id])
		@bids = @product.bids.all
		@bid = @product.bids.new
		sorted_bids = @bids.sort_by { |hsh| hsh[:amount] }
		@highest_bid = sorted_bids.last
			if @highest_bid
			@winner = User.find(@highest_bid.user_id)
			end

	end

	def create 
			@user = User.find(params[:user_id])
		@product = @user.products.new(product_params)
		@product.save
		redirect_to action: "index", controller: "users"
	end

	def destroy
	end
	
	def new
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new
	end

	private

	def product_params
    params.require(:product).permit(:title, :description, :deadline)
  end


end
