require_relative "../todoSinatra.rb"

RSpec.describe Task do 

	before :each do
		@task = Task.new("walk the dog")
	end

	describe "#content" do
		it "Create Task OK" do
			expect(@task.content).to eq("walk the dog")
		end
	end

	describe "#complete?" do
		it "Complete by default" do
			expect(@task.complete?).to eq(false)
		end
	end

	describe "#complete!" do
		it "Mark Task as complete" do
			expect(@task.complete!).to eq(true)
		end
	end
	
	describe "#make_incomplete" do
		it "Mark Task as INcomplete" do
			expect(@task.make_incomplete!).to eq(false)
		end
	end

	describe "#time_created" do
		it "Time Created Registered" do
			expect(@task.time_created.strftime("%H:%M:%S")).to eq(Time.now.strftime("%H:%M:%S"))
		end
	end

	describe "#update_content!" do
		
		it "Content text changed" do
			expect(@task.update_content!("Buy the milk")).to eq("Buy the milk")
		end

		it "Update content new time" do
			@task.update_content!("Buy the milk")
			expect(@task.updated_at.strftime("%H:%M:%S")).to eq(Time.now.strftime("%H:%M:%S"))
		end
	end
end
