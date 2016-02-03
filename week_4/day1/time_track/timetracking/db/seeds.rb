p1 = Project.new name: "Ironhack", description: "Ironhack is a coding bootcamp"
p2 = Project.new name: "Three Non Blondes", description: "I said Hey, What's going on!"
p3 = Project.new name: "Bloc Party", description: "It's so cold in this house!"
p1.save
p2.save
p3.save
p1.entries.create(minutes: 34, hours: 2, date: 1.month.ago)
p2.entries.create(minutes: 15, hours: 8, date: Date.yesterday)
p3.entries.create(minutes: 17, hours: 14, date: 2.months.ago)


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
