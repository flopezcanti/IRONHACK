module Camera 
	def take_photo
		puts "Photo taken with #{operating_system}"
	end
end

class Device
	def initialize operating_system, screensize
		@operating_system = operating_system
		@screensize = screensize
	end

	def showtime
		puts Time.now.inspect
	end
end

class MovilPhone < Device
	include Camera
	def initialize operating_system, screensize, phonebook
		super operating_system, screensize
		@phonebook = phonebook #añado objeto Phonebook y me traigo sus metodos
	end

	def add_contact_to_phonebook name, number
		@phonebook.add_contact(name, number)
	end

	def phonecall name
		number = get_contact(name)
		puts "Calling #{number}"
	end
end

class PhoneBook
	def initialize
		@contacts_list = []
	end

	def add_contact name, number 
		@contacts_list << {:name => name, :number => number}
	end

	def get_contact name
		@contacts_list.each do |contact|
			if name == contact[:name]
				 numer_found = contact[:number]
			end
		end
	end	
end

class Laptop < Device
	def initialize operating_system, screensize, screen_touch
		super operating_system, screensize
		@screen_touch = screen_touch
	end
end

class Smartwatch < Device
	include Camera
	def beautifull_showtime
		puts "##### #{Time.now} #####"
	end
end

class Microwave 
	def heat food
		"Heating #{food}"
	end

	def showtime
		"I'm a microwave and time is #{Time.now.inspect}"
	end
end

items = [Smartwatch.new("Android",20), Microwave.new]

items.each do |item|

end


m = MovilPhone.new("Android", 7, PhoneBook.new)
l = Laptop.new("OSX El Capitán", 13, false)
s = Smartwatch.new("IOS 9", 4)
mw = Microwave.new

m.add_contact_to_phonebook "fernando", 123456
m.add_contact_to_phonebook "Iago", 123456
m.add_contact_to_phonebook "Gustavo", 123456
m.add_contact_to_phonebook "Roberto", 123456

#m.puts @contacts



m.showtime
l.showtime
s.beautifull_showtime

#m.take_photo
s.take_photo
