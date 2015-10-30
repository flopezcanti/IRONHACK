cities = ["miami", "madrid","barcelona"]

cities.map do |city| 
	city.capitalize
end



cities = ["miami", "madrid","barcelona"]
pretty_cities = cities.map {|city| city.capitalize} #almacena los valores modificados en pretty_cities

cities.map! { |city| city.capitalize } #modifica la variable cities