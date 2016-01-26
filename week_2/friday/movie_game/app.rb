require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("lib/movies.rb")






get "/imdb_test" do 
	search = Imdb::Search.new("pizza")
	@number_of_result = search.movies.length
	@first_result = search.movies[1]


	erb :imdb_test
end

get "/" do 
	erb :home
	end



post "/results" do
movie_list = Movies.new

 	
	keyword = params[:keyword]
	search_array = Imdb::Search.new(keyword).movies
	trimmed_array = search_array.first(25)
	movies_with_posters = []
	trimmed_array.each do |movie|
		if movie.poster != nil
			movies_with_posters << movie
		end
	end

	first_nine = movies_with_posters.first(9)
	first_nine.each do |movie|
	movie_list.add_movie(movie)
	end
	@random_movie = movie_list.random_movie
	

	@array = movie_list.results_array

	erb :posters

	end


	

	