require_relative("lib/game.rb")
require_relative("lib/rooms.rb")



new_game = Game.new

childhood_room = ChildhoodRoom.new
forest = Forest.new
sketchy_public_bathroom = SketchyPublicBathroom.new
sailboat = Sailboat.new
nightclub = Nightclub.new
winners_circle = WinnersCircle.new

new_game.add_room(childhood_room)
new_game.add_room(forest)
new_game.add_room(sketchy_public_bathroom)
new_game.add_room(sailboat)
new_game.add_room(nightclub)
new_game.add_room(winners_circle)


new_game.start_game
new_game.change_rooms