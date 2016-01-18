require 'colorize'


class Blog
	def initialize
		@posts_per_page = 3
		@current_page = 1
		@posts = []
	end


		def add_post(the_post)
		@posts << the_post

		end

		def publish_front_page
		first_post = 0
		last_post = 2
		blog_entries = @posts.sort { |thing1, thing2| thing2.date <=> thing1.date }

		blog_entries[first_post..last_post].each do |entry|
			entry.display
			end

		puts "1 2 3 \n > next"
		user_input = ""
		while user_input != 'exit'
			user_input = gets.chomp
		if user_input == "next"
			@current_page += 1
			first_post += @posts_per_page
			last_post+= @posts_per_page
			blog_entries[first_post..last_post].each do |entry|
				entry.display
				 end
				 
		elsif user_input =="prev"
			@current_page -= 1
			first_post -= @posts_per_page
			last_post -= @posts_per_page
			blog_entries[first_post..last_post].each do |entry|
				entry.display	
				end
			end
				
		end
		
	end
end