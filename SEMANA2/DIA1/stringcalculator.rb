require 'PRY'
require 'rspec'

class StringCalculator
	def initialize numbers_str
		@numbers_str = numbers_str		
	end
	
	def add numbers_str
	 	@numbers_str = numbers_str.gsub("\n").split(",")
	 	
	 	@numbers_str.reduce(0) do |memo, digit|
	 		memo + digit.to_i
	 	end
	end
end




RSpec.describe "StringCalculator" do

	before :each do
		@calculator = StringCalculator.new
	end


	it "returns 0 for the empty string" do
		expect(@calculator.add("")).to eq (0)
	end

	it "returns 3" do
		expect(@calculator.add("3")).to eq (3)
	end

	it "returns 3 for the \n3" do
		expect(@calculator.add("\n3")).to eq (3)
	end
end
