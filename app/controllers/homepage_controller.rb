class HomepageController < ApplicationController

  def index
  	@current_projects = Project.where(completed: false)
  	@completed_projects = Project.where(completed: true)      
    @email_error = []
  end

  def send_email

     # Max message sent limit by a client IP
     if ( Message.where(senderIp: params[:clientIp]).length <= 5 )
        new_message = Message.create(
         :senderIp => params[:clientIp].to_s,
         :senderEmail => params[:email],
         :first =>  params[:firstName].count("a-zA-Z") > 0 ? params[:firstName] : nil,
         :last => params[:lastName].count("a-zA-Z") > 0 ? params[:firstName] : nil,
         :title => params[:subjectTitle],
         :message => params[:emailBody],
        )
        if new_message.valid?
          new_message.save
          @show_message = new_message
          render :sent
        else
          @email_error = []
          if (new_message.errors.include?(:senderEmail))
            @email_error.push("Invalid Email Format!")
          end

          if (new_message.errors.include?(:message))
             @email_error.push("Message Body Must Not Be Blank!")
          end

           if (new_message.errors.include?(:title))
             @email_error.push("Must Include a Subject Title!")
          end

          # REFRACTOR THIS ERROR DISPLAY METHOD
          @current_projects = Project.where(completed: false)
          @completed_projects = Project.where(completed: true)
          render :index
        end
     else 
          @email_error = ["Were Sorry , You Have Reached The Max Send Limit! Try Later."]       

          # REFRACTOR THIS ERROR DISPLAY METHOD
          @current_projects = Project.where(completed: false)
          @completed_projects = Project.where(completed: true)
          render :index 
     end
  end
end