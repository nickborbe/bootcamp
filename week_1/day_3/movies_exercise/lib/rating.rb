class MovieReview
	attr_reader :array
	def initialize
		@array=[]
	end

def add_movie(movie)
	@array << movie
end

	def print_rating
		10.downto(1) do|i|
			chart = ""

			@array.each do |movie|

			if movie.rating >=i
				chart += "|#"
			else 
				chart += "| "
			end


		end


puts chart
	end

puts "----------------"
puts "|1|2|3|4|5|6|7|8"	
puts "1. #{@array[0].name}"
puts "2. #{@array[1].name}"
puts "3. #{@array[2].name}"
puts "4. #{@array[3].name}"
puts "5. #{@array[4].name}"
puts "6. #{@array[5].name}"
puts "7. #{@array[6].name}"
puts "8. #{@array[7].name}"

end
end