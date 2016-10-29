

class Blog
	attr_accessor :posts #:current_page
	def initialize
 		@posts = []
 		@current_page = 1
 		@comments = []
	end

	def add_post(single_post)
		@posts << single_post
	end

	def latest_posts
		@posts = @posts.sort { |post1, post2| post2.date  <=> post1.date}
		@posts
	end

	def add_comment(single_comment)
		@comments << single_comment
	end

	def show_comments
		@comments
	end
end
