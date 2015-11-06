require "sinatra"
require "sinatra/reloader" if development?

require_relative './lib/todo.rb'
require_relative './lib/task.rb'

todo_list = TodoList.new("Josh")
task = Task.new("Walk the dog")
task2 = Task.new("Buy the milk")
task3 = Task.new("Make my todo list into a web app")
todo_list.save

get '/' do
	"Welcome to your TODO list"
	erb(:task_index)
end

