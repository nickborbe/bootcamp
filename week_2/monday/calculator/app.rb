require_relative("lib/string_calculator.rb")
require_relative("spec/string_calculator_spec.rb")

my_calc = StringCalculator.new

p my_calc.add( "1,2") == 3
p my_calc.add( "4,7") == 11
p my_calc.add( "") == 0
p my_calc.add( "9") == 9


