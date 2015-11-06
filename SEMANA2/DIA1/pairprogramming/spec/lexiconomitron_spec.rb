require_relative '../lexiconomitron.rb'

describe Lexiconomitron do 

	describe "eat_t" do
		it "remove t" do
			@lexi = Lexiconomitron.new
			expect(@lexi.eat_t("t")).to eq("")
		end
		it "remove t" do
			@lexi = Lexiconomitron.new
			expect(@lexi.eat_t("l")).to eq("l")
		end

		# it "removes every letter T from the input" do
		# 	@lexi = Lexiconomitron.new
		# 	expect(@lexi.eat_t("great scott")).to eq("grea sco")
		# end
	end
end