class HomepageController < ApplicationController
  def index
  	@current_projects = Project.where(completed: false)
  	@completed_projects = Project.where(completed: true)
  end
end