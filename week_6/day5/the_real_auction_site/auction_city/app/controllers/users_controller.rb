class UsersController < ApplicationController


	def show
		@the_id = params[:id]
		@user = User.find_by(id: @the_id)
		@products = @user.products.all
	
		
		
	end

	def index
		@users = User.all

		
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to action: "index", controller: "users"
	end

	def destroy
	end
	
	def new
		@user = User.new
		render 'new'
	end


private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end
