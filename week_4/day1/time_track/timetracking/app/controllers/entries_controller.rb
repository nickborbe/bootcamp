class EntriesController < ApplicationController
	def index
		# Entry.where(project_id: params[:id])
		@project = Project.find_by(id: params[:project_id])
		 if @project 
		render 'index'
	else
			render 'projects/no_projects'
		end
	end
end
