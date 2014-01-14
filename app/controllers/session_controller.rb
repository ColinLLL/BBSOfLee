class SessionController < ApplicationController

  def new
  end


  def forgetpassword

  end

  def create
  	user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path, alert: "The email address or password is wrong"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

end
