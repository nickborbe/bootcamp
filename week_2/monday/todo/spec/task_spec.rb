describe "TodoList" do
	before :each do
		@task1 = Task.new("wash the ferrari")
		@task2 = Task.new("cook gourmet dinner")
	end

	describe "set id" do
		it "creates a new id for each task increasing by 1" do
			expect(@task.id).to eq(1)
			expect(@task.id).to eq(2)
		end
	end

	describe "complete?" do
		it "tells you whether the task has been completed" do 
			expect(@task1.complete?).to eq(false)
			expect(@task1.complete?).to eq(false)
		end
	end
	describe "complete!" do
		it "changes the complete? value from false to true" do 
			expect(@task1.complete!).to eq(true)
			expect(@task2.complete!).to eq(true)
		end
	end
	describe "make_incomplete!" do
		it "resets the task to incomplete again" do 
			expect(@task1.make_incomplete!).to eq(false)
			expect(@task2.make_incomplete!).to eq(false)
		end
	end

	describe "update content" do 
		it "changes the content of the task" do
			expect(@task1.update_content!("wash the ford")).to eq("wash the ford")
			expect(@task2.update_content!("microwave frozen dinner")).to eq("microwave frozen dinner")
		end
	end




end