
class ChildhoodRoom
	def initialize
		@exits = ["N", "S", "E", "W"]
		@commands = ["give mom a kiss"]
		@item = "Mom's lipstick on your cheek"
		
	end
	attr_reader :exits, :commands
	def welcome
		puts "You are in your childhood bedroom exactly as it existed when you were seven years old."
		puts "On all four walls, there are strange glowing spherical lights."
		puts "Maybe you could jump through one of them..."
		puts "Your mom is next to you.  She wants to give you a kiss goodbye"
		puts "Exits: #{@exits}"
		puts ">"
	end
end


class Forest 
	def initialize
		@exits = ["N"]
		@commands = ["eat mushrooms"]
		@item = "Synesthesia"
		
	end
	attr_reader :exits, :commands
	def welcome
		puts "You are in a forest.  The leaves make a pleasant crunching sound underneath your feet."
		puts "There is a faint glow coming from the North."
		puts "Hmm....there are some delicious looking mushrooms below a tree nearby"
		puts "Exits: #{@exits}"
		puts ">"
	end
end

class SketchyPublicBathroom 
	def initialize
		@exits = ["E"]
		@commands = ["pick up shard"]
		@item = "Jagged Shard"
		
	end
	attr_reader :exits, :commands
	def welcome
		puts "You are in a sketchy public bathroom.  The fluorescent light overhead is flickering and the mirror is shattered." 
		puts "Wet and soiled toilet paper is strewn all around the room and water is dripping from the ceiling."  
		puts "There is a large man with an angry expression on his tattooed face emerging from one of the stalls." 
		puts "There is a jagged shard of glass next to the sink"
		puts "It's dark and hard to see but it looks like there is a door on the East side of the room."
		puts "Exits: #{@exits}"
		puts ">"
	end
end



class Sailboat 
	def initialize
		@exits = ["W"]
		@commands = ["eat fish"]
		@item = "72 inch Tapeworm"
			end
	attr_reader :exits, :commands
	def welcome
		puts "You are on a sailboat out on the ocean.  The air is crisp and there is a steady wind of about fifteen knots from the North."
		puts  "Water is all you can see in all directions but one. There seems to be some land to the West"
		puts "MMM....Your stomach is grumbling.  There is a freshly caught fish onboard."
		puts "Exits: #{@exits}"
		puts ">"
	end
end

class Nightclub 
	def initialize
		@exits = ["S"]
		@commands = ["solicit hooker"]
		@item = "gonorrhea"
		
	end
	attr_reader :exits, :commands
	def welcome
		puts "There is loud music and strobe lights. Attractive women dressed in scantily clad clothing come up to you and dance up against you." 
		puts "You must be in a Miami nightclub there is an exit sign on the South side of the room."
		puts "One particularly ratchet-looking woman whispers in your ear 'only twenty bucks for a good looking guy like you.'"
		puts "Exits: #{@exits}"
		puts ">"
	end
end

class WinnersCircle 
	def welcome
puts "You made it through all the rooms and you have won the game! That must have taken forever!"

	end
	end

