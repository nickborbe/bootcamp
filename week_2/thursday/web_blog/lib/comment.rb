class Comment
	attr_accessor :title, :date, :text, :author
	def initialize(title, date, text, author)
		@title = title
		@date = date 
		@text = text
		@author = author
	end
end