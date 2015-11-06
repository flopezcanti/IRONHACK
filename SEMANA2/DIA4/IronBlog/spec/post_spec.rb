require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

require 'rspec'

RSpec.describe Post do 

	it "Have Title" do
		@post = Post.new("Primer día en IronHack", "El Primer día....")
		expect(@post.title).to eq("Primer día en IronHack")
	end

	it "Have NOT Title" do
		@post = Post.new("", "El Primer día....")
		expect(@post.title).to eq("")
	end

	it "Have Date" do
		@post = Post.new("Primer día en IronHack", "El Primer día....")
		expect(@post.date).to eq(@post.date)
	end

	it "Have Text" do
		@post = Post.new("Primer día en IronHack", "El Primer día....")
		expect(@post.text).to eq("El Primer día....")
	end

	it "Have NOT Text" do
		@post = Post.new("Primer día en IronHack", "")
		expect(@post.text).to eq("")
	end

end