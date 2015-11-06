class Blog
	attr_reader :post
	def initialize 
		@post = []
	end

	def add_post(post)		
		@post << post
	end

	def order_post_by_date
		@post.sort!{ |post1, post2| post2.date <=> post1.date} 
	end

end
