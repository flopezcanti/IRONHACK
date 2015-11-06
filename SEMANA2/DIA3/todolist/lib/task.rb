require 'pry'
require 'rspec'
require 'yaml/store' 


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