require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


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

white_pawn = WhitePawn.new(2, 2, "white", true)
black_pawn = BlackPawn.new(2, 7, "black", true)




p white_pawn.move?(2, 4)
p black_pawn.move?(2, 5)



