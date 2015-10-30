
class Car
	def initialize sound, engine
		@sound = sound
		@engine = engine.new
	end

	def make_noise
		puts @sound
		@engine.make_noise
	end
end

class Engine
	def initialize sound
		@sound = sound
		
	end
	def make_noise 
		puts @sound
	end
end


c = car.new("taca-taca-taca" * 2)
e = engine.new("ÏÏÏÏÏÏÏÏ")

c.make_noise
e.make_noise