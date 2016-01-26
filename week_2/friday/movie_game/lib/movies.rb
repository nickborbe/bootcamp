class Movies
	attr_accessor :results_array
	def initialize
		@results_array = []
	end

	def add_movie(movie)
		@results_array << movie
	end

	def random_movie
 	boop = @results_array.sample(1)
 	boop[0]
	end

end