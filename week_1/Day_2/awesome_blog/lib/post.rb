class Post
	def initialize(title, date, text)
		@title=title
		@date=date
		@text=text
	end
	attr_accessor :title, :date, :text


	def display

		puts "#{@title}  \n**************\n#@text}\n----------------"
	end
end