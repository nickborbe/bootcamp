require 'colorize'

class Blog
	attr_accessor :posts #:current_page
	def initialize
 		@posts = []
 		@current_page = 1
	end

	def add_post(single_post)
		@posts.push(single_post)
	end

	def latest_posts
		@posts = @posts.sort { |post1, post2| post2.date  <=> post1.date}
		@posts
	end
end

# 	def next_page
# 		if !last_page?
# 			@current_page += 1
# 		end
# 		# publish_front_page
# 	#end

# 	def previous_page
# 		if @current_page != 1
# 			@current_page -= 1
# 		end
# 		# publish_front_page
# 	# end
 #end