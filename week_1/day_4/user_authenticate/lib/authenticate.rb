class User
	def initialize(username, password)
		@username = username
		@password= password
	end

	def login
		puts "Username:"
		username = gets.chomp

		puts "Password:"
		password = gets.chomp

		if username == @username && password == @password
			puts "Welcome back, #{username}."
			puts "Please enter some text to count words"
		else
			puts "Wrong username or password."
		end
	end

end