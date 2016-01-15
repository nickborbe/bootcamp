class Pawn
	def initialize(pos_x, pos_y, color, firstmove)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
		@firstmove = firstmove
	end
end


class WhitePawn < Pawn

	def move?(dst_x, dst_y)
		dx = (dst_x - @pos_x)
		dy = (dst_y - @pos_y)

		if @firstmove = true && (dx == 0 && dy == 1) || 
			(dx == 0 && dy == 2)	
		true
		elsif dx == 0 && dy == 1	
				true
			else 
				false
			end
		end
	end


class BlackPawn < Pawn

	def move?(dst_x, dst_y)
		dx = (dst_x - @pos_x)
		dy = (dst_y - @pos_y)
		
		if @firstmove = true && 
			(dx == 0 && dy == (-1)) || 
			(dx == 0 && dy == (-2))	
				true

		elsif  dx == 0 && dy == (-1)	
				true
			else 
				false
			end
		end
	end


		
		
	
		

		
		