require_relative("../lib/task.rb")
require_relative("../lib/todo_list.rb")


describe TodoList do
	before :each do
		@tasks = TodoList.new
		@task1 = Task.new
		@task2 = Task.new
	end

	describe "add_task" do
		it "adds a task to the list" do 
			expect(@tasks.add_task(@task1).length).to eq(1)
			expect(@tasks.add_task(@task2).length).to eq(2)
		end
	end

	describe "delete_task" do 
		it "deletes a task from the list" do 
			expect(@tasks.add_task(@task1).length).to eq(1)
			expect(@tasks.add_task(@task2).length).to eq(2)
			expect(@tasks.delete_task_by_id(@task.id).length).to eq(1)
		end
	end

	describe "find_task_by_id" do 
		it "finds a task by its id" do 
			expect(@tasks.add_task(@task1).length).to eq(1)
			expect(@tasks.add_task(@task2).length).to eq(2)
			expect(@tasks.find_task_by_id(@task.id)).to eq(@task)
		end
	end

	describe "sort_by_id" do
		it "sorts tasks by their id number" do 
			@tasks.sort_by_id
			expect(@tasks[0].id).to eq(1)
			expect(@tasks[1].id).to eq(2)
		end
	end







	
end