require_relative("lib/authenticate.rb")
require_relative("lib/word_count.rb")

nick = User.new("littlenicky", "sharks1227" )
words = WordCount.new
nick.login
words.count_words








