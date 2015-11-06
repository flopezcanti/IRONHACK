class Array
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		self
	end
end


["uno", "dos", "tres"].my_each do |numero|
	puts numero
end

class Array
	def my_each_with_index
		i = 0
		while i < self.size
			yield(item, [i])
		end
		self
	end
end

class Array
	def my_select
		return self unless block_given?
			new_array = []
			my_each { |i| new_array << i if yield (i) }
			new_array
		end
	end
end

class Array
	def my_map
		new_array = []
		while i < self.size
		my_each { new_array << yield (i) }
		new_array
	end
end














