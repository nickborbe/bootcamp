class ConcertsController < ApplicationController




	def index
		@concerts = Concert.all
		@concerts_this_month = Concert.where(date: DateTime.now.end_of_day..DateTime.now.end_of_month)
		@concerts_today = Concert.where(date: DateTime.now.beginning_of_day..DateTime.now.end_of_day)
		render 'index'
	end

	def new
		@concert = Concert.new
		render 'new'
	end

	def create
		@concert = Concert.new(concert_params)
		@concert.save
		redirect_to action: "index", controller: "concerts"
	end

	def show
		the_id = params[:id]
		@concert = Concert.find_by(id: the_id)
		render 'show'
	end



private

  def concert_params
    params.require(:concert).permit(:artist, :city, :venue, :date, :price, :description)
  end

end
