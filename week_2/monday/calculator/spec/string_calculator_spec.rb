require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do 
	before :each do
		@my_calc = StringCalculator.new
	end
it "returns 0 for empty string" do

expect(@my_calc.add("")).to eq(0)
	end

	it "takes one number and returns that number" do
		
		expect(@my_calc.add("9")).to eq(9)
	end

	it "takes a string of numbers and returns the sum" do
		
		expect(@my_calc.add("4,7")).to eq(11)
		expect(@my_calc.add("1,2")).to eq(3)
	end
end