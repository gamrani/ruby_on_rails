class SessionsController < ApplicationController
  def new

  end

  def create

    user = User.find_by(email: params[:session][:email].downcase)
     if !user.nil?
       # Log the user in and redirect to the user's show page.
       redirect_to root_path
     else
       # Create an error message.
       flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
       render 'new'
     end


  end

  def destroy

  end
end
