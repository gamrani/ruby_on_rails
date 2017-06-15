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
    # acces des etudiants à l'ensemble des cours
 def showMyCourse
    if !@user_courant
      flash[:erreur]="Vous n'êtes pas connecté"
      return redirect_to request.reffer || "/users/home"
    end
    @cours=Cour.all
    return redirect_to "/mes_cours" 
  end
  def chooseCourse
    if @user_courant && @user_courant.statut="Etudiant"
      return redirect_to "/s'inscrire_au_cours" #creer vue s'inscrire_au_cours
    end
  flash[:erreur]="Vous n'êtes pas connecté"
    return redirect_to request.reffer || "/users/home"
    end
end
