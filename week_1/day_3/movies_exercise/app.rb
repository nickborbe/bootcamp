require_relative("lib/movies.rb")
require_relative("lib/rating.rb")

magazine=MovieReview.new

magazine.add_movie Movie.new("The Godfather",5)
magazine.add_movie Movie.new("Home Alone",7)
magazine.add_movie Movie.new("titanic",8)
magazine.add_movie Movie.new("Star Trek",6)
magazine.add_movie Movie.new("Finding Nemo",10)
magazine.add_movie Movie.new("True Romance",4)
magazine.add_movie Movie.new("Point Break",7)
magazine.add_movie Movie.new("Gladiator",9)



magazine.print_rating
# puts magazine.array.inspect