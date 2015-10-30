# class Car
# 	def initialize noise
# 		@noise = noise
# 	end

# 	def broom
# 		puts @noise
# 	end
# end

# Car.new("broom")
# Car.new("Brooooom")


# # Método de clase
# class Muffin 

# 	@@bakery = "Ironhack"

# 	def initialize color, flavor
# 		@color = color
# 		@flavor = flavor
# 	end
# 	def self.show_bakery
# 		puts @@bakery
# 	end
# end

class Car 
	def initialize sound
		@sound = sound
	end

	def make_sound
		puts @sound
	end

	def self.recive_car(car)
		car.make_sound
		car.make_sound
	end
end

car = Car.new.recive_car("booom")

