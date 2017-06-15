class CoursController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
   @cours = Cour.new
  end

  def edit
  end

  def create
    cour_params = params.require(:cour).permit(:content,:titre)

    @cours = Cour.new(cour_params)

    if @cours.valid?
      @cours.save
      redirect_to root_path
    else
     render 'new'
    end

  end


 def profesor
 end


  def destroy
  end

  def micropost_params
      params.require(:cours).permit(:content)
    end
end
