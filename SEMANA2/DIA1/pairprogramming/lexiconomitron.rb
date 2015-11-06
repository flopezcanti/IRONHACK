require 'pry'
require 'rspec'

class Lexiconomitron
	def eat_t str
		arr = str.each_char.to_a 
		arr.each do |letter|
			if letter == "t" || letter == "T"
				return ""
			else
				return letter
			end
		end
	end
end

# str = Lexiconomitron.new
# puts str.eat_t("great scott")