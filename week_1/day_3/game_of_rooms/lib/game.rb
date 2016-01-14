class Game
	def initialize
		@rooms = []
		@current_room = 0
		# @where_im_at = @rooms[@current_room]
	end

	def start_game
		@rooms[@current_room].welcome
	end

	def change_rooms
		user_input = gets.chomp
		if @rooms[@current_room].exits.include? user_input
			@current_room += 1
			start_game
			change_rooms
		else
			puts "there is no exit there"
			start_game
			change_rooms
		end
	end



	def show_rooms
		puts @rooms
	end

	def add_room(room)
		@rooms << room
	end
end







# @current_room = 0
# @current_room += 1

# @rooms[@current_room]
