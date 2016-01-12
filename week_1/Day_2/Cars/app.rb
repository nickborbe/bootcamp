require_relative("lib/CarClass.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")

faye_the_fit = Auto.new("grey", "Honda", "Bvvvffft")

bella_the_cooper = Auto.new("red", "Mini", "Waaaahhhhhhh")

matts_mazda = Auto.new("red", "Mazda", "Zoom, zoom")

delorean = FlyingCar.new("blue", "Tesla", "wooosh")

stealth_mobile = InvisibleCar.new("camo", "Ford", "vroom, vroom, you can't see me.")


# puts matts_mazda.inspect
# puts faye_the_fit.inspect
# puts bella_the_cooper.inspect
 # delorean.rev
 # delorean.fly

stealth_mobile.rev