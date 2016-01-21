require "sinatra"
require "sinatra/reloader"
require 'date'

require_relative('lib/blog.rb')
require_relative('lib/post.rb')


my_blog = Blog.new
post0 = Post.new("Downtown Chickens", Date.new(2016, 1, 1), "I saw feral chickens under the metro rail station")
post1 = Post.new("How to Gain 5 Pounds in One Day", Date.new(2016, 2, 1), "pizza")
post2 = Post.new("How to Come out of a Breakup Looking Like a Loser", Date.new(2016, 1, 16), "Call her crying!  Everyday!")
post3 = Post.new("Why I Don't Shower Daily", Date.new(2016, 1, 21), "I'm just counterculture like that")


sponsored_post = SponsoredPost.new("Buy some stuff", Date.new(2016, 1, 14), "Buy this new sweet thing. You need it.")


my_blog.add_post(post0)
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)
my_blog.add_post(sponsored_post)

get "/" do 
	@posts = my_blog.latest_posts
	erb :home
	end

	get "/post_details/:number" do 
		@posts = my_blog.latest_posts
		@number = params[:number].to_i
		@the_post = @posts[@number - 1]
		erb :post_details
	end

	


