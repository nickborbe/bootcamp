class Helicopter
	def initialize(wheels, sound)
		@wheels = wheels
		@sound = sound
	end
	attr_accessor :wheels, :sound
end
chopper = Helicopter.new(3, "tutututut")

class MuscleCar
	def initialize(wheels, sound)
		@wheels = wheels
		@sound = sound
	end
	attr_accessor :wheels, :sound
end
dodge_challenger = MuscleCar.new(4, "vroom, vroom, rumble rumble")
ford_mustang = MuscleCar.new(4, "Brrrrrrrt")


class WheelCounter
	def initialize
		@array_of_vehicles = []

	end

	def add_vehicle(vehicle)
		@array_of_vehicles << vehicle
	end

	def wheel_count
		total = 0
		@array_of_vehicles.each do |thing| 
			total += thing.wheels
		end
		total
			
	end



	def make_noise
		@array_of_vehicles.each do |thing| 
		puts thing.sound
	end
end
end


counter=WheelCounter.new
counter.add_vehicle(chopper)
counter.add_vehicle(dodge_challenger)
counter.add_vehicle(ford_mustang)
# counter.wheel_count
counter.make_noise



