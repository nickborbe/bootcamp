class Knight < Piece
	
	def move?(dst_x, dst_y)
		dx = (dst_x - @pos_x).abs
		dy = (dst_y - @pos_y).abs

		if (dx == 2  && dy == 1) ||
			(dy == 2 && dx == 1 )
			
			true
		else
			false
		end
	end
end