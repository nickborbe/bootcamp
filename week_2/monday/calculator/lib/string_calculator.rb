#lib/string_calculator.rb
class StringCalculator

	def add(string)
		array = string.split(",")
		sum = 0
		if array.length == 1
			array[0].to_i
		elsif array.length == 0 
			0 
		 else
		 	array.each do |x|
		 		sum += x.to_i
		 	end
		 	sum
		end
	end
end