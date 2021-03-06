class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to current_user
    else
      message = "Cuenta no activada. "
      message += "Revisa tu correo para el enlace de activacion"
      flash[:warning] = message
      redirect_to root_url
    end
  else
    flash.now[:danger] = 'Correo o contrasena invalidos'
    render 'new'
  end
end

 def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
