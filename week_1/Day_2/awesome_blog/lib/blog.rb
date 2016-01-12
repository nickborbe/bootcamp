class Blog
	def initialize
		@posts = []
	end

	def add_post(the_post)
		@posts << the_post

	end

	def publish_front_page
		blog_entries = @posts.sort { |thing1, thing2| thing2.date <=> thing1.date }

		blog_entries.each do |entry|
			entry.display
			
		end


		
	end
end