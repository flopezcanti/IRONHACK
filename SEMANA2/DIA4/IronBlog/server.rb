require "sinatra"
require "sinatra/reloader" if development?

require_relative './lib/blog.rb'
require_relative './lib/post.rb'

blog = Blog.new

blog.add_post Post.new("Primer día en IronHack", "El Primer día....")
blog.add_post Post.new("Segundo día en IronHack", "El Segundo día....")
blog.add_post Post.new("Mañana será otro día en IronHack", "Otro día....")
blog.add_post Post.new("cuarto día en IronHack", "El cuarto día....")
blog.add_post Post.new("quinto día en IronHack", "El quinto día....")
blog.add_post Post.new("sexto será otro día en IronHack", "sexto día....")
blog.add_post Post.new("septimo día en IronHack", "El septimo día....")
blog.add_post Post.new("octavo día en IronHack", "El octavo día....")
blog.add_post Post.new("Mañana será día 9 en IronHack", "noveno día....")

blog.create_front_page
blog.publish_front_page

get '/' do 
	@post = blog.post
	erb(:index)
end