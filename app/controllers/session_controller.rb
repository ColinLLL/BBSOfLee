class SessionController < ApplicationController

  def new
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

  def forgetpassword
  end
  
  def sendpassword
    @user = User.find_by_email(params[:email])
    if @user
      newpassword = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a).shuffle[0..6].join
      @user.password = newpassword
      @user.password_confirmation = newpassword
      if @user.save
        UserMailer.registration_confirmation(@user).deliver
      end

      redirect_to login_path, alert: "The new password has been sent to your register email."
    else
      redirect_to forgetpassword_path, alert: "The email address can't be found"
    end
  end

  def changepassword
    @current_user = User.find_by_id(session[:user_id])
  end

  def updatepassword
  end

end
