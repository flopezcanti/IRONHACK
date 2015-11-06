require 'pry'
require 'rspec'
require 'yaml/store' 

class TodoList
  attr_reader :tasks
  def initialize user
      @tasks = []
      @user = user
      @todo_store = YAML::Store.new("./public/tasks.yml")
  end

  def add_task task 
  	@task << task
  end

  def save
    @todo_store.transaction do 
      @todo_store[@user] = @tasks
    end
  end

  def load_task
    load_task = YAML.load("./public/tasks.yml")
  end
end