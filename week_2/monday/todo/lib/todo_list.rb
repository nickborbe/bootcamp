class TodoList
	attr_reader :tasks, :user
	def initialize(user)
		@tasks = []
		@user = user
	end

	def add_task(task)
		@tasks << task
	end

	def delete_task(task_id)
		@tasks.delete_if { |task| task.id = task_id }
	end

	def find_task_by_id(task_id)
		@tasks.each do |task|
			if task.id == task_id
				task
			else
				nil
			end
		end
	end

	


end