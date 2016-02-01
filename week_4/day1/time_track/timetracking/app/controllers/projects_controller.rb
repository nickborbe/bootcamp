class ProjectsController < ApplicationController
  def index
  	@projects = Project.show_ten
  	@projects
  	render 'index'
  end
end
