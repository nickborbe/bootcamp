require_relative("lib/game.rb")
require_relative("lib/rooms.rb")



new_game = Game.new

childhood_room = Room.new("You are in your childhood bedroom exactly as it existed when you were seven years old.
\ On all four walls, there are strange glowing spherical lights. 
\ Maybe you could jump through one of them... Your mom is next to you. 
\ She wants to give you a kiss goodbye", ["N", "S", "E", "W"], ["give mom a kiss"])

forest = Room.new("You are in a forest.  The leaves make a pleasant crunching sound underneath your feet.
\ There is a faint glow coming from the North.
\ Hmm....there are some delicious looking mushrooms below a tree nearby", ["N"], ["eat mushrooms"])


sketchy_public_bathroom = Room.new("You are in a sketchy public bathroom.  The fluorescent light overhead is flickering and the mirror is shattered.
\ Wet and soiled toilet paper is strewn all around the room and water is dripping from the ceiling.
\ A large man with an angry expression on his tattooed face emerges from one of the stalls.
\ There is a jagged shard of glass next to the sink
\ It's dark and hard to see but it looks like there is a door on the East side of the room.", ["E"], ["pick up shard"] )

sailboat = Room.new("You are on a sailboat out on the ocean.  The air is crisp and there is a steady wind of about fifteen knots from the North.
\ Water is all you can see in all directions but one. There seems to be some land to the West.
\ MMM....Your stomach is grumbling.  There is a freshly caught fish onboard.", ["W"], ["eat fish"])

nightclub = Room.new("Loud music and strobe lights assault your sensory intake system.
\ Attractive women dressed in scantily clad clothing come up to you and dance up against you.
\ You must be in a Miami nightclub. There is an exit sign on the South side of the room.
\ One particularly ratchet-looking woman whispers in your ear 'only twenty bucks for a good looking guy like you.", ["S"], ["solicit hooker"])

winners_circle = Room.new("You made it through all the rooms and you have won the game! That must have taken forever!", [])

new_game.add_room(childhood_room)
new_game.add_room(forest)
new_game.add_room(sketchy_public_bathroom)
new_game.add_room(sailboat)
new_game.add_room(nightclub)
new_game.add_room(winners_circle)



new_game.play


