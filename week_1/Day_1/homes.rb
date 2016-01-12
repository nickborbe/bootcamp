class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
	@name = name
	@city = city
	@capacity = capacity
	@price = price
	end
end
#iteration 0
homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Sevilla", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Málaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49),
	Home.new("Nick's place", "Nappa Valley", 12, 90),
	Home.new("Currans's place", "Grenwich", 5, 55),
	Home.new("Payne's place", "Montana", 8, 10),
	Home.new("Peter's place", "Oakland", 4, 75),
	Home.new("Lorraine's place", "Miami", 10, 60),
]

#iteration 1
def info(array)
	array.each do |place|
	puts "#{place.name} in #{place.city} has #{place.capacity} rooms \nPrice: #{place.price} a night\n\n"
	end
end


#iteration 2
def sort(array)
	puts "if you would like to sort high to low, type 'high', if you would like to sort low to high, type 'low'"
		user_input=gets.chomp
		if user_input == 'low'
			sorted = array.sort do |thing1, thing2| 
			thing1.price <=> thing2.price
		end
		elsif user_input == 'high'
			sorted = array.sort do |thing1, thing2| 
			thing2.price <=> thing1.price
		end
	end
	info(sorted)
	puts "if you would like to sort by capacity, type 'capacity"
	second_input=gets.chomp
	if second_input == 'capacity'
		puts "if you would like to sort high to low, type 'high', if you would like to sort low to high, type 'low'"
		third_input = gets.chomp
	end
	if third_input == 'low'
			sorted = array.sort do |thing1, thing2| 
			thing1.capacity <=> thing2.capacity
		end
		elsif user_input == 'high'
			sorted = array.sort do |thing1, thing2| 
			thing2.capacity <=> thing1.capacity
		end
	end
	info(sorted)
end

#iteration 3
def filter(array, city_name)
	filter_by_city = array.select do |place| 
		place.city == city_name
	end
	info(filter_by_city)
end


#iteration 4
prices = homes.map do |place|
	place.price
	end   

def average_price(array)
total_price = array.reduce(0.0) do |sum, money|
sum + money
	end
	puts total_price / (array.length)
end


#iteration 5
def name_your_price(array, desired_price)
	filter_by_price = array.select do |place| 
		place.price <= desired_price
	end
	info(filter_by_price)
end



name_your_price(homes, 78)

