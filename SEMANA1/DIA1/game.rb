def what_name
	puts "what's your name"
	name = gets.chomp
	puts "Hello #{name}"
end

def what_number 
	number = rand(10)
	puts "Give me a number"
	user_number = gets.chomp.to_i

	while number != user_number

		if number < user_number
				puts "your number is bigger"
				puts "Give me another number"
				user_number = gets.chomp.to_i

			else number > user_number
				puts "your number is smaller"
				puts "Give me another number"
				user_number = gets.chomp.to_i
			end
		end
		
		if number == user_number
				puts "you HIT!"
		end
end


def n_intentos
 intentos 

end


def vidas

end	

what_name
what_number
