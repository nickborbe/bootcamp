require "bundler/setup"
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
	puts "banana-----------------------------"
	puts "initial array length is "
	puts search_array.length
	puts "trimmed_array length is "
	puts trimmed_array.length
	puts "movies with posters length is "
	puts movies_with_posters.length
	puts @random_movie
	puts "movie list length is"
	puts movie_list.results_array.length
	puts "heres a poster"
	puts trimmed_array[0].poster
	

	

	@array = movie_list.results_array

	erb :posters

	end


	

	