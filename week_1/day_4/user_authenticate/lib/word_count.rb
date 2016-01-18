class WordCount



	def count_words
		text = gets.chomp
		words = text.split(' ')
		word_count = words.length
		puts "The entered text has #{word_count} words"

	end

end



