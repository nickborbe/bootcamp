Project.create name: "Ironhack", description: "Ironhack is a coding bootcamp"
Project.create name: "Three Non Blondes", description: "I said Hey, What's going on!"
Project.create name: "Bloc Party", description: "It's so cold in this house!"

10.times do |i|
	p = Project.create name: "Project#{i}", description: "This is a description"
	if i.odd?
		p.entries.create(minutes: i, hours: i, date: 1.month.ago)
	else
		p.entries.create(minutes: 5 * i, hours: 2 * i, date:1.month.ago)
	end
end












# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
