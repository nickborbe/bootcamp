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
@array.each_with_index do |movie, index|
	puts "#{index+1}. #{movie.name}"
	end
  end
end