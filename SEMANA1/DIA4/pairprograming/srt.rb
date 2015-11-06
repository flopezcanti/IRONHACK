class SubRip

	attr_accessor :time_range
	
	def initialize id_entry, time_range, subtitle
		@id_entry = id_entry
		@time_range = []
		@subtitle = subtitle
	end

end


class SubRipHandler
	def initialize
		@source = source
	end
	
	source = IO.Read("subtitle.srt").split

end
