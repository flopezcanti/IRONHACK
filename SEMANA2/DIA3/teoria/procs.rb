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
	def my_map my_block
		my_array = []
		while i < self.size
		each { |i| my_array << my_block.call(i) }
		my_array
	end
end

block = Proc.new { |x| x * 2 }
[1,2,3].my_map block














