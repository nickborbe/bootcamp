class Game
	def initialize
		@rooms = []
		@current_room = 0
		@inventory = []
		
	end

	def play
		puts @rooms[@current_room].description
		puts ">"
		puts @rooms[@current_room].exits.join(" ")
		user_input = gets.chomp
		
		if @rooms[@current_room].exits.include? user_input
			@current_room += 1
			play
		elsif 
		


		else
			puts "there is no exit there"
			play
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
