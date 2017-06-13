module SessionsHelper
  def log_in(user)
	session[:user_id]=user.id
end


def user_courant
	@user_courant=@user_courant ||
	User.find_by(id: session[:user_id])
end

def logged_in?
	!user_courant.nil?
end


def log_out
	session.delete(:user_id)
	@user_courant=nil
end
# acces des etudiants à l'ensemble des cours
 def acceder_aux_cours
    if @user_courant.try(:statut)!="Etudiant"
    	flash[:erreur]="Erreur, epace etudiants"
    	return redirect_to request.reffer || "/users/acces_home"
    end
    @cours=Cour.all
  end
end
