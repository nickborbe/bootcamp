class InvisibleCar < Auto
	def rev
		puts "cloaking activated! #{@color} #{@make}"
		
		super
	end

end