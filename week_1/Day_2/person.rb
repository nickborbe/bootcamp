class Person
	attr_reader :name
	attr_accessor :age
	def initialize(name, age)
		@name = name
		@age = age
	end
	
end

nick = Person.new("nick", 24)

# nick.name = "bryan"
nick.age = 35
puts nick.name
puts nick.age
