class HomepageController < ApplicationController
  def index
  	@current_projects = Project.where(completed: false)
  	@completed_projects = Project.where(completed: true)
  end

  def send_email
  	new_Message = Message.create!(
  	 :senderIp => params[:clientIp].to_s,
  	 :senderEmail => params[:email],
	 :first => params[:firstName],
	 :last => params[:lastName],
	 :title => params[:subjectTitle],
	 :message => params[:emailBody],
  	)  
  end
end