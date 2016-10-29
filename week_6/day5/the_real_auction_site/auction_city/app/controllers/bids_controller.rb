class BidsController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.find(params[:product_id])
		@bid = @product.bids.new(bid_params)

		@bid_user = User.find_by(email: params[:bid][:email])

		@bid.user_id = @bid_user.id
		@bid.save
		redirect_to action: "index", controller: "users"

	end


	private

	def bid_params
    params.require(:bid).permit(:amount)
  end

end
