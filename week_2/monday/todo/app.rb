require "sinatra"
require "sinatra/reloader"

require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')


todo_list = TodoList.new("Josh")

task1 = Task.new("walk the dog")
task2 = Task.new("take out trash")
task3 = Task.new("do homework")
task4 = Task.new("buy your mealpass")

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)
todo_list.add_task(task4)


get "/" do 
	erb :home
	end

	get "/tasks" do 
		@tasks = todo_list.tasks
		erb :task_list
	end

	get "/new_task" do 
		erb :new_task
	end 

	post "/create_task" do 
		content = params[:task_content]
		task = Task.new(content)
		todo_list.add_task(task)
		redirect to '/tasks'
	end
