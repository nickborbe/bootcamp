require "sinatra"
require "sinatra/reloader"
require 'date'

require_relative('lib/blog.rb')
require_relative('lib/post.rb')
require_relative('lib/comment.rb')


my_blog = Blog.new
post0 = Post.new("Downtown Chickens", Date.new(2016, 1, 1), "I saw feral chickens under the metro rail station", "Nick Borbe")
post1 = Post.new("How to Gain 5 Pounds in One Day", Date.new(2016, 2, 1), "Eat pizza. Duh.", "Nick Borbe")
post2 = Post.new("How to Come out of a Breakup Looking Like a Loser", Date.new(2016, 1, 16), "Call her crying!  Everyday!", "Nick Borbe")
post3 = Post.new("Why I Don't Shower Daily", Date.new(2016, 1, 21), "I'm just counterculture like that", "Nick Borbe")

comment1 = Comment.new("This is a title", Date.today, "This whole blog sucks why am I reading this?", "James Capra")

sponsored_post = SponsoredPost.new("Buy some stuff", Date.new(2016, 1, 14), "Buy this new sweet thing. You need it.", "The Evil Advertising Companies")


my_blog.add_post(post0)
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)
my_blog.add_post(sponsored_post)
my_blog.add_comment(comment1)

get "/" do 
	@comments = my_blog.show_comments
	@posts = my_blog.latest_posts
	erb :home
	end

	get "/post_details/:number" do 
		@posts = my_blog.latest_posts
		@number = params[:number].to_i
		@the_post = @posts[@number - 1]
		erb :post_details
	end

	get "/create_new_post" do 
		erb :create_new_post
	end

	get "/create_new_comment" do 
		erb :create_new_comment
	end

	post "/new_post" do 
		title = params[:title]
		contents = params[:contents]
		author = params[:author]
		x = 4
		new_post = Post.new(title, Date.today, contents, author)
		my_blog.add_post(new_post)

		redirect "/"
	end


	post "/new_comment" do 
		title = params[:title]
		contents = params[:contents]
		author = params[:author]
		x = 4
		new_comment = Comment.new(title, Date.today, contents, author)
		my_blog.add_comment(new_comment)

		redirect "/"
	end

	


