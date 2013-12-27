class SessionController < ApplicationController

  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to session_new_path, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

end
