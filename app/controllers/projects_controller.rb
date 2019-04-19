class ProjectsController < ApplicationController
  after_initialize :readonly!

  def readonly?
   true
  end
end
