require 'pry'
require 'rspec'


class Task
  attr_reader :content, :id, :updated_at
  @@current_id = 1
  def initialize(content)
      @content = content
      @id = @@current_id
      @@current_id += 1
      @complete = false
      @created_at = Time.now
      @updated_at = nil
  end

  def complete?
  	@complete
  end

  def complete!
  	@complete = true
  end

  def make_incomplete! 
  	@complete = false
  end

  def time_created
  	@created_at
  end

  def update_content! text
  	
  	@updated_at = Time.now
  	@content = text
  end
end

class TodoList
  attr_reader :tasks
  def initialize
      @tasks = []
  end

  def add_task task 
  	@task << task
  end
end


# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2 

# task.complete?
# # false
# task.complete!
# task.complete?
# # true	

# task.make_incomplete!




