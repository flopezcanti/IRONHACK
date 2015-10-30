=begin
	
Object oriented Blog

OK Two Classes: Blog and Post 
OK Every post has a title, a date and text.
OK Blog: It has a container for all the posts. An array or something like that.
 
=> A blog should be able to create and show a front page through the methods create_front_page and publish_front_page, 
but feel free to use the methods your want. 
At the end, the blog should be able to show every post in the following format:

The posts should be ordered by date starting on newest

OK

Advanced blog

We should add Sponsored Posts. Let's suppose that the post titled: "
Post title 2" is a Sponsored Post. The output should be as follows.

Post title 1
**************
Post 1 text
----------------
******Post title 2******
**************
Post 2 text
----------------
Post title 3
**************
Post 3 text
----------------

Bonus blog

Your blog looks amazing! but we need to improve it a little bit. 
A blog can have hundreds of posts, and sometimes it can be chaotic to find one. 

So we need to organize them, and nothing better than pagination. 
In this new version of the blog, we want that it only shows three posts per page, and at the the bottom, 
we would like to show the number of pages that it has and it will be very cool if the current page is 
shown in a different colour (you can use the colorize gem). 

To change from one page to another, the user should respond with either next or prev(previous).

For example: We have a Blog with 8 Posts

Post title 1
**************
Post 1 text
----------------
Post title 2
**************
Post 2 text
----------------
Post title 3
**************
Post 3 text
----------------

1  2  3

> next
Post title 4
**************
Post 4 text
----------------
Post title 5
**************
Post 5 text
----------------
Post title 6
**************
Post 6 text
----------------

1  2  3

> next
Post title 7
**************
Post 7 text
----------------
Post title 8
**************
Post 8 text
----------------

1  2  3
=end

class Blog
	def initialize count
		@count = []
	end

	def add_post(post)		
		@count << post
	end

	def create_front_page
		@count.sort!{ |post1, post2| post2.date <=> post1.date} 
	end

	def check_sponsor(post)
		if post.sponsor == true
			 post.title = "******" + post.title + "******"
		end
	end

	def publish_front_page
		@count.each do |post| 
			check_sponsor(post)
			puts "#{post.date}\n**************\n#{post.title}\n#{post.text}\n----------------\n"
		end  
	end
end

	def navigation
		
	end

class Post
	attr_accessor :title, :date, :text, :sponsor
	def initialize title, date, text, sponsor
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
	end
end

blog = Blog.new("")

blog.add_post Post.new("Primer día en IronHack", "26.10.2015", "El Primer día....", true)
blog.add_post Post.new("Segundo día en IronHack", "27.10.2015", "El Segundo día....", false)
blog.add_post Post.new("Mañana será otro día en IronHack", "28.10.2015", "Otro día....", false)
blog.add_post Post.new("cuarto día en IronHack", "29.10.2015", "El cuarto día....", true)
blog.add_post Post.new("quinto día en IronHack", "30.10.2015", "El quinto día....", false)
blog.add_post Post.new("sexto será otro día en IronHack", "31.10.2015", "sexto día....", false)
blog.add_post Post.new("septimo día en IronHack", "1.11.2015", "El septimo día....", true)
blog.add_post Post.new("octavo día en IronHack", "2.11.2015", "El octavo día....", false)
blog.add_post Post.new("Mañana será día 9 en IronHack", "3.11.2015", "noveno día....", false)

blog.create_front_page
blog.publish_front_page