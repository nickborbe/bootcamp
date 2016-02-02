class ProjectsController < ApplicationController
  def index
  	@projects = Project.show_ten
  	@projects
  	render 'index'
  end



  def show
  	the_id = params[:id]
  	@project = Project.find_by(id: the_id)
  end



end
