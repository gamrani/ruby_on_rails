class UsersController < ApplicationController

  def new
    @user=User.new
  end

  def create
    user_params = params.require(:user).permit(:username,:email,:password,:password_confirmation,:status)

    @user = User.new(user_params)

    if @user.valid?
      @user.save
      redirect_to root_path, success: 'votre compte a bien été crée'
    else
     render 'new'
    end
  end

  def home
  end

  def show
    @user=User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to root_path

    else
      render 'edit'
    end

  end

  def edit
    @user = User.find(params[:id])
  end
end
