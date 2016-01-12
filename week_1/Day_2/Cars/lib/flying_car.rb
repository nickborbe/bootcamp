require_relative("CarClass.rb")
class FlyingCar < Auto
	def fly
		puts "up, up, and away! #{@color} #{@make}"
	end
end