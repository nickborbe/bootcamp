class Rook < Piece
	
	def move?(dst_x, dst_y)
		dx = (dst_x - @pos_x).abs
		dy = (dst_y - @pos_y).abs

		if (dx == 0 && dy != 0) ||
			(dy == 0 && dx != 0)
			true
		else
			false
		end
	end
end