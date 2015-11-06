require 'PRY'
require 'rspec'

class FizzBuzz
	def add_number number
		result = ""
		if number % 3 == 0 && number % 5 == 0
			result << "FizzBuzz"
		elsif number.to_s.start_with?("2")
			result << "Vodafone"
		elsif number % 3 == 0
			result << "Fizz"
		elsif number % 5 == 0
			result << "Buzz"
		elsif number % 7 == 0	
			result << "Nike"
		else 
			result = number 
		end

	end
end