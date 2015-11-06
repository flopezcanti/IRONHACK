require_relative "../robobattle.rb"

describe "robot" do
	describe "#loose_life" do 
		it "Loose 50 health points" do 
			expect(Robot.new.loose_life(20)).to eq(80)
		end
	end

		describe "#dead!" do 
		it "kill the robot" do 
			expect(Robot.new.dead!.dead).to be_truthy
		end
	end

end

#pelea entre 2 robots, los robots empiezan con 100 de vida.
#tienen un estado muerto true/false.
#tienen un metodo de perder vida que le pasas la vida que
# => pierde