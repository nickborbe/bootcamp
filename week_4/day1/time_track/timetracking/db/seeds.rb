Project.create name: "Ironhack", description: "Ironhack is a coding bootcamp"
Project.create name: "Three Non Blondes", description: "I said Hey, What's going on!"
Project.create name: "Bloc Party", description: "It's so cold in this house!"

21.times do |name|
	Project.create name: name, description: "This is a description"
	end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
