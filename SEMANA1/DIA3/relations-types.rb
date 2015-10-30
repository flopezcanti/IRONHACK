
class Engine
	def initialize
		@pistons = pistons
	end

	def turn_on
		move_pistons
		...
	end
end

class ElectricEngine < Engine	
	def initialize pistons, battery
		super pistons
		@battery = battery
	end
end

class Car 
	def initialize color
		@color = color
		@engine = engine
	end

	def start
		@engine.turn_on		
	end
end

c = Car.new "Azul", ElectricEngine.new(2, "1.91GW")
c2 = Car.new "Rojo", Engine.new(12)

c.start
c2.start