class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Iagos's place", "Gijón", 2, 42),
  Home.new("Charlie's place", "Trujillo", 5, 47),
  Home.new("GianCarlo's place", "Puerto Rico", 3, 41),
  Home.new("Ruben's place", "Toledo", 2, 45),
  Home.new("Raul's place", "Manila", 4, 49)
]


total_price = homes.reduce(0.0) do |sum, rents|
	sum + rents.price
end

puts "The average price is:"
puts total_price / homes.length

puts "how do you want order the results? Select a number:\nPRICE 1. Hight to low, 2. Low to hight. \nCAPACITY: 3. Hight to low, or, 4 Low to hight" 

user_order = gets.chomp.to_i

if user_order == 1
	sorted = homes.sort { |home1, home2| home2.price <=> home1.price }
	sorted.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche \n\n"}
end

if user_order == 2
	sorted = homes.sort { |home1, home2| home1.price <=> home2.price }
	sorted.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche \n\n"}
end

if user_order == 3
	sorted = homes.sort { |home1, home2| home2.capacity <=> home1.capacity }
	sorted.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche\nCapacity: #{rents.capacity} \n\n"}
end

if user_order == 4
	sorted = homes.sort { |home1, home2| home1.capacity <=> home2.capacity }	
	sorted.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche\nCapacity: #{rents.capacity} \n\n"}
end

puts "in which city do you want to rent?"

user_city = gets.chomp
rents_by_city = homes.select { |rents| rents.city == user_city }
rents_by_city.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche\nCapacity: #{rents.capacity} \n\n"}

total_price = rents_by_city.reduce(0.0) { |sum, rents| sum + rents.price }
puts "The average price int this city is: "
puts total_price / rents_by_city.length


puts "How much money do you want to spend?"

user_money = gets.chomp.to_i
rents_by_money = homes.find { |rents| rents.price == user_money }
 puts "#{rents_by_money.name} en #{rents_by_money.city} \nPrice: #{rents_by_money.price}€ por noche\nCapacity: #{rents_by_money.capacity} \n\n"












=begin
# Sacamos los nombres, localizaciones y los precuios de los alquileres
homes.each { |rents| puts "#{rents.name} en #{rents.city} \nPrice: #{rents.price}€ por noche \n\n"}

#Let's get the average capacity of our homes with an each
total_capacities = 0.0
homes.each { |rents| total_capacities = total_capacities + rents.capacity }

puts "The average capacity is: (each)"
puts total_capacities / homes.length

#Let's get the average capacity of our homes with an REDUCE

total_capacities = homes.reduce(0.0) do |sum, rents|
  sum + rents.capacity
end

puts "The average capacity is: (reduce)"
puts total_capacities / homes.length

total_capacities = homes.reduce(0.0) do |sum, rents|
  sum + rents.capacity
end

=end










