require_relative("lib/piece.rb")
require_relative("lib/board.rb")
require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


chess_board = Board.new
white_king = King.new(5, 1, "white")
black_king = King.new(5, 8, "black")

white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")
black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")

white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
black_bishop_left = Bishop.new(3, 8, "white")
black_bishop_right = Bishop.new(6, 8, "white")

white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")

white_queen = Queen.new(4,1, "white")
black_queen = Queen.new(4, 8, "black")

white_pawn = WhitePawn.new(2, 2, "white")
black_pawn = BlackPawn.new(2, 7, "black")

chess_board.add_piece(white_king)
chess_board.add_piece(black_king)

chess_board.add_piece(white_rook_left)
chess_board.add_piece(white_rook_right)
chess_board.add_piece(black_rook_left)
chess_board.add_piece(black_rook_right)

chess_board.add_piece(white_bishop_left)
chess_board.add_piece(white_bishop_right)
chess_board.add_piece(black_bishop_left)
chess_board.add_piece(black_bishop_right)

chess_board.add_piece(white_knight_left)
chess_board.add_piece(white_knight_right)
chess_board.add_piece(black_knight_left)
chess_board.add_piece(black_knight_right)

chess_board.add_piece(white_queen)
chess_board.add_piece(black_queen)

puts "good moves"
p chess_board.move?(7, 1,  6, 3)
p chess_board.move?(5, 1,  4, 2)

# puts "bad moves"
# p chess_board.move?(5, 4,  1, 1)
# p chess_board.move?(1, 1, 50, 50)
# p chess_board.move?(8, 8,  8, 8)
# p chess_board.move?(8, 1,  7, 8)









