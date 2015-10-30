require 'pry'	
class ShoppingCart
	def initialize
		@cart = []
	end

	def add_item_to_cart product
		@cart << product
  end

  def count_products
  	each_item = {}

  	@cart.each do |item|
  		if each_item[item.name]
  			each_item[item.name] + 1 
  		else
  			each_item[item.name] = 1
  		end
  	end  
  	each_item
  end

  def sum_pices

  end


  def show
  	index = 1 
  	@cart.each do |item|
  		puts "#{index}. " +  "#{item.name}: " + "#{item.price}"
  		index += 1
  	end
  end
end

 
class Product
	attr_reader :name, :price 

	def initialize name, price
		@name = name
		@price = price
	end

end

class Shop

	def discount
	end

	def calculate_cost
  end

  def cost
  end
end

cart = ShoppingCart.new


a = Product.new("apple", 10)
b = Product.new("banana", 20)
c = Product.new("banana", 20)


cart.add_item_to_cart(a)
cart.add_item_to_cart(b)
cart.add_item_to_cart(b)

cart.show
binding.pry

=begin


Buy 2 apples and pay just one!
Buy 3 oranges and pay just 2!
Buy 4 grapes you get one banana for free if you want!

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50


apples     10$
oranges     5$
grapes     15$
banana     20$
watermelon 50$


Buy 2 apples and pay just one!
Buy 3 oranges and pay just 2!
Buy 4 grapes you get one banana for free if you want!

Our fruits don't have the same price during all the year. We need to change their price depending on the season using the following table

           Spring Summer Autumn Winter
apples        10$    10$    15$    12$
oranges        5$     2$     5$     5$
grapes        15$    15$    15$    15$
banana        20$    20$    20$    21$
Watermelon costs the same though all the year (50$) excepting on Sunday when its price is doubled.


	
=end