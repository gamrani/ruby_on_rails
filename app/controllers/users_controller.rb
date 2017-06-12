class UsersController < ApplicationController

  def new
    @user=User.new
  end

  def create
    user_params = params.require(:user).permit(:username,:email,:password,:password_confirmation)

    @user = User.new(user_params)

    if @user.valid?
      @user.save
      redirect_to new_user_path, success: 'votre compte a bien été créer'
    else
     render 'new'
    end
  end

end
