class Post
	attr_accessor :title, :text, :date #, :sponsor
	def initialize title, text
		@title = title
		@text = text
		@date = Time.now
		#@sponsor = false
	end
end