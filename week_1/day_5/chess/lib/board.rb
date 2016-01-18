
class Board
	
	attr_reader :board
	def initialize
		@board = [ nil, [], [], [], [], [], [], [], [] ]
	 end
	

	def add_piece(piece, x = piece.pos_x, y = piece.pos_y)
		@board[x][y] = piece

	end

def show_board(x, y)
	puts @board[x][y].inspect
end

def move?(start_x, start_y, dest_x, dest_y)
		piece = @board[start_x] [start_y]

			if start_x == dest_x && start_y == dest_y 
				false
			elsif start_x > 8 || start_y > 8 || dest_x > 8 || dest_y > 8 ||
				start_x < 1 || start_y < 1 || dest_x < 1 || dest_y < 1
				false
			elsif piece == nil
				false
			elsif piece.move?(dest_x, dest_y)
				true
			else 
				false
		end


	end

end