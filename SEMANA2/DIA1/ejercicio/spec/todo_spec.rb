require_relative "../todoSinatra.rb"

RSpec.describe TodoList do 

	before :each do
		list = TodoList.new
	end

	describe "#add_task" do
		it "Check if we add task onto todo list" do
			task = Task.new("walk the dog")
			expect(list.add_task(task)).to eq(task) 	
		end
	end
end
