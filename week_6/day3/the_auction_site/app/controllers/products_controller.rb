class ProductsController < ApplicationController
	before_action :set_user, only: [:index, :new, :create]

	def index
		@products = @user.products.all
	end

	def new
		@product = @user.products.new
	end

	def create
		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_products_path(@user) 
		else 
			flash.now[:error] = @product.errors.full_messages 
			render 'new'
		end
	end

	private 

	def set_user
		@user = User.find_by(id: params[:user_id])
	end

  def product_params
  	params.require(:product).permit(:title, :description, :deadline)
  end
end
