# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(name: "jalexy", email: "jalexy12@gmail.com")
user.save

user.products.create(title: "Desk", description: "Best desk ever", deadline: DateTime.now + 1.hour)
user.products.create(title: "Table", description: "Best table ever", deadline: DateTime.now + 4.hours)
user.products.create(title: "Whiteboard", description: "Best whiteboard ever", deadline: DateTime.now + 2.hours)
user.products.create(title: "Phone", description: "Best phone ever", deadline: DateTime.now + 1.hours)

# Product.create(title: "Headphones", description: "Beats by Dre", deadline: DateTime.now + 2.hours, user_id: user.id)
