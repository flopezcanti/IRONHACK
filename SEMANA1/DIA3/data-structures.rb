require pry 

class DataStructure
	def self.data_array
		arr = [
			{ :arr => [1,2,3] },
			{ :arr => [4,5,6] },
			{ :arr => [7,8,9] }
		]
		return data_array
	end
end

da = DataStructure.data_array
binding.pry


arr = [
	 [1,2,3,4,5, {:secret => { :unlock => [1,2] } } ]
]

puts arr[0][5][:secret][:unlock][1] # => 2



