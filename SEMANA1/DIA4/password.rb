
class User 
	def initialize name, password
		@name = name
		@password = password
	end
end


class Login
	print "give me your name"
	name = get.chomp

	print "give me your password"
	password = get.chomp
	
	def checkPassword
		if password == "1234"
			print "OK, you are inside. Know give a couple of words"
			words = get.chomp
		end
	end
end

class WordsCount
	n = words.length
	print "The words are #{n}"
end

User.new("fernando", "1234")