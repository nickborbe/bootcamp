class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  	@projects
  
  		render 'index'
  end



  def show
  	the_id = params[:id]
  	@project = Project.find_by(id: the_id)
  		if @project
  		render 'show'
  	else
  		render 'no_projects'
  	end
  end



end
