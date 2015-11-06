require_relative '../fizzbuzz.rb'

RSpec.describe "FizzBuzz" do
	

	it "returns 1 for 1" do
		expect(FizzBuzz.new.add_number(1)).to eq(1)
	end
	
	it "returns Vodafone for each number begining with 2" do
		expect(FizzBuzz.new.add_number(23)).to eq("Vodafone")
	end
	it "returns Fizz for 3" do
		expect(FizzBuzz.new.add_number(3)).to eq("Fizz")
	end

	it "returns BUZZ for 5" do
		expect(FizzBuzz.new.add_number(5)).to eq("Buzz")
	end

	it "returns BUZZ for 6" do
		expect(FizzBuzz.new.add_number(6)).to eq("Fizz")
	end

	it "returns BUZZ for 10" do
		expect(FizzBuzz.new.add_number(10)).to eq("Buzz")
	end

	it "returns FIZZBUZZ for 15" do
		expect(FizzBuzz.new.add_number(15)).to eq("FizzBuzz")
	end

	it "returns Nike for 7" do
		expect(FizzBuzz.new.add_number(7)).to eq("Nike")
	end

	
end