class Car 
	def initialize brand, sound
		@brand = brand
		@sound = sound
	end

	def makenoise
		puts @sound
		puts @brand
		
	end
end

class RacingCar < Car
	def initialize brand, sound
		super(brand, "Brooooom")
	end
end

my_car = Car.new("Skoda","BROOOM")
my_racingCar = RacingCar.new("Masserati","BROOOM")

my_car.makenoise
my_racingCar.makenoise